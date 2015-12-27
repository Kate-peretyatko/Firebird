create view View_excursions as select * from excursions where excursions_id
in (select excursions_id from contracts_excursions);

