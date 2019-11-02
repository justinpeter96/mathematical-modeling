moveforward <- function ( node ) {
  if ( node == 'x' ) {
    end <- sample ( c ( 'y' , 1 , 1 , 1 ), 1 )
  }
  
  if ( node == 'y' ) {
    end <- sample ( c ( 'x' , 'u' , 'z' , 0 ), 1 )
  }
  
  if ( node == 'z' ) {
    end <- sample ( c ( 'y' , 'v' , 0 , 0 ), 1 )
  }
  
  if ( node == 'u' ) {
    end <- sample ( c ( 1 , 1 , 'y' , 'v' ), 1 )
  }
  
  if ( node == 'v' ) {
    end <- sample ( c ( 1 , 1 , 'u' , 'z' ), 1 )
  }
  
  return ( end )
}

probs <- c ( 0 , 0 , 0 , 0 , 0 )

for ( place in 1 : 5 ){
  start <- c ( 'u' , 'v' , 'x' , 'y' , 'z' )[ place ]
  goods <- 0
  bads <- 0
  
  for ( i in 1 : 10000 ) {
    currentplace <- start
    while ( ! ( currentplace == '1' | currentplace == '0' )){
      currentplace <- moveforward ( currentplace )
    }
    
    if ( currentplace == '1' ){
      goods <- goods + 1
    } else {
      bads <- bads + 1
    }
  }
  
  probs [ place ] <- goods / ( goods + bads )
}

print ( probs )