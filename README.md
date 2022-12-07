# Cinema Service API
API for Cinema Service and store data in DB. It provides users, movies, genres, cinema halls and movie sessions managing.

## Installation
### Setup Django project:  
Run commands in terminal:
```
git clone git@github.com:ketstap162/cinema-service-api.git
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
set DB_HOST=<your db hostname>
set DB_NAME=<your db name>
set DB_USER=<your db username>
set DB_PASSWORD=<your db user password>
set SECRET_KEY=<your secret key>
python manage.py migrate
```
#### Start Django project: 
Use command `python manage.py runserver 7000` (with 7000 port) in terminal

### Build Docker container:
Run commands in terminal:
```
docker-compose build
docker-compose up
```

### Access to API:
Default domain: `127.0.0.1:7000`

Create user path: `<domain>/api/user/register/`  
Get JWT: `<domain>/api/user/token/`  

Swagger documentation: `<domain>/api/doc/swagger/`

### Features
* Functional for managing Cinema Service
* Image storage
* JSON Web Token
* Redoc and Swagger documentations
* Completed Docker building preparations
* Built-in Postgress database
