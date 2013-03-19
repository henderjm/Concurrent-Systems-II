// Program 3

int turn = 1, count = 0, complete = 0;
bool qwant = false, pwant = false;

active proctype p() {
    do
    ::  
    	pwant = true;
    	!qwant;
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
    	!pwant;
                count++;
                assert (count == 1);		
                count--;
                qwant = false;
    od;
    complete ++;
}