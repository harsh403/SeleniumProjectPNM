require 'rspec'
require 'test/unit/assertions'
require 'test/unit'
include GenericHelper
include LoginHelper

describe 'Dashboard' do

  it 'should land on Main Dashboard on existing account login' do
    email = "htest111@abc.com"
    login(email)

  end
end