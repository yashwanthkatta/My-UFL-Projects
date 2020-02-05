
----------------------------Implementation and Comparison of Two Cache Prefetching Schemes-------------------------

TEAM MEMEBERS:

1. Yashwanth Katta 
2. Avinash Ayalasomayajula
3. Neel Kanjaria

-------------------------------------PROCEDURE TO FOLLOW :

--------HYBRID PREFETCHING

1) Compiling simplescalar files

File: Simplesim-3.0_hybrid
Command: make
Output:"My work is done here"

2)Compiling benchmarks

File: build/bin of simplescalarinstallation

a) For Telecomm_CRC32
Command: sslittle-na-sstrix-gcc -static ../../../telecomm/CRC32/crc_32.c -03 -o crc

b) For Network_Patricia
Command: sslittle-na-sstrix-gcc -static ../../../network/Patricia/patricia.c -03 -o pat

c) For Security_Sha
Command: sslittle-na-sstrix-gcc -static ../../../security/sha/sha.c -03 -o sha

3) Simulating Benchmarks

a) For Telecomm_CRC32
Command: ../simplesim-3.0/./sim-outorder -cache:il1 il1:1024:64:2:l:1 crc ../../../telecomm/adpcm/data/small.pcm

b) For Network_Patricia
Command: ../simplesim-3.0/./sim-outorder -cache:il1 il1:1024:64:2:l:1 crc ../../../network/patricia/small.udp

a) For Security_Sha
Command: ../simplesim-3.0/./sim-outorder -cache:il1 il1:1024:64:2:l:1 crc ../../../security/sha/input_small.asc


-------------------WRONG PATH PREFETCHING

1) Compiling simplescalar files

File: Simplesim-3.0_wrong_path
Command: make
Output:"My work is done here"

2)Compiling benchmarks

File: build/bin of simplescalarinstallation

a) For Telecomm_CRC32
Command: sslittle-na-sstrix-gcc -static ../../../telecomm/CRC32/crc_32.c -03 -o crc

b) For Network_Patricia
Command: sslittle-na-sstrix-gcc -static ../../../network/Patricia/patricia.c -03 -o pat

c) For Security_Sha
Command: sslittle-na-sstrix-gcc -static ../../../security/sha/sha.c -03 -o sha

3) Simulating Benchmarks

a) For Telecomm_CRC32
Command: ../simplesim-3.0/./sim-outorder -cache:il1 il1:1024:64:2:l:1 crc ../../../telecomm/adpcm/data/small.pcm

b) For Network_Patricia
Command: ../simplesim-3.0/./sim-outorder -cache:il1 il1:1024:64:2:l:1 crc ../../../network/patricia/small.udp

a) For Security_Sha
Command: ../simplesim-3.0/./sim-outorder -cache:il1 il1:1024:64:2:l:1 crc ../../../security/sha/input_small.asc
