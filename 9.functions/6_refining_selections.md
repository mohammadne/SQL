Refining Selections:
more weapons in the Arsenal

## WHERE
- SELECT * FROM <table_name> WHERE condition;
it will filter the result, the condition or filtering happen above the column
the filtering is not case-sensitive, the lower or upper case doesn't matter

## DISTICT
- SELECT DISTINCT <column_name> FROM <table_name>;
it will gives you all disticted and unique combination columns.
focus, it will drop duplicate combinations.

## ORDER BY
- SELECT <column_name> FROM <table_name> ORDER BY <property_1>, <property_2>;
it's ascending by default (صعودی)
if <property_1> was same for 2 objects, then it will compare <property_2>.
you can append ASC OR DESC keywords to it.

you can also order from selected columns:
- SELECT <column_name> FROM <table_name> ORDER BY column_index;

## LIMIT
- SELECT <column_name> FROM <table_name> LIMIT starting_index, limit_number;
starting_index started from 0 by default 

- SELECT <column_name> FROM <table_name> LIMIT limit_number;
allows us to specify a limit_number for how many result we want

## LIKE
- WHERE  <column_name> LIKE '<string>';
allows us for better searching (checks for similarity)
wildcards: '%' symbol means any character(s) placeholder (useful in pattern matching)
wildcards: '_' symbol to specify excatly one character placeholder (useful in pattern matching)
the filtering is not case-sensitive, the lower or upper case doesn't matter
also you can use REGEXP here

focus: if you search for character '%' or '_' in string 
use scape character '\': '\%' or '\_'
