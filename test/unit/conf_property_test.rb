require 'test_helper'

class ConfPropertyTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: conf_properties
#
#  id         :integer         not null, primary key
#  section    :string(255)
#  param      :string(255)
#  value      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

