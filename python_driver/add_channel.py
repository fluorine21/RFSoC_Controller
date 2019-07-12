# -*- coding: utf-8 -*-
"""
Created on Thu Jul 11 17:36:26 2019

@author: Marandi Group Vivado
"""
import sys
import os.path
import init_board_int as ib
import RFSoC_Board as rf

#List of arguments
#1 channel number between 1 and 16
#2 waveform filename
#3 waveform period in nanoseconds, will be rounded to the nearest 4 nanoseconds
#4 waveform phase, can be a float but will be rounded to nearest quarter nanosecond
#5 waveform amplitude multiplication factor, must be between 0 and 1
#6 number of cycles to playback the waveform
#7 delay before experiment in nanoseconds, will be rounded to the nearest 4 nanoseconds
#8 is locking channel? Must be either 0 or 1
#9 locking waveform amplitude factor, must be between 0 and 1
#10 locking phase in nanoseconds, can be a float but will be rounded to nearest quarter nanosecond
#11 is the locking file name

#get all of our variables first
channel_number = int(sys.argv[1])
if channel_number > 16 or channel_number < 1:
    print("Error, invalid channel number: " + str(channel_number) + ", valid channel numbers are between 1 and 16.")
    sys.exit()
    
channel_number = channel_number - 1

waveform_filename = sys.argv[2]
if not os.path.isfile(waveform_filename):
    print("Error, cannot find waveform file: " + waveform_filename)
    sys.exit()

waveform_period = int(sys.argv[3])#in nanoseconds, must be int

waveform_phase = float(sys.argv[4]) #in nanoseconds, can be negative and a float

amp_mul_factor = float(sys.argv[5]) #between 0 and 1
if(amp_mul_factor < 0 or amp_mul_factor > 1):
    print("Error, waveform amplitude multiplication factor must be between 0 and 1")
    sys.exit()

num_cycles = int(sys.argv[6])

zero_delay = int(sys.argv[7]) #in nanoseconds, must be positive
if(zero_delay < 0):
    print("Error, delay before experiment must be positive or 0")
    sys.exit()


#####IF we're the locking channel###########

is_locking = int(sys.argv[8]) #0 or 1

locking_amp_factor = 0
locking_phase = 0
locking_filename = "dummy_locking_file.txt"

if(is_locking):

    locking_amp_factor = int(sys.argv[9]) #between 0 and 1
    if(locking_amp_factor < 0 or locking_amp_factor > 1):
        print("Error, locking amplitude multiplication factor must be between 0 and 1")
        sys.exit()
    
    locking_phase = float(sys.argv[10]) #in nanoseconds, can be negative and a float
    
    
    locking_filename = sys.argv[11]
    if not os.path.isfile(locking_filename):
        print("Error, cannot find locking waveform file: " + locking_filename)
        sys.exit()


board = ib.load_board()

if(board == None):
    print("Error, unable to load board.")
    sys.exit()
    
#If the board is valid, add the channelw
waveform_file = rf.WaveFile(waveform_filename, (round(waveform_period/4) * rf.DAC_WORD_PERIOD), round(waveform_phase * 4), amp_mul_factor)
locking_file = rf.WaveFile(locking_filename, rf.DAC_WORD_PERIOD, round(locking_phase * 4), locking_amp_factor)

c = rf.Channel(channel_number, round(zero_delay/4), round(num_cycles * round(waveform_period/4)), locking_file, waveform_file, is_locking)


board.add_channel(c)

if(ib.save_board(board)):
    print("Error while saving board to disk")
else:
    print("Successfully added channel #" + str(channel_number+1))

