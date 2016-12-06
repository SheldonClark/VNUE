require 'test_helper'

class BandTest < ActiveSupport::TestCase
  test "default band is valid" do
    band = FactoryGirl.build(:band)
    assert band.valid?
  end
  #email validation tests
  test "email is invalid when nil" do
    band = FactoryGirl.build(:band, :email_empty)
    refute band.valid?
  end
  test "email is invalid when blank" do
    band = FactoryGirl.build(:band, :email_blank)
    refute band.valid?
  end
  test "email is invalid when format is incorrect" do
    band = FactoryGirl.build(:band, :email_wrong_format)
    refute band.valid?
  end
end
