class Journal::EigyougaiHiyouController < ApplicationController
  def new
    @object = Journal::EigyougaiHiyou.new
  end

  def create
    @object =  Journal::EigyougaiHiyou.new(journal_eigyougai_hiyou_params)
    @object.entry_id = current_entry_id

    b = Behavior.new behavior_type_id: 1, account_title_id: 16
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

    def journal_eigyougai_hiyou_params
      params.require(:journal_eigyougai_hiyou).permit(:amount, :remarks)
    end
end
