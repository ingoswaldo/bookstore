# Bookstore
## Running

### System dependencies

Any computer that can run this application.

| Dependency  | Version                |
|-------------|------------------------|
| GIT VCS     | **any modern version** |
| Ruby        | v3.1+                  |
| PostgresSQL | v14.2+                 |

### Instructions

1. Clone this repository locally, for example `git clone https://github.com/ingoswaldo/bookstore.git`
2. Change to the project's root directory, for example `cd bookstore`
3. Set up a user and database on postgres on your local machine and add the configuration in the `.env` file, 
   for example `DATABASE` and `DATABASE_TEST` 
4. Please run `ruby bin/rails server`