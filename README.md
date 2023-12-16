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
    "status": "OK",
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

### Response Body (Failed) this value is required :

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

### Response Body (Failed) password :

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

### Login Admin

#### Request Body :
- Method: POST
- Endpoint: ``
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json

{
    "identifier": "rizqirezaardiansyahadmin@gmail.com",
    "password": "password#21",
}

```

### Response Body (Success) :
```json

{
    "status": "OK",
    "jwt": "Bearer token",
     "user": {
        "id": 14,
        "username": "fullstack_jay",
        "email": "rizqirezaardiansyahadmin@gmail.com",
        "provider": "local",
        "confirmed": true,
        "blocked": false,
        "createdAt": "2023-12-05T01:03:17.477Z",
        "updatedAt": "2023-12-05T01:03:17.477Z"
    }
}

```

### Response Body (Failed) :

```json

 "data": null,
    "error": {
        "status": 400,
        "name": "ValidationError",
        "message": "invalid creadential",
        "details": {
            "errors": [
                {
                    "path": [
                        "identifier"
                    ]
                    "message": "password is required",
                    "name": "ValidationError"
                }
            ]
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
    "status": "OK",
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

### Response Body (Failed) email is a required field :

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

### Response Body (Failed) username is a required field :

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

### Response Body (Failed) password is a required field :

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

## Response Body (Failed) 2 errors occured :

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

## Response Body (Failed) 3 errors occured :

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

### Response Body (Failed) Email or Username already taken :

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

#### Request Body :
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

### Response Body (Success) :

```json
{
    "status": "OK",
    "jwt": "Bearer token",
     "user": {
        "id": 14,
        "username": "fullstack_jay",
        "email": "rizqirezaardiansyah@gmail.com",
        "provider": "local",
        "confirmed": true,
        "blocked": false,
        "createdAt": "2023-12-05T01:03:17.477Z",
        "updatedAt": "2023-12-05T01:03:17.477Z"
    }
}
```


### Response Body (Failed) Identifier is a required :

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

### Response Body (Failed) Password is a required :

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

### Product (Add Product) Admin

#### Request Body :
- Method: POST
- Endpoint: `localhost:1337/api/products` 
- Header : 
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json

{
    "status": "OK",
    "data": {
        "name": "Macbook Pro 2023",
        "description": "Chip:\nCPU 8-core dengan 6 core performa dan 2 core efisiensi\nGPU 14-core\nNeural Engine 16-core\nBandwidth memori 200 GB/dtk\nMedia engine\nH.264, HEVC, ProRes, dan ProRes RAW yang didukung hardware\nMesin dekode video\nMesin enkode video\nMesin enkode dan dekode ProRes\nDapat dikonfigurasi menjadi:\nM1 Pro dengan CPU 10-core dan GPU 14‑core\nM1 Pro dengan CPU 10‑core dan GPU 16‑core\nM1 Max dengan CPU 10‑core dan GPU 24‑core\nM1 Max dengan CPU 10‑core dan GPU 32‑core\n\nMemori\nChip Apple M1 Pro\n\nMemori terintegrasi 16 GB\nDapat dikonfigurasi menjadi 32 GB (M1 Pro atau M1 Max) atau 64 GB (M1 Max)",
        "price": "25000000",
        "stock": 10
    }
}

```
### Response Body (Success) :

```json
{
    "status": "OK",
    "data": {
        "id": 3,
        "attributes": {
            "name": "Macbook Pro 2023",
            "description": "Chip:\nCPU 8-core dengan 6 core performa dan 2 core efisiensi\nGPU 14-core\nNeural Engine 16-core\nBandwidth memori 200 GB/dtk\nMedia engine\nH.264, HEVC, ProRes, dan ProRes RAW yang didukung hardware\nMesin dekode video\nMesin enkode video\nMesin enkode dan dekode ProRes\nDapat dikonfigurasi menjadi:\nM1 Pro dengan CPU 10-core dan GPU 14‑core\nM1 Pro dengan CPU 10‑core dan GPU 16‑core\nM1 Max dengan CPU 10‑core dan GPU 24‑core\nM1 Max dengan CPU 10‑core dan GPU 32‑core\n\nMemori\nChip Apple M1 Pro\n\nMemori terintegrasi 16 GB\nDapat dikonfigurasi menjadi 32 GB (M1 Pro atau M1 Max) atau 64 GB (M1 Max)",
            "price": 25000000,
            "stock": 10,
            "createdAt": "2023-12-15T13:43:32.982Z",
            "updatedAt": "2023-12-15T13:43:32.982Z",
            "publishedAt": "2023-12-15T13:43:32.978Z"
        }
    },
    "meta": {}
}
    
```

### Product(Get By Id) Admin & User Public

#### Response Body (Success) :
- Method : Get
- Endpoint: `localhost:1337/api/products/1?populate=*`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body : 

```json

{
    "data": {
        "id": 1,
        "attributes": {
            "name": "AQUA LED 65",
            "description": "Android Smart TV 65 inch dilengkapi Smart AI Google Assistant, dengan Android Device IoT Hub.\n4K HDR\nOne touch remote for Netflix and Youtube\nBluetooth",
            "price": "5200000",
            "stock": 5,
            "createdAt": "2023-11-13T11:06:23.064Z",
            "updatedAt": "2023-11-13T11:06:49.117Z",
            "publishedAt": "2023-11-13T11:06:49.109Z",
            "images": {
                "data": [
                    {
                        "id": 1,
                        "attributes": {
                            "name": "ata1.jpeg",
                            "alternativeText": null,
                            "caption": null,
                            "width": 700,
                            "height": 700,
                            "formats": {
                                "thumbnail": {
                                    "name": "thumbnail_ata1.jpeg",
                                    "hash": "thumbnail_ata1_ff74cf0cd3",
                                    "ext": ".jpeg",
                                    "mime": "image/jpeg",
                                    "path": null,
                                    "width": 156,
                                    "height": 156,
                                    "size": 7.68,
                                    "url": "/uploads/thumbnail_ata1_ff74cf0cd3.jpeg"
                                },
                                "small": {
                                    "name": "small_ata1.jpeg",
                                    "hash": "small_ata1_ff74cf0cd3",
                                    "ext": ".jpeg",
                                    "mime": "image/jpeg",
                                    "path": null,
                                    "width": 500,
                                    "height": 500,
                                    "size": 41.3,
                                    "url": "/uploads/small_ata1_ff74cf0cd3.jpeg"
                                }
                            },
                            "hash": "ata1_ff74cf0cd3",
                            "ext": ".jpeg",
                            "mime": "image/jpeg",
                            "size": 68.94,
                            "url": "/uploads/ata1_ff74cf0cd3.jpeg",
                            "previewUrl": null,
                            "provider": "local",
                            "provider_metadata": null,
                            "createdAt": "2023-11-13T11:06:17.525Z",
                            "updatedAt": "2023-11-13T11:06:17.525Z"
                        }
                    }
                ]
            },
            "categories": {
                "data": [
                    {
                        "id": 1,
                        "attributes": {
                            "name": "Elektronik",
                            "description": "TV",
                            "createdAt": "2023-11-13T11:06:37.816Z",
                            "updatedAt": "2023-11-13T11:06:56.600Z",
                            "publishedAt": "2023-11-13T11:06:56.590Z"
                        }
                    }
                ]
            }
        }
    },
    "meta": {}
}

```

### Product (Get All Product) Admin & User

#### Response Body (Success) :
- Method : GET
- Endpoint: `localhost:1337/api/products`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json

{
    "status": "OK",
    "data": [
        {
            "id": 1,
            "attributes": {
                "name": "Sepatu Jordan",
                "description": "Sepatu Basket",
                "price": "15000000",
                "stock": 15,
                "createdAt": "2023-12-15T12:55:32.890Z",
                "updatedAt": "2023-12-15T12:59:19.691Z",
                "publishedAt": "2023-12-15T12:59:19.685Z"
            }
        }
    ],
    "meta": {
        "pagination": {
            "page": 1,
            "pageSize": 25,
            "pageCount": 1,
            "total": 1
        }
    }
}


```

### Product (Get All Product with mime or image) Admin and User Public 

#### Response Body (Success) :
- Method : GET
- Endpoint: `localhost:1337/api/products?populate=*`
- Header : 
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json

{
     "status": "OK",
     "data": [
        {
            "id": 1,
            "attributes": {
                "name": "Sepatu Jordan",
                "description": "Sepatu Basket",
                "price": "15000000",
                "stock": 15,
                "createdAt": "2023-12-15T12:55:32.890Z",
                "updatedAt": "2023-12-15T13:20:18.021Z",
                "publishedAt": "2023-12-15T12:59:19.685Z",
                "images": {
                    "data": [
                        {
                            "id": 1,
                            "attributes": {
                                "name": "jordan.jpeg",
                                "alternativeText": null,
                                "caption": null,
                                "width": 218,
                                "height": 148,
                                "formats": null,
                                "hash": "jordan_13ba752d97",
                                "ext": ".jpeg",
                                "mime": "image/jpeg",
                                "size": 5.22,
                                "url": "/uploads/jordan_13ba752d97.jpeg",
                                "previewUrl": null,
                                "provider": "local",
                                "provider_metadata": null,
                                "createdAt": "2023-12-15T12:55:20.918Z",
                                "updatedAt": "2023-12-15T12:55:20.918Z"
                            }
                        }
                    ]
                },
                "categories": {
                    "data": [
                        {
                            "id": 1,
                            "attributes": {
                                "name": "Fashion",
                                "description": "Baju, Celana, Sepatu, Topi, Jaket",
                                "createdAt": "2023-12-15T13:13:24.161Z",
                                "updatedAt": "2023-12-15T13:13:56.413Z",
                                "publishedAt": "2023-12-15T13:13:46.900Z"
                            }
                        }
                    ]
                }
            }
        },
        {
            "id": 2,
            "attributes": {
                "name": "Macbook Pro 2023",
                "description": "Chip:\nCPU 8-core dengan 6 core performa dan 2 core efisiensi\nGPU 14-core\nNeural Engine 16-core\nBandwidth memori 200 GB/dtk\nMedia engine\nH.264, HEVC, ProRes, dan ProRes RAW yang didukung hardware\nMesin dekode video\nMesin enkode video\nMesin enkode dan dekode ProRes\nDapat dikonfigurasi menjadi:\nM1 Pro dengan CPU 10-core dan GPU 14‑core\nM1 Pro dengan CPU 10‑core dan GPU 16‑core\nM1 Max dengan CPU 10‑core dan GPU 24‑core\nM1 Max dengan CPU 10‑core dan GPU 32‑core\n\nMemori\nChip Apple M1 Pro\n\nMemori terintegrasi 16 GB\nDapat dikonfigurasi menjadi 32 GB (M1 Pro atau M1 Max) atau 64 GB (M1 Max)",
                "price": "20000000",
                "stock": 10,
                "createdAt": "2023-12-15T13:03:11.323Z",
                "updatedAt": "2023-12-15T13:20:10.877Z",
                "publishedAt": "2023-12-15T13:03:11.321Z",
                "images": {
                    "data": [
                        {
                            "id": 2,
                            "attributes": {
                                "name": "mackbook.jpg",
                                "alternativeText": null,
                                "caption": null,
                                "width": 1440,
                                "height": 810,
                                "formats": {
                                    "large": {
                                        "ext": ".jpg",
                                        "url": "/uploads/large_mackbook_d98560af56.jpg",
                                        "hash": "large_mackbook_d98560af56",
                                        "mime": "image/jpeg",
                                        "name": "large_mackbook.jpg",
                                        "path": null,
                                        "size": 101.03,
                                        "width": 1000,
                                        "height": 563
                                    },
                                    "small": {
                                        "ext": ".jpg",
                                        "url": "/uploads/small_mackbook_d98560af56.jpg",
                                        "hash": "small_mackbook_d98560af56",
                                        "mime": "image/jpeg",
                                        "name": "small_mackbook.jpg",
                                        "path": null,
                                        "size": 30.12,
                                        "width": 500,
                                        "height": 281
                                    },
                                    "medium": {
                                        "ext": ".jpg",
                                        "url": "/uploads/medium_mackbook_d98560af56.jpg",
                                        "hash": "medium_mackbook_d98560af56",
                                        "mime": "image/jpeg",
                                        "name": "medium_mackbook.jpg",
                                        "path": null,
                                        "size": 60.52,
                                        "width": 750,
                                        "height": 422
                                    },
                                    "thumbnail": {
                                        "ext": ".jpg",
                                        "url": "/uploads/thumbnail_mackbook_d98560af56.jpg",
                                        "hash": "thumbnail_mackbook_d98560af56",
                                        "mime": "image/jpeg",
                                        "name": "thumbnail_mackbook.jpg",
                                        "path": null,
                                        "size": 8.98,
                                        "width": 245,
                                        "height": 137
                                    }
                                },
                                "hash": "mackbook_d98560af56",
                                "ext": ".jpg",
                                "mime": "image/jpeg",
                                "size": 194.32,
                                "url": "/uploads/mackbook_d98560af56.jpg",
                                "previewUrl": null,
                                "provider": "local",
                                "provider_metadata": null,
                                "createdAt": "2023-12-15T13:04:38.388Z",
                                "updatedAt": "2023-12-15T13:04:38.388Z"
                            }
                        }
                    ]
                },
                "categories": {
                    "data": [
                        {
                            "id": 2,
                            "attributes": {
                                "name": "Elektronik",
                                "description": "Handphone, Laptop, TV, Mesin Cuci",
                                "createdAt": "2023-12-15T13:14:37.578Z",
                                "updatedAt": "2023-12-15T13:14:39.261Z",
                                "publishedAt": "2023-12-15T13:14:39.256Z"
                            }
                        }
                    ]
                }
            }
        }
    ],
    "meta": {
        "pagination": {
            "page": 1,
            "pageSize": 25,
            "pageCount": 1,
            "total": 2
        }
    }
}

```

### Category (Add Category) Admin

#### Request Body : 
- Method: POST
- Endpoint: `localhost:1337/api/categories`
- Header : 
    - Content-Type: application/json
    - Accept: application/json
- Body : 

```json

{
    "data": {
        "name": "Kecantikan",
        "description": "Serum, Pelembap, Natural "
    }
}

```

### Reponse Body (Success) :

```json

{
    "status": "OK",
    "data": {
        "id": 3,
        "attributes": {
            "name": "Kecantikan",
            "description": "Serum, Pelembap, Natural ",
            "createdAt": "2023-12-15T13:59:45.353Z",
            "updatedAt": "2023-12-15T13:59:45.353Z",
            "publishedAt": "2023-12-15T13:59:45.349Z",
            "products": {
                "data": []
            }
        }
    },
    "meta": {}
}

```

### Category (Get All Categories) Admin and User Public

#### Response Body (Success) :
- Method : GET
- Endpoint: `localhost:1337/api/categories?populate=*`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body : 

```json

{
    "status": "OK",
    "data": [
        {
            "id": 1,
            "attributes": {
                "name": "Fashion",
                "description": "Baju, Celana, Sepatu, Topi, Jaket",
                "createdAt": "2023-12-15T13:13:24.161Z",
                "updatedAt": "2023-12-15T13:13:56.413Z",
                "publishedAt": "2023-12-15T13:13:46.900Z",
                "products": {
                    "data": [
                        {
                            "id": 1,
                            "attributes": {
                                "name": "Sepatu Jordan",
                                "description": "Sepatu Basket",
                                "price": "15000000",
                                "stock": 15,
                                "createdAt": "2023-12-15T12:55:32.890Z",
                                "updatedAt": "2023-12-15T13:20:18.021Z",
                                "publishedAt": "2023-12-15T12:59:19.685Z"
                            }
                        }
                    ]
                }
            }
        },
        {
            "id": 2,
            "attributes": {
                "name": "Elektronik",
                "description": "Handphone, Laptop, TV, Mesin Cuci",
                "createdAt": "2023-12-15T13:14:37.578Z",
                "updatedAt": "2023-12-15T13:14:39.261Z",
                "publishedAt": "2023-12-15T13:14:39.256Z",
                "products": {
                    "data": [
                        {
                            "id": 2,
                            "attributes": {
                                "name": "Macbook Pro 2023",
                                "description": "Chip:\nCPU 8-core dengan 6 core performa dan 2 core efisiensi\nGPU 14-core\nNeural Engine 16-core\nBandwidth memori 200 GB/dtk\nMedia engine\nH.264, HEVC, ProRes, dan ProRes RAW yang didukung hardware\nMesin dekode video\nMesin enkode video\nMesin enkode dan dekode ProRes\nDapat dikonfigurasi menjadi:\nM1 Pro dengan CPU 10-core dan GPU 14‑core\nM1 Pro dengan CPU 10‑core dan GPU 16‑core\nM1 Max dengan CPU 10‑core dan GPU 24‑core\nM1 Max dengan CPU 10‑core dan GPU 32‑core\n\nMemori\nChip Apple M1 Pro\n\nMemori terintegrasi 16 GB\nDapat dikonfigurasi menjadi 32 GB (M1 Pro atau M1 Max) atau 64 GB (M1 Max)",
                                "price": "20000000",
                                "stock": 10,
                                "createdAt": "2023-12-15T13:03:11.323Z",
                                "updatedAt": "2023-12-15T13:20:10.877Z",
                                "publishedAt": "2023-12-15T13:03:11.321Z"
                            }
                        }
                    ]
                }
            }
        }
    ],
    "meta": {
        "pagination": {
            "page": 1,
            "pageSize": 25,
            "pageCount": 1,
            "total": 2
        }
    }
}

```

### Address (Add Address) User

#### Request Body :
- Method: POST
- Endpoint: `localhost:1337/api/addresses`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body : 

```json
{
    "status": "OK",
    "data": {
                "name": "Robin",
                "address": "Villa kelapa gading sleman",
                "phone": "+6285640894224",
                "prov_id": "5",
                "city_id": "419",
                "subdistrict_id": "5786",
                "code_pos": "55366",
                "user_id": "3",
                "is_default": false
    }

}

```
### Response Body (Success) :

```json

{
    "status": "OK",
    "data": {
        "id": 15,
        "attributes": {
            "name": "Robin",
            "address": "Villa kelapa gading sleman",
            "phone": "+6285640894224",
            "prov_id": "5",
            "city_id": "419",
            "subdistrict_id": "5786",
            "code_pos": "55366",
            "user_id": "3",
            "is_default": false,
            "createdAt": "2023-12-16T04:35:28.993Z",
            "updatedAt": "2023-12-16T04:35:28.993Z",
            "publishedAt": "2023-12-16T04:35:28.987Z"
        }
    },
    "meta": {}
}

```

### Address (Get Address By User Id) User

#### Response Body (Success) :
- Method: GET
- Endpoint: `localhost:1337/addresses?filters[user_id][$eq]=14`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json

{
    "data": [
        {
            "id": 10,
            "attributes": {
                "name": "mario",
                "address": "jalan raya, Banten, Cilegon, Bali, 3356",
                "phone": "0217455661",
                "prov_id": "1",
                "city_id": "106",
                "subdistrict_id": "6268",
                "code_pos": "3356",
                "user_id": "14",
                "is_default": true,
                "createdAt": "2023-12-08T09:25:01.853Z",
                "updatedAt": "2023-12-08T09:25:01.853Z",
                "publishedAt": "2023-12-08T09:25:01.847Z"
            }
        },
        {
            "id": 12,
            "attributes": {
                "name": "jamal",
                "address": "jalan raya",
                "phone": "08665332",
                "prov_id": "1",
                "city_id": "37",
                "subdistrict_id": "1379",
                "code_pos": "55663",
                "user_id": "14",
                "is_default": true,
                "createdAt": "2023-12-10T05:17:48.963Z",
                "updatedAt": "2023-12-10T05:17:48.963Z",
                "publishedAt": "2023-12-10T05:17:48.958Z"
            }
        }
    ],
    "meta": {
        "pagination": {
            "page": 1,
            "pageSize": 25,
            "pageCount": 1,
            "total": 2
        }
    }
}


```

### Address (Get All Address) Admin & User 

#### Response Body (Success):
- Method: GET
- Endpoint: `localhost:1337/api/addresses`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json

{
    "data": [
        {
            "id": 1,
            "attributes": {
                "name": "Bahri",
                "address": "Jalan paren kulon, Bangsri, Banjarnegara, Bali, 65456",
                "phone": "0856467788",
                "prov_id": "1",
                "city_id": "37",
                "subdistrict_id": "2248",
                "code_pos": "65456",
                "user_id": "1",
                "is_default": true,
                "createdAt": "2023-11-13T11:27:53.821Z",
                "updatedAt": "2023-11-13T11:27:53.821Z",
                "publishedAt": "2023-11-13T11:27:53.816Z"
            }
        },
        {
            "id": 2,
            "attributes": {
                "name": "Bahri",
                "address": "Kantor Wim Offince jalan jalak 201, Banyumanik, Banjarnegara, Bali, 23432",
                "phone": "07324234",
                "prov_id": "1",
                "city_id": "37",
                "subdistrict_id": "5498",
                "code_pos": "23432",
                "user_id": "1",
                "is_default": false,
                "createdAt": "2023-11-13T11:31:51.552Z",
                "updatedAt": "2023-11-13T11:31:51.552Z",
                "publishedAt": "2023-11-13T11:31:51.544Z"
            }
        }
    ],
    "meta": {
        "pagination": {
            "page": 1,
            "pageSize": 25,
            "pageCount": 1,
            "total": 2
        }
    }
}

```
### Orders (Add Order) User

#### Request Body :
- Method: POST
- Endpoint: `localhost:1337/api/orders`
- Header: 
    - Content-Type: application/json
    - Accept: application/json
- Body:

```json
{
    "status": "OK",
    "data": {
        "items": [
            {
                "id": 1,
                "productName": "Sepatu Adidas",
                "price": 600000,
                "qty": 1
            },
            {
                "id": 1,
                "productName": "Kaos Puma",
                "price": 150000,
                "qty": 3
            }
        ],
        "totalPrice": 1072000,
        "deliveryAddress": "jalan emprit 02, Manalagi, Durian, Sleman, DIY",
        "courierName": "JNE",
        "courierPrice": 22000,
        "status": "waiting-payment"
    }
}

```
### Response Body (Success)

```json

{
    "status": "OK",
    "id": "657d2bd1a4ef04e8f791e41c",
    "external_id": "49",
    "user_id": "642246859a66f7b3a0c34576",
    "status": "PENDING",
    "merchant_name": "Jago Flutter",
    "merchant_profile_picture_url": "https://xnd-merchant-logos.s3.amazonaws.com/business/production/642246859a66f7b3a0c34576-1679968237035.png",
    "amount": 1072000,
    "payer_email": "codewithbahri@gmail.com",
    "description": "Payment for product",
    "expiry_date": "2023-12-17T04:47:13.636Z",
    "invoice_url": "https://checkout-staging.xendit.co/v2/657d2bd1a4ef04e8f791e41c",
    "available_banks": [
        {
            "bank_code": "MANDIRI",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "BRI",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "BNI",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "PERMATA",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "BCA",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "SAHABAT_SAMPOERNA",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "CIMB",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "BSI",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "BJB",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        },
        {
            "bank_code": "BNC",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "JAGO FLUTTER",
            "identity_amount": 0
        }
    ],
    "available_retail_outlets": [
        {
            "retail_outlet_name": "ALFAMART"
        },
        {
            "retail_outlet_name": "INDOMARET"
        }
    ],
    "available_ewallets": [
        {
            "ewallet_type": "OVO"
        },
        {
            "ewallet_type": "DANA"
        },
        {
            "ewallet_type": "SHOPEEPAY"
        },
        {
            "ewallet_type": "LINKAJA"
        },
        {
            "ewallet_type": "ASTRAPAY"
        },
        {
            "ewallet_type": "NEXCASH"
        },
        {
            "ewallet_type": "JENIUSPAY"
        }
    ],
    "available_qr_codes": [
        {
            "qr_code_type": "QRIS"
        }
    ],
    "available_direct_debits": [
        {
            "direct_debit_type": "DD_BRI"
        },
        {
            "direct_debit_type": "DD_MANDIRI"
        }
    ],
    "available_paylaters": [
        {
            "paylater_type": "KREDIVO"
        },
        {
            "paylater_type": "UANGME"
        },
        {
            "paylater_type": "AKULAKU"
        },
        {
            "paylater_type": "ATOME"
        }
    ],
    "should_exclude_credit_card": false,
    "should_send_email": false,
    "created": "2023-12-16T04:47:13.777Z",
    "updated": "2023-12-16T04:47:13.777Z",
    "currency": "IDR"
}

```

### Orders (Get By Id Order) User & Admin

#### Response Body (Success) :
- Method: GET
- Endpoint: `localhost:1337/api/orders/id`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json
{
    "status": "OK",
    "data": {
        "id": 33,
        "attributes": {
            "items": [
                {
                    "id": 7,
                    "productName": "SHARP LED 24",
                    "price": 2300000,
                    "qty": 1
                }
            ],
            "totalPrice": 2300000,
            "deliveryAddress": "Tangerang, Banten",
            "courierName": "JNE",
            "courierPrice": 0,
            "status": "waiting-payment",
            "noResi": null,
            "buyerId": null,
            "createdAt": "2023-12-08T07:22:59.345Z",
            "updatedAt": "2023-12-08T07:22:59.345Z",
            "publishedAt": "2023-12-08T07:22:59.339Z"
        }
    },
    "meta": {}
}

```
### Payment Callbacks

### Request Body :
- Method: POST
- Endpoint: `https://fic9.flutterdev.my.id/api/payment-callbacks`
- Header :
    - Content-Type: application/json
    - Accept: application/json
- Body

```json
{
    "id": "657d2c12abb319b8f6e8959e",
    "external_id": "51",
    "user_id": "642246859a66f7b3a0c34576",
    "is_high": true,
    "payment_method": "BANK_TRANSFER",
    "status": "PAID",
    "merchant_name": "Xendit",
    "amount": 107200,
    "paid_amount": 20000,
    "bank_code": "PERMATA",
    "paid_at": "2016-10-12T08:15:03.404Z",
    "payer_email": "codewithbahri@gmail.com",
    "description": "This is a description",
    "adjusted_received_amount": 47500,
    "fees_paid_amount": 0,
    "updated": "2016-10-10T08:15:03.404Z",
    "created": "2016-10-10T08:15:03.404Z",
    "currency": "IDR",
    "payment_channel": "PERMATA",
    "payment_destination": "888888888888"
}

```
### Invoices (Create Invoice Xendit) User

#### Request Body :
- Method: POST
- Endpoint: `https://api.xendit.co/v2/invoices`
- Header: 
    - Content-Type: application/json
    - Accept: application/json
    - Authorization: Basic eG5kX2RldmVsb3BtZW50XzAyaHZqSlB2Y2ZNNmFiTHJyR0llSTNrSm13azZ4TklsWjYzSVhEdDlyaFp3WHRqQU5zanpzd3F5d0xyOiA=
- Body:

```json
 {
    "external_id": "5",
    "payer_email": "rizqirezaardiansyah@gmail.com",
    "description": "Payment for product",
    "amount": 1072000
}

```
### Response Body (Success)

```json
{
    "id": "657d2f9fa4ef047d0e91e86a",
    "external_id": "5",
    "user_id": "6535d6f71bc2ad03879c2219",
    "status": "PENDING",
    "merchant_name": "Reza",
    "merchant_profile_picture_url": "https://du8nwjtfkinx.cloudfront.net/xendit.png",
    "amount": 1072000,
    "payer_email": "rizqirezaardiansyah@gmail.com",
    "description": "Payment for product",
    "expiry_date": "2023-12-17T05:03:27.229Z",
    "invoice_url": "https://checkout-staging.xendit.co/v2/657d2f9fa4ef047d0e91e86a",
    "available_banks": [
        {
            "bank_code": "MANDIRI",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "BRI",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "BNI",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "PERMATA",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "BCA",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "SAHABAT_SAMPOERNA",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "CIMB",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "BSI",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "BJB",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        },
        {
            "bank_code": "BNC",
            "collection_type": "POOL",
            "transfer_amount": 1072000,
            "bank_branch": "Virtual Account",
            "account_holder_name": "REZA",
            "identity_amount": 0
        }
    ],
    "available_retail_outlets": [
        {
            "retail_outlet_name": "ALFAMART"
        },
        {
            "retail_outlet_name": "INDOMARET"
        }
    ],
    "available_ewallets": [
        {
            "ewallet_type": "SHOPEEPAY"
        },
        {
            "ewallet_type": "DANA"
        },
        {
            "ewallet_type": "LINKAJA"
        },
        {
            "ewallet_type": "OVO"
        },
        {
            "ewallet_type": "ASTRAPAY"
        },
        {
            "ewallet_type": "NEXCASH"
        },
        {
            "ewallet_type": "JENIUSPAY"
        }
    ],
    "available_qr_codes": [
        {
            "qr_code_type": "QRIS"
        }
    ],
    "available_direct_debits": [
        {
            "direct_debit_type": "DD_BRI"
        },
        {
            "direct_debit_type": "DD_MANDIRI"
        }
    ],
    "available_paylaters": [
        {
            "paylater_type": "KREDIVO"
        },
        {
            "paylater_type": "UANGME"
        },
        {
            "paylater_type": "AKULAKU"
        },
        {
            "paylater_type": "ATOME"
        }
    ],
    "should_exclude_credit_card": false,
    "should_send_email": false,
    "created": "2023-12-16T05:03:27.306Z",
    "updated": "2023-12-16T05:03:27.306Z",
    "currency": "IDR"
}

```

### Buyer (Get Buyer) User & Admin

#### Response Body :
- Method: GET
- Endpoint: `https://fic9.flutterdev.my.id/api/orders?filters[buyerId][$eq]=14`
- Header: 
    - Content-type: application/json
    - Accept: application/json
- Body:

```json

{
    "data": [
        {
            "id": 20,
            "attributes": {
                "items": [
                    {
                        "id": 1,
                        "productName": "AQUA LED 65",
                        "price": 5200000,
                        "qty": 1
                    }
                ],
                "totalPrice": 5200000,
                "deliveryAddress": "Jeparaloka, Jepara",
                "courierName": "jne",
                "courierPrice": 0,
                "status": "packaging",
                "noResi": null,
                "buyerId": "14",
                "createdAt": "2023-12-08T03:38:38.367Z",
                "updatedAt": "2023-12-08T03:39:07.573Z",
                "publishedAt": "2023-12-08T03:38:38.362Z"
            }
        },
        {
            "id": 40,
            "attributes": {
                "items": [
                    {
                        "id": 2,
                        "productName": "COOCAA LED 70",
                        "price": 5500000,
                        "qty": 1
                    }
                ],
                "totalPrice": 5560000,
                "deliveryAddress": "Jeparaloka, Jepara",
                "courierName": "pos",
                "courierPrice": 60000,
                "status": "waiting-payment",
                "noResi": null,
                "buyerId": "14",
                "createdAt": "2023-12-09T03:24:35.063Z",
                "updatedAt": "2023-12-09T03:24:35.063Z",
                "publishedAt": "2023-12-09T03:24:35.058Z"
            }
        },
        {
            "id": 44,
            "attributes": {
                "items": [
                    {
                        "id": 7,
                        "productName": "SHARP LED 24",
                        "price": 2300000,
                        "qty": 1
                    }
                ],
                "totalPrice": 2310000,
                "deliveryAddress": "Tangerang, Banten",
                "courierName": "jne",
                "courierPrice": 10000,
                "status": "packaging",
                "noResi": "P2310250148600",
                "buyerId": "14",
                "createdAt": "2023-12-11T02:48:30.554Z",
                "updatedAt": "2023-12-11T02:50:10.257Z",
                "publishedAt": "2023-12-11T02:48:30.548Z"
            }
        }
    ],
    "meta": {
        "pagination": {
            "page": 1,
            "pageSize": 25,
            "pageCount": 1,
            "total": 3
        }
    }
}

```

# Raja Ongkir API

### Get Province

#### Response Body :
- Method: GET
- Endpoint: `https://pro.rajaongkir.com/api/province`
- Header:
    - Content-Type: application/json
    - Accept: application/json
- Body:

```json
{
    "rajaongkir": {
        "query": [],
        "status": {
            "code": 200,
            "description": "OK"
        },
        "results": [
            {
                "province_id": "1",
                "province": "Bali"
            },
            {
                "province_id": "2",
                "province": "Bangka Belitung"
            },
            {
                "province_id": "3",
                "province": "Banten"
            },
            {
                "province_id": "4",
                "province": "Bengkulu"
            },
            {
                "province_id": "5",
                "province": "DI Yogyakarta"
            },
            {
                "province_id": "6",
                "province": "DKI Jakarta"
            },
            {
                "province_id": "7",
                "province": "Gorontalo"
            },
            {
                "province_id": "8",
                "province": "Jambi"
            },
            {
                "province_id": "9",
                "province": "Jawa Barat"
            },
            {
                "province_id": "10",
                "province": "Jawa Tengah"
            },
            {
                "province_id": "11",
                "province": "Jawa Timur"
            },
            {
                "province_id": "12",
                "province": "Kalimantan Barat"
            },
            {
                "province_id": "13",
                "province": "Kalimantan Selatan"
            },
            {
                "province_id": "14",
                "province": "Kalimantan Tengah"
            },
            {
                "province_id": "15",
                "province": "Kalimantan Timur"
            },
            {
                "province_id": "16",
                "province": "Kalimantan Utara"
            },
            {
                "province_id": "17",
                "province": "Kepulauan Riau"
            },
            {
                "province_id": "18",
                "province": "Lampung"
            },
            {
                "province_id": "19",
                "province": "Maluku"
            },
            {
                "province_id": "20",
                "province": "Maluku Utara"
            },
            {
                "province_id": "21",
                "province": "Nanggroe Aceh Darussalam (NAD)"
            },
            {
                "province_id": "22",
                "province": "Nusa Tenggara Barat (NTB)"
            },
            {
                "province_id": "23",
                "province": "Nusa Tenggara Timur (NTT)"
            },
            {
                "province_id": "24",
                "province": "Papua"
            },
            {
                "province_id": "25",
                "province": "Papua Barat"
            },
            {
                "province_id": "26",
                "province": "Riau"
            },
            {
                "province_id": "27",
                "province": "Sulawesi Barat"
            },
            {
                "province_id": "28",
                "province": "Sulawesi Selatan"
            },
            {
                "province_id": "29",
                "province": "Sulawesi Tengah"
            },
            {
                "province_id": "30",
                "province": "Sulawesi Tenggara"
            },
            {
                "province_id": "31",
                "province": "Sulawesi Utara"
            },
            {
                "province_id": "32",
                "province": "Sumatera Barat"
            },
            {
                "province_id": "33",
                "province": "Sumatera Selatan"
            },
            {
                "province_id": "34",
                "province": "Sumatera Utara"
            }
        ]
    }
}

```
### Get City By Prov Id

#### Response Body :
- Method: GET
- Endpoint: `https://pro.rajaongkir.com/api/city?province=3`
- Header: 
    - Content-Type: application/json
    - Accept: application/json
- Body :

```json
{
    "rajaongkir": {
        "query": {
            "province": "3"
        },
        "status": {
            "code": 200,
            "description": "OK"
        },
        "results": [
            {
                "city_id": "106",
                "province_id": "3",
                "province": "Banten",
                "type": "Kota",
                "city_name": "Cilegon",
                "postal_code": "42417"
            },
            {
                "city_id": "232",
                "province_id": "3",
                "province": "Banten",
                "type": "Kabupaten",
                "city_name": "Lebak",
                "postal_code": "42319"
            },
            {
                "city_id": "331",
                "province_id": "3",
                "province": "Banten",
                "type": "Kabupaten",
                "city_name": "Pandeglang",
                "postal_code": "42212"
            },
            {
                "city_id": "402",
                "province_id": "3",
                "province": "Banten",
                "type": "Kabupaten",
                "city_name": "Serang",
                "postal_code": "42182"
            },
            {
                "city_id": "403",
                "province_id": "3",
                "province": "Banten",
                "type": "Kota",
                "city_name": "Serang",
                "postal_code": "42111"
            },
            {
                "city_id": "455",
                "province_id": "3",
                "province": "Banten",
                "type": "Kabupaten",
                "city_name": "Tangerang",
                "postal_code": "15914"
            },
            {
                "city_id": "456",
                "province_id": "3",
                "province": "Banten",
                "type": "Kota",
                "city_name": "Tangerang",
                "postal_code": "15111"
            },
            {
                "city_id": "457",
                "province_id": "3",
                "province": "Banten",
                "type": "Kota",
                "city_name": "Tangerang Selatan",
                "postal_code": "15435"
            }
        ]
    }
}

```

### Get City By Id

#### Response Body :
- Method: GET
- Endpoint: `https://pro.rajaongkir.com/api/city?id=455&province=3`
- Header:
    - Content-Type: application/json
    - Accept: application/json
- Body:

```json
{
    "rajaongkir": {
        "query": {
            "id": "455",
            "province": "3"
        },
        "status": {
            "code": 200,
            "description": "OK"
        },
        "results": {
            "city_id": "455",
            "province_id": "3",
            "province": "Banten",
            "type": "Kabupaten",
            "city_name": "Tangerang",
            "postal_code": "15914"
        }
    }
}

```

### Get Kecamatan By City Id

#### Response Body:
- Method: GET
- Endpoint: `https://pro.rajaongkir.com/api/subdistrict?city=455`
- Header:
    - Content-Type: application/json
    - Accept: application/json
- Body:

```json

{
    "rajaongkir": {
        "query": {
            "city": "455"
        },
        "status": {
            "code": 200,
            "description": "OK"
        },
        "results": [
            {
                "subdistrict_id": "6268",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Balaraja"
            },
            {
                "subdistrict_id": "6269",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Cikupa"
            },
            {
                "subdistrict_id": "6270",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Cisauk"
            },
            {
                "subdistrict_id": "6271",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Cisoka"
            },
            {
                "subdistrict_id": "6272",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Curug"
            },
            {
                "subdistrict_id": "6273",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Gunung Kaler"
            },
            {
                "subdistrict_id": "6274",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Jambe"
            },
            {
                "subdistrict_id": "6275",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Jayanti"
            },
            {
                "subdistrict_id": "6276",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Kelapa Dua"
            },
            {
                "subdistrict_id": "6277",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Kemiri"
            },
            {
                "subdistrict_id": "6278",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Kosambi"
            },
            {
                "subdistrict_id": "6279",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Kresek"
            },
            {
                "subdistrict_id": "6280",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Kronjo"
            },
            {
                "subdistrict_id": "6281",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Legok"
            },
            {
                "subdistrict_id": "6282",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Mauk"
            },
            {
                "subdistrict_id": "6283",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Mekar Baru"
            },
            {
                "subdistrict_id": "6284",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Pagedangan"
            },
            {
                "subdistrict_id": "6285",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Pakuhaji"
            },
            {
                "subdistrict_id": "6286",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Panongan"
            },
            {
                "subdistrict_id": "6287",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Pasar Kemis"
            },
            {
                "subdistrict_id": "6288",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Rajeg"
            },
            {
                "subdistrict_id": "6289",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Sepatan"
            },
            {
                "subdistrict_id": "6290",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Sepatan Timur"
            },
            {
                "subdistrict_id": "6291",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Sindang Jaya"
            },
            {
                "subdistrict_id": "6292",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Solear"
            },
            {
                "subdistrict_id": "6293",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Sukadiri"
            },
            {
                "subdistrict_id": "6294",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Sukamulya"
            },
            {
                "subdistrict_id": "6295",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Teluknaga"
            },
            {
                "subdistrict_id": "6296",
                "province_id": "3",
                "province": "Banten",
                "city_id": "455",
                "city": "Tangerang",
                "type": "Kabupaten",
                "subdistrict_name": "Tigaraksa"
            }
        ]
    }
}

```

### Get Kecamatan By Id

#### Response Body :
- Method: GET
- Endpoint: `https://pro.rajaongkir.com/api/subdistrict?id=6268`
- Header:
    - Content-Type: application/json
    - Accept: application/json
- Body: 

```json
{
    "rajaongkir": {
        "query": {
            "id": "6268"
        },
        "status": {
            "code": 200,
            "description": "OK"
        },
        "results": {
            "subdistrict_id": "6268",
            "province_id": "3",
            "province": "Banten",
            "city_id": "455",
            "city": "Tangerang",
            "type": "Kabupaten",
            "subdistrict_name": "Balaraja"
        }
    }
}

```
### Cost Kecamatan to Kecamatan

#### Request Body: 
- Method: POST
- Endpoint: `https://pro.rajaongkir.com/api/cost`
- Header:
    - Content-Type: x-www-form-urlencoded
    - Accept: Key, Value
- Body:
    - origin: 6268
    - originType: subdistrict
    - destination: 5779
    - destinationType: subdistrict
    - weight: 500
    - courier: jne

### Response Body (Success)

```json
{
    "rajaongkir": {
        "query": {
            "origin": "6268",
            "originType": "subdistrict",
            "destination": "5779",
            "destinationType": "subdistrict",
            "weight": 500,
            "courier": "jne"
        },
        "status": {
            "code": 200,
            "description": "OK"
        },
        "origin_details": {
            "subdistrict_id": "6268",
            "province_id": "3",
            "province": "Banten",
            "city_id": "455",
            "city": "Tangerang",
            "type": "Kabupaten",
            "subdistrict_name": "Balaraja"
        },
        "destination_details": {
            "subdistrict_id": "5779",
            "province_id": "5",
            "province": "DI Yogyakarta",
            "city_id": "419",
            "city": "Sleman",
            "type": "Kabupaten",
            "subdistrict_name": "Berbah"
        },
        "results": [
            {
                "code": "jne",
                "name": "Jalur Nugraha Ekakurir (JNE)",
                "costs": [
                    {
                        "service": "OKE",
                        "description": "Ongkos Kirim Ekonomis",
                        "cost": [
                            {
                                "value": 19000,
                                "etd": "3-6",
                                "note": ""
                            }
                        ]
                    },
                    {
                        "service": "REG",
                        "description": "Layanan Reguler",
                        "cost": [
                            {
                                "value": 22000,
                                "etd": "2-3",
                                "note": ""
                            }
                        ]
                    }
                ]
            }
        ]
    }
}

```

### Cek Resi

#### Request Body:
- Method: POST
- Endpoint: `https://pro.rajaongkir.com/api/waybill`
- Header:
    - Content-Type: x-www-form-urlencoded
    - Accept: key, value
- Body:
    - wayBill: P2310250148600
    - courier: pos

### Response Body (Success)

```json
{
    "rajaongkir": {
        "query": {
            "waybill": "P2310250148600",
            "courier": "pos"
        },
        "status": {
            "code": 200,
            "description": "OK"
        },
        "result": {
            "delivered": true,
            "summary": {
                "courier_code": "pos",
                "courier_name": "POS Indonesia (POS)",
                "waybill_number": "P2310250148600",
                "service_code": "PKH",
                "waybill_date": "2023-10-25",
                "shipper_name": "SAIFUL BAHRI",
                "receiver_name": "SYAWAL APRIAN",
                "origin": "YOGYA",
                "destination": "KAB MIMIKA PAPUA TENGAH, JALAN BUSIRI TENGAH",
                "status": "DELIVERED"
            },
            "details": {
                "waybill_number": "P2310250148600",
                "waybill_date": "2023-10-25",
                "waybill_time": "15:40:43",
                "weight": 0.1,
                "origin": "YOGYA",
                "destination": "KAB MIMIKA PAPUA TENGAH, JALAN BUSIRI TENGAH",
                "shippper_name": "SAIFUL BAHRI",
                "shipper_address1": "",
                "shipper_address2": "",
                "shipper_address3": "",
                "shipper_city": "YOGYA",
                "receiver_name": "SYAWAL APRIAN",
                "receiver_address1": "KAB MIMIKA, MIMIKA BARU, TIMIKA JAYA",
                "receiver_address2": "",
                "receiver_address3": "",
                "receiver_city": "KAB MIMIKA PAPUA TENGAH, JALAN BUSIRI TENGAH"
            },
            "manifest": [
                {
                    "manifest_code": "PENDING",
                    "manifest_description": "Connote telah dibuat oleh Petugas Loket01 (la55581cd01) di lokasi AGEN BESI RAYA SEDAN 55581CD",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "15:40:46",
                    "city_name": ""
                },
                {
                    "manifest_code": "inBag",
                    "manifest_description": "Barang anda P2310250148600 telah melewati proses bagging dengan nomor bag PID38358252 oleh Petugas Bagging (dm55581cd) di AGEN BESI RAYA SEDAN 55581CD",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "18:14:06",
                    "city_name": "AGEN BESI RAYA SEDAN 55581CD"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Bag PID38358252 telah melewati proses Receiving oleh Pramono di SPP YOGYAKARTA 55400 19:51",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "19:51:54",
                    "city_name": "SPP YOGYAKARTA 55400"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Bag PID38358252 telah melewati proses Receiving oleh Diar Sumeta di SPP YOGYAKARTA 55400 20:10",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "20:10:30",
                    "city_name": "SPP YOGYAKARTA 55400"
                },
                {
                    "manifest_code": "unBag",
                    "manifest_description": "Barang anda P2310250148600 telah melewati proses Unbagging dari bag PID38358252 oleh Diar Sumeta (983411566) di SPP YOGYAKARTA 55400",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "20:24:05",
                    "city_name": "SPP YOGYAKARTA 55400"
                },
                {
                    "manifest_code": "inBag",
                    "manifest_description": "Barang anda P2310250148600 telah melewati proses bagging dengan nomor bag PID38379920 oleh Indra Galuh Saputro (987411597) di SPP YOGYAKARTA 55400",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "22:14:43",
                    "city_name": "SPP YOGYAKARTA 55400"
                },
                {
                    "manifest_code": "INVEHICLE",
                    "manifest_description": "Barang anda P2310250148600 telah melewati proses ManifestR7 oleh Taufik Ardiansyah di SPP YOGYAKARTA 55400 dengan tujuan SPP YOGYAKARTA 55400 dan nomor R7 P20231025205535202 22:31",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "22:31:20",
                    "city_name": "SPP YOGYAKARTA 55400"
                },
                {
                    "manifest_code": "INVEHICLE",
                    "manifest_description": "Barang anda P2310250148600 telah melewati proses ManifestR7 oleh Mochammad Bimas Afrizal di SPP YOGYAKARTA 55400 dengan tujuan SPP JAKARTA TIMUR 13400 dan nomor R7 P20231025223549186 22:56",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "22:56:25",
                    "city_name": "SPP YOGYAKARTA 55400"
                },
                {
                    "manifest_code": null,
                    "manifest_description": "Barang anda P2310250148600 telah melewati proses Loading oleh KBM RUTE 2 di SPP YOGYAKARTA 55400 23:17",
                    "manifest_date": "2023-10-25",
                    "manifest_time": "23:15:32",
                    "city_name": "SPP YOGYAKARTA 55400"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Bag PID38379920 telah melewati proses Receiving oleh Dudi Wandi di SPP JAKARTA TIMUR 13400 09:44",
                    "manifest_date": "2023-10-26",
                    "manifest_time": "09:43:58",
                    "city_name": "SPP JAKARTA TIMUR 13400"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Bag PID38379920 telah melewati proses Receiving oleh Dudi Wandi di SPP JAKARTA TIMUR 13400 09:47",
                    "manifest_date": "2023-10-26",
                    "manifest_time": "09:43:58",
                    "city_name": "SPP JAKARTA TIMUR 13400"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Bag PID38379920 telah melewati proses Receiving oleh Dudi Wandi di SPP JAKARTA TIMUR 13400 09:51",
                    "manifest_date": "2023-10-26",
                    "manifest_time": "09:43:58",
                    "city_name": "SPP JAKARTA TIMUR 13400"
                },
                {
                    "manifest_code": "INVEHICLE",
                    "manifest_description": "Barang anda P2310250148600 telah melewati proses ManifestR7 oleh Heru Yulianto di SPP JAKARTA TIMUR 13400 dengan tujuan JAKARTASOEKARNOHATTA 19000 dan nomor R7 L20231026000267 11:24",
                    "manifest_date": "2023-10-26",
                    "manifest_time": "11:24:09",
                    "city_name": "SPP JAKARTA TIMUR 13400"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Bag PID38379920 telah melewati proses Receiving oleh Arif Purwanto di JAKARTASOEKARNOHATTA 19000 13:40",
                    "manifest_date": "2023-10-26",
                    "manifest_time": "13:39:53",
                    "city_name": "JAKARTASOEKARNOHATTA 19000"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Bag PID38379920 telah melewati proses Receiving oleh Arif Purwanto di JAKARTASOEKARNOHATTA 19000 13:44",
                    "manifest_date": "2023-10-26",
                    "manifest_time": "13:39:53",
                    "city_name": "JAKARTASOEKARNOHATTA 19000"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Bag PID38379920 telah melewati proses Receiving oleh Arif Purwanto di JAKARTASOEKARNOHATTA 19000 13:47",
                    "manifest_date": "2023-10-26",
                    "manifest_time": "13:39:53",
                    "city_name": "JAKARTASOEKARNOHATTA 19000"
                },
                {
                    "manifest_code": "unBag",
                    "manifest_description": "Barang anda P2310250148600 telah melewati proses Unbagging dari bag PID38379920 oleh Mustohir (999mandor) di KC TIMIKA 99900",
                    "manifest_date": "2023-10-28",
                    "manifest_time": "07:46:10",
                    "city_name": "KC TIMIKA 99900"
                },
                {
                    "manifest_code": "INLOCATION",
                    "manifest_description": "Barang anda telah melewati proses Receiving oleh : Mustohir (999mandor) di KC TIMIKA 99900",
                    "manifest_date": "2023-10-28",
                    "manifest_time": "07:57:48",
                    "city_name": "KC TIMIKA 99900"
                },
                {
                    "manifest_code": "DELIVERYRUNSHEET",
                    "manifest_description": "Barang P2310250148600 anda telah melewati proses DeliveryRunsheet oleh Mustohir di KC TIMIKA 99900 dan diterima oleh Edwin Luga P. (560001278)",
                    "manifest_date": "2023-10-28",
                    "manifest_time": "08:12:15",
                    "city_name": "KC TIMIKA 99900"
                },
                {
                    "manifest_code": "DELIVERED",
                    "manifest_description": "Barang anda P2310250148600 selesai dikirim oleh Edwin Luga P. (560001278) dan diterima oleh Syawal (DITERIMA YANG BERSANGKUTAN)",
                    "manifest_date": "2023-10-28",
                    "manifest_time": "12:14:02",
                    "city_name": "KC TIMIKA 99900"
                }
            ],
            "delivery_status": {
                "status": "DELIVERED",
                "pod_receiver": "Syawal (DITERIMA YANG BERSANGKUTAN)",
                "pod_date": "2023-10-28",
                "pod_time": "12:14:02"
            }
        }
    }
}

```

# User Interface Application

## Page Register

<a href="https://ibb.co/Jy402h7"><img src="https://i.ibb.co/2sQmPbt/Screenshot-20231216-122624.jpg" alt="Screenshot-20231216-122624" border="0"></a>

## Page Login

<a href="https://ibb.co/MkmFN1n"><img src="https://i.ibb.co/Zz0qTgd/Screenshot-20231215-150056.jpg" alt="Screenshot-20231215-150056" border="0"></a>

## Page Beranda

<a href="https://ibb.co/qj2rXBm"><img src="https://i.ibb.co/9gdrzny/Screenshot-20231215-150443.jpg" alt="Screenshot-20231215-150443" border="0"></a>

## Page Cart

<a href="https://ibb.co/kgc0w1Q"><img src="https://i.ibb.co/C50vY2h/Screenshot-20231215-150205.jpg" alt="Screenshot-20231215-150205" border="0"></a>

## Page Form Add Address

<a href="https://ibb.co/vshsr0g"><img src="https://i.ibb.co/jVzVxnB/Screenshot-20231215-150231.jpg" alt="Screenshot-20231215-150231" border="0"></a>

## Page Address Storage

<a href="https://ibb.co/yNL8jYr"><img src="https://i.ibb.co/HKmr8xj/Screenshot-20231215-150219.jpg" alt="Screenshot-20231215-150219" border="0"></a>

## Page Courier Selection with API Raja Ongkir

<a href="https://ibb.co/tQzTrQv"><img src="https://i.ibb.co/fq9zwqy/Screenshot-20231215-150247.jpg" alt="Screenshot-20231215-150247" border="0"></a>

## Page Payment Xendit

<a href="https://ibb.co/bbMdB5P"><img src="https://i.ibb.co/VwcBSYt/Screenshot-20231215-150421.jpg" alt="Screenshot-20231215-150421" border="0"></a>

## Page Order Details

<a href="https://ibb.co/njzrmJ9"><img src="https://i.ibb.co/BBqL3Mb/Screenshot-20231215-150524.jpg" alt="Screenshot-20231215-150524" border="0"></a>

<a href="https://ibb.co/r2DGfsx"><img src="https://i.ibb.co/pjYvryf/Screenshot-20231215-150530.jpg" alt="Screenshot-20231215-150530" border="0"></a>

## Page Package Tracking

<a href="https://ibb.co/FVbGSbC"><img src="https://i.ibb.co/jRv7cvs/Screenshot-20231215-150502.jpg" alt="Screenshot-20231215-150502" border="0"></a>

<a href="https://ibb.co/LYQ335k"><img src="https://i.ibb.co/DzGZZpV/Screenshot-20231215-150513.jpg" alt="Screenshot-20231215-150513" border="0"></a>









