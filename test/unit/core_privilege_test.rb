require 'test_helper'

class CorePrivilegeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: core_privileges
#
#  id         :integer         not null, primary key
#  role_id    :integer
#  action_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

