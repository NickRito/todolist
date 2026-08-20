create table if not exists users (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	username VARCHAR(20) NOT NULL UNIQUE,
	email VARCHAR(70) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL,
	enabled BOOLEAN NOT NULL DEFAULT TRUE
);
