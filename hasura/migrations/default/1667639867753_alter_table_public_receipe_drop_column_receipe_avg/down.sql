alter table "public"."receipe" alter column "receipe_avg" drop not null;
alter table "public"."receipe" add column "receipe_avg" text;
