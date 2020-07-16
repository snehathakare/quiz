
namespace :import_ans do
  
  desc "Import Data from csv file"
  
  task csv: :environment do 
    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "answers.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      a = Answer.new
      a.correct = row["correct"]
      a.title= row["title"]
      a.question_id= row["question_id"]
      a.save!
    end     
    puts "There are now #{Answer.count} rows in the answers table"
  end
end