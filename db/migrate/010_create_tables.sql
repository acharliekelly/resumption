

CREATE TABLE skills (
  id SERIAL PRIMARY KEY,
  skill_name VARCHAR(32),
  skill_type INTEGER
);


CREATE TABLE contact_url_types (
  type_id SERIAL PRIMARY KEY,
  type_name VARCHAR(32),
  url_base VARCHAR(32)
);
