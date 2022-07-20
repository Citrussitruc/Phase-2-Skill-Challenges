require 'process_feedback'

RSpec.describe 'Check Todo' do
  
  it "returns false when given Hello World" do
    result = check_todo('Hello World')
    expect(result).to eq false
  end

  it "returns true when given #TODO Hello World" do
    result = check_todo('#TODO Hello World')
    expect(result).to eq true
  end
  
  it "returns true when given Hello #TODO World" do
    result = check_todo('Hello #TODO World')
    expect(result).to eq true
  end

  it "returns false when given a blank string" do
    result = check_todo('')
    expect(result).to eq false
  end
  
  it "returns true when given # TODO" do
    result = check_todo('# TODO')
    expect(result).to eq true
  end

  it "returns true when given #ToDo" do
    result = check_todo('#ToDo')
    expect(result).to eq true
  end

  it "returns true when given #todo" do
    result = check_todo('#todo')
    expect(result).to eq true
  end

  it "returns false when given #to do" do
    result = check_todo('#to do')
    expect(result).to eq false
  end

  it "raises error when passed an integer" do
    expect{check_todo(8)}.to raise_error NoMethodError
  end
end