# ランダムに朝礼を行う人を選ぶ
def select_name(names, finish_names)
  remaining_name = names - finish_names #残りの参加者を出す
  if remaining_name.empty? # 残りの参加者はいるのかを確認する
    finish_names.clear # いない場合は、既に朝礼を行なった人の配列を空にする。
    remaining_name = names # 再度、残りの参加者を出す。
  end
  selected_name = remaining_name.sample # シャッフルする
  finish_names << selected_name # シャッフルして選ばれた人を既に朝礼を行なっている人の配列に追加する
  selected_name # 今日の朝礼を行う人が決まる
end

# 参加者の配列
names = %W[ぬまし 内堀 内海 小倉 名人 加藤 神田 チャーリー ゆきまる 新谷 高篠 田村 みのりん デイジー Min姉 小林] # 7/18 [野﨑 塾長 ]

resting_names = []
# 休みの人の配列
puts "今日は休みの人いる? 1:いる 2:いない"
person_on_vacation = gets.chomp #休みの人を入力する
while person_on_vacation == "1"
  if person_on_vacation == "1"
    puts "誰ですか？"
    resting_names << gets.chomp
    puts "他にいる? 1:いる 2:いない"
    person_on_vacation = gets.chomp
  else
    break
  end
end

# 休みの人を参加者から除外
names -= resting_names

# 既に当てられたた人の配列
finish_names = []

puts "答えて下さるのは、(1を押して！)"
answer = gets.chomp # 1を入力する
while answer == "1" || answer == "2" || answer == "3"
  if answer == "1"
    if File.exist?("finish_names.txt") # finish_namesの内容を読み込む
      finish_names = File.read("finish_names.txt").split("\n")
    end
    # 朝礼を行う人を1人だけ選らんで表示
    selected_name = select_name(names, finish_names)
    puts "#{selected_name}さんです！！"
    # finish_namesの内容をファイルに保存
    File.open("finish_names.txt", "w") { |file| file.write(finish_names.join("\n")) }
  elsif answer == "2"
    puts "ありがとうございました！"
    puts "続いての回答者は？"
  elsif  answer == "3"
    puts "ご参加、ありがとうございました！"
    break
  end
  answer = gets.chomp # 1～3を入力する
end

# 終わるまでは1,2を交互に入力する。終わる時は3を入力する。
