SELECT users.first_name, users.last_name, users2.first_name as friend_first_name, users2.last_name as friend_last_name
FROM users
LEFT JOIN friendships ON friendships.user_id = users.user_id
LEFT JOIN users AS users2 ON users2.user_id = friendships.friend_id;


SELECT * 
FROM users;

DELETE FROM users WHERE users.user_id>6;

SELECT * 
FROM users;
DELETE FROM users WHERE users.user_id>5;


SELECT * 
FROM users;

DELETE FROM users WHERE users.user_id=2;


SELECT * 
FROM users;

SELECT users.first_name, users.last_name, users2.first_name as friend_first_name, users2.last_name as friend_last_name
FROM users
LEFT JOIN friendships ON friendships.user_id = users.user_id
LEFT JOIN users AS users2 ON users2.user_id = friendships.friend_id
ORDER BY  friend_last_name ASC;
