#include <stdio.h>
#include "spam.h"


void order_spam(int tons){
    int s = 0;
    int i;
    for(i=0;i<tons;i++){
        s += i;
    }
    printf("%d", s);
}