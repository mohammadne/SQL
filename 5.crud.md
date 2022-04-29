# CRUD operations on a table data

## 1-Create (or Insert):
- INSERT INTO <table_name>(<column_1>, <column_2>) VALUES (<val_1>, <val_2>);
- INSERT INTO <table_name>() VALUES (); 
- INSERT INTO <table_name>(<column_1>, <column_2>) VALUES (<val_1>, <val_2>), (<val_3>, <val_4>), (<val_5>, <val_6>);
focus that the order of insertion matters
focus that you can insert an empty row or multiple rows

## 2-Read (or Select):
- SELECT <column_1_name>, <column_2_name> FROM <table_name>;
- SELECT * FROM <table_name>;
focus that * means all columns
retrieve and serach among data

## 3-Update:
- UPDATE <table_name> SET <column_name>=<new_value> WHERE condition;

## 4-Delete:
- DELETE FROM <table_name> WHERE condition;
- DELETE FROM <table_name>; => erase all data from table
