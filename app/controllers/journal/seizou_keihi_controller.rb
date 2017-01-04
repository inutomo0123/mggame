class Journal::SeizouKeihiController < ApplicationController
  def new
    @object = Journal::SeizouKeihi.new
  end

  def create
    @object =  Journal::SeizouKeihi.new(journal_seizou_keihi_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 13
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

    def journal_seizou_keihi_params
      params.require(:journal_seizou_keihi).permit(:amount, :remarks)
    end
end
