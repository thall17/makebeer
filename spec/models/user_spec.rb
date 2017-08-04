require 'rails_helper'
require 'devise'

RSpec.describe User, type: :model do
  it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
  it { should validate_uniqueness_of(:username).ignoring_case_sensitivity }

  # it "does not authenticate with incorrect password" do
  #   create(:user, username: "batman", password: "secret")
  #   User.authenticate_user!("batman@example.com", "incorrect").should be_nil
  # end
end