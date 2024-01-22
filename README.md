# Assignment For Lattice Innovations
This project uses hosted MySQL database from aiven.io for information storage and cloud storage from cloudinary for patient photo storage. Testing can be done with the hosted database or local dump provided. By default project uses hosted database. Instructions for using desired database are included in section below.

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
- Postman: [Visit]

## Installation
To run this project locally, follow these steps:
1. Clone the repo.
2. Install node modules by executing ```npm i``` in project directory. 
3. Run ```npm start```.
   Note: This will use hosted database. Follow instructions given below if local DB is to be used.

## Dump Import instructions 
1. Open MySQL Workbench.
2. Connect to local instance.
3. Switch to "Administration" tab in Navigator.
4. Select "Data Import/Restore" under management.
5. Select "Import from Dump Project Folder" (selected by default).
6. Browse for the folder named "database" in project directory.
7. Switch to "Import Progress" tab.
8. Click "Start Import" at lower right.
9. After finished refresh your navigation section.
10. Database will be imported by the name "defaultdb".

## Switching from Hosted DB to Local
1. Go to src/db/connection.js.
2. Comment out the default pool settings.
3. Uncomment and modify the below snippet.
- ```javascript
     const pool = mysql2.createPool({
     host: "localhost",
     user: "your username",
     password: "your password",
     database: "defaultdb",   ---> Change if needed
     connectionLimit: 10,
     port: 3306,      ----------->Change if needed
     waitForConnections: true,
   });


