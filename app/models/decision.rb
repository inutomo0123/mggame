module Decision
  def self.table_name_prefix
    'decision_'
  end

  def self.once_buttons
    return [
      {
        材料購入: {
          id: 'decision_zairyou_kounyuu',
        },
      },
      {
        完成・投入: {
          id: 'decision_kansei_tounyuu',
        },
      },
      {
        商品販売: {
          id: 'decision_shouhin_hanbai',
        },
      },
      {
        設備投資: {
          id: 'decision_setsubi_toushi',
        },
        採用: {
          id: 'decision_saiyou',
        },
      },
      {
        広告: {
          id: 'decision_koukoku',
          color: 'red',
        },
        研究開発: {
          id: 'decision_kenkyuu_kaihatsu',
          color: 'blue'
        },
      }
    ]
  end

  def self.anytime_buttons
    return [
      {
        保険: {
          id: 'decision_hoken',
          color:  'cream'
        },
        PAC生産性: {
          id: 'decision_pac_seisansei',
          color: 'green'
        },
      },
      {
        マーチャンダイザー: {
          id: 'decision_merchandiser',
          color: 'green',
        },
        マーケット・リサーチ: {
          id: 'decision_market_reserch',
          color: 'green',
        },
      },
      {
        銀行借入: {
          id: 'decision_ginkou_kariire',
        },
        配置転換: {
          id: 'decision_haichi_tenkan'
        },
        機械売却: {
          id: 'decision_kikai_baikyaku'
        },
      }
    ]
  end
end
