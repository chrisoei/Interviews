require 'spec_helper'

describe Question do
  before :each do
    @attr = {
      :name => "Example Question Name",
      :question => "Example Question"
    }
  end
  
  it 'should require a name' do
    @attr[:name] = ''
    @question = Question.create(@attr)
    @question.should_not be_valid
  end
  
  it 'should require a question' do
    @attr[:question] = ''
    @question = Question.create(@attr)
    @question.should_not be_valid
  end
  
  it 'should create given valid attributes' do
      @question = Question.create(@attr)
      @question.should be_valid
    end
end
