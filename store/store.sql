CREATE TABLE "public".people
(
 person varchar(17) NOT NULL,
 region varchar(7) NOT NULL,
 CONSTRAINT people_pkey PRIMARY KEY ( person )
);

CREATE TABLE "public".orders
(
 row_id        int4 NOT NULL,
 order_id      varchar(14) NOT NULL,
 order_date    date NOT NULL,
 ship_date     date NOT NULL,
 ship_mode     varchar(14) NOT NULL,
 customer_id   varchar(8) NOT NULL,
 customer_name varchar(22) NOT NULL,
 segment       varchar(11) NOT NULL,
 country       varchar(13) NOT NULL,
 city          varchar(17) NOT NULL,
 "state"       varchar(20) NOT NULL,
 postal_code   int4 NULL,
 region        varchar(7) NOT NULL,
 product_id    varchar(15) NOT NULL,
 category      varchar(15) NOT NULL,
 subcategory   varchar(11) NOT NULL,
 product_name  varchar(127) NOT NULL,
 sales         numeric(9,4) NOT NULL,
 quantity      int4 NOT NULL,
 discount      numeric(4,2) NOT NULL,
 profit        numeric(21,16) NOT NULL,
 person        varchar(17) NOT NULL,
 CONSTRAINT orders_pkey PRIMARY KEY ( row_id ),
 CONSTRAINT FK_2 FOREIGN KEY ( person ) REFERENCES "public".people ( person )
);

CREATE INDEX FK_1 ON "public".orders

CREATE TABLE "public".returns
(
 Returned   varchar(50) NULL,
 "Order ID" varchar(50) NULL,
 row_id     int4 NOT NULL,
 CONSTRAINT FK_3 FOREIGN KEY ( row_id ) REFERENCES "public".orders ( row_id )
);

CREATE INDEX FK_1 ON "public".returns
(
 row_id
);
