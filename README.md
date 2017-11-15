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

# Azure Deployment (Optional)

## Docker Machine:

Edit config/azure file. It does not have any extension. Please do not rename it.

Provide `Subscription ID` related to your Azure account. You can specify any `Resource Group` that Azure accepts. It will be automaticy created if not present. Specify any Azure region az your `Location`.

Edit `config/azure` file:
````
export AZURE_SUBSCRIPTION_ID=
export AZURE_RESOURCE_GROUP=
export AZURE_LOCATION=WestEurope
````

Apply these commands: (it may take a while to finish)
```
source config/azure
docker-machine create --driver azure --azure-open-port 8000  --azure-size Standard_DS1_v2 --azure-storage-type "Premium_LRS" MACHINE_NAME

```
To see how to connect your Docker Client to the Docker Engine running on this virtual machine, run:

```
docker-machine env MACHINE_NAME
```

Run this command to configure your shell: 
```
# eval $(docker-machine env MACHINE_NAME)
```

## Miscellaneous commands:
```
docker-machine ip django-test
docker-machine ssh django-test
docker-machine rm MACHINE_NAME
```