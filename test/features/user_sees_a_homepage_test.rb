require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'
    assert page.has_content?('Welcome!')
    assert_equal 200, page.status_code
  end

  def test_we_get_404_if_page_doesnt_exist
    visit '/non_existent'
    assert_equal 404, page.status_code
  end
end
