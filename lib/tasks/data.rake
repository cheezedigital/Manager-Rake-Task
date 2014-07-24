require "csv"

namespace :data do

  desc "should create a csv file for user data"
  task csv: :environment do
    users = User.all
    CSV.open("tmp/csv/user-#{Time.now.strftime("%F")}.csv", "w+") do |csv|
      users.each do |user|
        csv << [user.name, user.email, user.phone, user.address]
      end
    end
  end
end
