# 患者クラス作成
class Patient
  attr_accessor :age, :code

  # 年齢、心電図のコードを初期値設定する
  def initialize(age:, code:)
    @age = age
    @code =code
  end
end

patient1 = Patient.new(age: 5, code:1)
patient2 = Patient.new(age: 35, code: 2)
patient3 = Patient.new(age: 22, code:1)
patient4 = Patient.new(age: 3, code:2)

patients = [patient1,patient2,patient3,patient4]

# 年齢によって電極を変える処理
def age_ver(age)
  age < 8 ? "小児用の電極をつけてください。" : "成人用の電極をつけてください。"
end

# 心電図コードによって電気ショックを行うかどうかの判断をする
def analysis(code)
  if code == 1
    <<~text
    電気ショックが必要です。充電しています。
    体から離れてださい。点滅ボタンをしっかりと押してください。
    電気ショックを行いました。
    ただちに胸骨圧迫を開始してください。
    text
  else
    "意識・呼吸を確認してください。"
  end
end

patients.each do |patient|
puts age_ver(patient.age)
puts <<~text
心電図を解析しています
体に触れないでください
text
puts analysis(patient.code)
puts ""
end
