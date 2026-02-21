# Music Store Database

#Overview
This project represents a relational database design for a Music Store system.  
It manages artists, albums, tracks, customers, employees, invoices, and playlists.

The schema is fully normalized and includes primary keys, foreign keys, and many-to-many relationships.

---

# Database Structure

### Core Tables
- **Artist** – Stores artist information
- **Album** – Stores albums linked to artists
- **Track** – Stores track details (price, duration, genre, etc.)
- **MediaType** – Stores track media formats
- **Genre** – Stores music genres

### Sales & Customers
- **Customer** – Stores customer details
- **Employee** – Stores employee/support representative details
- **Invoice** – Stores customer invoice records
- **InvoiceLine** – Stores purchased track details per invoice

### Playlist Management
- **Playlist** – Stores playlist names
- **PlaylistTrack** – Many-to-many relationship between Playlist and Track

---

# Relationships
- One Artist → Many Albums  
- One Album → Many Tracks  
- One Customer → Many Invoices  
- One Invoice → Many InvoiceLines  
- Many Tracks ↔ Many Playlists  
- Employees manage Customers  

---

## Technologies Used
- SQL (DDL – CREATE TABLE)
- Relational Database Design
- ER Diagram Modeling

---

## Key Features
- Primary & Foreign Key Constraints
- Self-referencing Employee hierarchy
- Many-to-Many relationship (PlaylistTrack)
- Structured and normalized schema

---

#How to Use
1. Import the SQL file into MySQL / PostgreSQL / SQL Server.
2. Execute the `CREATE TABLE` statements.
3. Insert sample data.
4. Run analytical SQL queries.

---

#Author
Vaibhav  
MCA Graduate | Python & SQL Developer
