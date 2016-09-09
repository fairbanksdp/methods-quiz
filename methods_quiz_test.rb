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

  describe'icy_hot?'do
    it'should be true if one is icy and the other is hot'do
      icy_hot?(-1,101).must_equal(true)
      icy_hot?(101,-1).must_equal(true)
    end
    it'should be false if one is icy and the other is not hot'do
      icy_hot?(-1,100).must_equal(false)
      icy_hot?(100,-1).must_equal(false)
    end
    it'should be false if one is not icy and the other is hot'do
      icy_hot?(0,101).must_equal(false)
      icy_hot?(101,0).must_equal(false)
    end
    it'should be false if one is not icy and the other is not hot'do
      icy_hot?(0,100).must_equal(false)
      icy_hot?(100,0).must_equal(false)
    end

    describe'closer_to'do
      it'should return 0 if the 2 guses are the same distance from the target'do
        closer_to(4,2,2).must_equal(0)
        closer_to(4,6,2).must_equal(0)
      end
      it'should return the first guses if it is closer to the target'do
        closer_to(4,3,2).must_equal(3)
        closer_to(4,5,2).must_equal(5)
      end
      it'should return the second guses if it is closer to the target'do
        closer_to(4,7,6).must_equal(6)
        closer_to(4,0,2).must_equal(2)
      end
    end

  end

end
