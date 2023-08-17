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
| email              | string | null: false, unique constraint: true |	
| encrypted_password | string | null: false                          |	
| buyer_name         | string | null: false                          |	
| seller_name        | string | null: false                          |	
	
## items テーブル	
	
| Column             | Type       | Options                        |	
| ------------------ | ---------- | ------------------------------ |	
| item_name          | string     | null: false                    |	
| Product_description| text       | null: false                    |	
| category           | string     | null: false                    |	
| condition          | string     | null: false                    |	
| price              | string     | null: false                    |	
	
## address テーブル	
	
| Column             | Type       | Options                        |	
| ------------------ | ---------- | ------------------------------ |	
| send_address       | text       | null: false                    |	
| buiyer_address     | text       | null: false                    |	
| delivery_charge    | string     | null: false                    |	
| region             | string     | null: false                    |	
| days_of_ship       | string     | null: false                    |	


## purchase_record テーブル	

| Column             | Type       | Options                        |	
| ------------------ | ---------- | ------------------------------ |	
| user               | text       | null: false                    |	
| items              | text       | null: false                    |	


