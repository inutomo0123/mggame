# chips
Chip.create id: 1, symbol: '広', name: '広告', color: 'red'
Chip.create id: 2, symbol: '研', name: '研究開発', color: 'blue'
Chip.create id: 3, symbol: '保', name: '保険', color: 'cream'
Chip.create id: 4, symbol: 'PC', name: 'PAC生産性', color: 'green'
Chip.create id: 5, symbol: 'MD', name: 'マーチャンダイザー', color: 'green'
Chip.create id: 6, symbol: 'MR', name: 'マーケット・リサーチ', color: 'green'

# account_types
AccountType.create id: 1, symbol: '現金', name: '現金'
AccountType.create id: 2, symbol: '売掛', name: '売掛金'
AccountType.create id: 3, symbol: '買掛', name: '買掛金'

# account_titles
# 入金勘定
AccountTitle.create id: 1, symbol: "ア", name: "売掛金入金", is_income: true, is_cash: true
AccountTitle.create id: 2, symbol: "イ", name: "機械売却",   is_income: true, is_cash: true
AccountTitle.create id: 3, symbol: "ウ", name: "営業外収益", is_income: true, is_cash: true
AccountTitle.create id: 4, symbol: "エ", name: "受取保険金", is_income: true, is_cash: true
AccountTitle.create id: 5, symbol: "オ", name: "借入金",     is_income: true, is_cash: true
AccountTitle.create id: 6, symbol: "カ", name: "資本金",     is_income: true, is_cash: true
AccountTitle.create id: 7, symbol: "キ", name: "売上",       is_income: true, is_cash: true

# 出金勘定
AccountTitle.create id: 11, symbol: "ク", name: "貸付金",     is_income: false, is_cash: true
AccountTitle.create id: 12, symbol: "ケ", name: "機械工具",   is_income: false, is_cash: true
AccountTitle.create id: 13, symbol: "コ", name: "投入費",     is_income: false, is_cash: true
AccountTitle.create id: 14, symbol: "サ", name: "完成費",     is_income: false, is_cash: true
AccountTitle.create id: 15, symbol: "シ", name: "労務費",     is_income: false, is_cash: true
AccountTitle.create id: 16, symbol: "ス", name: "製造経費",   is_income: false, is_cash: true
AccountTitle.create id: 17, symbol: "セ", name: "販売費",     is_income: false, is_cash: true
AccountTitle.create id: 18, symbol: "ソ", name: "一般管理費", is_income: false, is_cash: true
AccountTitle.create id: 19, symbol: "タ", name: "営業外費用", is_income: false, is_cash: true
AccountTitle.create id: 20, symbol: "チ", name: "研究開発費", is_income: false, is_cash: true
AccountTitle.create id: 21, symbol: "ツ", name: "材料",       is_income: false, is_cash: true
AccountTitle.create id: 22, symbol: "テ", name: "製品",       is_income: false, is_cash: true
AccountTitle.create id: 23, symbol: "ト", name: "特別損失",   is_income: false, is_cash: true
AccountTitle.create id: 24, symbol: "ナ", name: "借入金返済", is_income: false, is_cash: true
AccountTitle.create id: 25, symbol: "ニ", name: "配当・納税", is_income: false, is_cash: true
AccountTitle.create id: 26, symbol: "ヌ", name: "買掛金支払", is_income: false, is_cash: true

AccountTitle.create id: 31, symbol: "ネ", name: "売掛金 売上", is_income: true, is_cash: false
AccountTitle.create id: 32, symbol: "ノ", name: "買掛金 材料", is_income: false, is_cash: false

# stock_rooms
StockRoom.create id: 1, symbol: '倉', name: '倉庫'
StockRoom.create id: 2, symbol: '工', name: '工場'
StockRoom.create id: 3, symbol: '営', name: '営業所'

# jobs
Job.create id: 1, symbol: 'わ', name: 'ワーカー'
Job.create id: 2, symbol: 'せ', name: 'セールスマン'

# machine_tools
MachineTool.create id: 1, symbol: '小機', name: '小型機械'
MachineTool.create id: 2, symbol: 'アタ', name: 'アタッチメント'
MachineTool.create id: 3, symbol: '大機', name: '大型機械'

# ワーカー: -1, 退職金（一般管理費）: 5
Risk.create id: 2, number: '2', name: "ワーカー退職"
# セールスマン: -1, 退職金（一般管理費）: 5
Risk.create id: 4, number: '4', name: "セールスマン退職"
# 販売費: 5
Risk.create id: 6, number: '6', name: "クレーム発生"
# 営業所在庫: -2, 受取保険金: 10 * n, 保険: -n
# TODO: 保険の使用を確認する
Risk.create id: 9, number: '9', name: "盗難発見！"
# 仕掛品（工場在庫）: -1
Risk.create id: 10, number: '10', name: "製造ミス発生"
# 倉庫在庫: -all, 受取保険金: 8 * n, 保険 -n
Risk.create id: 11, number: '11', name: "倉庫火災"
# 修理費（製造経費）: 5
Risk.create id: 17, number: '17', name: "機械故障"
# 改修費(製造経費) : 5
Risk.create id: 18, number: '18', name: "設計トラブル発生！"
Risk.create id: 1, number: '1', name: "特別サービス！"
Risk.create id: 3, number: '3', name: "商品の独占販売"
Risk.create id: 5, number: '5', name: "研究開発成功!!"
Risk.create id: 7, number: '7', name: "ストライキ発生"
Risk.create id: 8, number: '8', name: "社長病気で倒る"
Risk.create id: 12, number: '12', name: "研究開発失敗"
Risk.create id: 13, number: '13', name: "消費者運動発生"
Risk.create id: 14, number: '14', name: "逆回り"
Risk.create id: 15, number: '15', name: "労災発生"
Risk.create id: 16, number: '16', name: "各社共通"

# decision_makings
# 一回につき一項目
DecisionMaking.create id: 1, symbol: 'A', name: '材料購入', is_anytime: false
DecisionMaking.create id: 2, symbol: 'B', name: '設備投資', is_anytime: false
DecisionMaking.create id: 3, symbol: 'C', name: '完成・投入', is_anytime: false
DecisionMaking.create id: 4, symbol: 'D', name: '採用', is_anytime: false
DecisionMaking.create id: 5, symbol: 'E', name: '広告', is_anytime: false
DecisionMaking.create id: 6, symbol: 'F', name: '研究開発', is_anytime: false
DecisionMaking.create id: 7, symbol: 'N', name: '商品販売', is_anytime: false

# いつでも実施可能
DecisionMaking.create id: 10, symbol: 'G', name: '保険', is_anytime: true
DecisionMaking.create id: 11, symbol: 'H', name: 'PAC生産性', is_anytime: true
DecisionMaking.create id: 12, symbol: 'I', name: 'マーチャンダイザー', is_anytime: true
DecisionMaking.create id: 13, symbol: 'J', name: 'マーケット・リサーチ', is_anytime: true
DecisionMaking.create id: 14, symbol: 'K', name: '銀行借入', is_anytime: true
DecisionMaking.create id: 15, symbol: 'L', name: '配置転換', is_anytime: true
DecisionMaking.create id: 16, symbol: 'M', name: '機械売却', is_anytime: true

# markets
Market.create id: 1, symbol: '東', name: '東京',   volume: 20, material_price: 15, max_bid_price: 20
Market.create id: 2, symbol: '大', name: '大阪',   volume: 13, material_price: 14, max_bid_price: 24
Market.create id: 3, symbol: '名', name: '名古屋', volume: 9,  material_price: 13, max_bid_price: 28
Market.create id: 4, symbol: '福', name: '福岡',   volume: 6,  material_price: 12, max_bid_price: 32
Market.create id: 5, symbol: '札', name: '札幌',   volume: 4,  material_price: 11, max_bid_price: 36
Market.create id: 6, symbol: '仙', name: '仙台',   volume: 3,  material_price: 10, max_bid_price: 40
Market.create id: 9, symbol: '外', name: '場外',   volume: 99, material_price: 16, max_bid_price: 99

# behavior_types
BehaviorType.create id: 1,  symbol: '仕', name: '仕訳'
BehaviorType.create id: 2,  symbol: '決', name: '意思決定'
BehaviorType.create id: 3,  symbol: 'リ', name: 'リスク対応'
BehaviorType.create id: 4,  symbol: '首', name: '期首処理'
BehaviorType.create id: 5,  symbol: '末', name: '期末処理'
