## bitboards  

- memomry compaction 
- bitwise operations 
- 12 bitboard, one for each kind of pieces and color 
	- 6 white 
	- 6 black 

-> First bit
	- first turned on bit from right
-> Last bit  
	- first turned on bit from left

### LookUp tables
 
-> Clear Rank
	- set a specific rank from 1:8 to 0 
-> Mask Rank 
	- set a specific rank from 1:8 to 1

-> Clear File
	- set a specific file from 1:8 to 0
-> Mask File	
	- set a specific file from 1:8 to 1

-> piece lookup table 
	- for piece movement  


