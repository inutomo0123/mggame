class Journal::UriageController < ApplicationController
  def new
    @object = Journal::Uriage.new
  end

  def create
    @object =  Journal::Uriage.new(journal_uriage_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 7
    b.entry_id = current_entry_id

    begin
      @object.transaction do
        @object.save!
        b.journal_journal_id = @object.id
        b.save!
      end
    rescue

      return render :new
    end

    redirect_to '/'
  end

  private

    def journal_uriage_params
      params.require(:journal_uriage).permit(:price, :quantity, :remarks)
    end
end
