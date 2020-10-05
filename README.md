# テーブル設計

## users テーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nickname         | string | null: false |
| email            | string | null: false |
| password         | string | null: false |

### Association

- has_one :profile
- has_many :room_users
- has_many : messages
- has_many :rooms, through: :room_users


## profiles テーブル

| Column          | Type    | Options           |
| ----------------| ------- | ----------------- |
| user_id         | integer | foreign_key: true |
| age             | string  | null: false       |
| height          | string  | null: false       |
| weight          | string  | null: false       |
| profission      | string  | null: false       |
| hobby           | string  | null: false       |
| introduction    | string  | null: false       |

### Association

- belongs_to :user


## room_users テーブル

| Column   | Type    | Options           |
| ---------| ------- | ----------------- |
| user_id  | integer | foreign_key: true |
| room_id  | integer | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :room


## rooms テーブル

| Column  | Type    | Options           |
| --------| ------- | ----------------- |
| user_id | integer | foreign_key: true |
| title   | string  | null: false       |
| content | text    | null: false       |

### Association

- has_many :room_users
- has_many :user, through: :room_users
- has_many :messages


## messages テーブル

| Column  | Type    | Options           |
| --------| ------- | ----------------- |
| user_id | integer | foreign_key: true |
| room_id | inteder | foreign_key: true |
| message | text    | null: false       |

### Association

- belongs_to :user
- belongs_to :room

