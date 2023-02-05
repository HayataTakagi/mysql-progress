-- ref: https://qiita.com/tayasu/items/c5ddfc481d6b7cd8866d

CREATE TABLE item (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  description VARCHAR(30),
  price INT UNSIGNED,
  created_at DATETIME
);



INSERT INTO item () VALUES ();            -- 1 record
INSERT INTO item (id) SELECT 0 FROM item; -- 2 record
INSERT INTO item (id) SELECT 0 FROM item; -- 4 record
INSERT INTO item (id) SELECT 0 FROM item; -- 8 record
INSERT INTO item (id) SELECT 0 FROM item; -- 16 record
INSERT INTO item (id) SELECT 0 FROM item; -- 32 record
INSERT INTO item (id) SELECT 0 FROM item; -- 64 record
INSERT INTO item (id) SELECT 0 FROM item; -- 128 record
INSERT INTO item (id) SELECT 0 FROM item; -- 256 record
INSERT INTO item (id) SELECT 0 FROM item; -- 512 record
INSERT INTO item (id) SELECT 0 FROM item; -- 1024 record
INSERT INTO item (id) SELECT 0 FROM item; -- 2048 record
INSERT INTO item (id) SELECT 0 FROM item; -- 4096 record
INSERT INTO item (id) SELECT 0 FROM item; -- 8192 record
INSERT INTO item (id) SELECT 0 FROM item; -- 16384 record
INSERT INTO item (id) SELECT 0 FROM item; -- 32768 record
INSERT INTO item (id) SELECT 0 FROM item; -- 65536 record
INSERT INTO item (id) SELECT 0 FROM item; -- 131072 record
INSERT INTO item (id) SELECT 0 FROM item; -- 262144 record
INSERT INTO item (id) SELECT 0 FROM item; -- 524288 record
INSERT INTO item (id) SELECT 0 FROM item; -- 1048576 record
INSERT INTO item (id) SELECT 0 FROM item; -- 2097152 record
INSERT INTO item (id) SELECT 0 FROM item; -- 4194304 record
INSERT INTO item (id) SELECT 0 FROM item; -- 8388608 record

UPDATE item SET
  name = CONCAT('Item', id),
  description = SUBSTRING(MD5(RAND()), 1, 30),
  price = CEIL(RAND() * 10000),
  created_at = ADDTIME(CONCAT_WS(' ','2014-01-01' + INTERVAL RAND() * 180 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401))));
