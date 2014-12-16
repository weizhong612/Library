
== README

This project works for librarian to keep track of the progress of summer reading program. A database should be set up to store the readers' reading status. Managers are able to create and edit staffs’ account. Only library staffs could get access to that database, and insert, check and update the records. This website should be available to access simultaneously from different places by multiple librarians. Also, if possible, this work could provide a statistical analysis report over the program.


In this project, we implemented a website which included the manager log in page, staff log in page, readers list page, add new reader page, readers’ status update page and program report page. The manager could store the staffs’ account information in the database and enables staffs log in and log out. And staffs can get access to the database to create readers and log in id could be generated in the meanwhile. And readers’ status could be update when readers come back next time. The report could be generated as a table, which shows how many people take the adult summer reading program and what percentage of them is in halfway or finished.

github link: http://github.com/weizhong612/Library

Heroku link: http://bcslibrary.herokuapp.com

For manager login (user name: BBB password: 123)

For staff login (user name: test password: 123)

2-minute video interview: https://vimeo.com/113994235

Demo link: https://drive.google.com/file/d/0BxAJbu-VoSVScENjSUNXdDJlb2c/view

** Git operation

git remote add program http://github.com/weizhong612/Library

or

git remote set-url program http://github.com/weizhong612/Library

git add -A

git commit -m "modify message"

git fetch http://github.com/weizhong612/Library

git pull http://github.com/weizhong612/Library master

bundle install

rake db:migrate

git status

git push http://github.com/weizhong612/Library branch_name
