require './lib/colourer'

describe Colourer do
  describe '#colour_cell' do
    it 'colours a specific cell of the bitmap' do
      array = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
      array = Colourer.colour_cell(array,'1','3','T')
      expect(array).to eq([["O", "O", "O"], ["O", "O", "O"], ["T", "O", "O"], ["O", "O", "O"]])
    end
  end

  describe '#colour_column' do
    it 'colours the whole column' do
      array = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
      array = Colourer.colour_column(array,'2','1','4','T')
      expect(array).to eq([["O", "T", "O"], ["O", "T", "O"], ["O", "T", "O"], ["O", "T", "O"]])
    end

    it 'colours the part of the column' do
      array = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
      array = Colourer.colour_column(array,'2','2','3','T')
      expect(array).to eq([["O", "O", "O"], ["O", "T", "O"], ["O", "T", "O"], ["O", "O", "O"]])
    end
  end

  describe '#colour_row' do
    it 'colours the whole row' do
      array = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
      array = Colourer.colour_row(array,'1','3','2','T')
      expect(array).to eq([["O", "O", "O"], ["T", "T", "T"], ["O", "O", "O"], ["O", "O", "O"]])
    end

    it 'colours the part of the row' do
      array = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
      array = Colourer.colour_row(array,'2','3','2','T')
      expect(array).to eq([["O", "O", "O"], ["O", "T", "T"], ["O", "O", "O"], ["O", "O", "O"]])
    end
  end
end
