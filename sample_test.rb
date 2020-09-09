require 'minitest/autorun'
class SampleTest < Minitest::Test
  def test_sample
    # assert_equal 期待する結果, テスト対象となる値や式
    assert_equal 'RUBY', 'ruby'.upcase
    # assert 値が真ならパス
    assert true
    # refure 値が偽ならパス
    refute false
  end
end
