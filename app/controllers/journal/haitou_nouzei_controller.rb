class Journal::HaitouNouzeiController < Journal::JournalBaseController
  def new
    @object = Journal::HaitouNouzei.new
  end

  def create
    @object =  Journal::HaitouNouzei.new(journal_haitou_nouzei_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 22
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

    def journal_haitou_nouzei_params
      params.require(:journal_haitou_nouzei).permit(:amount, :remarks)
    end
end
