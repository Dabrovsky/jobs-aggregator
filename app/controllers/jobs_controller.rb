# frozen_string_literal: true

class JobsController < ApplicationController
  def index
    @vacancies = Vacancies::List.call(**filter_params).value
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  private

  def filter_params
    params.permit(
      :title,
      :location,
      seniorities: [],
      contract_types: [],
      job_types: [],
      operating_modes: []
    )
  end
end
