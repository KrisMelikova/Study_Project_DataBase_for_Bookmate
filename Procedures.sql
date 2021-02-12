/*Процедура для того, чтобы узнать самую цитируемую книгу за определенный год*/

DROP PROCEDURE IF EXISTS top_quotes;
DELIMITER //
CREATE PROCEDURE top_quotes(IN my_year INT, OUT book_h BIGINT)
	BEGIN
	    SET @from = STR_TO_DATE(CONCAT(my_year, '-01-01'),'%Y-%m-%d');
	    SET @to = STR_TO_DATE(CONCAT(my_year + 1 , '-01-01'),'%Y-%m-%d');
	    SET @count=0;
	    SELECT COUNT(id), book_id INTO @count, book_h FROM quotes WHERE created_at >= @from AND created_at < @to
	    GROUP BY book_id;
	END//
SET @book_id = 0//
CALL top_quotes (2017, @book_id)//
SELECT @book_id//
DELIMITER ;

/*Процедура, которая выставляет требование обновить пароль для пользователя, запись которого обновлялась более года назад */

DROP PROCEDURE IF EXISTS update_pass_to_upd;
DELIMITER //
CREATE PROCEDURE update_pass_to_upd()
	BEGIN
	    UPDATE users SET pass_to_upd = TRUE WHERE updated_at < DATE_SUB(NOW(), INTERVAL 1 YEAR);
	END//

CALL update_pass_to_upd()//
DELIMITER ;

