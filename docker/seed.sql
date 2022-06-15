DELETE FROM llx_const WHERE name = "MAIN_MAIL_SENDMODE" AND entity = 1;
DELETE FROM llx_const WHERE name = "MAIN_MAIL_SMTP_PORT" AND entity = 1;
DELETE FROM llx_const WHERE name = "MAIN_MAIL_SMTP_SERVER" AND entity = 1;

INSERT INTO llx_const (name, entity, value, type) VALUES ("MAIN_MAIL_SENDMODE", 1, "smtps", "chaine");
INSERT INTO llx_const (name, entity, value, type) VALUES ("MAIN_MAIL_SMTP_PORT", 1, "1025", "chaine");
INSERT INTO llx_const (name, entity, value, type) VALUES ("MAIN_MAIL_SMTP_SERVER", 1, "mailhog", "chaine");