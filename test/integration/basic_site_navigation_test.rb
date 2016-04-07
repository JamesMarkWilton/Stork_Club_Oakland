require 'test_helper'

class BasicSiteNavigation < ActionDispatch::IntegrationTest
  def test_I_can_go_to_all_the_parts_of_my_site
    page.visit "/"
    assert_match /welcome/i, page.body

    page.visit "/calendar"
    assert_match /calendar/i, page.body

    page.visit "/booking"
    assert_match /booking/i, page.body

    page.visit "/archive"
    assert_match /history/i, page.body
  end

  def test_a_user_can_moves_around_via_the_nav_bar
    page.visit "/"
    page.click_link "Book a Show"
    assert_match /book/i, page.body

    page.click_link "Calendar"
    assert_match /calendar/i, page.body

    page.click_link "Bar Info"
    assert_match /policies/i, page.body

    page.click_link "History"
    assert_match /history/i, page.body

    page.click_link "Stork Club"
    assert_match /welcome/i, page.body
  end

  def test_a_user_can_move_around_via_the_bar_info_dropdown
    page.visit "/"
    page.click_link "Bar Info"
    page.click_link "Policies"
    assert_match /policies/i, page.body

    page.visit "/"
    page.click_link "Bar Info"
    page.click_link "Venue"
    assert_match /venue/i, page.body

    page.visit "/"
    page.click_link "Bar Info"
    page.click_link "Promotion"
    assert_match /promotion/i, page.body

    page.visit "/"
    page.click_link "Bar Info"
    page.click_link "General"
    assert_match /general/i, page.body
  end
end
