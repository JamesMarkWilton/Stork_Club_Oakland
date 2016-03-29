require 'test_helper'

class BasicSiteNavigation < ActionDispatch::IntegrationTest
  def test_I_can_go_to_all_the_parts_of_my_site
    page.visit "/"
    assert_includes /welcome/i, page.body
    page.visit "/calendar"
    assert_includes /calendar/i, page.body
    page.visit "/booking"
    assert_includes /booking/i, page.body
    page.visit "/venue"
    assert_includes /inforamtion/i, page.body
    page.visit "/archive"
    assert_includes /history/i, page.body
  end
end
