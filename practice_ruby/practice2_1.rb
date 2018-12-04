# 曲クラス作成
class Music
  attr_accessor :title, :release, :vote

  # 曲名、リリース年、投票数の初期値設定
  def initialize(title:, release:)
    @title = title
    @release = release
    @vote = 0
  end

  # 曲名、リリース年を表示
  def disp
    "#{@title} #{@release}年"
  end

  # 投票数を増やす
  def plus_vote
    @vote += 1
  end
end

# ユーザークラス作成
class User
  attr_accessor :sex, :age
  # 性別、年齢の初期値設定
  def initialize(sex:, age:)
    @sex = sex
    @age = age
  end

  # 投票する
  def vote(selected)
    selected.plus_vote
  end
end


music1 = Music.new(title: "TRY ME 〜私を信じて〜", release: 1995)
music2 = Music.new(title: "太陽のシーズン", release: 1995)
music3 = Music.new(title: "a work in the park", release: 1996)
music4 = Music.new(title: "NEVER END", release: 2000)
music5 = Music.new(title: "Say the word", release: 2001)
music6 = Music.new(title: "Go Round", release: 2012)
music7 = Music.new(title: "Mint", release: 2016)
music8 = Music.new(title: "Hero", release: 2016)

music = [music1,music2,music3,music4,music5,music6,music7,music8]

music.each.with_index(1) do |m,i|
  puts "#{i}.#{m.disp}"
end

user1 = User.new(sex: "男", age: 46)
user2 = User.new(sex: "女", age: 28)
user3 = User.new(sex: "女", age: 18)
user4 = User.new(sex: "男", age: 30)
user5 = User.new(sex: "女", age: 32)
user6 = User.new(sex: "男", age: 22)
user7 = User.new(sex: "男", age: 50)
user8 = User.new(sex: "女", age: 26)
user9 = User.new(sex: "女", age: 43)
user10 = User.new(sex: "女", age: 15)

users = [user1,user2,user3,user4,user5,user6,user7,user8,user9,user10]

users.each do |user|
  selected = music.sample  # ランダムに曲に投票
  user.vote(selected)
  puts <<~text
  『#{selected.title}』に投票されました！
  現在の投票数：#{selected.vote}票

  text
end

result = []
puts "結果発表"
music.each do |m|
  result.push(m.vote)
  puts "#{m.title}：#{m.vote}票"
end
