// Program 4
/* 
 * Starvation example. Compile with DNP 
 */
int turn = 1, count = 0, complete = 0;
bool qwant = false, pwant = false;

active proctype p() {
    do
    ::  
    	pwant = true;
    	do
    	::  !qwant -> break;
    	::	qwant ->
    			pwant = false;
    			pwant = true;
    	od;
                count++;
                assert (count == 1);
                count--;
               	pwant = false;
    od;
    complete++;
}

active proctype q() {
	do
    ::  
    	qwant = true;
		do
    	:: !pwant -> break;
    	:: pwant ->
    		qwant = false;
    		qwant = true;
    	od;
        count++;
        assert (count == 1);		
        count--;
        qwant = false;
    
    od;
    complete ++;
}
