#Live Soccer application

##Functionality
###Sign up new users
 users have to sign up using a sign up form by entering their
..*Name
..*Email and
..*Password

###Authenticate registered users
 once signed up users need to sing in using
  Email as a user name and
  Password   
###Fetch live data from the API and present it in a user understandable format
###English Premier leagu table
  shows the full table of the English Premier leagu like points, goals, game won, game lost etc.
###Detail of participating teams in the English Premier leagu
  shows each participating team in detail
###Game details in a specific season in Europe
###Fixures
  Under fixtures there are four functionality focused on the top four teams in the premier leagu
###Leicester City FC
    More details of a team that finishes as a leader last season, using these functionality users can see players details, fixtures, results etc.
###Arsenal FC
   Players details, Fixures, results etc.
###Tottenham hotspur  
   Players details, Fixures, results etc.
###Manchister City
   Players details, Fixures, results etc.
###Contact Managment
 these functinality is independet of the API it is here as an extra service for users. Under these there are two functionality
###Create new contact
   A user with an account can create a contact and save it to the system
###View and edit saved contact
   A user can view, update and delete his/her contacts
##Database structure
 There are two tables in the system which are: users table

| user_id      | name          | password    |
| -------------|:-------------:| -----:      |
| -------------|:-------------:| -----:      |

  contact table   

| id           |: first_name    |last_name      |email         |phone_no    |user_id     |
|------------- |:--------------:|:------------- | :----------:|:-----------:|-----------:|
|------------- |:--------------:|:------------- | :----------:|:-----------:|-----------:|

  one user can have many contacts so the relationship is one to many. There is user_id
  from a user tabel as a foreign key in contact table.
