create trigger add_free_excursion for contracts after insert
as
declare variable price_t integer;
declare variable ex_id integer;
declare variable place_id integer;
declare variable max_c integer;
declare variable new_id integer;
begin
    select price from tour where(tour_id=new.id_tour) into :price_t;
    if (price_t<40000) then
        exit;
    select first 1 excursions.place_of_interest_id, count(contracts_excursions.excursions_id) as maxcount
    from contracts, contracts_excursions, excursions
    where(id_tour=new.id_tour)and(contracts.contract_id=contracts_excursions.contract_id)
    and(contracts_excursions.excursions_id=excursions.excursions_id)
    group by excursions.place_of_interest_id order by maxcount desc into :place_id, :max_c;
    ex_id=-1;
    select  excursions_id from excursions
    where (place_of_interest_id=:place_id)and(price=0) into :ex_id;
    if(ex_id=-1) then
    begin
        select max(excursions_id) from excursions into :new_id;
        new_id=new_id+1;
        insert into excursions values (:new_id, :place_id, 0);
        ex_id=new_id;
        select max(id) from contracts_excursions into :new_id;
        new_id=new_id+1;
        insert into contracts_excursions values (:new_id, new.contract_id, :ex_id);
    end
    else
    begin
        select max(id) from contracts_excursions into :new_id;
        new_id=new_id+1;
        insert into contracts_excursions values (:new_id, new.contract_id, :ex_id);
    end
end


