# 容器クラス作成
class Container
  attr_accessor :capacity, :code

  # コードの初期値設定
  def initialize (code:)
    @code = code
  end

  # 容器の種類コードを照合する
  def match_capacity
    capa_reader = "容量コードを読み取り中..."
    sentence = "次にジュースコードの読み取りを行います"
    code2 = @code.div(100)
    if code2 == 5
      <<~text
      #{capa_reader}
      500mlの容器です
      #{sentence}
      text
    elsif code2 == 3
      <<~text
      #{capa_reader}
      300mlの容器です
      #{sentence}
      text
    else
      <<~text
      #{capa_reader}
      200mlの容器です
      #{sentence}
      text
    end
  end

  # ジュースの種類コードを照合する
  def match_type
    type_reader = "ジュースコードを読み取り中..."
    code3 = (@code % 100).div(10)
    if code3 == 1
      <<~text
      #{type_reader}
      バナナジュースを入れます
      text
    elsif code3 == 2
      <<~text
      #{type_reader}
      りんごジュースを入れます
      text
    else
      <<~text
      #{type_reader}
      ぶどうジュースを入れます
      text
    end
  end
end


container1 = Container.new(code: 210)
container2 = Container.new(code: 220)
container3 = Container.new(code: 230)
container4 = Container.new(code: 320)
container5 = Container.new(code: 310)
container6 = Container.new(code: 330)
container7 = Container.new(code: 520)
container8 = Container.new(code: 510)
container9 = Container.new(code: 530)

containers = [container1,container2,container3,container4,container5,container6,container7,container8,container9]

puts <<~text

容器が流れてきました
ジュースを入れる準備をします

text

containers.each do |container|
  puts container.match_capacity
  puts container.match_type
  puts ""
end
