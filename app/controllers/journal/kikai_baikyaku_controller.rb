class Journal::KikaiBaikyakuController < ApplicationController
  def new
    @object = Journal::KikaiBaikyaku.new
  end

  def create
    @object =  Journal::KikaiBaikyaku.new(journal_kikai_baikyaku_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 2
    b.entry_id = current_entry_id

    begin
      @object.transaction do
        @object.save!
        b.journal_journal_id = @object.id
        b.save!
      end
    rescue
      render :new
    end

    redirect_to '/'
  end

  private

    def journal_kikai_baikyaku_params
      ppp = params.require(:journal_kikai_baikyaku).permit(:amount, :remarks)
    end
end
