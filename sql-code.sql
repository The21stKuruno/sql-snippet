-- Creating a table

CREATE TABLE tblimg (
    idImg int(11) AUTO_INCREMENT PRIMARY KEY not null,
    titleImg LONGTEXT not null,
    descriptionImg LONGTEXT not null,
    imgFullNameImg LONGTEXT not null,
    orderImg LONGTEXT not null
);

// Creating table

create table posts (
    id int(11) not null PRIMARY KEY AUTO_INCREMENT,
    subject varchar(128) not null,
    content TEXT not null,
    date datetime not null
);

//Inserting value in table posts

insert into posts (subject, content, date) VALUES ('This is the subject', 'Donec consectetur egestas dui, eget rhoncus nisi aliquet vitae. Sed non est sit amet nunc maximus facilisis a nec lorem. Aenean turpis erat, malesuada blandit auctor sit amet, ultrices sed leo. Aenean efficitur porttitor libero mattis placerat. Duis nisi ex, molestie ut mollis in, aliquet et enim. Donec lectus risus, laoreet eget mollis quis, feugiat quis tortor. Maecenas vitae eleifend lectus.', '2015-11-14 16:38:01');

//Selecting Data in MySql

select * from posts where id='1' // select the id column where id = 1
select * from posts // select all columns on the table posts
select subject from posts // select only the subject column
select * from posts where id='1' AND subject='This is the subject' // this should be both true
select * from posts where id='1' OR subject='Thif is the subject' // One should be true

//Update Data

UPDATE posts
SET subject='This is a test', content='This is the content'
WHERE id='1'

//Delete Data

DELETE from posts
WHERE id='1'

//Order by

SELECT * FROM posts ORDER BY id ASC
SELECT * FROM posts ORDER BY id DESC

// Checking if the database connection works

/*
$sql = "SELECT * FROM users;";
$result = mysqli_query($conn, $sql);
$resultCheck = mysqli_num_rows($result);
if ($resultCheck > 0) {
  while ($row = mysqli_fetch_assoc($result)) {
    echo $row['user_uid']. "<br>";
  }
}
*/
