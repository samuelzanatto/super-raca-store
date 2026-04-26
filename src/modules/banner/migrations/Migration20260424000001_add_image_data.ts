import { Migration } from "@medusajs/framework/mikro-orm/migrations"

export class Migration20260424000001AddImageData extends Migration {
  async up(): Promise<void> {
    this.addSql(
      `alter table "banner" add column "image_data" text null;`
    )
    this.addSql(
      `alter table "banner" alter column "image_url" drop not null;`
    )
  }

  async down(): Promise<void> {
    this.addSql(
      `alter table "banner" drop column "image_data";`
    )
    this.addSql(
      `alter table "banner" alter column "image_url" set not null;`
    )
  }
}
