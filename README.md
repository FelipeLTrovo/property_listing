# Properties Listing

![image](https://user-images.githubusercontent.com/15835917/208355396-3cee3081-45e3-40bb-bb8c-055151736086.png)


👋 Hello and welcome!

A simple application for properties listings.

As of now, the application presents the following features:

- Lists all the registed properties.
- Detailed view of the property where all its uploaded photos will be displayed.

**:warning: Hint:** This project is configured to run under Docker.

- **🛠 Docker Development Environment**
    - :computer: [Linux Ubuntu LTS](https://ubuntu.com/download/desktop)
    - 🐳 [Docker](https://docs.docker.com/engine/installation/)
    - 🐳 [Docker Compose](https://docs.docker.com/compose/)
    - **💡 Hint:** [Docker Documentation](https://docs.docker.com/)

# Setup

## 🐳 Docker Development Environment

After installing both docker and docker-compose, in the project root directory, execute the following command to start our container:

```sh
docker-compose up
```

In another terminal tab, run the command below to access our container shell:

```sh
docker-compose run --rm web bash
```

Build the project assets pipeline:

```sh
./bin/dev
```

After loading up the shell, create, migrate and populate the database by running: 

```sh
rails db:create db:migrate db:seed
```

🚀 :clap: Finally, you can access the application by heading out to: [localhost:3000](http://localhost:3000)

In order to run the test suite, execute the command below:

```sh
rspec
```
