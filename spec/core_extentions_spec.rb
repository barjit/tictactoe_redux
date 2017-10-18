# spec/core_extentions_spec.rb
require 'spec_helper'
require_relative '../lib/tictactoe_redux/core_extentions.rb'

RSpec.describe Array do
  context '#all_empty?' do
    it 'returns true if all items in the array are empty' do
      expect(['', '', ''].all_empty?).to be_truthy
    end

    it 'returns false if some of the Array elements are not empty' do
      expect(['', 1, '', Object.new, :a].all_empty?).to be_falsey
    end

    it 'returns true for a completely empty Array' do
      expect([].all_empty?).to be_truthy
    end
  end

  context '#all_same' do
    it 'returns true if all items in the array are the same' do
      expect(['A', 'A', 'A'].all_same?).to be_truthy
    end

    it 'returns false if not all items in the array are the same' do
      expect(['A', 'B', 'C'].all_same?).to be_falsey
      expect(['D', 3, true, Object.new].all_same?).to be_falsey
    end

    it 'returns true for a completely empty Array' do
      expect([].all_same?).to be_truthy
    end
  end

  context '#any_empty?' do
    it 'returns true if any elements of the array are empty' do
      expect(["A", "X", ""].any_empty?).to be_truthy
    end

    it 'returns false if no elements of the array are empty' do
      expect(['D', 3, Object.new].any_empty?).to be_falsey
    end

    it 'returns true if array is completely empty' do
      expect([].any_empty?).to be_truthy
    end
  end

  context '#none_empty?' do
    it 'returns true if none of the elements in the array are empty' do
      expect(["A", "A", "B"].none_empty?).to be_truthy
    end

    it 'returns false if some of the elements are not empty' do
      expect(["A", "", "B"].none_empty?).to be_falsey
    end

    it 'returns false if array is completely empty' do
      expect([].none_empty?).to be_falsey
    end
  end
end

# Also add a none_empty? method that returns true
# if none of the elements are empty and false otherwise
