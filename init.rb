# Include hook code here
require 'date'
require 'time'
require 'active_support/inflector'

require 'extended_strftime'

Date.send(:include, GeoffGarside::Extensions::Strftime)
Time.send(:include, GeoffGarside::Extensions::Strftime)
