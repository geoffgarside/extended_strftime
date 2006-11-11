# ExtendedStrftime
module GeoffGarside
  module Extensions
    module Strftime
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