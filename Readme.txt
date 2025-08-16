#sql assignment 2

1.created a database named assignment2 with tables Shows,Subscribers,watchhistory
2.created a stored procedure listAllSubscribers with showsname cursor which lists all names in Subscriber table
3. use call ListAllSubscribers(); to execute this procedure.

q2

1.GetWatchHistoryBySubscriber1(IN sub_id INT) is a stored procedure which uses left join to list all subscribers and their watch time even if they have not watched any showsname
2.uses assignment2 database
3. use call GetWatchHistoryBySubscriber1(IN sub_id INT); to execute 

q3

1.call AddSubscriberIfNotExists(); is used to execute this procedure.
2.need to alter table Subscribers primary key SubscriberID to auto_increment so that we get correct result
3.i faced problem with alter as  SubscriberID acts as foreign key in Watch History table need to use SET FOREIGN_KEY_CHECKS = 0;
so that we can alter and then SET FOREIGN_KEY_CHECKS = 1; 

q4

1.
use call SendWatchTimeReport1(); to execute procedure
2.uses assignment2 database
3.did not qive result tables in mysql workbench had to use  mysql -u root -p assignment2, then CALL SendWatchTimeReport1(); 

q5
1.use call allhistory(); to execute procedure 