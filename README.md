# Overview project intern

## ERD
![image](https://github.com/user-attachments/assets/a87e950c-3a7e-4d22-aae1-6d526449219d)

## API ENDPOINT
```
 /api/v1/categories/
```
- Get all categories
![image](https://github.com/user-attachments/assets/da65260f-f2f0-46e6-8d5b-cad4705e9232)
![image](https://github.com/user-attachments/assets/f26799e7-3856-4d99-8ddb-aaf8ad0c6517)


```
 /api/v1/styles/
```
- Get all styles
![image](https://github.com/user-attachments/assets/5c4bc99d-0261-45b8-ad6c-e5c697f431a7)
![image](https://github.com/user-attachments/assets/e1c61440-6bff-4986-a168-d1b5025a54ca)



```
 /api/v1/sizes/
```
- Get all sizes
![image](https://github.com/user-attachments/assets/6dd944a7-51d0-44a4-8402-de46f34356df)
![image](https://github.com/user-attachments/assets/12d9abfa-fb55-48a7-b47c-a52f10fbd06b)


```
 /api/v1/colors/
```
- Get all colors
![image](https://github.com/user-attachments/assets/eddeb821-eb8b-4165-9525-de0f267d2b68)
![image](https://github.com/user-attachments/assets/777fc944-1ff2-4358-9cd5-352ae9c9b2a3)

```
 /api/v1/products
```
- Get products
![image](https://github.com/user-attachments/assets/b4e27bb7-24e6-4d84-8cdd-91a65c3722fa)
![image](https://github.com/user-attachments/assets/9b54cbf4-ebd7-4ac5-84a2-cffa79b5eb4c)


- Get product by parameter(sizeId, colorId, minPrice, maxPrice, categoryId, styleId, sortBy, sortOrder, page, size) Optional
![image](https://github.com/user-attachments/assets/df4ce885-32a6-4457-8701-2bf79d492d3d)


```
/api/v1/products/{id}
```
- Get product by Id
![image](https://github.com/user-attachments/assets/2bdfbe9c-f64b-4245-ba7f-2967445c54b1)
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

## Deloy on server 
![image](https://github.com/user-attachments/assets/cb1ffdf2-4e03-4bfa-8131-6808507b35af)

![image](https://github.com/user-attachments/assets/739046f2-653a-40fe-a21a-221647adc894)

![image](https://github.com/user-attachments/assets/21db6681-c4e8-46f0-be7f-8e1d2b6037d0)



