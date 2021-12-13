# Space Invaders 2.0 
A game where you can test your skills at destroying aliens!

## [Website:] (https://sites.google.com/stevens.edu/dsd-final/home)

## How to Run:
## Step 1: Create a new RTL project in Vivado Quick Start
* Create 6 source files (named TopModule, VGAPixelDriver, VideoMemory, debounce, leddec16, and ps2_keyboard) 
* Create 1 constraint file (named BoardMasterNexysA7) 
* Choose Nexys A7-100T board for the project
* Click design sources and copy the VHDL code from this GitHub into the corresponding files 

## Step 2: Run Synthesis

## Step 3: Run Implementation 

## Step 4: Generate Bitstream 
* Click 'Generate Bitstream'
* Click 'Open Hardware Manager' and click 'Open Target' then 'Auto Connect'
* Click 'Program Device' then xc7a100t_0 to download vga_top.bit to the Nexys A7 board

## Step 5: Enjoy the game!
