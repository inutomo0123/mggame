# http://yu0105teshi.hateblo.jp/entry/2016/08/03/180603
# lib/tasks/seed.rakeとして以下を作成する

Dir.glob(File.join(Rails.root, 'db', 'seeds', '*.rb')).each do |file|
  desc "Load the seed data from db/seeds/#{File.basename(file)}."
  task "db:seed:#{File.basename(file).gsub(/\..+$/, '')}" => :environment do
    load(file)
  end
end
