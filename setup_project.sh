#!/bin/bash

# Create a new virtual environment
pip install virtualenv

#Create folder for Environments
mkdir Environmets
cd Environmets

#create virtualenv 
echo "Enter name of Project: "
read  pn 
virtualenv $pn 
source $pn\bin\activate

#path
which python
which pip 
pip list

# Upgrade pip
pip install --upgrade pip

# Install Django
pip install django
pip install psycopg2
pip install pillow

# Enter name of dajngo project
echo"Enter django project name: "
read pname
 
# Create a new Django project
django-admin startproject $pname

# Packages requirements 
pip freeze --local > requirements.txt
ls
cat requirements.txt
  
# Run migrations
py manage.py migrate

# Start the Django development server
py manage.py runserver

	
