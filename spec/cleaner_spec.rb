require './lib/cleaner'

describe Cleaner do
  describe '#clear_map' do
    it "Sets a coloured array to all white('O')" do
      array = [["T", "T", "T"], ["T", "T", "T"], ["T", "T", "T"], ["T", "T", "T"]]
      array = Cleaner.clear_map(array)
      expect(array).to eq([["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]])
    end
  end
end
