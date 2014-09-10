namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Admin Admin",
                 email: "admin@als.com",
                 password: "adminad",
                 password_confirmation: "adminad")

    require 'csv'
    csv_text = File.read('db/aircraftdb.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    	Aircraft.create!(row.to_hash)
    end

    require 'csv'
    csv_text = File.read('db/w1.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      W1.create!(row.to_hash)
    end

  end
end