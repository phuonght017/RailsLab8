require "test_helper"

class FriendNumControllerTest < ActionDispatch::IntegrationTest
  setup do 
    @num = 2000
    @result = [[220,284],[1184,1210]]
  end

  test "get home" do
    get root_url
    assert_response :success
  end

  test "get result" do
    post friend_num_url, params: {num:@num}
    assert_response :success
    assert_equal assigns[:res], @result
  end
  # test "the truth" do
  #   assert true
  # end
end
