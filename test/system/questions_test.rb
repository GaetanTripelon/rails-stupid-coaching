# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
    take_screenshot
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Wazaaaaaa"
    click_on "Ask"

    assert_text "Oui"
    take_screenshot
  end

  test "asking a question a question to the coach yields a grumpy comment" do
    visit ask_url
    fill_in "question", with: "How are you?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
    take_screenshot
  end

  test "telling the coach we are going to work makes him happy" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
  test "Yo mamène" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end
end
