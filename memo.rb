require "csv"
puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.to_s
input_number = memo_type.chomp

if input_number == "1"
  puts "拡張子を除いたファイルを入力してください"
  csv_title = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  input_memo = $stdin.read
  memo = input_memo.chomp
  CSV.open("#{csv_title}.csv" , 'w') do |csv|
  csv.puts ["#{memo}"]
end

elsif input_number == "2"
  puts "編集したい拡張子を除いたファイル名を入力してください"
  csv_title = gets.chomp
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dをおします"
  input_memo = $stdin.read
  memo = input_memo.chomp
  CSV.open("#{csv_title}.csv" , 'a') do |csv|
  csv.puts ["#{memo}"]
end

else
  puts "1か2を入力してください"
end