# Ruby on Rails テンプレート リポジトリ

## Versions

| name  | version |
|:------|:-------:|
| Ruby  | 3.1.2   |
| Rails | 7.0.4   | 
| mysql | 8.0.21  |

## How to Start

#### Build Docker

```
docker compose build
```

#### Create Database

```
docker compose rub web rails db:create
```

#### Start Rails Application

```
docker compose up
```

## References
#### Rubocop
- [Rubocop](https://github.com/rubocop/rubocop)
- [Rubocop Rails](https://github.com/rubocop/rubocop-rails)
- [Rubocop RSpec](https://github.com/rubocop/rubocop-rspec)
- [Rubocop Performance](https://github.com/rubocop/rubocop-performance)

[![Rails Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop) [![Rails Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rails.rubystyle.guide)
