class Journal::UketoriHokenkinController < Journal::JournalBaseController
  def new
    @object = Journal::UketoriHokenkin.new
  end

  def create
    @object =  Journal::UketoriHokenkin.new(journal_uketori_hokenkin_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 4
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

    def journal_uketori_hokenkin_params
      params.require(:journal_uketori_hokenkin).permit(:amount, :remarks)
    end
end
