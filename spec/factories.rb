FactoryBot.define do
    factory :random_task, class: Task do
        name { Faker::Lorem.sentence }
        completed { false }
        user
    end

    factory :user, class: User do
        email { Faker::Internet.free_email }
        password { Faker::Crypto.sha1 }
    end
end