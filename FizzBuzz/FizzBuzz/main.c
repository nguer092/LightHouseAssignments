//
//  main.c
//  FizzBuzz
//
//  Created by Nicolas Guerrero on 8/13/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#include <stdio.h>

int main() {
    
    int i;
    char *fizz = "Fizz";
    char *buzz = "Buzz";
    char *fizzbuzz = "FizzBuzz";
    
    for (i = 1; i <= 100; i ++){
        
     if ((i % 5 == 0) && (i % 3 == 0)) {
            
            printf("%s\n", fizzbuzz);
            
        } else if ( (i % 3) == 0){
          
        printf("%s\n", fizz);
          
      } else if ( (i % 5) == 0) {
          
          printf("%s\n", buzz);
          
      }    else {
        
        printf("%d\n", i);
        
    }
    
    }
    
    return 0;
}
