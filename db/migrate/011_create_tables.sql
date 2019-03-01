
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


CREATE TABLE contact_urls (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  type_id INTEGER REFERENCES contact_url_types(type_id),
  url VARCHAR(64)
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

CREATE TABLE education_experiences (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  start_date DATE,
  end_date DATE,
  school_name VARCHAR(64),
  location VARCHAR(32),
  edu_description TEXT
);

CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  project_name VARCHAR(32),
  completed_on DATE,
  project_url VARCHAR(64),
  project_description TEXT
);

CREATE TABLE user_skills (
  skill_id INTEGER REFERENCES skills(id),
  user_id INTEGER REFERENCES users(id),
  PRIMARY KEY (skill_id, user_id)
);
