create view CalcField as select excursions_id, price, (Price/70) as Euro from excursions;

