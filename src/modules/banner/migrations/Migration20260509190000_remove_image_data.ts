import { Migration } from "@medusajs/framework/mikro-orm/migrations"

export class Migration20260509190000RemoveImageData extends Migration {
  override async up(): Promise<void> {
    this.addSql(`alter table "banner" drop column if exists "image_data";`)
  }

  override async down(): Promise<void> {
    this.addSql(`alter table "banner" add column if not exists "image_data" text null;`)
  }
}
