# 人間クラス作成
class Human
  attr_accessor :weight

  def initialize(weight)
    @weight = weight
  end

  # 人がエレベーターに入るときの処理
  def enter(elevator,weight)
    elevator.plus(weight)
  end
  # 人がエレベーターから出るときの処理
  def leave(elevator,weight)
    elevator.minus(weight)
  end
end

# エレベータークラス作成
class Elevator
  attr_accessor :name, :capacity, :total_weight

  def initialize(name:, capacity:)
    @name = name
    @capacity = capacity
    @total_weight = 0
  end

　# エレベーターの重量を増やす
  def plus(weight)
    @total_weight += weight
    nokori = 0
    over = 0
    if @total_weight > @capacity
      "#{over = total_weight - @capacity}Kgオーバーです"
    else
      "あと#{nokori = @capacity - total_weight}Kgの余裕があります"
    end
  end

  # エレベーターの重量を減らす
  def minus(weight)
    @total_weight -= weight
    nokori = 0
    over = 0
    if @total_weight > @capacity
      "#{over = total_weight - @capacity}Kgオーバーです"
    else
      "あと#{nokori = @capacity -total_weight}Kgの余裕があります"
    end
  end
end

human1 = Human.new(54)
human2 = Human.new(33)
human3 = Human.new(78)
human4 = Human.new(60)
human5 = Human.new(39)

elevator1 = Elevator.new(name: "北", capacity: 100)
elevator2 = Elevator.new(name: "東", capacity: 110)
elevator3 = Elevator.new(name: "南", capacity: 150)
elevator4 = Elevator.new(name: "西", capacity: 170)

# 折角初期値に体重を設定しているから本当はそれを使いたかったけど力及ばず時間切れ
puts human1.enter(elevator1,54)
puts human2.enter(elevator1,33)
puts human3.enter(elevator1,78)
