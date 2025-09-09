# frozen_string_literal: true

class JobsController < ApplicationController
  def index
    records = Vacancies::List.call(**filter_params).value
    @pagy, @vacancies = pagy(records)
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  private

  def filter_params
    params.permit(
      :category_id,
      :title,
      :location,
      :page,
      seniorities: [],
      contract_types: [],
      job_types: [],
      operating_modes: []
    )
  end
end
