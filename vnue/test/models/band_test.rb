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
  #password validation tests
  test "password is invalid when length is less than eight characters" do
    band = FactoryGirl.build(:band, :password_too_short)
    refute band.valid?
  end
  test "password is invalid when confirmation is different" do
    band = FactoryGirl.build(:band, :password_confirm_diff)
    refute band.valid?
  end
  test "password is invalid when password is nil" do
    band = FactoryGirl.build(:band, :password_is_nil)
    refute band.valid?
  end
  test "password is invalid when password is blank" do
    band = FactoryGirl.build(:band, :password_is_blank)
    refute band.valid?
  end
end
