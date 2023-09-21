# frozen_string_literal: true
module PaymentEngine
  class ApplicationService

    def self.call(*args, **kwargs, &block)
      new(*args, **kwargs, &block).call
    end

    def call
      success, data = perform
      success ? ApplicationService::Result.success(data) : ApplicationService::Result.fail(data)
    end

  private

    def perform
      raise Exception, 'perform method must be implemented by the child class'
    end

    # frozen_string_literal: true

    class ApplicationService::Result

      def initialize(success, data)
        @success = success
        @data    = data
      end

      def successful?
        success
      end

      def failed?
        !success
      end

      def payload
        return nil unless successful?

        data
      end

      def error
        return nil if successful?

        data
      end

      def self.success(payload)
        new true, payload
      end

      def self.fail(errors)
        new false, errors
      end

    private

      attr_reader :success, :data

    end

  end

end
