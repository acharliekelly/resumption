
CREATE TABLE res_contact_url (
  resume_id INTEGER REFERENCES resumes(id),
  url_id INTEGER REFERENCES contact_urls(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, url_id)
);

CREATE TABLE res_work (
  resume_id INTEGER REFERENCES resumes(id),
  work_id INTEGER REFERENCES work_experiences(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, work_id)
);

CREATE TABLE res_education (
  resume_id INTEGER REFERENCES resumes(id),
  edu_id INTEGER REFERENCES education_experiences(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, edu_id)
);

CREATE TABLE res_skills (
  resume_id INTEGER REFERENCES resumes(id),
  skill_id INTEGER REFERENCES skills(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, skill_id)
);

CREATE TABLE res_projects (
  resume_id INTEGER REFERENCES resumes(id),
  project_id INTEGER REFERENCES projects(id),
  doc_order SMALLINT,
  PRIMARY KEY (resume_id, project_id)
);
