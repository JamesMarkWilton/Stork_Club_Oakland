require 'test_helper'

class BasicSiteNavigation < ActionDispatch::IntegrationTest
  def test_I_can_go_to_all_the_parts_of_my_site
    page.visit "/"
    assert_match /welcome/i, page.body
    page.visit "/calendar"
    assert_match /calendar/i, page.body
    page.visit "/booking"
    assert_match /booking/i, page.body
    page.visit "/information"
    assert_match /information/i, page.body
    page.visit "/archive"
    assert_match /history/i, page.body
  end
end
