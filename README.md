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
| birthday           | string | null: false                          |	
| email              | string | null: false, unique constraint: true |	
| encrypted_password | string | null: false                          |	


## items テーブル	
	
| Column             | Type       | Options                        |	
| ------------------ | ---------- | ------------------------------ |	
| item_name          | string     | null: false                    |	
| description        | text       | null: false                    |	
| category           | string     | null: false                    |	
| condition          | string     | null: false                    |	
| Shipping_charges   | string     | null: false                    |	
| Region_of_delivery | string     | null: false                    |	
| delivery_date      | string     | null: false                    |	
| price              | string     | null: false                    |	

## address テーブル	
	
| Column             | Type       | Options                        |	
| ------------------ | ---------- | ------------------------------ |	
| post_code          | string     | null: false                    |	
| prefecture         | string     | null: false                    |	
| municipalities     | string     | null: false                    |	
| street_address     | string     | null: false                    |	
| Building_name      | string     | null: false                    |	
| telephone_number   | string     | null: false                    |	

post_code
prefecture
municipalities
street_address
Building_name
telephone_number


## purchase_record テーブル	

| Column             | Type       | Options                        |	
| ------------------ | ---------- | ------------------------------ |	
| user               | references | null: false, foreign_key: true |
| items              | references | null: false, foreign_key: true |




