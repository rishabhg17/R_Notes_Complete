

# rnorm creates a set of random numbers
# rm clears tha value of variable

rm(answer)
x<- rnorm(1)
if(x>1){
  answer<-"Greater than one"
}else{
  if(x>= -1){
    answer<-"Between -1 and 1"
  }else{
    answer<- "less than -1"
  }
}

#we can also use a simpler method rather than nesting like above

rm(answer)
x<- rnorm(1)
if(x>1){
  answer<-"Greater than one"
}else if(x>= -1){
    answer<-"Between -1 and 1"
}else{
    answer<- "less than -1"
}
