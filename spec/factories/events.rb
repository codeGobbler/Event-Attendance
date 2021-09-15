# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :event do |f|
    f.description { Faker::Lorem.words }
    f.frequency { ['Daily', 'Weekly', 'Monthly', 'Annually'].shuffle.first }
    f.start_time { Faker::Date.forward(days: 24) }
    f.end_time { Faker::Date.forward(days: 48) }
    f.event_location { Faker::Address.street_address }
  end
end
