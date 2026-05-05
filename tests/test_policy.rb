require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = FathomParseLogScope::Signal.new(demand: 91, capacity: 71, latency: 24, risk: 5, weight: 12)
    assert_equal 204, FathomParseLogScope.score(signal_case_1)
    assert_equal 'accept', FathomParseLogScope.classify(signal_case_1)
    signal_case_2 = FathomParseLogScope::Signal.new(demand: 64, capacity: 96, latency: 23, risk: 10, weight: 5)
    assert_equal 138, FathomParseLogScope.score(signal_case_2)
    assert_equal 'review', FathomParseLogScope.classify(signal_case_2)
    signal_case_3 = FathomParseLogScope::Signal.new(demand: 99, capacity: 105, latency: 8, risk: 22, weight: 11)
    assert_equal 199, FathomParseLogScope.score(signal_case_3)
    assert_equal 'accept', FathomParseLogScope.classify(signal_case_3)
  end
end
