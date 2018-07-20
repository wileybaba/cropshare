require 'test_helper'

class ShareTest < ActiveSupport::TestCase

  def setup
    @user = users(:wiley)
    @share = @user.shares.build(name: "Weekly veggie")
  end

  test "should be valid" do
    assert @share.valid?
  end

  test "user id should be present" do
    @share.user_id = nil
    assert_not @share.valid?
  end 

end
