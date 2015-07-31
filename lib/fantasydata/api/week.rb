require 'fantasydata/api/utils'

module Fantasydata
  module API
    module Week
      include Fantasydata::API::Utils

      def week_current
        integer_from_response(:get, '/nfl/v2/JSON/CurrentWeek')
      end

      def week_last_completed
        integer_from_response(:get, '/nfl/v2/JSON/LastCompletedWeek')
      end

      def week_upcoming
        integer_from_response(:get, '/nfl/v2/XML/UpcomingWeek')
      end

    end
  end
end