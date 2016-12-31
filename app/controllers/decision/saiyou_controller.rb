class Decision::ZairyoukounyuuController < ApplicationController
  def new
    jobs = Job.all

    @object = Decision::Saiyou.new(entry_id: current_entry.id)

    jobs.each do |job|
      @object.details.build({
        job_id: market.id,
        number: 0
      })
    end
  end
end
