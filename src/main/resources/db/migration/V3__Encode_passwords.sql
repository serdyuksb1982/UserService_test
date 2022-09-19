update usr set password = MD5(password);

--create extension if not exists pgcrypto;

--update usr set password = crypt(password, gen_salt('bf', 8));