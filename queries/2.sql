insert into authors (author_name) values ('Shevchenko');
insert into authors (author_name) values ('Skovoroda');
insert into authors (author_name) values ('Petlura');

insert into genres (genre_name) values ('Poems');
insert into genres (genre_name) values ('Fiction');
insert into genres (genre_name) values ('Philosophy');

insert into books (title, publication_year, author_id, genre_id) values ('Son', 1865, 1, 1);
insert into books (title, publication_year, author_id, genre_id) values ('Kobzar', 1840, 1, 1);
insert into books (title, publication_year, author_id, genre_id) values ('The Garden of Divine Songs', 1861, 2, 2);
insert into books (title, publication_year, author_id, genre_id) values ('Moscow louse', 1925, 3, 3);

insert into users (username, email) values ('Ant', 'ant@gmail.com');
insert into users (username, email) values ('Bob', 'bob@gmail.com');
insert into users (username, email) values ('Cindy', 'cindy@gmail.com');

insert into borrowed_books (book_id, user_id, borrow_date, return_date) values (1, 1, '2025-01-01', '2025-01-03');
insert into borrowed_books (book_id, user_id, borrow_date, return_date) values (1, 2, '2025-01-02', '2025-03-01');
insert into borrowed_books (book_id, user_id, borrow_date, return_date) values (2, 3, '2025-01-02', '2025-03-02');
insert into borrowed_books (book_id, user_id, borrow_date, return_date) values (3, 3, '2025-01-03', '2025-03-02');