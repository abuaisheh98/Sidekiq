require "test_helper"

class HelloWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hello_words_index_url
    assert_response :success
  end

  test "should get delete_queue" do
    get hello_words_delete_queue_url
    assert_response :success
  end
end
