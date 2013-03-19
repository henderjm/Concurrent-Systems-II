// Program 1

int turn = 1, count = 0, complete = 0;
bool qwant = false, pwant = true;

proctype counter(int cnt) {
	int c = cnt;
	assert (c == 1);
}

proctype p() {
    do
    ::  
    	(turn == 1) -> 
                // critical section
                count++;
                assert (count == 1);
                count--;
                turn = 2;
    od;
    complete++;
}

proctype q() {
	do
    ::  
    	(turn == 2) ->
                // critical section
                count++;
                assert (count == 1);		
                count--;
                turn = 1;
    od;
    complete ++;
}


init {
	run p();
	run q();
	printf("The value of complete is %d.\n",complete);
	assert(count == 0);
};