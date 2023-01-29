RSpec.describe 'shorthand example' do
  subject {5}

  context "with classic context" do
    it "should equal 5" do
      expect(subject). to eq(5)
    end
  end

  context "with my oneliner" do
    it {is_expected.to eq(5)}  # is_expected works only for subject
  end
end
