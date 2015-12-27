create view ClientCountry as select client.client_id, client.name,
kurort.country from client, contracts, tour, kurort  where
client.client_id=contracts.client_id and contracts.id_tour=tour.tour_id
and tour.id_kurort=kurort.kurort_id;

create view ClientPrice as select client.client_id, client.name,
tour.price from client, contracts, tour where
client.client_id=contracts.client_id and contracts.id_tour=tour.tour_id;
