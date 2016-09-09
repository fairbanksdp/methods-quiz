	
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

# TODO - write two_as_one?

# TODO - write pig_latinify
