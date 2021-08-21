#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
//#include "klee/klee.h"

#define listSize 100000
//extern int rows, cols;
int is_init = 0;
long long exec_counter[listSize];
int inputArg2, inputArg4, inputArg6, inputArg8;
char inputArg1[5], inputArg3[5], inputArg5[5], inputArg7[5];
long max_llfi_index = 0;


void calculateAndDumpResult()
{
	printf("<<<<< %s called >>>>>\n", __func__);
	FILE *f;
	// FILE *f = fopen("index_counter.txt", "w");

	long i ;
	


	char file_buffer[100];
        sprintf(file_buffer, "exec-count/--x-%d--y-%d--z-%d--np-%d.txt",inputArg2,  inputArg4, inputArg6, inputArg8);
        f = fopen(file_buffer, "w");
	fclose(f);
	f = fopen(file_buffer, "a");
       
	
	
        for (i = 1; i <= max_llfi_index; i++) {
		long fi_index = i;
		fprintf(f,"%ld:%lld\n", fi_index,  exec_counter[fi_index]);
		
	}

	//fprintf(ff, "%.2lf\n", 100.0 * (executed_fi_index_count / max_llfi_index));
       
	fclose(f);	
	//fclose(ff);


}


void calculateExecCount(long llfi_index){

	if (is_init == 0){
		
		long i;
		max_llfi_index = 0;
		for (i = 0; i < listSize; i++){
			exec_counter[i] = 0;
		
		}



		/**** this file contains llfi_index to basicblock_id mapping ***/
		FILE *f = fopen("Input/fi_index_bb_mapping.txt", "r");
		long llfi_index;
		int bb_id;
		while(fscanf(f, "%ld:%d", &llfi_index, &bb_id) != EOF){
			if(max_llfi_index < llfi_index) {
		                max_llfi_index = llfi_index;
        		}

		}
		
		fclose(f);

		
		
		f = fopen("Input/cur_input.txt", "r");
		
                fscanf(f, "%s %d %s %d %s %d %s %d", inputArg1, &inputArg2, inputArg3, &inputArg4, inputArg5, &inputArg6, inputArg7, &inputArg8);

                fclose(f);
		printf("=== %s %d %s %d %s %d %s %d ====\n", inputArg1, inputArg2, inputArg3, inputArg4, inputArg5, inputArg6, inputArg7, inputArg8);

		//max_llfi_index = 0;
	

		is_init = 1;
		
	}
	

	long long cur_count = exec_counter[llfi_index];
	exec_counter[llfi_index] = cur_count + 1;

 	        
	         
}                 
                  
                  
                  
                  
                 
                 
                 
              
