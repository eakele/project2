#Live Soccer application

##Functionality
###Sign up new users
 users have to sign up to the system by entering their
* Name
* Email and
* Password

###Authenticate registered users
 once signed up, users need to login to use the application using their
* Email as a user name and
* Password  

###Fetch live data from the API and present it in a user understandable format

* English Premier leagu table

shows the full table of the English Premier leagu like points, goals, game won, game lost etc.

* Detail of participating teams in the English Premier leagu

shows each participating team in detail

* Game details in a specific season in Europe and
* Fixtures

Under fixtures there are four functionality focused on the top four teams in the premier leagu

**Leicester City FC**

    More details of a team that finishes as a leader last season, using these functionality
    users can see players details, fixtures, results etc.

**Arsenal FC**

   Players details, Fixures, results etc.

**Tottenham hotspur**  

   Players details, Fixures, results etc.

**Manchister City**

   Players details, Fixtures, results etc.

###Contact Managment

 these functinality is independet of the API it is here as an extra service for users. Under these there are two functionality
* Create new contact
   A user with an account can create a contact and save it to the system
* View and edit saved contact
   A user can view, update and delete his/her contacts
##Database structure
 There are two tables in the system which are:

 * users table

| user_id      | name          | password    |
| -------------|:-------------:| ---------:  |
| user1        |Jhon            |password    |

* contact table   

| id           | first_name    |last_name      |email             |phone_no         |user_id     |
|------------- |:-------------:|:------------- | :---------------:|:---------------:|-----------:|
|contact1      |    Smith      |     Greg      |smith_g@yahoo.com |+12 312 131 123  |user1      |
|contact2      |    Tony       |     Hans      |tonyh@hotmail.com |+61 453 234 823  |user1      |


  One user can have many contacts so the relationship is one to many. There is user_id column 
  from a user tabel as a foreign key in contact table.
