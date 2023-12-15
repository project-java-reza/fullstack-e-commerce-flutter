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

#### Product (Get All Product) Admin & User

### Response Body (Success) :
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

### Product (Get All Product with mime or image) Admin

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

### Category (Get All Categories) Admin

#### Response Body (Success) :
- Method : GET
- Endpoint: `localhost:1337/api/categories?populate=*`
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




