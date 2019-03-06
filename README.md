Rails[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Resumption - Full-Stack Online Resume App

## User Stories

As a user, I want to be able to:
1. Create a resume,
  1. or multiple resumes,
  2. or parts of a resume, to be combined at a later time
2. in a format that allows for semantic markup
3. but without committing to either the final resume content
4. or the final resume layout;
5. Edit the content and change the layout at will
6. And when I'm satisfied with my result, share it via a permanent public URL
7. Also, not pay for any of those things

## Wireframes

Will create wireframes for the following views:
1. Initial/Logged-out screen
2. Signup form
3. Login form
4. Logged-in Dashboard view:
  1. View your existing resumes & resume sections
  2. Create or upload new sections
  3. Build new layouts by
    1. combining and ordering sections
    2. selecting templates
  4. Make finished layouts public
5. Public view of finished resume

## Entities

### Users
id            PK
email         text, unique
pw_digest     text
user_name     text (adding this to schema, so public resume URL will look nicer)

### Section
id            PK
user_id       integer FK
section_name  text
section_type  integer FK
content  text (MD)

### Section Type (static)
id            PK
type_name     text

### Template (static)
id            PK
template_name text
content       text (CSS)

### Layout
id            PK
user_id       integer FK
layout_name   text
template_id   integer FK
is_public     boolean

### Section Layout
layout_id     integer FK
section_id    integer FK
position      ? (indicates where the section goes,
              so either ordering position 1-8 or else
              something like L1 for 1st position left col)
PK (layout_id, section_id)

When resume is published, is_public = true.
Then public URL: (deployment-url)/resumes/{user_name}/{layout_name}
Resumes controller will have to figure out how to handle that.
