# django-start
initial seed to start a brand new django project

## Installation

Clone the repository with desired project name. Project name cannot include hyphen so cloning without renaming it will couse problems on `startproject` command.

````bash
git clone https://github.com/serkanaltuntas/django-start.git PROJECT_NAME
cd PROJECT_NAME
````

````bash
sh scripts/startproject.sh
sh scripts/runserver.sh
sh scripts/migrate.sh
sh scripts/createsuperuser.sh
...
sh scripts/pause.sh
````

If you would like to terminate: (destroy the database)
````bash
sh scripts/terminate.sh
````

