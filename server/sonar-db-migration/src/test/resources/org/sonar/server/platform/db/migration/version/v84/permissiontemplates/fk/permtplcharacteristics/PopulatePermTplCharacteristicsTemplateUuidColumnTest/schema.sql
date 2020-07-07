CREATE TABLE "PERMISSION_TEMPLATES"(
    "ID" INTEGER NOT NULL AUTO_INCREMENT (1,1),
    "UUID" VARCHAR(40) NOT NULL,
    "ORGANIZATION_UUID" VARCHAR(40) NOT NULL,
    "NAME" VARCHAR(100) NOT NULL,
    "KEE" VARCHAR(100) NOT NULL,
    "DESCRIPTION" VARCHAR(4000),
    "CREATED_AT" TIMESTAMP,
    "UPDATED_AT" TIMESTAMP,
    "KEY_PATTERN" VARCHAR(500)
);
ALTER TABLE "PERMISSION_TEMPLATES" ADD CONSTRAINT "PK_PERMISSION_TEMPLATES" PRIMARY KEY("ID");

CREATE TABLE "PERM_TPL_CHARACTERISTICS"(
    "UUID" VARCHAR(40) NOT NULL,
    "TEMPLATE_ID" INTEGER NOT NULL,
    "TEMPLATE_UUID" VARCHAR(40),
    "PERMISSION_KEY" VARCHAR(64) NOT NULL,
    "WITH_PROJECT_CREATOR" BOOLEAN DEFAULT FALSE NOT NULL,
    "CREATED_AT" BIGINT NOT NULL,
    "UPDATED_AT" BIGINT NOT NULL
);
ALTER TABLE "PERM_TPL_CHARACTERISTICS" ADD CONSTRAINT "PK_PERM_TPL_CHARACTERISTICS" PRIMARY KEY("UUID");
CREATE UNIQUE INDEX "UNIQ_PERM_TPL_CHARAC" ON "PERM_TPL_CHARACTERISTICS"("TEMPLATE_ID", "PERMISSION_KEY");