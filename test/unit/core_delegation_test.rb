require 'test_helper'

class CoreDelegationTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: core_delegations
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  role_id    :integer
#  valid_from :date
#  valid_till :date
#  created_at :datetime
#  updated_at :datetime
#

