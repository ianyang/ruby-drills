require './ruby_methods.rb'

t = Tester.new()
t.number = 1000
t.phone = 4156466565
t.array = ["bread","ham","cheese","coke"]

t.convert_to_ordinal
t.convert_to_phone_number
t.convert_to_currency
t.convert_to_euros
t.convert_to_phrase


