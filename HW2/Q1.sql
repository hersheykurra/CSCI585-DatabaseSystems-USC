/* on livesql */
create table bookings(
    room_num integer not null,
    start_time integer not null,
    end_time integer not null,
    group_name varchar(10) not null,
    primary key (room_num,start_time)
);
/* We can redesign the table in the following ways so as to fix issues by adding constraints to check time range and there by fixing the start and end time issues*/
alter table bookings
add constraint time_range_conflict check (start_time >= 7 and
                                 start_time <= 18 and
                                 end_time >= 7 and
                                 end_time <= 18 and
                                 start_time < end_time);
/* insert accepted as all time constraints satisfied */
insert into bookings values(1,11,14,'A');
/* insert accepted as all time constraints satisfied */
insert into bookings values(2,14,17,'B');
/* throws time_range_conflict error, as 6 is less than 7 */
insert into bookings values(3,6,9,'C');
/* throws time_range_conflict error, start_time(12) > end_time(8) */
insert into bookings values(4,12,8,'D');
select * from bookings;
/*creating a trigger which checks for the start_time of new group to be greater than end_time of the group already occupying the room*/
CREATE OR REPLACE TRIGGER check_for_room_conflict
BEFORE INSERT
  on bookings
  FOR EACH ROW
DECLARE
end_time_room number;
BEGIN
SELECT end_time INTO end_time_room FROM bookings where room_num = :new.room_num;
    IF(:new.start_time < end_time_room) THEN
      RAISE_APPLICATION_ERROR(-20000,'Error: please select another room or time');
    END IF;
END;
/
/* check_for_room_conflict TRIGGER invokes ERROR as room 101 is already occupied from 11 to 14 */
insert into bookings values(1,12,15,'E');
/* insert accepted, as 101 is free after 14 which is less than entered start_time(15) */
insert into bookings values(1,15,17,'F');
select * from bookings;
drop table bookings;