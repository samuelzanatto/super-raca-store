"use client"

import { useState, useEffect } from "react"
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
  Select,
} from "@medusajs/ui"

const sectionSchema = z.object({
  key: z.string().min(1, "Key é obrigatória"),
  title: z.string().min(1, "Título é obrigatório"),
  type: z.enum([
    "hero_banner",
    "featured_products",
    "single_category_grid",
    "categories_grid",
    "newsletter",
    "custom_html"
  ]),
  config: z.string().optional(), // We'll handle this as a stringified JSON in the form for simplicity, or just ignore for now if empty
  is_active: z.boolean().default(true),
  order: z.number().default(0),
})

type SectionFormData = z.infer<typeof sectionSchema>

type HomepageSection = SectionFormData & {
  id: string
}

export const config = defineRouteConfig({
  label: "Homepage Sections",
})

export default function HomepageSectionsPage() {
  const [sections, setSections] = useState<HomepageSection[]>([])
  const [loading, setLoading] = useState(true)
  const [showCreateModal, setShowCreateModal] = useState(false)
  const [editingSection, setEditingSection] = useState<HomepageSection | null>(null)
  const [showEditDrawer, setShowEditDrawer] = useState(false)
  const [collections, setCollections] = useState<any[]>([])

  useEffect(() => {
    fetchSections()
    fetchCollections()
  }, [])

  const fetchCollections = async () => {
    try {
      const response = await fetch("/admin/collections")
      const data = await response.json()
      setCollections(data.collections || [])
    } catch (error) {
      console.error("Error fetching collections:", error)
    }
  }

  const fetchSections = async () => {
    try {
      setLoading(true)
      const response = await fetch("/admin/homepage-sections")
      const data = await response.json()
      setSections(data.sections || [])
    } catch (error) {
      console.error("Error fetching sections:", error)
      toast.error("Erro ao carregar seções")
    } finally {
      setLoading(false)
    }
  }

  const handleDeleteSection = async (sectionId: string) => {
    if (!confirm("Tem certeza que deseja deletar esta seção?")) return

    try {
      const response = await fetch(`/admin/homepage-sections/${sectionId}`, {
        method: "DELETE",
      })

      if (!response.ok) throw new Error("Failed to delete")

      toast.success("Seção deletada com sucesso")
      fetchSections()
    } catch (error) {
      console.error("Error deleting section:", error)
      toast.error("Erro ao deletar seção")
    }
  }

  return (
    <Container className="divide-y p-0">
      <div className="flex items-center justify-between px-6 py-4">
        <div>
          <Heading level="h2">Seções da Homepage</Heading>
          <Text className="text-ui-fg-subtle mt-1">
            Gerencie as seções exibidas na página inicial
          </Text>
        </div>
        <Button onClick={() => setShowCreateModal(true)} variant="primary">
          + Nova Seção
        </Button>
      </div>

      <div className="overflow-x-auto">
        {loading ? (
          <div className="p-6 text-center">Carregando...</div>
        ) : sections.length === 0 ? (
          <div className="p-6 text-center text-ui-fg-subtle">
            Nenhuma seção criada ainda
          </div>
        ) : (
          <Table>
            <Table.Header>
              <Table.Row>
                <Table.HeaderCell>Ordem</Table.HeaderCell>
                <Table.HeaderCell>Título</Table.HeaderCell>
                <Table.HeaderCell>Chave</Table.HeaderCell>
                <Table.HeaderCell>Tipo</Table.HeaderCell>
                <Table.HeaderCell>Status</Table.HeaderCell>
                <Table.HeaderCell>Ações</Table.HeaderCell>
              </Table.Row>
            </Table.Header>
            <Table.Body>
              {sections.map((section) => (
                <Table.Row key={section.id}>
                  <Table.Cell>{section.order}</Table.Cell>
                  <Table.Cell>{section.title}</Table.Cell>
                  <Table.Cell className="text-ui-fg-subtle text-sm">
                    {section.key}
                  </Table.Cell>
                  <Table.Cell className="text-ui-fg-subtle text-sm">
                    {section.type}
                  </Table.Cell>
                  <Table.Cell>
                    <Badge
                      color={section.is_active ? "green" : "grey"}
                      rounded="full"
                    >
                      {section.is_active ? "Ativo" : "Inativo"}
                    </Badge>
                  </Table.Cell>
                  <Table.Cell>
                    <div className="flex gap-2">
                      <Button
                        onClick={() => {
                          setEditingSection(section)
                          setShowEditDrawer(true)
                        }}
                        size="small"
                        variant="secondary"
                      >
                        Editar
                      </Button>
                      <Button
                        onClick={() => handleDeleteSection(section.id)}
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

      <CreateSectionModal
        open={showCreateModal}
        onOpenChange={setShowCreateModal}
        onSuccess={fetchSections}
        collections={collections}
      />

      {editingSection && (
        <EditSectionDrawer
          open={showEditDrawer}
          onOpenChange={setShowEditDrawer}
          section={editingSection}
          onSuccess={fetchSections}
          collections={collections}
        />
      )}
    </Container>
  )
}

function CreateSectionModal({
  open,
  onOpenChange,
  onSuccess,
  collections,
}: {
  open: boolean
  onOpenChange: (open: boolean) => void
  onSuccess: () => void
  collections: any[]
}) {
  const form = useForm<SectionFormData>({
    resolver: zodResolver(sectionSchema),
    defaultValues: {
      key: "",
      title: "",
      type: "hero_banner",
      config: "",
      is_active: true,
      order: 0,
    },
  })

  const formType = form.watch("type")

  const handleSubmit = form.handleSubmit(async (data) => {
    try {
      let configData = null;
      if (data.config) {
          try {
              configData = JSON.parse(data.config);
          } catch(e) {
              toast.error("Configuração deve ser um JSON válido");
              return;
          }
      }

      const response = await fetch("/admin/homepage-sections", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            ...data,
            config: configData
        }),
      })

      if (!response.ok) throw new Error("Failed to create section")

      toast.success("Seção criada com sucesso")
      form.reset()
      onOpenChange(false)
      onSuccess()
    } catch (error) {
      console.error("Error creating section:", error)
      toast.error("Erro ao criar seção")
    }
  })

  return (
    <FocusModal open={open} onOpenChange={onOpenChange}>
      <FocusModal.Content className="flex h-full flex-col">
        <FocusModal.Header>
          <Heading level="h1">Criar Seção da Homepage</Heading>
        </FocusModal.Header>

        <form onSubmit={handleSubmit} className="flex flex-1 flex-col overflow-hidden">
          <FocusModal.Body className="flex-1 overflow-y-auto px-6 py-4">
            <div className="space-y-6 max-w-[600px] mx-auto">
              <Controller
                control={form.control}
                name="title"
                render={({ field, fieldState: { error } }) => (
                  <div className="flex flex-col gap-y-2 py-2">
                    <Label size="small" weight="plus">
                      Título (Nome Amigável) *
                    </Label>
                    <Input {...field} placeholder="Ex: Banner Principal" />
                    {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                  </div>
                )}
              />

              <Controller
                control={form.control}
                name="key"
                render={({ field, fieldState: { error } }) => (
                  <div className="flex flex-col gap-y-2 py-2">
                    <Label size="small" weight="plus">
                      Chave (Identificador Único) *
                    </Label>
                    <Input {...field} placeholder="Ex: hero_banner" />
                    {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                  </div>
                )}
              />

              <Controller
                control={form.control}
                name="type"
                render={({ field, fieldState: { error } }) => (
                  <div className="flex flex-col gap-y-2 py-2">
                    <Label size="small" weight="plus">
                      Tipo de Seção *
                    </Label>
                    <Select onValueChange={field.onChange} value={field.value}>
                        <Select.Trigger>
                            <Select.Value placeholder="Selecione um tipo" />
                        </Select.Trigger>
                        <Select.Content>
                            <Select.Item value="hero_banner">Hero Banner</Select.Item>
                            <Select.Item value="featured_products">Produtos em Destaque</Select.Item>
                            <Select.Item value="single_category_grid">Categoria Única (Config: &#123;&quot;collection_id&quot;: &quot;...&quot;&#125;)</Select.Item>
                            <Select.Item value="categories_grid">Grade de Categorias</Select.Item>
                            <Select.Item value="newsletter">Newsletter</Select.Item>
                            <Select.Item value="custom_html">HTML Customizado</Select.Item>
                        </Select.Content>
                    </Select>
                    {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                  </div>
                )}
              />

              <Controller
                control={form.control}
                name="order"
                render={({ field }) => (
                  <div className="flex flex-col gap-y-2 py-2">
                    <Label size="small" weight="plus">
                      Ordem de Exibição
                    </Label>
                    <Input
                      {...field}
                      type="number"
                      onChange={(e) => field.onChange(Number(e.target.value))}
                    />
                  </div>
                )}
              />

              {formType === "single_category_grid" ? (
                <Controller
                  control={form.control}
                  name="config"
                  render={({ field, fieldState: { error } }) => {
                    let currentColl = ""
                    try {
                      currentColl = JSON.parse(field.value || "{}").collection_id || ""
                    } catch(e) {}
                    return (
                      <div className="flex flex-col gap-y-2 py-2">
                        <Label size="small" weight="plus">
                          Categoria/Coleção *
                        </Label>
                        <Select 
                          onValueChange={(val) => {
                            field.onChange(JSON.stringify({ collection_id: val }))
                          }}
                          value={currentColl}
                        >
                          <Select.Trigger>
                            <Select.Value placeholder="Selecione uma coleção" />
                          </Select.Trigger>
                          <Select.Content>
                            {collections.map(c => (
                              <Select.Item key={c.id} value={c.id}>{c.title}</Select.Item>
                            ))}
                          </Select.Content>
                        </Select>
                        {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                      </div>
                    )
                  }}
                />
              ) : (
                <Controller
                  control={form.control}
                  name="config"
                  render={({ field, fieldState: { error } }) => (
                    <div className="flex flex-col gap-y-2 py-2">
                      <Label size="small" weight="plus">
                        Configuração JSON (Opcional)
                      </Label>
                      <Input {...field} placeholder='{"limit": 8}' />
                      {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                    </div>
                  )}
                />
              )}

              <Controller
                control={form.control}
                name="is_active"
                render={({ field: { value, onChange } }) => (
                  <div className="flex items-center gap-x-3 py-2">
                    <input
                      type="checkbox"
                      id="is_active_create"
                      checked={value}
                      onChange={(e) => onChange(e.target.checked)}
                      className="rounded"
                    />
                    <Label size="small" weight="plus" htmlFor="is_active_create">
                      Seção Ativa?
                    </Label>
                  </div>
                )}
              />
            </div>
          </FocusModal.Body>

          <FocusModal.Footer>
            <div className="flex items-center justify-end gap-x-2">
              <Button type="button" variant="secondary" onClick={() => onOpenChange(false)}>
                Cancelar
              </Button>
              <Button type="submit" variant="primary">
                Salvar Seção
              </Button>
            </div>
          </FocusModal.Footer>
        </form>
      </FocusModal.Content>
    </FocusModal>
  )
}

function EditSectionDrawer({
  open,
  onOpenChange,
  section,
  onSuccess,
  collections,
}: {
  open: boolean
  onOpenChange: (open: boolean) => void
  section: HomepageSection
  onSuccess: () => void
  collections: any[]
}) {
  const form = useForm<SectionFormData>({
    resolver: zodResolver(sectionSchema),
    defaultValues: {
      key: section.key,
      title: section.title,
      type: section.type,
      config: section.config ? JSON.stringify(section.config) : "",
      is_active: section.is_active,
      order: section.order,
    },
  })

  const formType = form.watch("type")

  // Reset form when section changes
  useEffect(() => {
    if (section) {
        form.reset({
            key: section.key,
            title: section.title,
            type: section.type,
            config: section.config ? JSON.stringify(section.config) : "",
            is_active: section.is_active,
            order: section.order,
        });
    }
  }, [section, form])

  const handleSubmit = form.handleSubmit(async (data) => {
    try {
      let configData = null;
      if (data.config) {
          try {
              configData = JSON.parse(data.config);
          } catch(e) {
              toast.error("Configuração deve ser um JSON válido");
              return;
          }
      }

      const response = await fetch(`/admin/homepage-sections/${section.id}`, {
        method: "POST", // changed from PUT to POST to match our API route
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            ...data,
            config: configData
        }),
      })

      if (!response.ok) throw new Error("Failed to update section")

      toast.success("Seção atualizada com sucesso")
      onOpenChange(false)
      onSuccess()
    } catch (error) {
      console.error("Error updating section:", error)
      toast.error("Erro ao atualizar seção")
    }
  })

  return (
    <Drawer open={open} onOpenChange={onOpenChange}>
      <Drawer.Content>
        <Drawer.Header>
          <Heading level="h1">Editar Seção</Heading>
        </Drawer.Header>

        <form onSubmit={handleSubmit} className="flex flex-1 flex-col overflow-hidden">
          <Drawer.Body className="flex max-w-full flex-1 flex-col gap-y-6 overflow-y-auto px-6 py-4">
            <Controller
                control={form.control}
                name="title"
                render={({ field, fieldState: { error } }) => (
                  <div className="flex flex-col gap-y-2 py-2">
                    <Label size="small" weight="plus">
                      Título *
                    </Label>
                    <Input {...field} />
                    {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                  </div>
                )}
              />

              <Controller
                control={form.control}
                name="key"
                render={({ field, fieldState: { error } }) => (
                  <div className="flex flex-col gap-y-2 py-2">
                    <Label size="small" weight="plus">
                      Chave *
                    </Label>
                    <Input {...field} />
                    {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                  </div>
                )}
              />

              <Controller
                control={form.control}
                name="type"
                render={({ field, fieldState: { error } }) => (
                  <div className="flex flex-col gap-y-2 py-2">
                    <Label size="small" weight="plus">
                      Tipo de Seção *
                    </Label>
                    <Select onValueChange={field.onChange} value={field.value}>
                        <Select.Trigger>
                            <Select.Value placeholder="Selecione um tipo" />
                        </Select.Trigger>
                        <Select.Content>
                            <Select.Item value="hero_banner">Hero Banner</Select.Item>
                            <Select.Item value="featured_products">Produtos em Destaque</Select.Item>
                            <Select.Item value="single_category_grid">Categoria Única (Config: &#123;&quot;collection_id&quot;: &quot;...&quot;&#125;)</Select.Item>
                            <Select.Item value="categories_grid">Grade de Categorias</Select.Item>
                            <Select.Item value="newsletter">Newsletter</Select.Item>
                            <Select.Item value="custom_html">HTML Customizado</Select.Item>
                        </Select.Content>
                    </Select>
                    {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                  </div>
                )}
              />

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

              {formType === "single_category_grid" ? (
                <Controller
                  control={form.control}
                  name="config"
                  render={({ field, fieldState: { error } }) => {
                    let currentColl = ""
                    try {
                      currentColl = JSON.parse(field.value || "{}").collection_id || ""
                    } catch(e) {}
                    return (
                      <div className="flex flex-col gap-y-2 py-2">
                        <Label size="small" weight="plus">
                          Categoria/Coleção *
                        </Label>
                        <Select 
                          onValueChange={(val) => {
                            field.onChange(JSON.stringify({ collection_id: val }))
                          }}
                          value={currentColl}
                        >
                          <Select.Trigger>
                            <Select.Value placeholder="Selecione uma coleção" />
                          </Select.Trigger>
                          <Select.Content>
                            {collections.map(c => (
                              <Select.Item key={c.id} value={c.id}>{c.title}</Select.Item>
                            ))}
                          </Select.Content>
                        </Select>
                        {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                      </div>
                    )
                  }}
                />
              ) : (
                <Controller
                  control={form.control}
                  name="config"
                  render={({ field, fieldState: { error } }) => (
                    <div className="flex flex-col gap-y-2 py-2">
                      <Label size="small" weight="plus">
                        Configuração JSON
                      </Label>
                      <Input {...field} />
                      {error && <Text className="text-ui-fg-error text-xs">{error.message}</Text>}
                    </div>
                  )}
                />
              )}

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
              <Button size="small" type="submit" variant="primary">
                Salvar
              </Button>
            </div>
          </Drawer.Footer>
        </form>
      </Drawer.Content>
    </Drawer>
  )
}
