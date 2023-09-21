# frozen_string_literal: true

module CustomerEngine
  class Facade
    def self.fetch_customer(customer_id)
      Customer.find(customer_id).as_json(only: [:id, :birthdate, :birth_location])
    end
  end
end

