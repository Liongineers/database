CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS products (
  product_id    UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  product_name  VARCHAR(140) NOT NULL,
  category      VARCHAR(80) NOT NULL,
  seller_id     UUID NOT NULL,
  description   VARCHAR(3000),
  availability  INTEGER NOT NULL DEFAULT 1 CHECK (availability IN (0,1)),
  price         NUMERIC(10,2) NOT NULL CHECK (price >= 0),
  condition     VARCHAR(100),
  quantity      INTEGER NOT NULL DEFAULT 1 CHECK (quantity >= 0),
  created_at    TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at    TIMESTAMPTZ NOT NULL DEFAULT now()
);
