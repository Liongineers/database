CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    user_id     UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name        VARCHAR(100) NOT NULL,
    role        VARCHAR(50) NOT NULL,
    phonenumber VARCHAR(20),
    merch       VARCHAR(50),
    updated_at  TIMESTAMP WITH TIME ZONE DEFAULT now(),
    email       VARCHAR(255) NOT NULL UNIQUE
);
