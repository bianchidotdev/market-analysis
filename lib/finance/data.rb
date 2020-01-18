require 'csv'

class Finance
  class Data
    class << self
      def load(file = "annual-return-on-investment.csv")
        CSV.read(file, headers: true)
      end
    end
  end
end
