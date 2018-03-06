ALTER TABLE `users` ADD `valid_from` DATETIME;
ALTER TABLE `users` ADD `valid_to` DATETIME;

insert into permissions (name) values ("VALIDITY_TIME");
