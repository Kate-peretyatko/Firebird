create view top10place as select first 10 id_place_of_interest, name_type, name_place, count(contracts_excursions.excursions_id) as count_p
from contracts_excursions, excursions,  place_of_interest, type_place
where(contracts_excursions.excursions_id=excursions.excursions_id)and(excursions.place_of_interest_id=place_of_interest.id_place_of_interest)
and(place_of_interest.id_type=type_place.type_id)
group by id_place_of_interest, name_type, name_place  order by count_p desc;

