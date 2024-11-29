CREATE TABLE Person (
    Person_id INT NOT NULL AUTO_INCREMENT,
    Person_firstname VARCHAR(255) NOT NULL,
    Person_secondname VARCHAR(255) NOT NULL,
    PRIMARY KEY (Person_id)
);


create table Cars (
    Cars_id INT NOT NULL AUTO_INCREMENT,
    Cars_model varchar(255) not null,
    Cars_price float not null,
    Cars_day_of_buy datetime not null,
    Person_id int not null,
    primary key (Cars_id),
    constraint FK_Person foreign key (Person_id) references Person(Person_id)
    on delete cascade
    on update cascade
);