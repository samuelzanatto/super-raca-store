import { Migration } from "@medusajs/framework/mikro-orm/migrations";

export class Migration20260425210023 extends Migration {

  override async up(): Promise<void> {
    this.addSql(`alter table if exists "homepage_section" drop constraint if exists "homepage_section_type_check";`);

    this.addSql(`alter table if exists "homepage_section" add constraint "homepage_section_type_check" check("type" in ('hero_banner', 'featured_products', 'single_category_grid', 'categories_grid', 'newsletter', 'custom_html'));`);
  }

  override async down(): Promise<void> {
    this.addSql(`alter table if exists "homepage_section" drop constraint if exists "homepage_section_type_check";`);

    this.addSql(`alter table if exists "homepage_section" add constraint "homepage_section_type_check" check("type" in ('hero_banner', 'featured_products', 'categories_grid', 'newsletter', 'custom_html'));`);
  }

}
