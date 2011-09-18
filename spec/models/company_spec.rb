require 'spec_helper'

describe Company do
  it 'should have a name' do
    @company = Company.create()
    @company.should_not be_valid
  end
  
  it 'should only require a name' do
    @company = Company.create(:name=>'foobar')
    @company.should be_valid
  end
  
  it 'should require a unique name' do
    Company.create(:name=>'foobar').save!
    Company.create(:name=>'foobar').should_not be_valid
  end
end
