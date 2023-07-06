# Pet

Everything about your Pets

Find out more: [http://swagger.io](http://swagger.io)

```ruby
pet_controller = client.pet
```

## Class Name

`PetController`

## Methods

* [Upload File](../../doc/controllers/pet.md#upload-file)
* [Inpet](../../doc/controllers/pet.md#inpet)
* [Update an Pet](../../doc/controllers/pet.md#update-an-pet)
* [Find Pet in the Status](../../doc/controllers/pet.md#find-pet-in-the-status)
* [Find Pets an Tags](../../doc/controllers/pet.md#find-pets-an-tags)
* [Get Pet by Id](../../doc/controllers/pet.md#get-pet-by-id)
* [Update Pet With Form](../../doc/controllers/pet.md#update-pet-with-form)
* [Delete Pet](../../doc/controllers/pet.md#delete-pet)


# Upload File

uploads an image

```ruby
def upload_file(pet_id,
                additional_metadata: nil,
                file: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pet_id` | `Integer` | Template, Required | ID of pet to update |
| `additional_metadata` | `String` | Form, Optional | Additional data to pass to server |
| `file` | `File \| UploadIO` | Form, Optional | file to upload |

## Response Type

[`ApiResponse`](../../doc/models/api-response.md)

## Example Usage

```ruby
pet_id = 152

result = pet_controller.upload_file(pet_id)
```


# Inpet

Add a new pet to the store

```ruby
def inpet(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Pet`](../../doc/models/pet.md) | Body, Required | Pet object that needs to be added to the store |

## Response Type

`void`

## Example Usage

```ruby
body = Pet.new(
  'name6',
  [
    'photoUrls1'
  ],
  nil,
  nil,
  nil,
  nil
)

pet_controller.inpet(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 405 | Invalid input | `APIException` |


# Update an Pet

Update an existing pet

```ruby
def update_an_pet(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Pet`](../../doc/models/pet.md) | Body, Required | Pet object that needs to be added to the store |

## Response Type

`void`

## Example Usage

```ruby
body = Pet.new(
  'name6',
  [
    'photoUrls1'
  ],
  nil,
  nil,
  nil,
  nil
)

pet_controller.update_an_pet(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid ID supplied | `APIException` |
| 404 | Pet not found | `APIException` |
| 405 | Validation exception | `APIException` |


# Find Pet in the Status

Multiple status values can be provided with comma separated strings

```ruby
def find_pet_in_the_status(status)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | [`Array<Status2Enum>`](../../doc/models/status-2-enum.md) | Query, Required | Status values that need to be considered for filter |

## Response Type

[`Array<Pet>`](../../doc/models/pet.md)

## Example Usage

```ruby
status = [
  Status2Enum::PENDING,
  Status2Enum::SOLD,
  Status2Enum::AVAILABLE
]

result = pet_controller.find_pet_in_the_status(status)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid status value | `APIException` |


# Find Pets an Tags

**This endpoint is deprecated.**

Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.

```ruby
def find_pets_an_tags(tags)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tags` | `Array<String>` | Query, Required | Tags to filter by |

## Response Type

[`Array<Pet>`](../../doc/models/pet.md)

## Example Usage

```ruby
tags = [
  'tags5',
  'tags6'
]

result = pet_controller.find_pets_an_tags(tags)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid tag value | `APIException` |


# Get Pet by Id

Returns a single pet

```ruby
def get_pet_by_id(pet_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pet_id` | `Integer` | Template, Required | ID of pet to return |

## Response Type

[`Pet`](../../doc/models/pet.md)

## Example Usage

```ruby
pet_id = 152

result = pet_controller.get_pet_by_id(pet_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid ID supplied | `APIException` |
| 404 | Pet not found | `APIException` |


# Update Pet With Form

Updates a pet in the store with form data

```ruby
def update_pet_with_form(pet_id,
                         name: nil,
                         status: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pet_id` | `Integer` | Template, Required | ID of pet that needs to be updated |
| `name` | `String` | Form, Optional | Updated name of the pet |
| `status` | `String` | Form, Optional | Updated status of the pet |

## Response Type

`void`

## Example Usage

```ruby
pet_id = 152

pet_controller.update_pet_with_form(pet_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 405 | Invalid input | `APIException` |


# Delete Pet

Deletes a pet

```ruby
def delete_pet(pet_id,
               api_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pet_id` | `Integer` | Template, Required | Pet id to delete |
| `api_key` | `String` | Header, Optional | - |

## Response Type

`void`

## Example Usage

```ruby
pet_id = 152

pet_controller.delete_pet(pet_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Invalid ID supplied | `APIException` |
| 404 | Pet not found | `APIException` |

