module Journal
  def self.table_name_prefix
    'journal_'
  end

  def self.buttons
    return [
      {
        'ア 売掛金入金': {
          id: 'journal_urikakekin_nyuukin',
          gray: true,
        },
        'イ 機械売却': {
          id: 'journal_kikai_baikyaku',
          gray: true,
        },
        'ウ 営業外収益': {
          id: 'journal_eigyougai_shuueki',
          gray: true,
        },
        'エ 受取保険金': {
          id: 'journal_uketori_hokenkin',
          gray: true,
        },
      },
      {
        'オ 借入金': {
          id: 'journal_kariirekin',
          gray: false,
        },
        'カ 資本金': {
          id: 'journal_shihonkin',
          gray: false,
        },
        'キ 売上': {
          id: 'journal_uriage',
          gray: true,
        },
        'ク 貸付金': {
          id: 'journal_kashitsukekin',
          gray: true,
        },
      },
      {
        'ケ 機械工具': {
          id: 'journal_kikai_kougu',
          gray: true,
        },
        'コ 投入費': {
          id: 'journal_tounyuuhi',
          gray: true,
        },
        'サ 完成費': {
          id: 'journal_kanseihi',
          gray: true,
        },
        'シ 労務費': {
          id: 'journal_roumuhi',
          gray: true,
        },
      },
      {
        'ス 製造経費': {
          id: 'journal_seizou_keihi',
          gray: true,
        },
        'セ 販売費': {
          id: 'journal_hanbaihi',
          gray: true,
        },
        'ソ 一般管理費': {
          id: 'journal_ippan_kanrihi',
          gray: true,
        },
        'タ 営業外費用': {
          id: 'journal_eigyougai_hiyou',
          gray: true,
        },
      },
      {
        'チ 研究開発費': {
          id: 'journal_kenkyuu_kaihatsuhi',
          gray: true,
        },
        'ツ 材料購入': {
          id: 'journal_zairyou_kounyuu',
          gray: true,
        },
        'テ 製品': {
          id: 'journal_seihin',
          gray: true,
        },
        'ト 特別損失': {
          id: 'journal_tokubetsu_sonshitsu',
          gray: false,
        },
      },
      {
        'ナ 借入金返済': {
          id: 'journal_kariirekin_hensai',
          gray: true,
        },
        '二 配当・納税': {
          id: 'journal_haitou_nouzai',
          gray: true,
        },
        'ヌ 買掛金支払': {
          id: 'journal_kaikakekin_shiharai',
          gray: true,
        }
      }
    ]
  end
end
