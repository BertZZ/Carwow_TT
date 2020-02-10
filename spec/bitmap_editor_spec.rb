require 'spec_helper'
require './lib/bitmap_editor'

describe BitmapEditor do
  subject = described_class.new

  it 'is initialized with an empty array' do
    subject = BitmapEditor.new
    expect(subject.array).to be_a_kind_of(Array)
    expect(subject.array).to be_empty
  end

  describe '#run' do
    it 'creates an array of 5 rows and 6 columns when given an input I56' do
      subject.run('create_array_test.txt')
      expect(subject.array).to eq([["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"]])
    end
  end
end
