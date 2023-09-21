module CustomerEngine
  class ApplicationRecord < ActiveRecord::Base

    self.abstract_class = true

    connects_to database: { writing: :customers, reading: :customers }

  end
end
