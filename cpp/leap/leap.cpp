//
//  leap.cpp
//  
//
//  Created by Emerson Hsieh on 7/24/17.
//
//

#include "leap.h"
#define EXERCISM_RUN_ALL_TESTS

namespace leap{
    bool is_leap_year (int y){

        bool is_leap = false;
    
        if (y%400 == 0){
            is_leap = true;
        }
        else if (y%4 == 0 && y%100 != 0)
        {
            is_leap = true;
        }
        
        return is_leap;
    }
}
