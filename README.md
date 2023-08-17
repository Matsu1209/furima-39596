# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## users テーブル	
	
| Column             | Type   | Options                              |	
| ------------------ | ------ | ------------------------------------ |	
| nick_name          | string | null: false                          |	
| first_name         | string | null: false                          |	
| last_name          | string | null: false                          |	
| first_name_kana    | string | null: false                          |	
| last_name_kana     | string | null: false                          |
| buyer_name         | string | null: false                          |
| birthday           | date   | null: false                          |	
| email              | string | null: false, unique: true            |	
| encrypted_password | string | null: false                          |	

### Association

- belongs_to :addresses
- has_many :items



## items テーブル	
	
| Column                | Type       | Options                        |	
| --------------------- | ---------- | ------------------------------ |	
| item_name             | string     | null: false                    |	
| description           | text       | null: false                    |	
| category_id           | integer    | null: false                    |	
| condition_id          | integer    | null: false                    |	
| Shipping_charges_id   | integer    | null: false                    |	
| prefecture_id         | integer    | null: false                    |	
| delivery_date_id      | integer    | null: false                    |	
| price                 | integer    | null: false                    |	

### Association

- belongs_to :user
- belongs_to :purchase_record



## addresses テーブル	
	
| Column             | Type       | Options                        |	
| ------------------ | ---------- | ------------------------------ |	
| post_code          | string     | null: false                    |	
| prefecture_id      | integer    | null: false                    |	
| municipalities     | string     | null: false                    |	
| street_address     | string     | null: false                    |	
| building_name      | string     |                                |	
| telephone_number   | string     | null: false                    |	

### Association

- belongs_to :user



## purchase_record テーブル	

| Column             | Type       | Options                        |	
| ------------------ | ---------- | ------------------------------ |	
| user               | references | null: false, foreign_key: true |
| items              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :items

