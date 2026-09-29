-- stored procedures
create database stored_procedures_db;

use stored_procedures_db;

delimiter $$;
create procedure show_name()
begin
	select 'Hello';
end $$;

delimiter ;

call show_name();


-- Create Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

-- Insert Sample Data
INSERT INTO users (name, age, email) VALUES
('John Doe', 30, 'john.doe@example.com'),
('Jane Smith', 25, 'jane.smith@example.com'),
('Alice Johnson', 28, 'alice.johnson@example.com'),
('Bob Brown', 35, 'bob.brown@example.com'),
('Charlie White', 22, 'charlie.white@example.com');

select * from users;

-- GetAllUsers

delimiter $$;
create procedure GetAllUsers()
begin
	select * from users;
end $$;

delimiter ;

call GetAllUsers();

-- GetUserById()
drop procedure GetAllUserById;

delimiter $$;
create procedure GetAllUserById(in user_id int)
begin
	select * from users
    where id = user_id;
end $$;

delimiter ;

call GetAllUserById(1);

select * from users 
where id = 1;


-- parameter types
-- int (default)
-- out
-- inout


-- GerUserNameById
drop procedure GerUserNameById;

delimiter $$;
create procedure GerUserNameById(in user_id int, 
	out user_name varchar(100))
begin
	select name into user_name from users
    where id = user_id;
    
    select user_name;
end $$;
delimiter ;

set @user_name  = '';

call GerUserNameById(1, @user_name);

select @user_name;

-- inout
-- UpdateUserAge(INOUT user_id INT, IN new_age INT)
drop procedure UpdateUserAge;

delimiter $$;
create procedure UpdateUserAge(inout user_id int, in new_age int)
begin
	update users set age = new_age
    where id = user_id;
    
    select user_id + 1 into user_id;

end $$;
delimiter ;

set @user_id = 1;
call UpdateUserAge(@user_id, 32);

select @user_id;
