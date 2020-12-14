# import.rbの読み込み設定
require 'import.rb'



namespace :import_csv do
  desc "csvデータをインポートするタスク"
  task all: :environment do

    #aws_text_dataのインポート処理
    puts "インポート処理を開始！"
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    AwsText.delete_all

    begin
      AwsText.create!(list)
      puts "インポート完了！"
    rescue => e
      #例外が発生した時の処理
      puts "#{e.class}: #{e.message}"
      puts "-------------------------"
      puts e.backtrace # 例外が発生した位置情報
      puts "-------------------------"
      puts "インポートに失敗"
    end



    #movie_dataのインポート処理
    puts "インポート処理を開始！"
    Movie.delete_all
    list = Import.csv_data(path: "db/csv_data/movie_data.csv")

    begin
      Movie.create!(list)
      puts "インポート完了！"
    rescue => e
      #例外が発生した時の処理
      puts "#{e.class}: #{e.message}"
      puts "-------------------------"
      puts e.backtrace # 例外が発生した位置情報
      puts "-------------------------"
      puts "インポートに失敗"
    end



    #line_dataのインポート処理
    puts "インポート処理を開始！"
    Line.delete_all
    list = Import.csv_data(path: "db/csv_data/line_data.csv")

    begin
      Line.create!(list)
      puts "インポート完了！"
    rescue => e
      #例外が発生した時の処理
      puts "#{e.class}: #{e.message}"
      puts "-------------------------"
      puts e.backtrace # 例外が発生した位置情報
      puts "-------------------------"
      puts "インポートに失敗"
    end



    #text_dataのインポート処理
    puts "インポート処理を開始！"
    Text.delete_all
    list = Import.csv_data(path: "db/csv_data/text_data.csv")

    begin
      Text.create!(list)
      puts "インポート完了！"
    rescue => e
      #例外が発生した時の処理
      puts "#{e.class}: #{e.message}"
      puts "-------------------------"
      puts e.backtrace # 例外が発生した位置情報
      puts "-------------------------"
      puts "インポートに失敗"
    end



    #question_dataのインポート処理
    puts "インポート処理を開始！"
    Question.delete_all
    list = Import.csv_data(path: "db/csv_data/question_data.csv")

    begin
      Question.create!(list)
      puts "インポート完了！"
    rescue => e
      #例外が発生した時の処理
      puts "#{e.class}: #{e.message}"
      puts "-------------------------"
      puts e.backtrace # 例外が発生した位置情報
      puts "-------------------------"
      puts "インポートに失敗"
    end

  end 
end