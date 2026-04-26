import { Migration } from "@medusajs/framework/mikro-orm/migrations";

export class Migration20260424035838 extends Migration {

  override async up(): Promise<void> {
    this.addSql(`create table if not exists "banner" ("id" text not null, "title" text not null, "description" text null, "image_url" text not null, "link" text not null, "link_text" text null, "is_active" boolean not null default true, "order" integer not null default 0, "created_at" timestamptz not null default now(), "updated_at" timestamptz not null default now(), "deleted_at" timestamptz null, constraint "banner_pkey" primary key ("id"));`);
    this.addSql(`CREATE INDEX IF NOT EXISTS "IDX_banner_deleted_at" ON "banner" ("deleted_at") WHERE deleted_at IS NULL;`);
  }

  override async down(): Promise<void> {
    this.addSql(`drop table if exists "banner" cascade;`);
  }

}
