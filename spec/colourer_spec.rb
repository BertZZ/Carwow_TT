require './lib/colourer'

describe Colourer do
  describe '#colour_cell' do
    it 'colours a specific cell of the bitmap' do
      array = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
      array = Colourer.colour_cell(array,1,3,'T')
      expect(array).to eq([["O", "O", "O"], ["O", "O", "O"], ["T", "O", "O"], ["O", "O", "O"]])
    end
  end
end
