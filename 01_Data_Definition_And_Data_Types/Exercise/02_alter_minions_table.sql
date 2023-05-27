
alter table minions 
add column town_id int;

alter table minions
add constraint fk_minions_towns
foreign key minions(town_id)
references towns(id);
