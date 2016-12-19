# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#chips
Chip.create id: 1, symbol: '広', name: '広告', color: 'red'
Chip.create id: 2, symbol: '研', name: '研究開発', color: 'blue'
Chip.create id: 3, symbol: '保', name: '保険', color: 'cream'
Chip.create id: 4, symbol: 'PC', name: 'PAC生産性', color: 'green'
Chip.create id: 5, symbol: 'MD', name: 'マーチャンダイザー', color: 'green'
Chip.create id: 6, symbol: 'MR', name: 'マーケット・リサーチ', color: 'green'

#account_types
AccountType.create id: 1, symbol: '現金', name: '現金'
AccountType.create id: 2, symbol: '売掛', name: '売掛金'
AccountType.create id: 3, symbol: '買掛', name: '買掛金'
