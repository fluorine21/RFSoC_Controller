/*
 * cmd_handler.c
 *
 *  Created on: Jun 27, 2019
 *      Author: Marandi Group B241
 */
#include "cmd_handler.h"
#include "uart.h"
#include "rf.h"

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
	default:
		debug_print("Invalid command!");
	}
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
	debug_print("Performing sine test until new character received...");
	rf_sine_test();
	u8 cmd_buff[1] = {0};
	while(uart_cmd_available(cmd_buff) == 0);
	rf_flush_buffer();
	debug_print("Sine test ended");

}