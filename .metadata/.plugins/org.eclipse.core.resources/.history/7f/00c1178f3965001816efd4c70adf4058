set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite03;

create database if not exists ecsite03;
use ecsite03;


/*ユーザーログイン情報テーブル*/
drop table if exists login_user_transaction;

create table login_user_transaction(
id  int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
user_address varchar(50),
user_sex varchar(50),
user_tell varchar(16),
insert_date datetime,
updated_date datetime
);

/*商品情報テーブル*/

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
image_file_path varchar(100),
insert_date datetime,
update_date datetime
);

/*商品購入テーブル*/
drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);

INSERT INTO item_info_transaction(item_name,item_price,item_stock,image_file_path) VALUES
("トマト",80,50,"./image/tomato.jpg"),
("ニンジン",70,50,"./image/carrot.jpg"),
("ピーマン",25,50,"./image/greenpepper.jpg"),
("キャベツ",120,30,"./image/cabbage.jpg"),
("カボチャ",250,20,"./image/pumpkin.jpg"),
("リンゴ",100,30,"./image/apple.jpg"),
("ブドウ",600,15,"./image/grape.jpg"),
("メロン",2500,5,"./image/melon.jpg"),
("スターフルーツ",300,10,"./image/starfruits.jpg");
INSERT INTO login_user_transaction(login_id,login_pass,user_name,user_address,user_sex,user_tell) VALUES
("jiro","456","test","saitama","男","09012345678"),
("taro","123","master","tokyo","男","09077777777");


