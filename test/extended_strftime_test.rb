require 'test/unit'

# These currently fail because I cant seem to load in the init.rb file
# and the ActiveSupport::Inflector properly

class ExtendedStrftimeTest < Test::Unit::TestCase
  def test_time_ordinalize
    t = Time.mktime(2006, 11, 9, 9, 37)
    
    assert_equal(t.strftime("%B %e, %Y"), t.estrftime("%B %e, %Y"))
    
    assert_equal("November  9, 2006", t.estrftime("%B %e, %Y"))
    assert_equal("November  9th, 2006", t.estrftime("%B %o, %Y"))
  end
  
  def test_date_ordinalize
    d = Date.civil(2006, 11, 9)
    
    assert_equal(d.strftime("%B %e, %Y"), d.estrftime("%B %e, %Y"))
    
    assert_equal("November  9, 2006", d.estrftime("%B %e, %Y"))
    assert_equal("November  9th, 2006", d.estrftime("%B %o, %Y"))
  end
end
