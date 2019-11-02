create database study_db;

show databases;

use study_db;

create table book(
	bookid  int primary key auto_increment,
    bookname varchar(20) not null,
    publisher varchar(40) not null,
    price int
);

insert into book(bookname, publisher, price)
values("축구의 역사","굿 미디어","25000");

select * 
from book
where price < 20000;

select *
from book
where price between 10000 and 20000;

select *
from book
where price >= 10000 and 20000;

select *
from book
where publisher IN ('굿스포츠');

select *
from book
where publisher not IN ('굿스포츠');

select bookname, publisher
from book
where bookname like '올림칙 챔피언스';

select bookname, publisher
from book
where bookname like '%올림%';

/* 커스토머 테이블에서 김씨만 출력하는 쿼리를 완성 */

desc customer;

select *
from customer;

select *
from customer
where name like '%김%';

select *
from customer
where name like '_지성%';

select *
from customer
order by address;

select sum(saleprice) as total
from orders;
