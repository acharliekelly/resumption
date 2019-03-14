Rails[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Resumption - Full-Stack Online Resume App (Modified for MVP Completion)

## User Stories

As a user, I want to be able to:
1. Create a resume, in plain text
2. Save that resume
3. Come back later and edit my resume
4. Possibly delete that resume and start over
5. That's it. There is nothing else I want to be able to do with my resume at this time.

## Wireframes

Will create wireframes for the following views:
1. Initial/Logged-out screen
2. Signup form
3. Login form
4. Logged-in Dashboard view:
  1. View your existing resumes
  2. Create new resume


## Entities

### Users
* id            PK
* email         text, unique
* pw_digest     text

### Resumes
* id            PK
* user_id       integer FK
* name          string
* format        (text | md | html)
* content       text
