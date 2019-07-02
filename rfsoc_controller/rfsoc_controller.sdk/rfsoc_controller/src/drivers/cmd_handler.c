/*
 * cmd_handler.c
 *
 *  Created on: Jun 27, 2019
 *      Author: Marandi Group B241
 */
#include "cmd_handler.h"
#include "uart.h"
#include "rf.h"
#include "gpio.h"

//waits for and handles a single command
void handle_cmd()
{
	debug_print("Waiting for command...");
	u8 cmd_buff[1] = {0};
	//wait for a command to come in
	while(uart_cmd_available(cmd_buff) == 0);

	//Decode the command
	switch(cmd_buff[0])
	{
	case PULSE_TEST:
		cmd_pulse_test();
		break;
	case SINE_TEST:
		cmd_sine_test();
		break;
	case EXT_TRIGGER_TEST:
		cmd_ext_trigger_test();
		break;
	case FLUSH_BUFFER:
		cmd_flush_buffer_test();
		break;
	case REPEAT_TEST:
		cmd_repeat_test();
		break;
	default:
		debug_print("Invalid command!");
	}
}


void cmd_repeat_test()
{
	debug_print("Running repeat test with 5 cycles");
	rf_repeat_test();
	debug_print("Test finished");
}

void cmd_pulse_test()
{
	u8 cmd_buff[1] = {0};
	debug_print("Performing pulse test with 1 second delay until new character received...");
	while(uart_cmd_available(cmd_buff) == 0)
	{
		rf_pulse_test();
		usleep(1000000);
	}
	debug_print("Pulse test ended");
}

void cmd_sine_test()
{
	debug_print("Performing sine test for 10 seconds...");
	rf_sine_test();
	//u8 cmd_buff[1] = {0};
	//while(uart_cmd_available(cmd_buff) == 0);
	//rf_flush_buffer();
	debug_print("Sine test ended");

}

void cmd_ext_trigger_test()
{
	debug_print("Loading 5 pulses into fifos...");
	rf_ext_trigger_test();
	debug_print("Pulses loaded");

}

void cmd_flush_buffer_test()
{
	debug_print("Flushing buffer for all channels");
	rf_flush_buffer();
	debug_print("Flush finished...");
}
