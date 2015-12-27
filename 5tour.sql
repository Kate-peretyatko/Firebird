create procedure top5tour(start_watch date, end_watch date)
returns(
    Tour_ID integer, Count_Sale integer
)as
begin
    for select first 5 id_tour, count(contract_id) as count_s from contracts
    where (buy_time>=:start_watch)and(buy_time<=:end_watch)
    group by id_tour order by count_s desc into :Tour_ID, :Count_Sale do
    begin
        suspend;    
    end 
end

