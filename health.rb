def register_health(healths)
  health = {}

  puts "名前またはニックネームを入力した下さい。"
  health[:name] = gets.chomp
  puts "年齢を入力した下さい。"
  health[:age] = gets.to_i
  puts "歩行時間(分)を入力した下さい。"
  health[:walktime] = (gets.to_i) / 60
  puts "移動距離(m)を入力した下さい。"
  health[:distance] = (gets.to_i) / 1000
  puts "身長(cm)を入力した下さい。"
  health[:height] = (gets.to_f) * 0.01  # 単位(cm)⇒(m)
  puts "体重(kg)を入力した下さい。"
  health[:weight] = (gets.to_f)
 
  healths << health

end

def index_health(healths)

  puts "健康管理データを見たい人の登録番号を入力して下さい。"
  healths.each_with_index do |health, index|
    puts "[#{index+1}]#{health[:name]}、#{health[:age]}歳⇒速度:#{health[:distance]/health[:walktime]}[km/h]"
  end
  input = gets.to_i
  
  show_health(health[input-1])

end

def show_health(health)
  puts "氏名：#{health[:name]}"
  puts "年齢：#{health[:age]}"
  puts "歩行時間：#{health[:walktime]}"
  puts "移動距離：#{health[:distance]}"
  puts "身長：#{health[:height]}"
  puts "体重：#{health[:weight]}"

end

healths = []


puts "健康診断への受診者の[番号]を入力して下さい。"
puts "[0]健康診断での受診者を登録する"
puts "[1]健康診断の全受診者を一覧リストで表示する"
puts "[2]健康状態の目安となる数値データで表記する"
puts "[3]現在のストレスチェックで健康レベルを計測する"
puts "[4]終了する"
input = gets.to_i

case input
when 0
    def register_health(healths)
when 1
    def index_health(healths)
