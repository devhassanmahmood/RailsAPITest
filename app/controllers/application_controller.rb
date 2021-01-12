# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :verify_token

  protected

  def verify_token
    render json: { message: 'Token is missing' }, status: 404 and return unless request.headers[:token]

    token = Token.find_by(token: request.headers[:token])
    render json: { message: 'Invalid token' }, status: 401 and return unless token
  end
end
