Rails[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Resumption - Full-Stack Online Resume App (Modified for MVP Completion)

Links:
[GitHub API](https://github.com/acharliekelly/resumption-api)
[GitHub Client](https://github.com/acharliekelly/resumption-client)
[Deployed API](https://boiling-hollows-87968.herokuapp.com/)
[Deployed Client](https://acharliekelly.github.io/resumption-client)


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

## ERD

I have an ERD, but I just realized it's for the original design, which was much more complicated than the MVP design. So, just squint a little bit when looking at it.

[ERD](https://drive.google.com/file/d/10s0px9Lhax3YNcgGKUVZGHs3wmhTA8Id/view?usp=sharing)
