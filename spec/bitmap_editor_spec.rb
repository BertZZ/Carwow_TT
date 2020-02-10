require 'spec_helper'
require './lib/bitmap_editor'

describe BitmapEditor do
  it { is_expected.to be_a BitmapEditor }

  it 'is initialized with an empty array' do
    subject = BitmapEditor.new
    expect(subject.array).to be_a_kind_of(Array)
    expect(subject.array).to be_empty
  end
end
