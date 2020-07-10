
namespace :import do
  
  desc "Import Data from csv file"
  
  task csv: :environment do 
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "questions.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      q = Question.new
      q.difficulty = row["difficulty"]
      q.title= row["title"]
      q.category_id= row["category_id"]
      q.save!
    end     
    puts "There are now #{Question.count} rows in the questions table"
  end
end