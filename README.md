# DB設計

## users テーブル

| Column             | Type     | Options     |
| ----------------   | -------- | ----------- |
| name               | string   | null: false |
| email              | string   | null: false |
| encrypted_password | string   | null: false |

### Association
- has_many :tasks

## tasks テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| info                   | text       | null: false                    |
| event_date             | date       | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many    :appoints

## appoints テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| user                   | references | null: false, foreign_key: true |
| task                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :task

## comments テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| message                | text       | null: false                    |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user