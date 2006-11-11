# ExtendedStrftime
module GeoffGarside #:nodoc:
  module Extensions #:nodoc:
    module Strftime
      # Extended strftime method. Accepts some additional formatting
      # tokens over those parsed by the standard strftime functions.
      # * %o - Token %d (no leading zero's) with the 'st', 'nd', 'rd', 'th' suffix
      def estrftime(fmt='%F')
        o = ''
        fmt.scan(/%[EO]?.|./mo) do |c|
          cc = c.sub(/\A%[EO]?(.)\z/mo, '%\\1')
          case cc
          when '%o'; o << Inflector.ordinalize(mday)
          else
            o << c
          end
        end
        strftime(o)
      end
    end
  end
end