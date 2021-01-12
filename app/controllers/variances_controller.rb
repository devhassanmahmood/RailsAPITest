class VariancesController < ApplicationController
  def index
    variance = sample_variance(Dataset.all.pluck(:temperature))
    render json: variance.to_f, status: 200
  end

  private
  def sample_variance(data_set)
    data_set = data_set.map(&:to_f)
    mean = data_set.inject{ |sum, el| sum + el }.to_f / data_set.size
    sum = 0.0
    data_set.each {|v| sum += (v-mean)**2 }
    sum/data_set.size.to_f
  end
end
