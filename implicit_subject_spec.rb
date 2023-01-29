RSpec.describe Hash do
  it "should start off empty" do
    p subject # subject can be used for classes, it is Hash in this case
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    expect(subject.length).to eq(1)
  end

  it "is isolated between different examples" do
    expect(subject.length).to eq(0)
  end
end



