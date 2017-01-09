class Journal::IppanKanrihiController < Journal::JournalBaseController
  def new
    @object = Journal::IppanKanrihi.new
  end

  def create
    @object =  Journal::IppanKanrihi.new(journal_ippan_kanrihi_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 15
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

    def journal_ippan_kanrihi_params
      params.require(:journal_ippan_kanrihi).permit(:amount, :remarks)
    end
end
