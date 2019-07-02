/*
 * cmd_handler.h
 *
 *  Created on: Jun 27, 2019
 *      Author: Marandi Group B241
 */

#ifndef SRC_DRIVERS_CMD_HANDLER_H_
#define SRC_DRIVERS_CMD_HANDLER_H_


#define PULSE_TEST '0'
#define SINE_TEST '1'
#define EXT_TRIGGER_TEST '2'
#define FLUSH_BUFFER '3'
#define REPEAT_TEST '4'


void cmd_pulse_test();
void cmd_sine_test();
void handle_cmd();
void cmd_ext_trigger_test();
void cmd_led_test();
void cmd_repeat_test();


#endif /* SRC_DRIVERS_CMD_HANDLER_H_ */
