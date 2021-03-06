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

### Association

- belongs_to :user
- has_many :comments

## Comments table

| Column       | Type       | Options          | 
| ------------ | ---------- | ---------------- | 
| comment_text | string     | null:false       | 
| user         | references | foreign_key:true | 
| tweet        | references | foreign_key:true |

### Association

- belongs_to :user
- belongs_to :tweet

# アプリ名  - Name of application -

ForStyle

# 概要   - Description -

・ ４つのコミュニケーションタイプ診断
・ ユーザー同士のチャットコミュニケーション


# 制作背景 - Background -

・ 女性管理職、経営者など、個性に合わせたコミュニケーションをとりたいと考えている人
・ 自己啓発のために自分のタイプを知り、他者の考え方を学びたいと考えている人
・ 仕事のコミュニケーションで考えたことや感じたことを発信・閲覧して共有したい人
・ 誰に相談して良いかわからない業務の悩みをもつ経営者、管理職の人
・ 上記4つのような課題をもつ人に寄り添うことができる"プチ自己啓発アプリ"

# 実装予定の内容 - Doing - 

・ ユーザー管理機能
・ タイプ別診断
・ ツイート機能
・ コメント機能
