-- a
create schema LibraryManagement;
use LibraryManagement;

-- b
create table authors(
	author_id INT AUTO_INCREMENT PRIMARY KEY,
	author_name VARCHAR(50)
);

-- c
create table genres(
	genre_id INT AUTO_INCREMENT PRIMARY KEY,
	genre_name VARCHAR(50)
);

-- d
create table books(
	book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(50),
    publication_year INT, -- YEAR не може містити роки до 1901, а книжки є старіші
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- e
create table users(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(50),
    email VARCHAR(50)
);

-- f
create table borrowed_books(
	borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    user_id INT,
	borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
