require 'test_sentence'

RSpec.describe "test_sentance" do
  it "returns false when given an empty string" do
    result = test_sentence('')
    expect(result).to eq false
  end
  it "returns true when the first char is a capital and the end char is one of ." do
    result = test_sentence('Sentence.')
    expect(result).to eq true
  end
  it "returns true when the first char is a capital and the end char is one of !" do
    result = test_sentence('Sentence!')
    expect(result).to eq true
  end
  context "passing in an integer" do
    it "fails" do
      expect{ test_sentence(1) }.to raise_error "Please enter a string"
    end
  end 
  it "returns true when extra spaces are included" do
    result = test_sentence('Sentence?!?   ')
    expect(result).to eq true
  end
  it "returns false when grammatically incorrect sentence is passed" do
    result = test_sentence('result is a boolean that represents if the text is grammatically correct')
    expect(result).to eq false
  end  
  it "returns true when grammatically correct sentence is passed" do
    result = test_sentence('Result is a boolean that represents if the text is grammatically correct.')
    expect(result).to eq true
  end  
  it "returns false when passed @sentance." do
    result = test_sentence("@sentance.")
    expect(result).to eq false
  end
  it "returns false when passed sentence" do
    result = test_sentence('sentence')
    expect(result).to eq false
  end
  it "returns false when passed Sentence" do
    result = test_sentence('Sentence')
    expect(result).to eq false
  end
  it "returns false when passed sentence." do
    result = test_sentence('sentence.')
    expect(result).to eq false
  end
  it "returns false when passed sentence!" do
    result = test_sentence('sentence!')
    expect(result).to eq false
  end
  it "returns true when passed Sentence?" do
    result = test_sentence('Sentence?')
    expect(result).to eq true
  end
  it "returns true when passed Sentence?!?" do
    result = test_sentence('Sentence?!?')
    expect(result).to eq true
  end
end