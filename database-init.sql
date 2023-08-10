CREATE database blaj_shop;

\c blaj-shop;

CREATE USER blaj_shop_app_user WITH password 'Bl@jSh0p' noinherit;
comment ON ROLE blaj_shop_app_user IS 'backend app user';

CREATE USER blaj_shop_liquibase_user WITH password 'Bl@jSh0p' noinherit;
comment ON ROLE blaj_shop_liquibase_user IS 'liquibase db user';

GRANT CREATE ON database blaj_shop TO blaj_shop_liquibase_user;

CREATE SCHEMA liquibase;

GRANT USAGE, CREATE ON SCHEMA liquibase TO blaj_shop_liquibase_user;
GRANT USAGE, CREATE ON SCHEMA public TO blaj_shop_liquibase_user;