#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
//#include "klee/klee.h"

#define listSize 10000
//extern int rows, cols;
int is_init = 0;
long long exec_counter[listSize];
char inputArg1[7], inputArg3[7], inputArg4[10], inputArg5[7], inputArg7[7]; 
int inputArg2, inputArg6, inputArg8;
long max_llfi_index = 0;


void calculateAndDumpResult()
{
	printf("<<<< %s called >>>>>> \n", __func__);
	FILE *f;
	// FILE *f = fopen("index_counter.txt", "w");

	long i ;
	

	
	char file_buffer[100];
        sprintf(file_buffer, "exec-count/-t_%d_-s_%s_-g_%d_-l_%d.txt", inputArg2,  inputArg4, inputArg6, inputArg8);
        f = fopen(file_buffer, "w");
	fclose(f);
	f = fopen(file_buffer, "a");
       

	
        for (i = 1; i <= max_llfi_index; i++) {
		long fi_index = i;
		fprintf(f,"%ld:%lld\n", fi_index,  exec_counter[fi_index]);
	}
         
       
	fclose(f);	


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
		
                fscanf(f, "%s %d %s %s %s %d %s %d", inputArg1, &inputArg2, inputArg3, inputArg4, inputArg5, 
			&inputArg6, inputArg7, &inputArg8);

                fclose(f);
		printf("max llfi index %ld\n", max_llfi_index);
		printf("==Arg1: %s, Arg2: %d, Arg3 %s, Arg4 %s, Arg5 %s, Arg6 %d, Arg7 %s, Arg8: %d\n",inputArg1, inputArg2, inputArg3, inputArg4, inputArg5, inputArg6, inputArg7, inputArg8);

		//max_llfi_index = 0;
	

		is_init = 1;
		
	}
	
	//printf("fi_index %ld\n", llfi_index);
	long long cur_count = exec_counter[llfi_index];
	exec_counter[llfi_index] = cur_count + 1;
   
	        
	         
}                 
                  
                  
                  
                  
                 
                 
                 
              
