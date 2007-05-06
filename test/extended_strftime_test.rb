require 'test/unit'
require 'time'
require 'date'

require 'rubygems'

gem 'activesupport'
require 'active_support'

require 'extended_strftime'

class ExtendedStrftimeTest < Test::Unit::TestCase
  def test_should_ordinalize_with_o
    t = Time.parse("2007/05/01")
    assert t.strftime("%B %o, %Y"), "May 1st, 2007"
    
    t = Time.parse("2007/05/02")
    assert t.strftime("%B %o, %Y"), "May 2nd, 2007"
    
    t = Time.parse("2007/05/03")
    assert t.strftime("%B %o, %Y"), "May 3rd, 2007"
    
    t = Time.parse("2007/05/04")
    assert t.strftime("%B %o, %Y"), "May 4th, 2007"
  end
end
