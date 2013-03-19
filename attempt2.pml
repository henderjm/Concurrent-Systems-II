// Program 2

/*
Is a lot less stable than attempt 1
*/

int turn = 1, count = 0, complete = 0;
bool qwant = false, pwant = true;

proctype counter(int cnt) {
	int c = cnt;
	assert (c == 1);
}

proctype p() {
    do
    ::  
    	qwant == false;
    			
                // critical section
                pwant = true;
                count++;
                assert (count == 1);
                count--;
               	pwant = false;
    od;
    complete++;
}

proctype q() {
	do
    ::  
    	pwant == false;
                // critical section
                qwant = true;
                count++;
                assert (count == 1);		
                count--;
                qwant = false;
    od;
    complete ++;
}


init {
	run p();
	run q();
	printf("The value of complete is %d.\n",complete);
	assert(count == 0);
};