# frozen_string_literal: true

# == Schema Information
#
# Table name: vacancies
#
#  id              :uuid             not null, primary key
#  category_id     :uuid             not null
#  company_id      :uuid             not null
#  title           :string           not null
#  description     :text             not null
#  seniority       :string           not null
#  contract_type   :string           not null
#  employment_type :string           not null
#  operating_mode  :string           not null
#  salary          :jsonb            not null
#  skills          :text             default([]), is an Array
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Vacancy < ApplicationRecord
  belongs_to :category
  belongs_to :company

  enum :seniority, {
    junior: "junior",
    mid: "mid",
    senior: "senior",
    manager: "manager"
  }

  enum :contract_type, {
    b2b: "b2b",
    permanent: "permanent",
    intership: "intership"
  }

  enum :employment_type, {
    full_time: "full_time",
    part_time: "part_time",
    freelance: "freelance"
  }

  enum :operating_mode, {
    remote: "remote",
    hybrid: "hybrid",
    office: "office"
  }

  store_accessor :salary, :from, :to, :currency, prefix: true

  with_options presence: true do
    validates :title, :description, :seniority, :contract_type, :employment_type, :operating_mode
  end
end
