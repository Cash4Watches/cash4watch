# Rails Backend

# Table Of Contents

- [`/login` - Login User](#/login)
- [`/profile` - Login User using Token](#/profile)
- [`/signup` - Sign Up User](#/signup)
- [`/create-new-order` - Create Order](#/create-new-order)
- [`/check-order` - Check Indivdual User Order](#/check-order)
- [`/my-orders` - Check User Orders](#/my-orders)
  

#

<div id='/login'></div>

### `/login` – Login in User 

**Heroku Deployed Link**

- `https://pacific-escarpment-97348.herokuapp.com/login`

#### Method

| URI | HTTP Method | Authentication | Headers |
| --- | ----------- | -------------- | ------- |
| `login` | Post | [User Token](#authentication)| Authentication|

#### Request Parameters

| Parameter | Type | Description | Default | Required? |
| --------- | ---- | ----------- | ------- | --------- |
| **email** | String | Email Adress of User. | N/A | Yes |
| **password** | String | User's Password. | N/A | Yes |

Note that the `Authentication` header has to say `Bearer` in the value

Example:
`Authentication: Bearer <Hash>`


**Example Response:**


```JSON
{
    "user": {
        "id": 1,
        "full_name": "Mohamed Muflahi",
        "email": "muflahimohamed88@gmail.com",
        "company": "Test",
        "street1": "85-95 150st",
        "street2": "",
        "city": "Jamaica",
        "state": "NY",
        "zip": "11435",
        "phone": "929-422-6224"
    },
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOiIxNjU5MDQ1MjU2IiwidXNlcl9pZCI6MX0.JibDIbWCLtVbKeDrDJN_qYMxGGMwb_b-yaI9rimL_uE"
}
```
#

<div id='/profile'></div>

### `/profile` – Login User using Token

**Heroku Deployed Link**

- `https://pacific-escarpment-97348.herokuapp.com/profile`

#### Method

| URI | HTTP Method | Authentication | Headers |
| --- | ----------- | -------------- | ------- |
| `profile` | GET | [User Token](#authentication)| Authentication|

#### Request Parameters

| Parameter | Type | Description | Default | Required? |
| --------- | ---- | ----------- | ------- | --------- |
| **N/A** | N/A | N/A | N/A | N/A |

Note that the `Authentication` header has to say `Bearer` in the value

Example:
`Authentication: Bearer <Hash>`

**Example Response:**


```JSON
{
        "id": 1,
        "full_name": "Mohamed Muflahi",
        "email": "muflahimohamed88@gmail.com",
        "company": "Test",
        "street1": "85-95 150st",
        "street2": "",
        "city": "Jamaica",
        "state": "NY",
        "zip": "11435",
        "phone": "929-422-6224"
}
```
<div id='/signup'></div>

#

### `/signup` – Login User using Token

**Heroku Deployed Link**

- `https://pacific-escarpment-97348.herokuapp.com/signup`

#### Method

| URI | HTTP Method | Authentication | Headers |
| --- | ----------- | -------------- | ------- |
| `signup` | POST | N/A| N/A|

#### Request Parameters

| Parameter | Type | Description | Default | Required? |
| --------- | ---- | ----------- | ------- | --------- |
| **full_name** | String | Full Name for User | N/A | Yes |
| **password** | String | User's Password | N/A | Yes |
| **email** | String | User's Email | N/A | Yes |
| **company** | String | Company Name | N/A | No |
| **street1** | String | Street Adress | N/A | Yes |
| **street2** | String | Additional Street Adress | N/A | No|
| **city** | String | Name of City for Address | N/A | Yes |
| **state** | String | State Name | N/A | Yes |
| **zip** | String | Zip Code | N/A | Yes |
| **phone** | String | User's Phone Number | N/A | Yes |

**Example Response:**


```JSON
{
    "user": {
        "id": 1,
        "full_name": "Mohamed Muflahi",
        "email": "muflahimohamed88@gmail.com",
        "company": "Test",
        "street1": "85-95 150st",
        "street2": "",
        "city": "Jamaica",
        "state": "NY",
        "zip": "11435",
        "phone": "929-422-6224"
    },
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJleHAiOiIxNjU5MDQ1MjU2IiwidXNlcl9pZCI6MX0.JibDIbWCLtVbKeDrDJN_qYMxGGMwb_b-yaI9rimL_uE"
}
```
<div id='/create-new-order'></div>

#

### `/create-new-order` – Create New Order

**Heroku Deployed Link**

- `https://pacific-escarpment-97348.herokuapp.com/create-new-order`

#### Method

| URI | HTTP Method | Authentication | Headers |
| --- | ----------- | -------------- | ------- |
| `create-new-order` | POST | [User Token](#authentication)| Authentication|


#### Request Parameters

| Parameter | Type | Description | Default | Required? |
| --------- | ---- | ----------- | ------- | --------- |
| **brand_name** | String | Full Name for User | N/A | Yes |
| **model_number** | String | User's Password | N/A | Yes |
| **reference_number** | String | User's Email | N/A | Yes |
| **condition** | String | Company Name | N/A | Yes |
| **previous_service** | String | Street Adress | N/A | Yes |
| **previous_polish** | String | Additional Street Adress | N/A | Yes|
| **papers** | Boolean | Name of City for Address | N/A | Yes |
| **included_items** | String | State Name | N/A | Yes |
| **extra_comment** | String | Zip Code | N/A | No |


Note that the `Authentication` header has to say `Bearer` in the value

Example:
`Authentication: Bearer <Hash>`

**Example Response:**

`https://pacific-escarpment-97348.herokuapp.com/create-new-order`

```JSON
{
    "id": "e3309b77-6186-4c0c-97cf-d823066ba65f",
    "brand_name": "Rolex",
    "model_number": "12345678",
    "reference_number": "123123abc",
    "condition": "NEW",
    "previous_service": "N/A",
    "previous_polish": "N/A",
    "papers": true,
    "included_items": "Box and Original Docs",
    "extra_comment": " Please take care of the watch",
    "steps": [
        {
            "id": "01912b9c-168e-4b2d-99dd-c49fe8a11128",
            "index": 1,
            "title": "Case Approved",
            "desc": "",
            "completed": false,
            "order_id": "e3309b77-6186-4c0c-97cf-d823066ba65f",
            "created_at": "2022-07-15T02:46:23.623Z",
            "updated_at": "2022-07-15T02:46:23.623Z"
        },
        {
            "id": "d5b19752-c764-4616-b9a0-9ecbd6e704f7",
            "index": 2,
            "title": "Label Generated",
            "desc": "",
            "completed": false,
            "order_id": "e3309b77-6186-4c0c-97cf-d823066ba65f",
            "created_at": "2022-07-15T02:46:23.631Z",
            "updated_at": "2022-07-15T02:46:23.631Z"
        },
        {
            "id": "35156899-5b76-49b5-8b5a-ece3222bc01b",
            "index": 3,
            "title": "Watch Received",
            "desc": "",
            "completed": false,
            "order_id": "e3309b77-6186-4c0c-97cf-d823066ba65f",
            "created_at": "2022-07-15T02:46:23.634Z",
            "updated_at": "2022-07-15T02:46:23.634Z"
        },
        {
            "id": "9fd3e44f-af2e-4550-bc1e-1ea9343ce040",
            "index": 4,
            "title": "Watch Inspected",
            "desc": "",
            "completed": false,
            "order_id": "e3309b77-6186-4c0c-97cf-d823066ba65f",
            "created_at": "2022-07-15T02:46:23.637Z",
            "updated_at": "2022-07-15T02:46:23.637Z"
        },
        {
            "id": "c249963b-cb6e-4f85-92dd-f7da453454e9",
            "index": 5,
            "title": "Watch Sold",
            "desc": "",
            "completed": false,
            "order_id": "e3309b77-6186-4c0c-97cf-d823066ba65f",
            "created_at": "2022-07-15T02:46:23.639Z",
            "updated_at": "2022-07-15T02:46:23.639Z"
        }
    ],
    "documents": []
}
```

<div id='/check-order'></div>

## `/check-order` - Check User's Individual Order


**Heroku Deployed Link**

- `https://pacific-escarpment-97348.herokuapp.com/check-order`

#### Method

| URI | HTTP Method | Authentication | Headers |
| --- | ----------- | -------------- | ------- |
| `check-order` | POST | [User Token](#authentication)| Authentication|


#### Request Parameters

| Parameter | Type | Description | Default | Required? |
| --------- | ---- | ----------- | ------- | --------- |
| **order_id** | String | Order ID Hash | N/A | Yes |

Note that the `Authentication` header has to say `Bearer` in the value

Example:
`Authentication: Bearer <Hash>`


**Example Response:**

```JSON
{
    "id": "94b9bfa7-9b35-431a-a958-9c2b631e4812",
    "brand_name": "Rolex",
    "model_number": "136323202",
    "reference_number": "270466",
    "condition": "New",
    "previous_service": "I got it services at the supermarket",
    "previous_polish": "I got it polished at the barber shop",
    "papers": true,
    "included_items": "All original manuals and shit",
    "extra_comment": "Hurry up plz",
    "steps": [
        {
            "id": "7afc6bc1-28cf-46c0-8838-82a081b1bd45",
            "index": 1,
            "title": "Case Approved",
            "desc": "",
            "completed": false,
            "order_id": "94b9bfa7-9b35-431a-a958-9c2b631e4812",
            "created_at": "2022-07-13T14:18:54.173Z",
            "updated_at": "2022-07-13T14:18:54.173Z"
        },
        {
            "id": "3f1e1fa5-0652-4bd8-81d9-56d39d23a505",
            "index": 2,
            "title": "Label Generated",
            "desc": "",
            "completed": false,
            "order_id": "94b9bfa7-9b35-431a-a958-9c2b631e4812",
            "created_at": "2022-07-13T14:18:54.176Z",
            "updated_at": "2022-07-13T14:18:54.176Z"
        },
        {
            "id": "9d4bf6bf-2315-4ae1-b099-50ffd9dd482d",
            "index": 3,
            "title": "Watch Received",
            "desc": "",
            "completed": false,
            "order_id": "94b9bfa7-9b35-431a-a958-9c2b631e4812",
            "created_at": "2022-07-13T14:18:54.178Z",
            "updated_at": "2022-07-13T14:18:54.178Z"
        },
        {
            "id": "8b679b45-1f6b-4fbc-a459-9d587f03e04d",
            "index": 4,
            "title": "Watch Inspected",
            "desc": "",
            "completed": false,
            "order_id": "94b9bfa7-9b35-431a-a958-9c2b631e4812",
            "created_at": "2022-07-13T14:18:54.180Z",
            "updated_at": "2022-07-13T14:18:54.180Z"
        },
        {
            "id": "79ef2248-ef14-4e1a-afb0-e3c9f54d1d86",
            "index": 5,
            "title": "Watch Sold",
            "desc": "",
            "completed": false,
            "order_id": "94b9bfa7-9b35-431a-a958-9c2b631e4812",
            "created_at": "2022-07-13T14:18:54.182Z",
            "updated_at": "2022-07-13T14:18:54.182Z"
        }
    ],
    "documents": []
}
```
<div id='/my-orders'></div>

## `/my-orders` - Check User's Orders


**Heroku Deployed Link**

- `https://pacific-escarpment-97348.herokuapp.com/my-orders`

#### Method

| URI | HTTP Method | Authentication | Headers |
| --- | ----------- | -------------- | ------- |
| `my-orders` | POST | [User Token](#authentication)| Authentication|


#### Request Parameters

| Parameter | Type | Description | Default | Required? |
| --------- | ---- | ----------- | ------- | --------- |
| **N/A** | N/A | N/A | N/A | N/A |

Note that the `Authentication` header has to say `Bearer` in the value

Example:
`Authentication: Bearer <Hash>`

**Example Response:**

```JSON
{
    "orders": [
        {
            "id": "e3309b77-6186-4c0c-97cf-d823066ba65f",
            "brand_name": "Rolex",
            "model_number": "12345678",
            "reference_number": "123123abc",
            "condition": "NEW",
            "previous_service": "N/A",
            "previous_polish": "N/A",
            "papers": true,
            "included_items": "Box and Original Docs",
            "extra_comment": " Please take care of the watch",
            "user_id": 1,
            "created_at": "2022-07-15T02:46:23.609Z",
            "updated_at": "2022-07-15T02:46:23.609Z"
        },
        {
            "id": "e3309b77-6186-4c0c-97cf-d823066ba65f",
            "brand_name": "Rolex",
            "model_number": "12345678",
            "reference_number": "123123abc",
            "condition": "NEW",
            "previous_service": "N/A",
            "previous_polish": "N/A",
            "papers": true,
            "included_items": "Box and Original Docs",
            "extra_comment": " Please take care of the watch",
            "created_at": "2022-07-15T02:46:23.609Z",
            "updated_at": "2022-07-15T02:46:23.609Z"
        }
    ]
}

```



