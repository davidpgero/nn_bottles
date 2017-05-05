require "spec_helper"

RSpec.describe NnBottles::Client do
  let(:default_bottles) {99}

  describe '.new' do
    context 'with valid number' do
      it {expect(described_class.new).to be_truthy}
      it {expect(described_class.new.bottles).to eq(default_bottles)}
      it {expect(described_class.new(20).bottles).to eq(20)}
    end

    context 'with invalid data' do
      it {expect {described_class.new(nil)}.to raise_error(ArgumentError)}
      it {expect {described_class.new('')}.to raise_error(ArgumentError)}
      it {expect {described_class.new([])}.to raise_error(ArgumentError)}
    end

  end

  describe '#song' do
    subject {described_class.new}

    it {expect(subject.song.size).to eq 0}
    it {expect(subject.song.class.to_s).to eq('Array')}
  end

  describe '#sing' do
    it {expect(described_class.new.sing).to be_truthy}
  end

  context 'after the sing' do
    subject do
      client = described_class.new
      client.sing
      client.song
    end

    it {expect(subject).not_to be_nil}
    it {expect(subject[0]).to eq('99 bottles of beer on the wall, 99 bottles of beer.')}
    it {expect(subject[-1]).to eq("We've taken them down and passed them around; now we're drunk and passed out!")}
  end
end
