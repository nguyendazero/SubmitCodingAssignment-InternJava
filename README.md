# Overview project intern

## ERD
![image](https://github.com/user-attachments/assets/a87e950c-3a7e-4d22-aae1-6d526449219d)

## API ENDPOINT
```
 api/v1/categories/
```
- Get all categories
![image](https://github.com/user-attachments/assets/da65260f-f2f0-46e6-8d5b-cad4705e9232)
![image](https://github.com/user-attachments/assets/f37e4ede-0c67-49fa-9d95-a3b859cbd5f0)

```
 api/v1/styles/
```
- Get all styles
![image](https://github.com/user-attachments/assets/0e70c0d1-d93f-4e1d-a59b-7938f210cbb2)
![image](https://github.com/user-attachments/assets/765dc278-c238-4dc5-b240-9045512d05a8)

```
 api/v1/sizes/
```
- Get all sizes
![image](https://github.com/user-attachments/assets/602a6721-af6d-44cd-b024-7801ad068079)


```
 api/v1/colors/
```
- Get all colors
![image](https://github.com/user-attachments/assets/63361785-556a-43bf-af7a-4da0f4f19a53)

- Get products
![image](https://github.com/user-attachments/assets/8ee963eb-030d-4324-a809-57ca885b83c4)

- Get product by parameter(sizeId, colorId, minPrice, maxPrice, categoryId, styleId, sortBy, sortOrder, page, size) Optional
![image](https://github.com/user-attachments/assets/027db09d-4139-409a-95ac-58fb454a8c35)

```
/api/v1/products/{productId}
```
- Get product by Id

```
  {
    "message": "Product detail retrieved successfully!",
    "result": {
        "id": 10,
        "description": "The Stradivarius Wool Look Jacket in Burgundy features a stylish design with a warm, rich color, perfect for adding elegance to any outfit. Ideal for layering in cooler weather.",
        "totalView": 0,
        "productName": "Stradivarius wool look jacket in burgundy",
        "price": 70.0,
        "discount": 0.0,
        "image": "https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-1-red?$n_320w$&wid=317&fit=constrain",
        "saleEndDate": null,
        "averageStars": 2.0,
        "sizes": [
            {
                "id": 1,
                "sizeName": "S"
            },
            {
                "id": 2,
                "sizeName": "M"
            },
            {
                "id": 3,
                "sizeName": "L"
            },
            {
                "id": 4,
                "sizeName": "XL"
            },
            {
                "id": 6,
                "sizeName": "2XL"
            }
        ],
        "colors": [
            {
                "id": 1,
                "colorName": "Green"
            },
            {
                "id": 2,
                "colorName": "Red"
            },
            {
                "id": 3,
                "colorName": "Black"
            },
            {
                "id": 4,
                "colorName": "Purple"
            }
        ],
        "productImages": [
            {
                "id": 47,
                "imageUrl": "https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-2?$n_320w$&wid=317&fit=constrain"
            },
            {
                "id": 48,
                "imageUrl": "https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-3?$n_320w$&wid=317&fit=constrain"
            },
            {
                "id": 49,
                "imageUrl": "https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-4?$n_320w$&wid=317&fit=constrain"
            },
            {
                "id": 50,
                "imageUrl": "https://images.asos-media.com/products/stradivarius-wool-look-jacket-in-burgundy/207160051-1-red?$n_320w$&wid=317&fit=constrain"
            }
        ]
    }
}
```
![image](https://github.com/user-attachments/assets/2bdfbe9c-f64b-4245-ba7f-2967445c54b1)
## Deloy on server 
![image](https://github.com/user-attachments/assets/cb1ffdf2-4e03-4bfa-8131-6808507b35af)

![image](https://github.com/user-attachments/assets/739046f2-653a-40fe-a21a-221647adc894)

![image](https://github.com/user-attachments/assets/21db6681-c4e8-46f0-be7f-8e1d2b6037d0)



