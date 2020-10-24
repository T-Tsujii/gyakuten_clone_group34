# import.rbの読み込み設定
require 'import.rb'

namespace :import_csv do
  desc "CSVデータをインポートするタスク"
  task aws_text: :environment do  
  
    # import.rbのデータを取得  
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
  
    puts "インポート処理を開始！"
  
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
end

