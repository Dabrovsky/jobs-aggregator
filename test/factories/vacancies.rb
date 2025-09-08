# frozen_string_literal: true

FactoryBot.define do
  factory :vacancy do
    association :category
    association :company
    title { "Vacancy title" }
    description { "Vacancy description" }
    seniority { "junior" }
    contract_type { "permanent" }
    job_type { "full_time" }
    operating_mode { "remote" }
    location { "Warsaw" }
  end
end
