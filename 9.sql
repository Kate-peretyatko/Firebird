create procedure insert_client (client_ID integer, name varchar(10), number_phone integer)
as
begin
    insert into client(client_ID, name, number_phone) values (:client_ID, :name, :number_phone);
end;
create procedure insert_contracts (contract_ID integer, id_tour integer,  start_time date, end_time date, client_id integer,  buy_time date)
as
begin
    insert into contracts(contract_ID, id_tour, start_time, end_time, client_id, buy_time) values (:contract_ID, :id_tour, :start_time, :end_time, :client_id, :buy_time);
end;
create procedure insert_tour(tour_id integer, id_kurort integer, id_hotel integer, price integer)
as
begin
    insert into tour(tour_id, id_kurort, id_hotel, price) values (:tour_id, :id_kurort, :id_hotel, :price);
end;
create procedure insert_hotel(hotel_ID integer,  location varchar(15), stars integer)
as
begin
    insert into hotel(hotel_ID, location,  stars) values (:hotel_ID, :location,  :stars);
end;
create procedure insert_kurort(kurort_ID integer,  country varchar(10),  climate varchar(10),  weather varchar(10))
as
begin
    insert into kurort(kurort_ID, country, climate, weather) values(:kurort_ID, :country, :climate, :weather);
end;
create procedure insert_kurort_place(ID integer,  ID_kurort integer, ID_place_of_interest integer)
as
begin
    insert into kurort_place(ID, id_kurort, id_place_of_interest) values(:ID, :id_kurort, :id_place_of_interest);
end;
create procedure insert_place_of_interest(id_place_of_interest integer, id_type integer,  name_place varchar(15))
as
begin
    insert into place_of_interest(id_place_of_interest, id_type, name_place) values(:id_place_of_interest, :id_type, :name_place);
end;
create procedure insert_type_place(type_id integer, name_type varchar(15))
as
begin
    insert into type_place(type_id, name_type) values(:type_id, :name_type);
end;
create procedure insert_excursions(excursions_id integer,  place_of_interest_id integer,  price integer)
as
begin
    insert into excursions(excursions_id, place_of_interest_id, price) values(:excursions_id, :place_of_interest_id, :price);
end;
create procedure insert_contract_excursions(id integer,  contract_id integer,  excursions_id integer)
as
begin
    insert into contracts_excursions(id, contract_id, excursions_id) values(:id, :contract_id, :excursions_id);
end;

