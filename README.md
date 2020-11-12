# README

## Users table

| column   | type       | options          | 
| -------- | ---------- | ---------------- | 
| nickname | string     | null:false       | 
| email    | string     | null:false       | 
| password | string     | null:false       | 
| job      | string     | null:false       |
| type     | references | foreign_key:true | 

### Association

- has_many :tweets
- has_many :comments

## Tweets table

| Column | Type       | Options          | 
| ------ | ---------- | ---------------- | 
| text   | string     | null:false       | 
| user   | references | foreign_key:true | 

## Comments table

| Column       | Type       | Options          | 
| ------------ | ---------- | ---------------- | 
| comment_text | string     | null:false       | 
| user         | references | foreign_key:true | 
| tweet        | references | foreign_key:true | 

### Association

- belongs_to :user
- belongs_to :tweet

