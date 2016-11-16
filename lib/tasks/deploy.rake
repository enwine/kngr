require 'pathname'
require 'fileutils'
include FileUtils

 APP_ROOT = Pathname.new File.expand_path('../../', __FILE__)
 def system!(*args)
   system(*args) || abort("\n== Command #{args} failed ==")
 end

namespace :deploy do
  desc "Deploys application from GIT"
  task :git => :environment do
    chdir APP_ROOT do
      puts '== Fetching new version =='
      system! 'git pull'
      puts "\n== Upgrading db version =="
      system! 'RAILS_ENV=production rails db:migrate'
      puts "\n== Restarting processes =="
      system! 'service unicorn_kngr restart'
      puts "'\n== Deployment completed =="
    end
  end
end
