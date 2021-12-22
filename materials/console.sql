-- select
select id, username, is_superuser, password
from auth_user;

select *
from mainapp_clients;

select *
from mainapp_currencies;

select *
from mainapp_courses;

select *
from mainapp_accounts;

select *
from mainapp_accounts_clients;

select *
from mainapp_cards;

-- insert currencies
insert into mainapp_currencies(id, code)
values (1, 'BYN'),
       (2, 'USD');

insert into mainapp_courses(id, course_buy, course_sale, change_time, currency_id)
values (1, 1000000, 1000000, now(), 1),
       (2, 2500000, 2500000, now(), 2);


insert into mainapp_templates(description, other_iban, info_label)
values ('Send to account МТС', 'BY51MMBN30120086600109330000', 'Number of phone'),
       ('Send to other account', null, 'Message');


-- delete
delete
from mainapp_cards;

delete
from mainapp_accounts_clients;

delete
from mainapp_accounts;

-- delete
-- from mainapp_courses;
--
-- delete
-- from mainapp_currencies;

delete
from mainapp_clients;

delete
from auth_user
where is_superuser = false;

