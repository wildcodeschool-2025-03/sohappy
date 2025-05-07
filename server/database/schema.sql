CREATE TABLE user (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE post (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE comment (
  id INT AUTO_INCREMENT PRIMARY KEY,
  post_id INT,
  user_id INT,
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (post_id) REFERENCES post(id),
  FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO user (name, email, password_hash) VALUES
('Alice', 'ez@fd', 'hashed_password_1'),
('Bob', 'ezsd@fd', 'hashed_password_2'),
('Charlie', 'ezqsdq@fd', 'hashed_password_3');

INSERT INTO post (user_id, title, content) VALUES
(1, 'First Post', 'This is the content of the first post'),
(2, 'Second Post', 'This is the content of the second post'),
(3, 'Third Post', 'This is the content of the third post');

INSERT INTO comment (post_id, user_id, content) VALUES
(1, 2, 'This is a comment on the first post'),
(2, 3, 'This is a comment on the second post'),
(3, 1, 'This is a comment on the third post');
