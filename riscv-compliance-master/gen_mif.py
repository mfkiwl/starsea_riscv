#!/usr/bin/python
import os
import sys
#filename = "work/I-ADD-01.elf.objcopy"
filename = sys.argv[1]#"work/I-AND-01.elf.objcopy"
outi = open("inst_data",'w')
outd = open("dram_data",'w')
has_d = 0
with open(filename) as f:
  lines = f.readlines()
  for line in lines:
    addr = line[3:7]
    num = line[1:3]
    if int(line[7:9],16) != 0:
      has_d = 1
    for i in range(0,int(num,16)/4):
#        print(line[9:13])
      if(has_d==0):
        outi.write(line[15+i*8:17+i*8])
        outi.write(line[13+i*8:15+i*8])
        outi.write(line[11+i*8:13+i*8])
        outi.write(line[9+i*8:11+i*8])
        outi.write('\n')
      else:
        outd.write(line[15+i*8:17+i*8])
        outd.write(line[13+i*8:15+i*8])
        outd.write(line[11+i*8:13+i*8])
        outd.write(line[9+i*8:11+i*8])
        outd.write('\n')


outi.close()
outd.close()


