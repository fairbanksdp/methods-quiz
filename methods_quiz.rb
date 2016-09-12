#str=$stdin.gets
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

def vowel?(str)
  if str.slice(0)=='a'||str.slice(0)=='e'||str.slice(0)=='i'||str.slice(0)=='o'||str.slice(0)=='u'||str.slice(0)=='y'
    return str+'way'
  end
  str.slice(1..str.length)+str.slice(0)+'ay'
end

def pig_latinify(str)
  n=0 
  str=str.downcase.chomp
  if str.index(' ')!=nil
    while str.index(' ')!=nil
      if n==0
        newStr = vowel?(str.slice(0..str.index(' ')-1))
        str.replace str.slice(str.index(' ')+1..str.length)
        n=1
      else
        newStr=newStr + ' ' + vowel?(str.slice(0..str.index(' ')-1))
        str.replace str.slice(str.index(' ')+1..str.length)
      end
    end
    return newStr= newStr + ' ' + vowel?(str.slice(0..str.length))
  end
  vowel?(str)
end 
#puts "#{pig_latinify(str)}"

#tutnese 
def splitWord(str)
  string=Array.new
  n=str.length
  while str.length>0
    string[n-str.length]=str.slice(0)
    str=str.slice(1..str.length)
  end
  string
end
def tutnese(str)
  str=str.downcase.chomp
  ary=splitWord(str) 
  n=0
  endStr=nil
  while ary[n]!=nil
    if ary[n]=='a'||ary[n]=='e'||ary[n]=='i'||ary[n]=='o'||ary[n]=='u'
      if ary[n+1]==ary[n]
        endStr=endStr+'squat'
        n=n+1
      end
        endStr=endStr+ary[n]
    elsif ary[n+1]==ary[n]
      endStr=endStr+'squa'
      n=n+1
    end
    if ary[n]=='b'
      endStr=endStr+'Bub'
    end
    if ary[n]=='c'
      endStr=endStr+'Cash'
    end
    if ary[n]=='d'
      endStr=endStr+'Dud'
    end
    if ary[n]=='f'
      endStr=endStr+'Fuf'
    end
    if ary[n]=='g'
      endStr=endStr+'Gug'
    end
    if ary[n]=='h'
      endStr=endStr+'Hash'
    end
    if ary[n]=='j'
      endStr=endStr+'Jay'
    end
    if ary[n]=='k'
      endStr=endStr+'Kuck'
    end
    if ary[n]=='l'
      endStr=endStr+'Lul'
    end
    if ary[n]=='m'
      endStr=endStr+'Mum'
    end
    if ary[n]=='n'
      endStr=endStr+'Nun'
    end
    if ary[n]=='p'
      endStr=endStr+'Pub'
    end
    if ary[n]=='q'
      endStr=endStr+'Quack'
    end
    if ary[n]=='r'
      endStr=endStr+'Rug'
    end
    if ary[n]=='s'
      endStr=endStr+'Sus'
    end
    if ary[n]=='t'
      endStr=endStr+'Tut'
    end
    if ary[n]=='v'
      endStr=endStr+'Vuv'
    end
    if ary[n]=='w'
      endStr=endStr+'Wack'
    end
    if ary[n]=='x'
      endStr=endStr+'Ex'
    end
    if ary[n]=='y'
      endStr=endStr+'Yub'
    end
    if ary[n]=='z'
      endStr=endStr+'Zub'
    end
    n=n+1
  end

end

