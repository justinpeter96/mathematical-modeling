transition<-function(prev_state){
  # current: is the current location on the map
  # at node U
  if(prev_state == 'U'){
    current_state <- sample(c("E", "E", "Y", "V"), 1)
  }
  else if(prev_state == 'V'){
    current_state <- sample(c("E", "E", "U", "Z"), 1)
  }
  else if(prev_state == 'Z'){
    current_state <- sample(c("P", "P", "Y", "V"), 1)
  }
  else if(prev_state == 'Y'){
    current_state <- sample(c("P", "Z", "U", "X"), 1)
  }
  else{
    # prev_state is X
    current_state <- sample(c("E","E","E","Y"), 1)
  }
  return(current_state)
}

##########
# Part (a)
##########
# start the simulation
num_of_p <- 0
num_of_E <- 0
sim2d <- function(state, Nsim){
  for (i in 1:Nsim){
    prev_state <- state
    
    while(prev_state!="E" && prev_state!="P"){
      prev_state <- transition(prev_state)
    }
    
    if(prev_state == "E"){
      num_of_E = num_of_E + 1
      # cat("prev_state", prev_state)
      # cat("num_of_E is", num_of_E)
    }else{
      num_of_p = num_of_p + 1
    }
  }
  ratio= num_of_E / (num_of_E + num_of_p)
  return(ratio)
}

sim2d(state="U", Nsim=100)
sim2d(state="V", Nsim=100)
sim2d(state="X", Nsim=100)
sim2d(state="Y", Nsim=100)
sim2d(state="Z", Nsim=100)

sim2d(state="U", Nsim=10000)
sim2d(state="V", Nsim=10000)
sim2d(state="X", Nsim=10000)
sim2d(state="Y", Nsim=10000)
sim2d(state="Z", Nsim=10000)
