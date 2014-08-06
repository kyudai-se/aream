FactoryGirl.define do
  factory :aream do
    entdate "20140730000000"
    sequence(:area_cd) { |n| "100*#{n}" }
    sequence(:area_j)  { |j| "鳥取県#{j}" }
    sequence(:area_a)  { |j| "#{j}市" }
    sequence(:area_k)  { |j| "#{j}" }
  end
end
