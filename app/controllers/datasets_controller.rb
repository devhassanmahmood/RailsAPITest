# frozen_string_literal: true

class DatasetsController < ApplicationController
  before_action :set_dataset, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  # GET /datasets.json
  def index
    @datasets = Dataset.all
    render json: @datasets, status: 200
  end

  # GET /datasets/1.json
  def show
    render json: @dataset, status: 200
  end

  # POST /datasets.json
  def create
    @dataset = Dataset.new(dataset_params)

    if @dataset.save
      render json: @dataset.reload, status: 201
    else
      render json: @dataset.errors, status: 422
    end
  end

  # PATCH/PUT /datasets/1.json
  def update
    if @dataset.update(dataset_params)
      render json: @dataset, status: 200
    else
      render json: @dataset.errors, status: 422
    end
  end

  # DELETE /datasets/1.json
  def destroy
    @dataset.destroy
    render json: {}, status: :no_content
  end

  private

  def set_dataset
    @dataset = Dataset.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { message: 'Record not found' }, status: 404
  end

  def dataset_params
    params.require(:dataset).permit(:temperature)
  end
end
