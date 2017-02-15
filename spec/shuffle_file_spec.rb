require 'shuffle_file'
require 'fileutils'

shuffle_file('spec/shuffle_file_spec.rb')

describe 'shuffle_file' do

  it "creates a file with the correct name" do
    expect(File.file?('shuffle_file_spec-shuffled.rb')).to be true
  end

  it "shuffles the lines in the file" do
    expect(FileUtils.compare_file('spec/shuffle_file_spec.rb', 'shuffle_file_spec-shuffled.rb')).to be false
  end

  it "only contains lines that were in the original file" do
    sorted_orig = File.readlines('spec/shuffle_file_spec.rb').sort
    sorted_shuffled = File.readlines('shuffle_file_spec-shuffled.rb').sort

    expect(sorted_orig).to eq(sorted_shuffled)
  end
end
