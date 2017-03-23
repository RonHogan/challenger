# README


 To set up this application locally you have to:

 1. Install:  

		a) Ruby 2.4.0

		b) Rails 5.0.2

		c) Homebrew 1.1.11

		d) sqlite3 3.14.0


2. After forking/downloading repo remember to install all gems using Homebrew.

	
3. Remember to create database, add the schema and initialaze it by seed data, by running 

	
	rails db:setup 


in your terminal.



4. To view the application locally you have to start server. To do that run 


	rails s 


on your terinal, and enter 


	http://localhost:3000 


in your web browser (no matter which one you're using.)

	

!REMEMBER the server has to be running in order to see the website at that address. 
Remember to restart server by hitting 


	control + c 


in your terminal and starting the server again each time you create a new migration.

	
5. To push changes to github see github help.

6. To exit application remember to hit 

	control + c 

in your terminal to stop local server from running.

In some time the application will be online at https://challenger-uj.herokuapp.com, so you will be able to check it out easily. Stay tuned!
