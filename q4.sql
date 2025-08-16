use assignment2;

DELIMITER //
create procedure SendWatchTimeReport1()
begin 
	declare done int default false;
    declare subid int;
    
    declare getsubid cursor for
		select distinct SubscriberID from WatchHistory;
	
    declare continue handler for not found set done = true;
    
    open getsubid;
    
	read_loop: LOOP
        fetch getsubid into subid;
        if done then 
			leave read_loop;
		end if;
         
         call GetWatchHistoryBySubscriber2(subid);
	end LOOP;
	close getsubid;
end //

DELIMITER ;
call SendWatchTimeReport();






	