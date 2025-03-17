# University Library Database ERD Diagram

## Introduction
This repository contains an ERD diagram for a university library database. The diagram illustrates the entities, attributes, and relationships in the database.

## ERD Diagram Explanation
The ERD diagram consists of 7 entities: Books, Authors, Publishers, Students, Faculty, Loans, and Fines. The relationships between entities are as follows:

* A book can have multiple authors (one-to-many).
* An author can write multiple books (one-to-many).
* A publisher can publish multiple books (one-to-many).
* A student or faculty member can borrow multiple books (one-to-many).
* A book can be borrowed by only one student or faculty member at a time (one-to-one).
* A loan can result in multiple fines (one-to-many).



![ERD ](https://github.com/user-attachments/assets/421b1751-5dc0-47f1-b7f2-ffb90f034d1d)







## Entity Descriptions
* **Books**: Represents a book in the library collection.
	+ Attributes: BookID, Title, ISBN, PublisherID, PublicationDate, Edition, BookType
* **Authors**: Represents an author of a book.
	+ Attributes: AuthorID, FirstName, LastName, BirthDate, DeathDate

## Relationship Descriptions
* **Book-Author**: A book can have multiple authors.
* **Book-Publisher**: A book is published by one publisher.

## Conclusion
This ERD diagram provides a comprehensive overview of the university library database. It illustrates the complex relationships between entities and provides a foundation for further database design.
