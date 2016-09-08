require 'minitest/autorun'
require './methods_quiz'

# TODO - write tests here
describe'methods_quiz'do

  describe'has_teen?'do
    it'should be true if a is from 13 to 19'do
      has_teen?(13,2,20).must_equal(true)
      has_teen?(19,2,20).must_equal(true)
    end
    it'should be true if c is from 13 to 19'do
      has_teen?(43,2,13).must_equal(true)
      has_teen?(10,2,19).must_equal(true)
    end
    it'should be true if b is from 13 to 19'do
      has_teen?(30,13,20).must_equal(true)
      has_teen?(9,19,20).must_equal(true)
    end
    it'should be false if a, b and c are not in the range of 13 to 19'do
      has_teen?(30,1,20).must_equal(false)
      has_teen?(9,190,20).must_equal(false)
    end
  end
  
  describe'not_string'do
    it'should add not to the begining of a string if it is not there already'do
      not_string('asdf').must_equal('notasdf')
    end
    it'should not add not to the begining of a string if it is there already'do
      not_string('notmeh').must_equal('notmeh')
    end
  end

end
