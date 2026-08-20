create table if not exists subtasks (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	task_id UUID NOT NULL REFERENCES tasks(id) ON DELETE CASCADE,
	title VARCHAR(50) NOT NULL,
	description TEXT,
	is_concluded BOOLEAN DEFAULT FALSE,
	created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    modified_at TIMESTAMP WITHOUT TIME ZONE
);