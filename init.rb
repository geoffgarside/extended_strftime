# Include hook code here
require 'extended_strftime'

Date.send(:include, GeoffGarside::Extensions::Strftime)
Time.send(:include, GeoffGarside::Extensions::Strftime)
