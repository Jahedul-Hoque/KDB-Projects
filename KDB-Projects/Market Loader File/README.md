# 📊 Market Data Loader

## 📌 Overview

The Market Data Loader is a KDB+/q project designed to clean, structure, and load historical market data efficiently. This project processes raw stock market data (such as NYSE TAQ data) by applying transformations like replacing header rows, formatting timestamps, and filtering invalid entries.

## 🛠 Features

✅ Load raw market data into KDB+/q

✅ Replace first row as column headers

✅ Convert timestamps into proper format

✅ Remove empty or invalid rows

✅ Store structured data for analysis

## 📖 Learning Resources

If you're new to KDB+/q, check out my Introduction to KDB Repo to get started.

## 🚀 Future Enhancements

✔️ Add real-time data streaming functionality

✔️ Optimize performance for larger datasets

✔️ Integrate with analytics dashboards

## 📝 Data Cleaning Process

### Step 1: Load Raw Data

rawData:("ISSISSIFFIFISI";enlist csv) 0: `$":C:/Users/44775/Downloads/data.csv"

### Step 2: Assign Collumn Names

#### columnNames: `TradeDate `Symbol `Exchange `TradeTime `TradePrice `TradeSize `BidPrice `AskPrice `BidSize `AskSize `Condition `Market

#### rawData: `columnNames xcol rawData 

### Step 3: This is an example where the collumn names are still not appearing in the schema. You can test this by printing the schema

#### meta rawData

output:

c          | t f a
-----------| -----
columnNames| i    
2          | s    
X          | s    
1          | i    
55         | s    
N          | s    
C          | i    
100        | f    
38.19      | f    
0          | i    
01         | f    
N1         | i    
.0001      | s    
11         | i 

As you can see, the collumn names are not correctly displayed. This is because line 42 needs to be changed to "rawData: columnNames xcol rawData" which changes the data type of columnName from an atom to a variable that contains multiple values.

The output is now:

c         | t f a
----------| -----
TradeDate | i    
Symbol    | s    
Exchange  | s    
TradeTime | i    
TradePrice| s    
TradeSize | s    
BidPrice  | i    
AskPrice  | f    
BidSize   | f    
AskSize   | i    
Condition | f    
Market    | i    
.0001     | s    
11        | i  

However, even then when you enter "rawData" to retrieve the table, you get some unneccessary collumns and some collumns in the wrong area.

![image](https://github.com/user-attachments/assets/b8a45a4c-11f8-4ddb-a362-690b9901b5cd)

This will need to be adjusted with the following command:

