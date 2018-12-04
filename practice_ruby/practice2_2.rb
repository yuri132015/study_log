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

music1 = Music.new(title: "TRY ME 〜私を信じて〜", release: 1995)
music2 = Music.new(title: "太陽のシーズン", release: 1995)
music3 = Music.new(title: "a work in the park", release: 1996)
music4 = Music.new(title: "NEVER END", release: 2000)
music5 = Music.new(title: "Say the word", release: 2001)
music6 = Music.new(title: "Go Round", release: 2012)
music7 = Music.new(title: "Mint", release: 2016)
music8 = Music.new(title: "Hero", release: 2016)

music = [music1,music2,music3,music4,music5,music6,music7,music8]
while true
  puts ""
  puts "投票したい曲の番号を入力してください"
  puts ""

  music.each.with_index(1) do |m,i|
    puts "#{i}.#{m.disp}"
  end

  puts ""
  number = gets.chomp.to_i - 1
  select = music[number]
  puts "『#{music[number].title}』に投票されました！"
  music[number].plus_vote

  puts ""
  puts"〜現在の結果〜"
  music.each do |m|
    puts "#{m.title}：#{m.vote}票"
  end
end
