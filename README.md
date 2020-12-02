# README

## Users Table

| Column             | Type    | Options    | 
| ------------------ | ------- | ---------- | 
| nickname           | string  | null:false | 
| email              | string  | null:false | 
| encrypted_password | string  | null:false | 
| job                | string  |            | 
| type_id            | integer |            | 

### Association

- has_many :tweets
- has_one  :diagnose

## tweets Table

| Column | Type       | Options          | 
| ------ | ---------- | ---------------- | 
| text   | string     | null:false       | 
| user   | references | foreign_key:true | 

### Association

- belongs_to :user

## Diagnose Table

| Column | Type    | Options    | 
| ------ | ------- | ---------- | 
| type   | integer | null:false | 

### Association

- belongs_to :user