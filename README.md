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
- enrollment_id
- documento_number
- class, as class.name
- Campus, as campus.name
- Expiration
- picture
- last_printed, as :date
