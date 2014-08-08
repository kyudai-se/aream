FactoryGirl.define do
  factory :aream do
    entdate "20140730000000"
    area_cd "100"
#    sequence(:area_j)  { |j| "鳥取県#{j}" }
#    sequence(:area_a)  { |a| "#{a}市" }
#    sequence(:area_k)  { |k| "#{k}" }
    area_j  "鳥取県鳥取市"
    area_a  "鳥取県鳥取市"
    area_k  "ﾄｯﾄﾘｹﾝﾄｯﾄﾘｼ"
  end
end
