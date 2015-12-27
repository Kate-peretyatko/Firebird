create view SortContracts as select * from contracts order by client_id desc, start_time asc;

