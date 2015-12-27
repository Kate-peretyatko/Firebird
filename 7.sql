create view ClientPhone as select name as "Name", sum(number_phone) as "Phone"
from client group by name having sum(number_phone)>7856948;


