CREATE TABLE resumes (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  ref_title TEXT,
  contact_id INTEGER REFERENCES contact_info(id),
  objective_id INTEGER REFERENCES objectives(id),
  created_on TIMESTAMP,
  last_modified TIMESTAMP
);

CREATE TABLE contact_info (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  first_name VARCHAR(32),
  last_name VARCHAR(32),
  address1 VARCHAR(32),
  address2 VARCHAR(32),
  city VARCHAR(32),
  state CHAR(2),
  phone CHAR(10),
  email VARCHAR(64)
);

-- alternately, instead of contact_info
CREATE TABLE contact_fields (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  field_name TEXT,
  field_data TEXT
);
CREATE TABLE res_contact_fields (
  resume_id INTEGER REFERENCES resumes(id),
  field_id INTEGER REFERENCES contact_fields(id),
  PRIMARY KEY (resume_id, field_id)
);


CREATE TABLE contact_url_types (
  type_id SERIAL PRIMARY KEY,
  type_name VARCHAR(32),
  url_base VARCHAR(32)
);

CREATE TABLE contact_urls (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  type_id INTEGER REFERENCES contact_url_types(type_id),
  url VARCHAR(64)
);

CREATE TABLE res_contact_url (
  resume_id INTEGER REFERENCES resumes(id),
  url_id INTEGER REFERENCES contact_urls(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, url_id)
);



CREATE TABLE objectives (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  objective TEXT
);

CREATE TABLE work_experiences (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  company VARCHAR(64),
  location VARCHAR(32),
  start_date DATE NOT NULL,
  end_date DATE NULL,
  exp_description TEXT
);

CREATE TABLE accomplishments (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  acc_type CHAR(1), -- W, E, P
  experince_id INTEGER,
  acc_description TEXT
);

CREATE TABLE res_work (
  resume_id INTEGER REFERENCES resumes(id),
  work_id INTEGER REFERENCES work_experiences(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, work_id)
);

CREATE TABLE education_experiences (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  start_date DATE,
  end_date DATE,
  school_name VARCHAR(64),
  location VARCHAR(32),
  edu_description TEXT
);

CREATE TABLE res_education (
  resume_id INTEGER REFERENCES resumes(id),
  edu_id INTEGER REFERENCES education_experiences(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, edu_id)
);

CREATE TABLE skills (
  id SERIAL PRIMARY KEY,
  skill_name VARCHAR(32),
  skill_type INTEGER
);

CREATE TABLE user_skills (
  skill_id INTEGER REFERENCES skills(id),
  user_id INTEGER REFERENCES users(id),
  PRIMARY KEY (skill_id, user_id)
);

CREATE TABLE res_skills (
  resume_id INTEGER REFERENCES resumes(id),
  skill_id INTEGER REFERENCES skills(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, skill_id)
);

CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  project_name VARCHAR(32),
  completed_on DATE,
  project_url VARCHAR(64),
  project_description TEXT
);

CREATE TABLE res_projects (
  resume_id INTEGER REFERENCES resumes(id),
  project_id INTEGER REFERENCES projects(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, project_id)
);
