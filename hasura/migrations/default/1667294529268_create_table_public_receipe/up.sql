CREATE TABLE "public"."receipe" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "receipe_name" text NOT NULL, "prep_time" text NOT NULL, "user_id" uuid NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("user_id") REFERENCES "public"."user"("id") ON UPDATE restrict ON DELETE restrict, UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
