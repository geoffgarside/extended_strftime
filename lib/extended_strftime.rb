# EnhancedStrftime
module GeoffGarside #:nodoc:
  module Extensions #:nodoc:
    module Strftime
      def self.included(base)
        base.alias_method_chain :strftime, :geoffgarside
      end
      
      # Extended strftime method. Accepts some additional formatting
      # tokens over those parsed by the standard strftime functions.
      # * %o - Token %d (no leading zero's) with the 'st', 'nd', 'rd', 'th' suffix
      def strftime_with_geoffgarside(fmt='%F')
        o = ''
        fmt.scan(/%[EO]?.|./mo) do |c|
          cc = c.sub(/\A%[EO]?(.)\z/mo, '%\\1')
          case cc
          when '%o'; o << Inflector.ordinalize(mday)
          else
            o << c
          end
        end
        strftime_without_geoffgarside(o)
      end
    end
  end
end
