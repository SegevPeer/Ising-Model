function val= modi(num,div)
val=num;
while(val<=0)
    val=val+div;
end
while(val>div)
    val=val-div;
end
