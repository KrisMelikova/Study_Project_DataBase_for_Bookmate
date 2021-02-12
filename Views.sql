/*Данное представление показывает имя, фамилию и мейл пользователя (email не может быть со значением NULL, есть проверочная функция) */

CREATE VIEW USERS_VIEW AS
SELECT first_name, last_name, email
FROM users
WHERE email IS NOT NULL;

/*Cколько пользователей слушает аудиокниги*/

CREATE VIEW USERS_AUDIO_VIEW AS
SELECT COUNT(book_status.user_id) FROM books JOIN book_status ON books.id=book_id 
JOIN book_status_text ON book_status.book_status_text_id=book_status_text.id JOIN book_type ON book_type.id=book_type_id
WHERE status_text = 'Reading' AND type_name = 'Audio';
