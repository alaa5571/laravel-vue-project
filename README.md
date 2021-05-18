# Laravel**Vue**Project

# Getting started

Assuming you've already installed on your machine: PHP (>= 7.2.0) or less, Laravel, Composer and Node.js.

## Installation

Clone the repository

    git clone https://github.com/alaa5571/laravel-vue-project.git

Switch to the repo folder

    cd laravel-vue-project

Install all the dependencies using composer

    composer install

Install all the dependencies using Npm

    npm install

Copy the example env file and make the required configuration changes in the .env file

    cp .env.example .env

Generate a new application key

    php artisan key:generate

Run the database migrations (**Set the database connection in .env before migrating**)

    php artisan migrate

Run the database Seeders (**Generate App Data**)

    php artisan db:seed

Link Storage (**let pictures work well**)

    php artisan storage:link

Start the local development server

    php artisan serve

Start the local development server

    npm run dev

You can now access the server at http://localhost:8000

**TL;DR command list**

    git clone https://github.com/alaa5571/laravel-vue-project.git
    cd laravel-vue-project
    composer install
    npm install
    cp .env.example .env
    php artisan key:generate

**Make sure you set the correct database connection information before running the migrations** [Environment variables](#environment-variables)

    php artisan migrate
    php artisan db:seed
    php artisan storage:link
    php artisan serve
    npm run dev

## Database seeding

Run the database seeder and you're done

    php artisan db:seed

**_Note_** : It's recommended to have a clean database before seeding. You can refresh your migrations at any point to clean the database by running the following command

    php artisan migrate:refresh

**_Note_** : If you have PhP version more than (7.2.0) You'll face a Problem with compact()
To solve it

Go to your project in

    vendor\laravel\framework\src\Illuminate\Database\Query\Builder.php

On line number 1337, you can found below code inside the addWhereExistsQuery method

    $this->wheres[] = compact('type', 'operator', 'query', 'boolean');

You just remove the 'operator' parameter.

---
