require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test 'opening root page' do
    visit root_url
    assert_selector 'h2', text: 'Quests'
  end
end
