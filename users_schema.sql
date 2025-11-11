CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    user_id     UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name        VARCHAR(100) NOT NULL,
    role        VARCHAR(50) NOT NULL,
    phoneNumber VARCHAR(20),
    merch       VARCHAR(50)
);
