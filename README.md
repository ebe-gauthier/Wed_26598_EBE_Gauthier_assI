#  SQL Database Project: E-Commerce Management System
## 1- INTRODUCTION
### ID: 26598
### Name: EBE MEVIANE Emmanuel Gauthier
### Concentration: Software Engineering


## 2- Problem Statement
This project implements an E-Commerce Management System using Oracle SQL. The database manages users, products, orders, and transactions, allowing customers to purchase products while tracking inventory and order history.

The system includes:
- **Users Table**: Stores customer details.
- **Products Table**: Manages available products and prices.
- **Orders Table**: Tracks customer orders.
- **Transactions Table**: Records product purchases within each order.

## 3- Conceptual Diagram 
![Conceptual Diagram](https://github.com/user-attachments/assets/3fc5c496-8957-4c86-b5bc-e472dc1c9451)

## 4-Result 
### Create the tables from the diagram 
![image](https://github.com/user-attachments/assets/e48597bb-e9b2-4696-9eb5-bf52fe5f6355)

### OUTPUT
![image](https://github.com/user-attachments/assets/2d4f5ddf-fead-482f-a9e2-0445c7ca5cbb)

### Insert data

![image](https://github.com/user-attachments/assets/0c449570-be9c-4692-ba1a-30b2be13efdd)

### OUTPUT
![image](https://github.com/user-attachments/assets/5b007b80-9c6d-45c8-a230-086df9515879)

### Update data
![image](https://github.com/user-attachments/assets/3dfba17c-3976-457d-9d66-bafc376c4b85)

### OUTPUT
![image](https://github.com/user-attachments/assets/26715731-bc4d-40df-bd8f-14cc4db4aec8)

### Delete data
![image](https://github.com/user-attachments/assets/b4f164ce-5ab2-484b-bdbe-125d77c292c0)

### OUTPUT
![image](https://github.com/user-attachments/assets/fdce9d89-13f3-4ed1-a65f-4fa88e7d4d33)

###  Perform joins to retrieve related data across tables
![image](https://github.com/user-attachments/assets/af506b54-8d93-4b5f-aa4b-d76ec69649ef)

### OUTPUT
![image](https://github.com/user-attachments/assets/2ff42b48-b068-43ca-9e5b-85c35ececb98)

###  Identify records created in the past week
This query retrieves records from the Orders table that were created within the last 7 days.
SYSDATE: Represents the current system date.
SYSDATE - 7: Fetches records where order_date is within the past 7 days.

![image](https://github.com/user-attachments/assets/e41d2ad8-78b1-4d03-88b4-bed9e335eb1d)

### OUTPUT
Here there is no value because i created the table today and added all the data the same day.So the 7 pasts days there were no data available.

![image](https://github.com/user-attachments/assets/78969494-4395-43cb-b8b2-48f0a6bdf79f)

### Retrieve the top 5 highest values in each category 
 ### Users Table – Top 5 Users with the Most Orders
 
 ![image](https://github.com/user-attachments/assets/781d4adf-39f4-4a27-924c-d930b2005b1e)

### OUTPUT
![image](https://github.com/user-attachments/assets/96492654-dde6-49ca-a376-df29f695d315)

###  Transactions Table – Top 5 Transactions Per Product (Based on Quantity)
![image](https://github.com/user-attachments/assets/d71abbff-0bd4-4ab4-a05f-68e225741fd8)


### OUTPUT
![image](https://github.com/user-attachments/assets/ac715a46-b7a9-4653-8aa0-caa798631668)

### Retrieve records where an entity has more than 3 related transactions 
this to find users who have placed more than 3 transactions across orders.
![image](https://github.com/user-attachments/assets/f7873d7e-77f4-48c4-b65c-93a2bd451bbf)

### OUTPUT
There is no user with more than 3 transactions 
![image](https://github.com/user-attachments/assets/714c6043-7ba2-43f6-a3cd-e916fdc9a83b)




 






  
