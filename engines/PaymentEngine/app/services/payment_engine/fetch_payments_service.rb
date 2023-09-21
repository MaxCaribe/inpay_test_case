# frozen_string_literal: true

module PaymentEngine
  class FetchPaymentsService < ApplicationService

    def initialize(customer_id)
      @customer_id = customer_id
    end

    private

    attr_reader :customer_id

    def perform
      [true, payments]
    rescue ActiveRecord::RecordNotFound => e
      [false, e.message]
    end

    def payments
      payments_json.merge(clients_json)
    end

    def payments_json
      { payments: Payment.where(customer_id: customer_id).as_json }
    end

    def clients_json
      ::CustomerEngine::Facade.fetch_customer(customer_id)
    end

  end
end
