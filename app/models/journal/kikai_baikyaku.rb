class Journal::KikaiBaikyaku < Journal::Journal

  ACCOUNT_TITLE_ID = 2

  before_validation { self.account_title_id ||= ACCOUNT_TITLE_ID }

end
