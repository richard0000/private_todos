FactoryBot.define do
    factory :random_task, class: Task do
        name { Faker::Lorem.sentence }
        completed { false }
    end
end