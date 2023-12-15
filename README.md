# Application Name
E-Commerce Fullstack Flutter

## Description
This application was created for learning in integrating Flutter with the Xendit payment gateway API, Raja Ongkir API and also implementing BLOC in making Flutter as a whole. To create the backend using the Node Js language implemented in Strapi. E-Commerce is an application that has `Login`, `Register`, `Add Product`, `Stored in cart`, `Add Address`, `Select the address that has been added`, `Choose a delivery courier`, `Payment with xendit`, `Track Orders`, `View Order Details`.

## Download the Repository
- Download the repository to your computer using the `git clone` command. Url of the repository can be seen in the desired repository.
```
git clone <repository url> <destination folder>
```
## How to Run Application:
```
- flutter pub get 
- flutter run 
```

# API Spesication
## Authentication

### Register Admin
#### Request Body :
- Method: POST
- Endpoint: `http://localhost:1337/admin/auth/register-admin`
- Header : 
    - Content-Type: application/json
    - Accept: application/json
- Body :
```json

{
    "firstName": "admin",
    "lastName": "last",
    "password": "password#21",
    "confirmPassword": "password#21",
    "email": "rizqirezaardiansyahadmin@gmail.com",
    "username": "fullstack-jay-admin"
}

```

### Response Body (Success) :

```json

{
    "data": "OK",
    "jwt": "Bearer Token",
    "admin": {
        "firstName": "admin",
        "lastName" : "last",
        "email": "rizqirezaardiansyahadmin@gmail.com",
        "username": "fullstack-jay-admin",
        "provider": "local",
        "confirmed": true,
        "blocked": false,
        "createdAt": "2023-12-15T08:44:48.110Z",
        "updatedAt": "2023-12-15T08:44:48.110Z"
    }
}

```

### Response Body (Failed) this value is required

```json

{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "this value is required",
        "details": {
            "errors": [
                {
                    "path": [
                        "firstName"
                    ],
                    "message": " is a required field",
                    "name": "ValidationError",
                    
                },
                {
                    "path": [
                        "email"
                    ],
                    "message": " is a required field",
                    "name": "ValidationError",
                    
                },
                {
                    "path": [
                        "password"
                    ],
                    "message": " is a required field",
                    "name": "ValidationError",
                    
                },
                {
                    "path": [
                        "confirmPassword"
                    ],
                    "message": " is a required field",
                    "name": "ValidationError",
                    
                }
            ]
        }
    }

}

```

### Response Body (Failed) password

```json

{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "password is a required field",
        "details": {
            "errors": [
                {
                    "path": [
                        "password"
                    ],
                    "message": "Password must contain at least one number",
                    "name": "ValidationError",
                    
                },
                {
                    "path": [
                        "confirmPassword"
                    ],
                    "message": "Passwords do not match",
                    "name": "ValidationError",
                    
                }
            ]
        }
    }

}

```



### Register User
#### Request Body :
- Method: POST
- Endpoint: `localhost:1337/api/auth/local/register`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body :
``` json
{
    "name": "reza",
    "password": "password",
    "email": "rizqirezaardiansyah@gmail.com",
    "username": "fullstack_jay"
}
```

### Response Body (Success) :

```json
{
    "data": "OK",
    "jwt": "Bearer Token",
    "user": {
        "id": 1,
        "username": "fullstack_jay",
        "email": "rizqirezaardiansyah@gmail.com",
        "provider": "local",
        "confirmed": true,
        "blocked": false,
        "createdAt": "2023-12-15T08:44:48.110Z",
        "updatedAt": "2023-12-15T08:44:48.110Z"
    }
}

```

### Response Body (Failed) email is a required field

```json
{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "email is a required field",
        "details": {
            "errors": [
                {
                    "path": [
                        "email"
                    ],
                    "message": " is a required field",
                    "name": "ValidationError"
                }
            ]
        }
    }
}

```

### Response Body (Failed) username is a required field

```json
{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "username is a required field",
        "details": {
            "errors": [
                {
                    "path": [
                        "username"
                    ],
                    "message": "username is a required field",
                    "name": "ValidationError"
                }
            ]
        }
    }
}

```

### Response Body (Failed) password is a required field

```json
{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "password is a required field",
        "details": {
            "errors": [
                {
                    "path": [
                        "password"
                    ],
                    "message": "password is a required field",
                    "name": "ValidationError"
                }
            ]
        }
    }
}

```

## Response Body (Failed) 2 errors occured

```json

{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "2 errors occurred",
        "details": {
            "errors": [
                {
                    "path": [
                        "email"
                    ],
                    "message": "email is a required field",
                    "name": "ValidationError"
                },
                {
                    "path": [
                        "password"
                    ],
                    "message": "password is a required field",
                    "name": "ValidationError"
                }
            ]
        }
    }
}

```

## Reponse Body (Failed) 3 errors occured

```json
{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "3 errors occurred",
        "details": {
            "errors": [
                {
                    "path": [
                        "email"
                    ],
                    "message": "email is a required field",
                    "name": "ValidationError"
                },
                {
                    "path": [
                        "username"
                    ],
                    "message": "username is a required field",
                    "name": "ValidationError"
                },
                {
                    "path": [
                        "password"
                    ],
                    "message": "password is a required field",
                    "name": "ValidationError"
                }
            ]
        }
    }
}

```

### Response Body (Failed) Email or Username already taken

```json
{
    "data": null,
    "error": {
        "status": 400,
        "name": "ApplicationError",
        "message": "Email or Username are already taken",
        "details": {}
    }
}
```

### Login User
#### Request Body
- Method: POST
- Endpoint: `localhost:1337/api/auth/local`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body :
```json

{
    "identifier" : "rizqirezaardiansyah@gmail.com",
    "password" : "password"
}

```

### Response Body (Success)

```json
{
    "data": "OK",
    "jwt": "Bearer token",
     "user": {
        "id": 14,
        "username": "fullstack_jau",
        "email": "rizqirezaardiansyah@gmail.com",
        "provider": "local",
        "confirmed": true,
        "blocked": false,
        "createdAt": "2023-12-05T01:03:17.477Z",
        "updatedAt": "2023-12-05T01:03:17.477Z"
    }
}
```


### Reponse Body (Failed) Identifier is a required

```json

{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "identifier is a required field",
        "details": {
            "errors": [
                {
                    "path": [
                        "identifier"
                    ],
                    "message": "identifier is a required field",
                    "name": "ValidationError"
                }
            ]
        }
    }
}

```

### Reponse Body (Failed) Password is a required

```json

{
    "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "password is a required field",
        "details": {
            "errors": [
                {
                    "path": [
                        "password"
                    ],
                    "message": "password is a required field",
                    "name": "ValidationError"
                }
            ]
        }
    }
}

```

### Product (Add Product)
#### Request Body 
- Method: POST
- Endpoint: `localhost:1337/api/products` 
- Header : 
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json

{
    "data": {
        "name": "Macbook Pro 2023",
        "description": "Chip:\nCPU 8-core dengan 6 core performa dan 2 core efisiensi\nGPU 14-core\nNeural Engine 16-core\nBandwidth memori 200 GB/dtk\nMedia engine\nH.264, HEVC, ProRes, dan ProRes RAW yang didukung hardware\nMesin dekode video\nMesin enkode video\nMesin enkode dan dekode ProRes\nDapat dikonfigurasi menjadi:\nM1 Pro dengan CPU 10-core dan GPU 14‑core\nM1 Pro dengan CPU 10‑core dan GPU 16‑core\nM1 Max dengan CPU 10‑core dan GPU 24‑core\nM1 Max dengan CPU 10‑core dan GPU 32‑core\n\nMemori\nChip Apple M1 Pro\n\nMemori terintegrasi 16 GB\nDapat dikonfigurasi menjadi 32 GB (M1 Pro atau M1 Max) atau 64 GB (M1 Max)",
        "prices": "25000000",
        "stock": 10
    }
}

```
### Response Body (Success)

```json
{
    
}


```



