require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = FathomParseLogScope::DomainReview.new(signal: 50, slack: 28, drag: 9, confidence: 51)
    assert_equal 152, FathomParseLogScope.domain_review_score(item)
    assert_equal "ship", FathomParseLogScope.domain_review_lane(item)
  end
end
