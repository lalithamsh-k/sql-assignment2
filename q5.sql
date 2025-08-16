use assignment2;

DELIMITER //

create procedure allhistory()
begin
	declare done int default false;
    declare subid int;
		declare getsub cursor for
			select SubscriberId from Subscribers;
	
    declare continue handler for not found set done =true;
    
    open getsub;
     read_loop:LOOP
		fetch getsub into subid;
        if done then 
			leave read_loop;
		end if;
         
         call GetWatchHistoryBySubscriber2(subid);
	 end LOOP;
	close getsub;
end //
DELIMITER ;

call allhistory();

select*from Subscribers;


