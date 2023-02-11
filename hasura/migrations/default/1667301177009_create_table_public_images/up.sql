CREATE TABLE "public"."images" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "image" text NOT NULL, "receipe_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("receipe_id") REFERENCES "public"."receipe"("id") ON UPDATE restrict ON DELETE restrict, UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
