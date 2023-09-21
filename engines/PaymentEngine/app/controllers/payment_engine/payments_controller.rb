# frozen_string_literal: true

module PaymentEngine
  class PaymentsController < ApplicationController

    def index
      id = params[:id]
      result = FetchPaymentsService.call(id)

      if result.successful?
        render json: result.payload
      else
        render json: result.error, status: 422
      end
    end

  end
end

