class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject {described_class.new('Boris')} # described_class helps us avoid hard coding a particular class name so that if we need to change it in future we can do it conveniently
  let(:louis) {described_class.new('Louis')}

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end
