require 'test_helper'

class CoreModuleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: core_modules
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  ord         :integer
#  created_at  :datetime
#  updated_at  :datetime
#

