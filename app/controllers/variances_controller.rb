# frozen_string_literal: true

class VariancesController < ApplicationController
  def index
    data_set = Dataset.all.pluck(:temperature)
    variance = VarianceCalculator.call(data_set)
    render json: variance.to_f, status: 200
  end
end
