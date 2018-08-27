require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'
require_relative '../lib/card'
require_relative '../lib/deck'



Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
