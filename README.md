# Student Registration System

A Spring Boot CRUD web application for Lab Sheet 04 of COSC 32133 / BECS 32263. It uses Thymeleaf for the interface, Spring Data JPA for data access, and an in-memory H2 database.

## Prerequisites

- JDK 17 or later
- Internet access the first time Maven downloads dependencies

## Run the application

From the project directory, use either command:

```powershell
.\mvnw.cmd spring-boot:run
```

```bash
./mvnw spring-boot:run
```

Then open [http://localhost:8080](http://localhost:8080). The H2 console is at [http://localhost:8080/h2-console](http://localhost:8080/h2-console). Use `jdbc:h2:mem:studentdb` as the JDBC URL, `sa` as the username, and leave the password empty.

## Features

- Create, read, edit, update, and delete student registrations.
- Server-side validation for all fields.
- Unique email validation.
- H2 console support for inspecting the `STUDENTS` table.
- Responsive Thymeleaf pages with success and error messages.

## Git workflow for the lab

```powershell
git switch -c feature/student-crud
git add .
git commit -m "Add student CRUD with H2 database"
git push -u origin feature/student-crud
```

Create a Pull Request from `feature/student-crud` into `main`, then merge it after reviewing the changes. Do not commit `target/` or `data/`.
