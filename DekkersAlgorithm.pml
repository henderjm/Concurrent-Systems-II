// Program 5 - Dekkers algorithm
/* 
	Perfecto
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
    			if
    			:: (turn == 1);
    			:: (turn == 2) ->
    				pwant = false;
    				(turn == 1);
    				pwant = true;
    			fi;
    	od;
                count++;
                assert (count == 1);
                count--;
               	pwant = false;
               	turn = 2;
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
    		if
    		:: (turn == 2);
    		:: (turn == 1) ->
    			qwant = false;
    			(turn == 2);
    			qwant = true;
    		fi;
    	od;
        count++;
        assert (count == 1);		
        count--;
        qwant = false;
    	turn = 1;
    od;
    complete ++;
}