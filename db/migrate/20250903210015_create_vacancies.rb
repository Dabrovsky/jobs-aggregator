# frozen_string_literal: true

class CreateVacancies < ActiveRecord::Migration[8.0]
  def change
    create_table :vacancies, id: :uuid do |t|
      t.references :category, null: false, foreign_key: true, type: :uuid
      t.references :company, null: false, foreign_key: true, type: :uuid
      t.string :title, null: false
      t.text :description, null: false
      t.string :seniority, null: false
      t.string :contract_type, null: false
      t.string :employment_type, null: false
      t.string :operating_mode, null: false
      t.jsonb :salary, null: false, default: {}
      t.text :skills, array: true, default: []
      t.timestamps
    end
  end
end
