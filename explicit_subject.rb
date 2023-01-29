RSpec.describe Hash do
  subject(:bob) do # change the value of subject intially using this block
    {:a => 1, :b => 2}
  end

  it "has two value pairs" do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2) # can also use bob as subject's alias
  end
end
