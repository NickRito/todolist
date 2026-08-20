create table if not exists tasks (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	title VARCHAR(50) NOT NULL,
	description TEXT,
	is_concluded BOOLEAN DEFAULT FALSE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW(),
    modified_at TIMESTAMP WITHOUT TIME ZONE
);

--Titulo - Obrigatorio usuario
--Descrição e ou lista com checkboxes - obrigatorio usuario
--Checkbox geral para marcar concluida - opcional usuario
--Data de criação - sistema
--Data de modificação - sistema
--Data de conclusão - sistema