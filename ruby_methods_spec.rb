require 'rspec'
require './ruby_methods.rb'

describe Tester do

  subject do
    t = Tester.new()
    t.number = 1000
    t.phone = 4156466565
    t.array = ["bread","ham","cheese","coke"]
  end

  describe 'convert_to_ordinal' do
    it 'should output an ordinal representation of that integer' do
      subject.convert_to_ordinal.should == "1000th"
    end
  end

  describe 'convert_to_phone_number' do
    it 'should output a phone numbers' do
      subject.onvert_to_phone_number.should == "+1 (415) 646-66565"
    end
  end

  describe 'convert_to_currency' do
    it 'should output price in US dollars' do
      subject.convert_to_currency.should == "$1,000"
    end
  end

  describe 'convert_to_euros' do
    it 'should output price euros' do
      subject.convert_to_euros == "770.0 EUR"
    end
  end

 describe 'convert_to_phrase' do
    it 'should output a string with the names of the items connected by commas' do
      subject.convert_to_phrase == "bread, ham, cheese, and coke"
    end
  end

end