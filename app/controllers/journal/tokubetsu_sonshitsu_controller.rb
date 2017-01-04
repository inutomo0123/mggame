class Journal::TokubetsuSonshitsuController < ApplicationController
  def new
    @object = Journal::TokubetsuSonshitsu.new
  end

  def create
    @object =  Journal::TokubetsuSonshitsu.new(journal_tokubetsu_sonshitsu_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 20
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

    def journal_tokubetsu_sonshitsu_params
      params.require(:journal_tokubetsu_sonshitsu).permit(:amount, :remarks)
    end
end
