require File.join(File.dirname(__FILE__), 'string_calculator')

describe StringCalculator do
  context 'Addition' do
    it "Check addition with not string value" do
      expect {
        StringCalculator.new(1).add
      }.to raise_error('Only string value allowed.')
    end
  end
end
