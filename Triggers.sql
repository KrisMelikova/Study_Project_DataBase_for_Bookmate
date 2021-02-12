/*При обновлении пароля отлючаем требование сменить пароль*/

DELIMITER //
CREATE TRIGGER trigger_users_on_update
BEFORE UPDATE 
ON users FOR EACH ROW 
    BEGIN 
		IF OLD.pass <> NEW.pass THEN 
	        SET NEW.pass_to_upd = FALSE;
	    END IF;
    END//
DELIMITER ;

/*При обновлении названия книги проверяем, что в нем нет спецсимволов*/

DELIMITER //
CREATE TRIGGER trigger_books_on_update
BEFORE UPDATE 
ON books FOR EACH ROW 
    BEGIN 
		IF NEW.title REGEXP '[^a-zA-Z0-9]' THEN 
	       SIGNAL SQLSTATE '45000'
	       SET MESSAGE_TEXT = 'Название книг может содержать только английские буквы и цифры';
	    END IF;
    END//
DELIMITER ;
