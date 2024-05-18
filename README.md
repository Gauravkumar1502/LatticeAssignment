# Psychiatry Patient Management System

This project is a web backend for managing patients registered by psychiatrists in various hospitals. It provides RESTful APIs for patient registration and fetching psychiatrist details for a given hospital.

## Technologies Used

- **Express.js**: Used as the web framework for handling HTTP requests and responses.
- **MySQL**: Chosen as the database to store patient and hospital information.
- **Postman**: Used for testing the RESTful APIs.

## Installation

1. Clone the repository.
2. Run `npm install` to install the dependencies.
3. Create a `.env` file in the root directory and add the following environment variables:
   - `DB_HOST`: The hostname of the MySQL database.
   - `DB_USER`: The username to connect to the MySQL database.
   - `DB_PASSWORD`: The password to connect to the MySQL database.
   - `DB_NAME`: The name of the MySQL database.
4. Run `npm run dev` to start the server.

## RESTful API Endpoints

### Hospitals

- **GET /api/v1/hospitals**: Fetches the details of all hospitals.
- **GET /api/v1/hospitals/:id**: Fetches the details of a hospital by ID.
- **GET /api/v1/hospitals/details/:id**: Fetches the details of a hospital along with the psychiatrists working there.

### Patients

- **GET /api/v1/patients**: Fetches the details of all patients.
- **GET /api/v1/patients/:id**: Fetches the details of a patient by ID.
- **POST /api/v1/patients/register**: Registers a new patient.

### Psychiatrists

- **GET /api/v1/psychiatrists**: Fetches the details of all psychiatrists.
- **GET /api/v1/psychiatrists/:id**: Fetches the details of a psychiatrist by ID.

## Postman Collection

The Postman collection for testing the RESTful APIs can be found [here](https://cloudy-desert-108804.postman.co/workspace/New-Team-Workspace~0c54810d-9589-4807-9b75-ed0cb590d3fa/collection/27146002-c811b5b2-199d-47a7-9376-a2460bb2cd6b?action=share&creator=27146002).

## Database

The database schema and database dump can be found in the [database](./src/database/) directory.

- There is a seprate dump folder in the database folder which contains the database dump file.
- You can import this file in your MySQL database to get the database schema and some sample data. [database dump file](./src/database/dump).
