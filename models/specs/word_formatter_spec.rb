require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../word_formatter')

class TestWordFormatter < MiniTest::Test

  def setup
    @input = "hello world"
  end

  def test_camel_case
    assert_equal("HelloWorld", WordFormatter.new(@input).camel_case)
  end
end