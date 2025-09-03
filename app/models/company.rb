# frozen_string_literal: true

# == Schema Information
#
# Table name: companies
#
#  id         :uuid             not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Company < ApplicationRecord
  has_many :vacancies, dependent: :destroy

  validates :name, presence: true
end
