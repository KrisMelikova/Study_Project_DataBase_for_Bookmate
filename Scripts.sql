/*Скрипты характерных выборок*/

/*Показать книги, где  рейтинг равен 9*/

SELECT DISTINCT books.title, rating  FROM review, books WHERE review.book_id = books.id AND review.rating = 9;

/*Показать средний рейтинг книг (которым проставляли рейтинг)*/

SELECT books.title, AVG(review.rating) AS average_rating FROM books JOIN review ON books.id = review.book_id 
GROUP BY review.book_id;

/*Найти все книги издательства Mann*/

SELECT books.title AS title_of_the_book, publishing_house.publishing_house_name AS publishing_house FROM books JOIN publishing_house  ON publishing_house_id=publishing_house.id
HAVING publishing_house_name = 'Mann';

/*Выбрать 5 любых книг*/

SELECT title, book_description 
FROM books 
WHERE RAND(id)
LIMIT 5;

/*Показать имя, фамилию, мейл, логин, день рождения пользователя с id=5*/

SELECT 
	first_name,
	last_name,
	email,
	(SELECT login FROM profiles WHERE user_id=5) AS login,
	(SELECT birthday FROM profiles WHERE user_id=5) AS birthday
FROM users WHERE id=5;

/*Показать книги в статусе 'Read'*/

SELECT books.title, book_status_text.status_text FROM books JOIN book_status ON books.id=book_id 
JOIN book_status_text ON book_status.book_status_text_id=book_status_text.id
WHERE status_text = 'Read';

/*Показать id пользователей, которые слушают аудиокниги*/

SELECT book_status.user_id FROM books JOIN book_status ON books.id=book_id 
JOIN book_status_text ON book_status.book_status_text_id=book_status_text.id JOIN book_type ON book_type.id=book_type_id
WHERE status_text = 'Reading' AND type_name = 'Audio';

