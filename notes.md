#Joins

A 'foreign key' is a colunm on a table that references the primary key on another table.
A way to link a record (or row) in one table to a record in another table.
Pairs to another table's primary key showing the relationship btw the rows.
A coulumn or group of coulumns in a relational db table that provides a link btw data intwo tables. It acts as a cross-reference btw 

## App Architecture 
Luis Opinion:
For an API we normally have 3 (at least) layers:
    - Routing (express, endpoints, middleware)
    -Data Access (knex + SQLite code) --> model or helpers
    -Business Logic (makes app unique)  --> reg pure functions packed into a module.
