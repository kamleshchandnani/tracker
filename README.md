# README #

Issue Tracker! A Simplest Application Tool for tracking issues.

### Summary ###

* This Application can be used for tracking issues.

* The Technical Stack used for this app are.

1. Spring MVC 
2. Hibernate
3. Apache Maven
4. Angular JavaScript

### Application Artifacts ###

1. Any user can view the issues whose status are "Open"
2. To create a issue the user needs to login
3. If the user is not having account then he/she needs to signup.

### Overview of services ###
* There are total 2 Main Services

1. User Related Services.

   * The user service has 3 tasks which are implemented as services
     
     1. Create user: This service is used to create a new user
     2. Check user: This service is invoked before creating a user to check whether a user already exists with the given username.
     3. Login user: This service checks the user credentials and login the user if credentials are correct.

2. Issue Related Services.

 * The issue service has 2 tasks which are implemented as services
     
     1. Create issue: This service is used to create a new issue.
     2. Get issues: This service is used to fetch all the issues whose status is Open.

### Tools required To run the application ###

1. **Database:** MySQL
2. **Server:** Tomcat V7.0
3. **Java:** 1.6 or above
4. Web Browser
5. Eclipse with Maven and GIT plugins installed

### Prerequisite to run the application ###

1. MySql should be configured at **Port:3306**
2. Mysql **username:root** and **password:""(blank/no-passowrd)**
3. Create database trackerdb
4. Tomcat should be configured to run at **Port:8080** (which is by default)
5. Clone the repo in eclipse
6. Right Click the project->Maven->Update Project->check force update of snapshots options
7. Run the project
In your browser the default URL will be **http://localhost:8080/Tracker/#/home**