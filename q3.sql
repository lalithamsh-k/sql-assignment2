use assignment2;

DELIMITER //

create procedure AddSubscriberIfNotExists(IN subName varchar(100))
begin
    if not exists (
        select 1 
        from Subscribers 
        where SubscriberName = subName
    ) then
        insert into Subscribers (SubscriberName)
        values (subName);
    end if;
end //

DELIMITER ;

call AddSubscriberIfNotExists('Pinky');
select*from Subscribers;












