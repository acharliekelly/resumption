CREATE TABLE resumes (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  ref_title TEXT,
  contact_id INTEGER REFERENCES contact_info(id),
  objective_id INTEGER REFERENCES objectives(id),
  created_on TIMESTAMP,
  last_modified TIMESTAMP
);
