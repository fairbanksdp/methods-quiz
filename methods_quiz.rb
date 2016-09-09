	
# TODO - write has_teen?
def has_teen?(a,b,c)
  a>12&&a<20||b>12&&b<20||c>12&&c<20
end
# TODO - write not_string
def not_string(str)
  if str.slice(0..2)!='not'
    str='not'+str
  end
  str
end
# TODO - write icy_hot?
def icy_hot?(temp1,temp2)
  (temp1<0&&temp2>100)||(temp1>100&&temp2<0)
end
# TODO - write closer_to
def closer_to(target,guess1,guess2)
  if (target-guess1)<0
    d1=-(target-guess1)
  else
    d1=(target-guess1)
  end 
  if (target-guess2)<0
    d2=-(target-guess2)
  else
    d2=(target-guess2)
  end 
  if d1==d2
    return 0
  elsif d1<d2
    return guess1
  end
  guess2
end
# TODO - write two_as_one?
def two_as_one?(a,b,c)
  a+b==c||a+c==b||b+c==a
end
# TODO - write pig_latinify
def word_split(str)
  letterCount=str.index(' ')
  if letterCount!=nil
    word_

def pig_latinify(str)
  str=str.downcase.chop
  
  if str.slice(0)=='a'||str.slice(0)=='e'||str.slice(0)=='i'||str.slice(0)=='o'||str.slice(0)=='u'||str.slice(0)=='y'
    return str+'way'
  end
  str.slice(1..str.length)+str.slice(0)+'ay'
end 

#tutnese 
