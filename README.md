# Assignment For Lattice Innovations
This project uses live MySQL database from aiven.io for information storage and cloud storage from cloudinary for patient photo storage. No need to configure local databse for testing. Read Installation section to run locally. An identical dump for the MySQL database with EER diagram has been included.

[visit]:https://www.postman.com/spaceflight-technologist-25086773/workspace/testing/documentation/29088794-9ac53631-382e-43f6-9cdc-3f678e219ecb
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
## API Testing
- API's can be tested on below Postman link. Documentation and examples are included.
- Postman:[Visit]

## Installation
To run this project locally, follow these steps:
1. Clone the repo.
2. Install node modules.
3. Run "npm start".
