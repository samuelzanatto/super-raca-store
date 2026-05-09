"use client"

import { useState, useEffect, useRef } from "react"
import { useForm, Controller } from "react-hook-form"
import { z } from "zod"
import { zodResolver } from "@hookform/resolvers/zod"
import { defineRouteConfig } from "@medusajs/admin-sdk"
import {
  Container,
  Heading,
  Button,
  Input,
  Label,
  Text,
  Table,
  Badge,
  FocusModal,
  Drawer,
  toast,
} from "@medusajs/ui"

const bannerSchema = z.object({
  title: z.string().min(1, "Título é obrigatório"),
  description: z.string().optional(),
  image_url: z.string().min(1, "Imagem e obrigatoria"),
  link: z.string().min(1, "Link é obrigatório"),
  link_text: z.string().optional(),
  is_active: z.boolean().default(true),
  order: z.number().default(0),
})

type BannerFormData = z.infer<typeof bannerSchema>

type Banner = BannerFormData & {
  id: string
}

export const config = defineRouteConfig({
  label: "Banners",
})

async function uploadBannerImage(file: File): Promise<string> {
  const formData = new FormData()
  formData.append("files", file)

  const response = await fetch("/admin/uploads", {
    method: "POST",
    body: formData,
  })

  if (!response.ok) {
    throw new Error("Failed to upload banner image")
  }

  const data = await response.json()
  const uploadedFile = data.files?.[0]

  if (!uploadedFile?.url) {
    throw new Error("Upload did not return an image URL")
  }

  return uploadedFile.url
}

export default function BannersPage() {
  const [banners, setBanners] = useState<Banner[]>([])
  const [loading, setLoading] = useState(true)
  const [showCreateModal, setShowCreateModal] = useState(false)
  const [editingBanner, setEditingBanner] = useState<Banner | null>(null)
  const [showEditDrawer, setShowEditDrawer] = useState(false)

  useEffect(() => {
    fetchBanners()
  }, [])

  const fetchBanners = async () => {
    try {
      setLoading(true)
      const response = await fetch("/admin/banners")
      const data = await response.json()
      setBanners(data.banners || [])
    } catch (error) {
      console.error("Error fetching banners:", error)
      toast.error("Erro ao carregar banners")
    } finally {
      setLoading(false)
    }
  }

  const handleDeleteBanner = async (bannerId: string) => {
    if (!confirm("Tem certeza que deseja deletar este banner?")) return

    try {
      const response = await fetch(`/admin/banners/${bannerId}`, {
        method: "DELETE",
      })

      if (!response.ok) throw new Error("Failed to delete")

      toast.success("Banner deletado com sucesso")
      fetchBanners()
    } catch (error) {
      console.error("Error deleting banner:", error)
      toast.error("Erro ao deletar banner")
    }
  }

  return (
    <Container className="divide-y p-0">
      <div className="flex items-center justify-between px-6 py-4">
        <div>
          <Heading level="h2">Banners</Heading>
          <Text className="text-ui-fg-subtle mt-1">
            Gerencie os banners da sua loja
          </Text>
        </div>
        <Button onClick={() => setShowCreateModal(true)} variant="primary">
          + Novo Banner
        </Button>
      </div>

      <div className="overflow-x-auto">
        {loading ? (
          <div className="p-6 text-center">Carregando...</div>
        ) : banners.length === 0 ? (
          <div className="p-6 text-center text-ui-fg-subtle">
            Nenhum banner criado ainda
          </div>
        ) : (
          <Table>
            <Table.Header>
              <Table.Row>
                <Table.HeaderCell>Ordem</Table.HeaderCell>
                <Table.HeaderCell>Título</Table.HeaderCell>
                <Table.HeaderCell>Link</Table.HeaderCell>
                <Table.HeaderCell>Status</Table.HeaderCell>
                <Table.HeaderCell>Ações</Table.HeaderCell>
              </Table.Row>
            </Table.Header>
            <Table.Body>
              {banners.map((banner) => (
                <Table.Row key={banner.id}>
                  <Table.Cell>{banner.order}</Table.Cell>
                  <Table.Cell>{banner.title}</Table.Cell>
                  <Table.Cell className="text-ui-fg-subtle text-sm">
                    {banner.link}
                  </Table.Cell>
                  <Table.Cell>
                    <Badge
                      color={banner.is_active ? "green" : "grey"}
                      rounded="full"
                    >
                      {banner.is_active ? "Ativo" : "Inativo"}
                    </Badge>
                  </Table.Cell>
                  <Table.Cell>
                    <div className="flex gap-2">
                      <Button
                        onClick={() => {
                          setEditingBanner(banner)
                          setShowEditDrawer(true)
                        }}
                        size="small"
                        variant="secondary"
                      >
                        Editar
                      </Button>
                      <Button
                        onClick={() => handleDeleteBanner(banner.id)}
                        size="small"
                        variant="danger"
                      >
                        Deletar
                      </Button>
                    </div>
                  </Table.Cell>
                </Table.Row>
              ))}
            </Table.Body>
          </Table>
        )}
      </div>

      <CreateBannerModal
        open={showCreateModal}
        onOpenChange={setShowCreateModal}
        onSuccess={fetchBanners}
      />

      {editingBanner && (
        <EditBannerDrawer
          open={showEditDrawer}
          onOpenChange={setShowEditDrawer}
          banner={editingBanner}
          onSuccess={fetchBanners}
        />
      )}
    </Container>
  )
}

function CreateBannerModal({
  open,
  onOpenChange,
  onSuccess,
}: {
  open: boolean
  onOpenChange: (open: boolean) => void
  onSuccess: () => void
}) {
  const fileInputRef = useRef<HTMLInputElement>(null)
  const [imagePreview, setImagePreview] = useState<string>("")
  const [isUploadingImage, setIsUploadingImage] = useState(false)

  const form = useForm<BannerFormData>({
    resolver: zodResolver(bannerSchema),
    defaultValues: {
      title: "",
      description: "",
      image_url: "",
      link: "",
      link_text: "",
      is_active: true,
      order: 0,
    },
  })

  const handleFileSelect = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0]
    if (!file) return

    if (!file.type.startsWith("image/")) {
      toast.error("Por favor, selecione uma imagem")
      return
    }

    const previewUrl = URL.createObjectURL(file)
    setImagePreview(previewUrl)
    setIsUploadingImage(true)

    try {
      const imageUrl = await uploadBannerImage(file)
      form.setValue("image_url", imageUrl, {
        shouldDirty: true,
        shouldValidate: true,
      })
      setImagePreview(imageUrl)
      toast.success("Imagem enviada com sucesso")
    } catch (error) {
      console.error("Error uploading banner image:", error)
      toast.error("Erro ao enviar imagem do banner")
      setImagePreview("")
    } finally {
      setIsUploadingImage(false)
      URL.revokeObjectURL(previewUrl)
    }
  }

  const handleSubmit = form.handleSubmit(async (data) => {
    try {
      const response = await fetch("/admin/banners", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data),
      })

      if (!response.ok) throw new Error("Failed to create banner")

      toast.success("Banner criado com sucesso")
      form.reset()
      setImagePreview("")
      onOpenChange(false)
      onSuccess()
    } catch (error) {
      console.error("Error creating banner:", error)
      toast.error("Erro ao criar banner")
    }
  })

  return (
    <FocusModal open={open} onOpenChange={onOpenChange}>
      <FocusModal.Content className="flex h-full flex-col">
        <FocusModal.Header>
          <Heading level="h1">Criar Banner</Heading>
        </FocusModal.Header>

        <form onSubmit={handleSubmit} className="flex flex-1 flex-col overflow-hidden">
          <FocusModal.Body className="flex-1 overflow-y-auto px-6 py-4">
            <div className="space-y-6">
            {/* Título */}
            <Controller
              control={form.control}
              name="title"
              render={({ field, fieldState: { error } }) => (
                <div className="flex flex-col gap-y-2 py-2">
                  <Label size="small" weight="plus">
                    Título (referência interna)
                  </Label>
                  <Input
                    {...field}
                    placeholder="Ex: Banner Principal"
                  />
                  {error && (
                    <Text className="text-ui-fg-error text-xs">
                      {error.message}
                    </Text>
                  )}
                </div>
              )}
            />



            {/* Upload de Imagem */}
            <div className="flex flex-col gap-y-2 py-2">
              <Label size="small" weight="plus">
                Imagem *
              </Label>
              <input
                ref={fileInputRef}
                type="file"
                accept="image/*"
                onChange={handleFileSelect}
                hidden
              />
              <Button
                type="button"
                variant="secondary"
                onClick={() => fileInputRef.current?.click()}
                disabled={isUploadingImage}
                isLoading={isUploadingImage}
                className="w-full"
              >
                {isUploadingImage ? "Enviando imagem..." : "Selecionar Imagem"}
              </Button>
              {imagePreview && (
                <div className="mt-3 max-h-48 overflow-hidden rounded-lg border border-ui-border-base">
                  <img
                    src={imagePreview}
                    alt="Preview"
                    className="h-48 w-full object-cover"
                  />
                </div>
              )}
            </div>

            {/* URL da Imagem (alternativa) */}
            <Controller
              control={form.control}
              name="image_url"
              render={({ field, fieldState: { error } }) => (
                <div className="flex flex-col gap-y-2 py-2">
                  <Label size="small" weight="plus">
                    URL da Imagem
                  </Label>
                  <Input
                    {...field}
                    placeholder="Ou cole uma URL externa"
                  />
                  {error && (
                    <Text className="text-ui-fg-error text-xs">
                      {error.message}
                    </Text>
                  )}
                </div>
              )}
            />

            {/* Link */}
            <Controller
              control={form.control}
              name="link"
              render={({ field, fieldState: { error } }) => (
                <div className="flex flex-col gap-y-2 py-2">
                  <Label size="small" weight="plus">
                    Link *
                  </Label>
                  <Input
                    {...field}
                    placeholder="Ex: /categories/summer"
                  />
                  {error && (
                    <Text className="text-ui-fg-error text-xs">
                      {error.message}
                    </Text>
                  )}
                </div>
              )}
            />



            {/* Ordem */}
            <Controller
              control={form.control}
              name="order"
              render={({ field }) => (
                <div className="flex flex-col gap-y-2 py-2">
                  <Label size="small" weight="plus">
                    Ordem
                  </Label>
                  <Input
                    {...field}
                    type="number"
                    onChange={(e) => field.onChange(Number(e.target.value))}
                  />
                </div>
              )}
            />

            {/* Ativo */}
            <Controller
              control={form.control}
              name="is_active"
              render={({ field: { value, onChange } }) => (
                <div className="flex items-center gap-x-3 py-2">
                  <input
                    type="checkbox"
                    id="is_active"
                    checked={value}
                    onChange={(e) => onChange(e.target.checked)}
                    className="rounded"
                  />
                  <Label size="small" weight="plus" htmlFor="is_active">
                    Ativo?
                  </Label>
                </div>
              )}
            />
            </div>
          </FocusModal.Body>

          <FocusModal.Footer>
            <div className="flex items-center justify-end gap-x-2">
              <Button
                type="button"
                variant="secondary"
                onClick={() => onOpenChange(false)}
              >
                Cancelar
              </Button>
              <Button
                type="submit"
                variant="primary"
                disabled={isUploadingImage || !form.watch("image_url")}
                isLoading={isUploadingImage}
              >
                Criar Banner
              </Button>
            </div>
          </FocusModal.Footer>
        </form>
      </FocusModal.Content>
    </FocusModal>
  )
}

function EditBannerDrawer({
  open,
  onOpenChange,
  banner,
  onSuccess,
}: {
  open: boolean
  onOpenChange: (open: boolean) => void
  banner: Banner
  onSuccess: () => void
}) {
  const fileInputRef = useRef<HTMLInputElement>(null)
  const [isUploadingImage, setIsUploadingImage] = useState(false)
  const [imagePreview, setImagePreview] = useState<string>(
    banner.image_url || ""
  )

  const form = useForm<BannerFormData>({
    resolver: zodResolver(bannerSchema),
    defaultValues: {
      title: banner.title,
      description: banner.description || "",
      image_url: banner.image_url || "",
      link: banner.link,
      link_text: banner.link_text || "",
      is_active: banner.is_active,
      order: banner.order,
    },
  })

  const handleFileSelect = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0]
    if (!file) return

    if (!file.type.startsWith("image/")) {
      toast.error("Por favor, selecione uma imagem")
      return
    }

    const previewUrl = URL.createObjectURL(file)
    setImagePreview(previewUrl)
    setIsUploadingImage(true)

    try {
      const imageUrl = await uploadBannerImage(file)
      form.setValue("image_url", imageUrl, {
        shouldDirty: true,
        shouldValidate: true,
      })
      setImagePreview(imageUrl)
      toast.success("Imagem enviada com sucesso")
    } catch (error) {
      console.error("Error uploading banner image:", error)
      toast.error("Erro ao enviar imagem do banner")
      setImagePreview("")
    } finally {
      setIsUploadingImage(false)
      URL.revokeObjectURL(previewUrl)
    }
  }

  const handleSubmit = form.handleSubmit(async (data) => {
    try {
      const response = await fetch(`/admin/banners/${banner.id}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data),
      })

      if (!response.ok) throw new Error("Failed to update banner")

      toast.success("Banner atualizado com sucesso")
      onOpenChange(false)
      onSuccess()
    } catch (error) {
      console.error("Error updating banner:", error)
      toast.error("Erro ao atualizar banner")
    }
  })

  return (
    <Drawer open={open} onOpenChange={onOpenChange}>
      <Drawer.Content>
        <Drawer.Header>
          <Heading level="h1">Editar Banner</Heading>
        </Drawer.Header>

        <form onSubmit={handleSubmit} className="flex flex-1 flex-col overflow-hidden">
          <Drawer.Body className="flex max-w-full flex-1 flex-col gap-y-6 overflow-y-auto px-6 py-4">
            {/* Título */}
            <Controller
              control={form.control}
              name="title"
              render={({ field, fieldState: { error } }) => (
                <div className="flex flex-col gap-y-2 py-2">
                  <Label size="small" weight="plus">
                    Título (referência interna)
                  </Label>
                  <Input {...field} placeholder="Ex: Banner Principal" />
                  {error && (
                    <Text className="text-ui-fg-error text-xs">
                      {error.message}
                    </Text>
                  )}
                </div>
              )}
            />



            {/* Upload de Imagem */}
            <div className="flex flex-col gap-y-2 py-2">
              <Label size="small" weight="plus">
                Imagem
              </Label>
              <input
                ref={fileInputRef}
                type="file"
                accept="image/*"
                onChange={handleFileSelect}
                hidden
              />
              <Button
                type="button"
                variant="secondary"
                onClick={() => fileInputRef.current?.click()}
                disabled={isUploadingImage}
                isLoading={isUploadingImage}
                className="w-full"
              >
                {isUploadingImage ? "Enviando imagem..." : "Alterar Imagem"}
              </Button>
              {imagePreview && (
                <div className="mt-3 max-h-48 overflow-hidden rounded-lg border border-ui-border-base">
                  <img
                    src={imagePreview}
                    alt="Preview"
                    className="h-48 w-full object-cover"
                  />
                </div>
              )}
            </div>

            {/* URL da Imagem */}
            <Controller
              control={form.control}
              name="image_url"
              render={({ field, fieldState: { error } }) => (
                <div className="flex flex-col gap-y-2 py-2">
                  <Label size="small" weight="plus">
                    URL da Imagem
                  </Label>
                  <Input
                    {...field}
                    placeholder="Ou cole uma URL externa"
                  />
                  {error && (
                    <Text className="text-ui-fg-error text-xs">
                      {error.message}
                    </Text>
                  )}
                </div>
              )}
            />

            {/* Link */}
            <Controller
              control={form.control}
              name="link"
              render={({ field, fieldState: { error } }) => (
                <div className="flex flex-col gap-y-2 py-2">
                  <Label size="small" weight="plus">
                    Link *
                  </Label>
                  <Input {...field} />
                  {error && (
                    <Text className="text-ui-fg-error text-xs">
                      {error.message}
                    </Text>
                  )}
                </div>
              )}
            />



            {/* Ordem */}
            <Controller
              control={form.control}
              name="order"
              render={({ field }) => (
                <div className="flex flex-col gap-y-2 py-2">
                  <Label size="small" weight="plus">
                    Ordem
                  </Label>
                  <Input
                    {...field}
                    type="number"
                    onChange={(e) => field.onChange(Number(e.target.value))}
                  />
                </div>
              )}
            />

            {/* Ativo */}
            <Controller
              control={form.control}
              name="is_active"
              render={({ field: { value, onChange } }) => (
                <div className="flex items-center gap-x-3 py-2">
                  <input
                    type="checkbox"
                    id="is_active_edit"
                    checked={value}
                    onChange={(e) => onChange(e.target.checked)}
                    className="rounded"
                  />
                  <Label size="small" weight="plus" htmlFor="is_active_edit">
                    Ativo?
                  </Label>
                </div>
              )}
            />
          </Drawer.Body>

          <Drawer.Footer>
            <div className="flex items-center justify-end gap-x-2">
              <Drawer.Close asChild>
                <Button size="small" variant="secondary">
                  Cancelar
                </Button>
              </Drawer.Close>
              <Button
                size="small"
                type="submit"
                variant="primary"
                disabled={isUploadingImage || !form.watch("image_url")}
                isLoading={isUploadingImage}
              >
                Salvar
              </Button>
            </div>
          </Drawer.Footer>
        </form>
      </Drawer.Content>
    </Drawer>
  )
}
