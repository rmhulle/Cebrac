# Cebrac
Sistema de identidade estudantil


## MOdelos

### User
- name, string
- email, string,
- role, string



### Class
- id
- name
- belongs_to campus


### Campus
- id
- name
- has_many classes


### Identity
- name
- matricula
- documento
- curso
- unidade
- Validade
- foto
- ultima vez impresso
