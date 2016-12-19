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

#account_titles
# 入金勘定
AccountTitle.create id: 1, symbol: "ア", name: "売掛金入金", is_income: true
AccountTitle.create id: 2, symbol: "イ", name: "機械売却",   is_income: true
AccountTitle.create id: 3, symbol: "ウ", name: "営業外収益", is_income: true
AccountTitle.create id: 4, symbol: "エ", name: "受取保険金", is_income: true
AccountTitle.create id: 5, symbol: "オ", name: "借入金",     is_income: true
AccountTitle.create id: 6, symbol: "カ", name: "資本金",     is_income: true
AccountTitle.create id: 7, symbol: "キ", name: "売上",       is_income: true

# 出金勘定
AccountTitle.create id: 11, symbol: "ク", name: "貸付金",     is_income: false
AccountTitle.create id: 12, symbol: "ケ", name: "機械工具",   is_income: false
AccountTitle.create id: 13, symbol: "コ", name: "投入費",     is_income: false
AccountTitle.create id: 14, symbol: "サ", name: "完成費",     is_income: false
AccountTitle.create id: 15, symbol: "シ", name: "労務費",     is_income: false
AccountTitle.create id: 16, symbol: "ス", name: "製造経費",   is_income: false
AccountTitle.create id: 17, symbol: "セ", name: "販売費",     is_income: false
AccountTitle.create id: 18, symbol: "ソ", name: "一般管理費", is_income: false
AccountTitle.create id: 19, symbol: "タ", name: "営業外費用", is_income: false
AccountTitle.create id: 20, symbol: "チ", name: "研究開発費", is_income: false
AccountTitle.create id: 21, symbol: "ツ", name: "材料",       is_income: false
AccountTitle.create id: 22, symbol: "テ", name: "製品",       is_income: false
AccountTitle.create id: 23, symbol: "ト", name: "特別損失",   is_income: false
AccountTitle.create id: 24, symbol: "ナ", name: "借入金返済", is_income: false
AccountTitle.create id: 25, symbol: "ニ", name: "配当・納税", is_income: false
AccountTitle.create id: 26, symbol: "ヌ", name: "買掛金支払", is_income: false

#stock_rooms
StockRoom.create id: 1, symbol: '倉', name: '倉庫'
StockRoom.create id: 2, symbol: '工', name: '工場'
StockRoom.create id: 3, symbol: '営', name: '営業所'
