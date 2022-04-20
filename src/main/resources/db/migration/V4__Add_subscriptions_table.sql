create table user_subscriptions
(
    channel_id    bigint not null references usr,
    subscriber_id bigint not null references usr,
    primary key (channel_id, subscriber_id),
    CONSTRAINT channel_id FOREIGN KEY (channel_id) REFERENCES usr(id),
    CONSTRAINT subscriber_id FOREIGN KEY (subscriber_id) REFERENCES usr(id)
);