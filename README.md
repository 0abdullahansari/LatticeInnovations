# Assignment For Lattice Innovations
This project uses live MySQL database from aiven.io, and cloud storage from cloudinary for patient photo storage.
An identical dump for the MySQL database with EER diagram has been included.


## Frameworks/libraries

- Express
- multer : For handlig multipart/form-data and file type validation.
- bcrypt :  For hashing passwords.
- cloudinary : Cloud storage for images.
- mysql2 : For database handling.
- validator : For validating emails and phone numbers.
- fs : For unlinking photo after successful upload or an error.

## API Endpoints
- /register : [POST] Register patients by passing valid psychiatrist id and patient details.
- /details :  [GET] Fetch Hospital details by passing valid hospital id as query parameter.


## Installation

To run this project locally, follow these steps:

1. Clone the repo.
2. Install node modules.
3. Run "npm start".
   ### Note: Additional changes will be required if dump is to be used.
