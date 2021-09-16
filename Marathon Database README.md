# Marathon Database and Application

###Project Focus
This project focuses on the data domain of marathon results and event information over the span of the last 3 years. 
The database stores all of the information on finishers such as their name, home country, age, gender, athlete type 
(runner/wheelchair), and finishing time. The database also contains information on each race such as the sponsors and 
volunteers involved in the production of the event. The application we created allows users to easily interrogate and 
modify this data to learn more about the various participants, sponsors, and volunteers across multiple events. 

###Technical Specifications
The project relies on two languages, MySQL and Python 3. The visual user interface is displayed with the Tkinter library 
available from Python 3. We use pymysql to establish the connection between Python and MySQL. We used PyCharm to write 
and run our Python script. There are no additional libraries or software needed to create or run the project. 


The back-end database utilizes SQL storage. The dump of our database can be easily opened with MySQL Workbench. 
The application relies on various procedures and triggers within this database. 
The application was created using Python 3 and the Tkinter library to create a visual user interface. We use pymysql to 
establish the connection between Python and MySQL. We used PyCharm to write and run our Python script. There are no 
machine restrictions for the project. 

###Final User Flow
Once the application is running from Python, all user interactions occur through the user interface created in Tkinter. 
The screens provided walk the user through potential functions of the database, so that users can easily follow the path 
to what they wish to do. Users simply click the buttons associated with their desired task and fill out any prompted 
fields or select from drop-down menus as necessary to perform their tasks. The application is generally very user 
friendly. 

Delete functions require the user to know the database ID number of the participant, volunteer, or sponsor 
they are deleting. This ensures that the correct tuple is deleted. It is expected that a user may not know the ID, but 
the ID can easily be determined using the “view data” functions to search for participants by name or view sponsors and 
volunteers. If the user is on the delete screen, he or she can simply click the restart button to open a new window that
will allow for viewing data. When the “restart” button is clicked, the original window remains open so that the user
can easily return to the first task. 


### Detailed Flow of User Interaction
####Walking through the application, the user is faced with the following functionality options
1.	User logs into the application using MySQL credentials to connect to the database. 
If the user provides invalid credentials, the connection does not occur and the user is notified that the credentials 
were incorrect and is prompted to re-enter correct credentials. 
2.	Once the system opens, the user decides to either view or edit data, or view either the participant audit log or 
the registered audit log. The participant audit log shows any additions or deletions from the participant table. The 
registered audit log shows any participants that were deleted from the registered table. The user cannot update, delete, 
or add to either audit log, since the purpose of the log is to track all changes. The tables are updated using triggers 
when additions or deletions take place in either the participant or registered tables.  This ensures a level of data 
integrity on the participant information. At any time once the system is open, the user can click the “reset” button to 
open a new window of this initial decision screen while keeping the current window open. 
3.	If the user selects to view data, he or she must then select either to view participant, sponsor, or volunteer data. 
If the user selects to view participant data, he or she can either search by name, view statistics, or estimate a 
finishing place. If search by name is selected, the user will input a first and last name of a participant they wish to 
view and then press the search button. This will return all participant data including any registrations and race 
results associated with the entered name. If the name is not found, the user will be notified that the name was not 
found and will be prompted to try again. If view statistics is selected, the user will be prompted with options to 
either view average finishing times by division, view the fastest race, or view a country break down. If average 
finishing time by division is selected, the user will be asked to select the appropriate division and 
then click show average to generate the result (Note: Our database does not currently contain anyone in the 15-19 
division, so if this division is selected, it will not return any data). If the user wants to search another division 
they can simply change the inputs and click “show average” again. 
4.	Fastest race simply returns a race year and an average finishing time based. This indicates the fastest race based 
on average finishing time of all finishers. 
5.	If view country break down is selected, the user will have to select the desired race year and then click show 
country analysis to see the number of participants from each country for that race. If the user then wants to see 
another year’s analysis, he or she can simply change the race year and click “show country analysis” again to display 
new results. 
6. Finally, if “where would I place?” is selected, the user can input an estimated finishing time, year, and athlete 
type (wheelchair or runner) and then click “estimate my place” to be provided with an estimated overall finishing place 
for that race. If the user wants to then change their estimated time, he or she can simply input new time data and click 
“estimate my place” again to see the new place estimate. 
7.	If the user selects to view sponsor data, he or she can either view all sponsors or view sponsors by category. If 
the user selects to view all sponsors, he or she will be asked to select the sponsorship year and then can click 
“view sponsors” to view all sponsors for that particular year. Again, if the user wants to see sponsors for another 
year, he or she can just select a new year and click “view sponsors” again to see the data for that year. If the user 
selects to view sponsors by category, he or she will be asked to select the sponsorship year and sponsorship level and 
then click “view sponsors” to view all sponsors for that particular race at that particular sponsorship level. Then if 
the user is curious about what amount of money that level of sponsorship entails, he or she can click show 
“amount donated” to reveal the amount donated for that sponsorship level. Again, if the user wants to see sponsors for 
another year or level, he or she can just select a new year or level and click “view sponsors” again to see the data for 
those inputs. 
8.	If the user selects to view volunteer data, he or she will be provided a full, scrollable list of all volunteers 
and their volunteer ID numbers. 
9.  If the user selects edit data, he or she must then select either to edit participant, sponsor, or volunteer data. If 
the user selects edit participant data, he or she will be able to add new participants, delete participants, delete 
registered athletes, or update participants. 
10. If the user selects to add a participant, he or she will need to choose
whether the athlete is a runner or wheelchair participant If the user is creating a new runner participant, he or she 
will need to input a first name, last name, country, gender, and shoe preference. Then, the user can click “Add” to add 
the participant. If there is any error, the system will notify the user that the participant was not added and prompt
the user to try again. If the user is creating a new wheelchair participant, he or she will need to input a first name, 
last name, country, gender, and wheelchair type preference. Then, the user can click “Add” to add the participant. If 
there is any error, the system will notify the user that the participant was not added and prompt the user to try again. 
11.	If the user selects to delete a participant, he or she must input the participant ID of the participant to delete. 
It is understandable that a user may not know the participant ID, but this can easily be found using the 
“Search by name” function in the view data section of the application. This can be opened by clicking restart and 
leaving the delete window open. Then the user can discover the ID and input it in the delete field. If the participant 
is registered for a race, the system will not allow the participant to be deleted and will notify the user that the 
participant can not be deleted unless he or she is removed from the registered table first. If the user selects to 
delete a registered athlete, this means that he or she is deleting someone from a race that they already completed. 
This could occur if an athlete disqualified by completing the course incorrectly. Again, the user is asked for the 
participant ID of the athlete and the year of the race records that need to be deleted. This is important as an athlete 
could run in multiple years/ races. When the athlete is deleted, all other athletes in the registered table for that 
race year are updated to reflect new overall, division, and gender finishing ranks as necessary given the rank of the 
deleted athlete. Users cannot update or add to the registered table because this application is designed for race 
organizers, not for race timers. So, the race data of finishing times and original rankings would come from a third 
party race timing organization and then would be imported into our system for management by race organizers. 
12. If the user selects to update a participant, he or she will need to select either a runner or a wheelchair 
participant. If a runner is selected, the user will be asked for the participant ID and then will be able to update 
the runner’s shoe preference. If a wheelchair participant is selected, the user will be asked for the participant ID 
and then will be able to update the athlete’s wheelchair preference. If the user selects to edit sponsor data, he or
she will be able to add, delete, or update sponsorship data. To add a sponsor, the user will input the sponsor name, 
the amount the sponsor donated, and the sponsorship year. To delete a sponsor, the user will input the sponsor ID. To
update a sponsor, the user will input the sponsor ID and a new sponsorship amount and a new sponsorship year.
If this action is completed, the prior instances of the sponsorship are not deleted, they are just updated to also 
reflect the new update. If the user selects to edit volunteer data, he or she can add, delete or update volunteers.
If the user wants to add a volunteer, he or she simply inputs the first and last name of the new volunteer. 
If the user wants to delete a volunteer, he or she inputs the volunteer ID of the volunteer. If the volunteer is used 
to register athletes in the registered table, the user will not be able to delete the volunteer. If the user tries to 
perform such an action, the application will notify him or her that this is not possible if the volunteer is used in the
 registered table.
If the user wants to update a volunteer, he or she can change the first or last name or both by inputting the new 
name in the update screen. If the user leaves a field blank, that part of the volunteer’s name will not change. 
This ensures that the user does not accidentally delete the first name of a volunteer if only the last name is being 
updated, for instance. 


### Opportunity for Future Work
The database and application is designed for use by race organizers. The intended use is that race organizers 
receive race day information from race timing companies, and then the race organizers are able to view and edit 
that data as necessary. Additionally, the database provides a platform for users to keep track of participants that
have not raced yet, volunteers, and sponsors, which are all essential to putting on a successful race. This creates
a singular platform for race organizers to manage the information associated with the race. Currently, the database 
supports only hypothetical data for the Boston Marathon. There are, of course, many other races that occur through the 
Boston Athletic Association and other race organizations all over the world. Future work could add functionality to 
maintain data for all races in multiple locations. Additionally, web scraping could be used to pull data directly from 
race result websites or race organizer websites. Furthermore, the application could be developed to handle multiple
user views such as a race participant view, which would only allow for participants to view race results. Additionally,
a race timing function could be added to allow race timers to manage their data within the database. If the 
application was accessible from the internet, this would potentially be very useful to both marathon runners and 
organizers. 


