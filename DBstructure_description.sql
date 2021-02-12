/*
 * Данная база данных создана для книжного приложения Bookmate. В приложении находятся книги в текстовом виде и аудиоформате. 
 * Пользователь заводит профиль, читает/слушает книги, оставляет на них свои отзывы, может сохранить выделенную им цитату, чтобы вернуться к ней позже.
 * Добавленная пользователем книга для удобства имеет статусы "Хочу прочесть", "Читаю" и "Прочел". База данных хранит информацию о книгах, данных пользователей. 
 * Поиск книги можно осуществлять по автору книги, издательству, жанру, типу и т.д..
 */
DROP DATABASE IF EXISTS bookmate;
CREATE DATABASE bookmate;

USE bookmate;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(150) NOT NULL,
	last_name VARCHAR(150) NOT NULL,
	phone VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	pass VARCHAR(100) NOT NULL,
	pass_to_upd BOOL DEFAULT FALSE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX (email)
);



DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	login VARCHAR(200) COMMENT 'Ник пользователя в приложении',
	birthday DATE,
	city VARCHAR(200),
	country VARCHAR(100),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT profiles_users_id_fk 
    FOREIGN KEY (user_id)  REFERENCES users(id)
    ON DELETE CASCADE,
    INDEX (login)
);

DROP TABLE IF EXISTS genre;
CREATE TABLE genre(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	genre_name VARCHAR (100) COMMENT 'Название жанра',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS author;
CREATE TABLE author(
	id SERIAL PRIMARY KEY,
	author_name VARCHAR(200) COMMENT 'Имя автора книги',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX (author_name)
);

DROP TABLE IF EXISTS book_type;
CREATE TABLE book_type(
	id SERIAL PRIMARY KEY,
	type_name VARCHAR(50) COMMENT 'Тип (формат) книги',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS publishing_house;
CREATE TABLE publishing_house(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	publishing_house_name VARCHAR(200) COMMENT 'Название издательства книги',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX (publishing_house_name)
);

DROP TABLE IF EXISTS books;
CREATE TABLE books (
	id SERIAL PRIMARY KEY,
	title VARCHAR(200) COMMENT 'Название книги',
	genre_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на указание жанра книги',
	author_id BIGINT UNSIGNED NOT NULL COMMENT 'Ссылка на имя автора книги',
	book_type_id BIGINT UNSIGNED NOT NULL COMMENT 'Ссылка на тип (формат) книги',
	publishing_house_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на издательство',
	book_written DATE COMMENT 'Дата написания книги',
	book_description VARCHAR(255) COMMENT 'Описание книги',
	publishing_time DATE COMMENT 'Дата издания книги',
	book_size INT NOT NULL COMMENT 'Размер книги',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT books_genre_id_fk 
    FOREIGN KEY (genre_id) REFERENCES genre(id)
    ON DELETE RESTRICT,
    CONSTRAINT books_author_id_fk 
    FOREIGN KEY (author_id) REFERENCES author(id)
    ON DELETE RESTRICT,
    CONSTRAINT books_book_type_fk 
    FOREIGN KEY (book_type_id) REFERENCES book_type(id)
    ON DELETE RESTRICT,
    CONSTRAINT books_publishing_house_fk 
    FOREIGN KEY (publishing_house_id) REFERENCES publishing_house(id)
    ON DELETE RESTRICT,
    INDEX (title),
    INDEX (book_written)
);

DROP TABLE IF EXISTS book_status_text;
CREATE TABLE book_status_text(
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	status_text VARCHAR(50) NOT NULL COMMENT 'Текст статуса',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS book_status;
CREATE TABLE book_status(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL COMMENT 'Пользователь, который установил статус относительно книги',
	book_id BIGINT UNSIGNED NOT NULL COMMENT 'Книга в отношении которой пользователь установил статус',
	book_status_text_id TINYINT UNSIGNED NOT NULL COMMENT 'Ссылка на таблицу статусов',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT books_status_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
    CONSTRAINT books_status_book_id_fk 
    FOREIGN KEY (book_id) REFERENCES books(id)
    ON DELETE CASCADE,
    CONSTRAINT books_status_book_status_text_fk 
    FOREIGN KEY (book_status_text_id) REFERENCES book_status_text(id)
    ON DELETE CASCADE
);

DROP TABLE IF EXISTS review;
CREATE TABLE review(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL COMMENT 'Пользователь, который оставил отзыв',
	book_id BIGINT UNSIGNED NOT NULL COMMENT 'Книга на которую пользователь написал отзыв',
	title VARCHAR (100) COMMENT 'Заголовок отзыва',
	body TEXT COMMENT 'Текст отзыва',
	rating TINYINT UNSIGNED COMMENT 'Рейтинг книги, проставленный пользователем',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT review_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
    CONSTRAINT reviev_book_id_fk 
    FOREIGN KEY (book_id) REFERENCES books(id)
    ON DELETE CASCADE
);

DROP TABLE IF EXISTS quotes;
CREATE TABLE quotes(
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL COMMENT 'Пользователь, который создал цитату из книги',
	book_id BIGINT UNSIGNED NOT NULL COMMENT 'Книга которую цитирует пользователь',
	quote_text TEXT COMMENT 'Текст цитаты',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT quotes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
    CONSTRAINT quotes_book_id_fk 
    FOREIGN KEY (book_id) REFERENCES books(id)
    ON DELETE CASCADE
    
);