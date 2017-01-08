module Deal
  def self.table_name_prefix
    'deal_'
  end

  def self.buttons
    return [
      {
        '1.特別サービス': {
          id: 'deal_tokubetsu_service',
          } ,
        '2.ワーカー退職': {
          id: 'deal_worker_taishoku',
        },
        '3.商品の独占販売': {
          id: 'deal_shuhin_no_dokusen_hanbai',
        },
        '4.セールスマン退職': {
          id: 'deal_salesman_taishoku'
        },
      },
      {
        '5.研究開発成功': {
          id: 'deal_kenkyuu_kaihatsu_seikou',
        },
        '6.クレーム発生': {
          id: 'deal_claim_hassei',
        },
        '7.ストライキ発生': {
          id: 'deal_strike_hassei',
        },
        '8.社長病気で倒る': {
          id: 'deal_shachou_byouki_de_taoru',
        },
      },
      {
        '9.盗難発見': {
          id: 'deal_tounan_hassei',
        },
        '10.製造ミス発生': {
          id: 'deal_seizou_miss_hassei',
        },
        '11.倉庫火災': {
          id: 'deal_souko_kasai',
        },
        '12.研究開発失敗': {
          id: 'deal_kenkyuu_kaihatsu',
        },
      },
      {
        '13.消費者運動発生': {
          id: 'deal_shouhisha_undou_hassei'
        },
        '14.逆回り': {
          id: 'deal_gyaku_mawari',
        },
        '15.労災発生': {
          id: 'deal_rousai_hassei',
        },
        '16.各社共通': {
          id: 'deal_kakusha_kyoutsuu',
        },
      },
      {
        '17.機械故障': {
          id: 'deal_kikai_koshou',
        },
        '18.設計トラブル発生': {
          id: 'deal_sekkei_trouble_hassei',
        }
      }
    ]
  end
end
