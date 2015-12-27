create view Select_IN as select * from kurort where country IN ('London');
create view Select_BETWEEN as select * from client where client_id BETWEEN 4 AND 7;
create view Select_WHERE as select * from client WHERE Name LIKE 'Masha';

