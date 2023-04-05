# Microverse Jobs API
A RESTFUL API built with Ruby on Rails. Its uses BCrypt and JWT gems to implement Authentication & Authorization. It performs CRUD operations on the various resources it serves.

## ERD

https://dbdiagram.io/d/642d680f5758ac5f1726f360


## About this project

This API is built as the back end for a mobile web application ([Job Matchers](https://github.com/jwillie-26/Job-Matchers-Api)) built with React on the front end and is separately deployed to Netlify. 

### End Points


#### POST
- /api/v1/users - (create user account) 
- /api/v1/login - (create session)
- /api/v1/jobs - (create job)

#### GET
- /api/v1/users - (fetch all users)
- /api/v1/favorites - (fetch all favorites)
- /api/v1/user-jobs - (fetch all logged in user's favorited jobs)
- /api/v1/jobs - (fetch all jobs)
- /api/v1/jobs/:id - (fetch all particular job)

#### PUT
- /api/v1/favorites/:id - (update favorited status when user adds/removes job to/from favorites)
- /api/v1/jobs/:id - (edit jobs)

#### DELETE
- DELETE /api/v1/jobs/:id - (delete job) 

## Built With

- Ruby on Rails
- BCrypt gem
- JWT gem 
- Postgresql 
- Heroku

## Live Demo

 For the full working application [Click here](https://microverse-jobs.netlify.app/)

## Installation

To get a local copy up and running follow these simple example steps.

### Setup

Clone [this repo](https://github.com/jwillie-26/Job-Matchers-Api)

### Usage - Follow these

1. <code>cd</code> into the project directory
2. run <code>bundle install</code>
3. run <code>rails db:migrate</code>
4. run <code>rails s</code>
5. npm start
6. Navigate to [localhost:3000](http://localhost:3000).


