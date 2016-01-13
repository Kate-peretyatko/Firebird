create exception we_already_have_this_ex 'Error. We already have this excursion';
create trigger add_excursion for contracts_excursions before insert
as
declare variable ex integer;
begin
    ex=-1;
    select excursions_id from contracts_excursions
    where(excursions_id=new.excursions_id)and(contract_id=new.contract_id) into :ex;
    if (ex<>-1) then
        exception we_already_have_this_ex;
end


