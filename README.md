# Spotify-Clone
Working Version of Full Stack Spotify Clone build using HTML5, CSS, jQuery/Ajax and PHP.

Download XAMPP for the respective version of OS from
https://www.apachefriends.org/index.html.

Once XAMPP is installed and lauched:

Under the General tab, click Start.

Under the Service tab, click Start on both Apache and MySQL services.

Under the Network tab, click Enable.

(This would start the local server at port 8080 on your machine)

Under the volume tab, click Mount

On the XAMPP virtual machine, click on lampp folder and then htdocs folder. Place the Spotify_Clone folder into the htdocs folder.

Go to http://localhost:8080/phpmyadmin to go into the admin page and click the "New" button on the left side of the screen to create new database. On the right side of the screen under the input for Create database, type in Spotify and then click the "Create" button.

Click on the newly created database "Spotify" on the left side of the screen and go to "Import" on the right side of the screen, locate the file in the git repository called spotifyCreateWholeDatabaseSoFar copy.sql and then click "Go" to import all the SQL instructions for creating the tables and entries for each table in the database.

Now go to http://localhost:8080/Spotify_Clone/register.php to access the registration page, Make sure to register for your own user profile and then log in to the system.

<img width="1680" alt="artist" src="https://user-images.githubusercontent.com/32314110/34497769-e7b7bf1e-efcc-11e7-9267-bf59bf6bf282.png">
