# import.rbの読み込み設定
require 'import.rb'

namespace :import_csv do
  
#aws_tect_date
  desc "aws_text_data.csvをインポートするタスク"  
  task aws_text: :environment do
    
    puts "インポート処理を開始！"
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    AwsText.delete_all

    # インポートできなかった場合
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
  end



#movie_data
  desc "movie_data.csvをインポートするタスク"
  task movie: :environment do
    
    puts "インポート処理を開始！"
    Movie.delete_all
    list = Import.csv_data(path: "db/csv_data/movie_data.csv")

    # インポートできなかった場合
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
  end



  #line_date
  
end