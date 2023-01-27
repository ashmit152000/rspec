class ProgrammingLanguges
  attr_reader :name
  def initialize(name = 'Ruby')
    @name = name
  end

  RSpec.describe ProgrammingLanguges do
    let(:language) {ProgrammingLanguges.new('Python')}

    it 'should store the name of the language' do
      expect(language.name).to eq('Python')
    end

    context "with no argument" do
      let(:language){ProgrammingLanguges.new} #every example first checks in it's scope and then above. Therefore, the value of language changed in this Example even after defining it to be Python in the above score
      it 'should default to Ruby as the name' do
        expect(language.name).to eq('Ruby')
      end
    end

  end
end
