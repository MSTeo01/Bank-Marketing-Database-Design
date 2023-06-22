# Bank-Marketing-Database-Design

Trying out a database UML diagram building website [dbdiagram.io](https://dbdiagram.io) that builds a database design based on the schema you input. <br>

**Designing the database**

Essentially, the principles of database design are to identify what data needs to get stored, grouping those data into different tables based on their requirements, and adding relationships between related data fields.

A way to do this is use *Entity-Relationship(ER)* diagrams to visualize objects that are going to be stored and their relationships (that can be created through [dbdiagram.io](https://dbdiagram.io)).

**How to use the tool** <br>

Write in the code, and it renders the ER(Entity-Relationship) Diagram. You can also export to PDF, PNG or generate SQL code with it. <br>
**Note**: It uses DBML (database markup language) to define and document database schemas.

![Client](https://github.com/MSTeo01/Bank-Marketing-Database-Design/blob/main/pics/client.png)

*id is primary key*

![Campaign](https://github.com/MSTeo01/Bank-Marketing-Database-Design/blob/main/pics/campaign.png)

*campaign_id is primary key*
*client_id is a foreign key that references the id in client table (many-to-one relationship)*

![Economics](https://github.com/MSTeo01/Bank-Marketing-Database-Design/blob/main/pics/economics.png)

*client_id is a foreign key that references the id in client table (one-to-one relationship)*

**Final Result - ER Diagram:**
![ER Diagram](https://github.com/MSTeo01/Bank-Marketing-Database-Design/blob/main/pics/ER%20diagram.png)
