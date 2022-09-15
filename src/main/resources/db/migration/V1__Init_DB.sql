
create table hibernate_sequence (next_val bigint) engine=InnoDB;

insert into hibernate_sequence values ( 2 );

insert into hibernate_sequence values ( 2 );

create table message (
  id bigint not null auto_increment,
  filename varchar(255),
  tag varchar(255),
  text varchar(2048) not null,
  user_id bigint,
  primary key (id)
) engine=InnoDB;

create table user_role (
  user_id bigint not null,
  roles varchar(255)
) engine=InnoDB;

create table usr (
  id bigint not null auto_increment,
  activation_code varchar(255),
  active bit not null,
  email varchar(255),
  password varchar(255) not null,
  username varchar(255) not null,
  primary key (id)
) engine=InnoDB;

alter table message
  add constraint message_user_fk
  foreign key (user_id) references usr (id);

alter table user_role
  add constraint user_role_user_fk
  foreign key (user_id) references usr (id);


create sequence hibernate_sequence start 1 increment 1;

create table message (
    id int8 not null,
    filename varchar(255),
    tag varchar(255),
    text varchar(2048) not null,
    user_id int8,
    primary key (id)
);

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    activation_code varchar(255),
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

alter table if exists message
    add constraint message_user_fk
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr;



  -- create sequence hibernate_sequence start 1 increment 1;

  --create table message (
      --id int8 not null,
      --filename varchar(255),
      --tag varchar(255),
      --text varchar(2048) not null,
      --user_id int8,
      --primary key (id)
  --);

  --create table user_role (
      --user_id int8 not null,
      --roles varchar(255)
  --);

  --create table usr (
      --id int8 not null,
      --activation_code varchar(255),
      --active boolean not null,
      --email varchar(255),
      --password varchar(255) not null,
      --username varchar(255) not null,
      --primary key (id)
  --);

  --alter table if exists message
      --add constraint message_user_fk
      --foreign key (user_id) references usr;

  --alter table if exists user_role
      --add constraint user_role_user_fk
      --foreign key (user_id) references usr;