require 'rails_helper'
require 'factories/publications'
RSpec.describe Publication, type: :model do

  before(:each) do
    @publication = FactoryBot.build(:publication)
  end
  
  

  it 'name should be present' do
    @publication.name = nil
    expect(@publication).to_not be_valid
  end 

  it 'email should be present' do
    @publication.email = nil
    expect(@publication).to_not be_valid
  end 

  it 'mobile number should be present' do
    @publication.mobile_number = nil
    expect(@publication).to_not be_valid
  end

  it 'mobile number length should be 10' do
    expect(@publication.mobile_number.length).to eq(10)
  end

  describe "Associations" do
    it { should have_many(:editions) }
    it { should have_many(:books) }
  end
end
