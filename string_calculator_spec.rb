require File.join(File.dirname(__FILE__), 'string_calculator')

describe StringCalculator do
  context 'Addition' do
    it "Check addition with not string value" do
      expect {
        StringCalculator.new(1).add
      }.to raise_error('Only string value allowed.')
    end

    it "Check addition with empty string" do
      response = StringCalculator.new("").add
      expect(response).to eq 0
    end

    it "Check addition with one number" do
      response = StringCalculator.new("1").add
      expect(response).to eq 1
    end

    it "Check addition with multiple number with comma separate" do
      response = StringCalculator.new("1,2,3").add
      expect(response).to eq 6
    end

    it "Check negative number not allow" do
      expect {
        StringCalculator.new("-1,2,3").add
      }.to raise_error('Cannot accept negatives.')
    end

    it "Check addition with number and new line" do
      response = StringCalculator.new("1\n2,3").add
      expect(response).to eq 6
    end

    it "Check addition with different delimeter" do
      response = StringCalculator.new("//;\n1;2").add
      expect(response).to eq 3
    end
  end
end