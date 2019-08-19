/*
 * cmd_handler.h
 *
 *  Created on: Jun 27, 2019
 *      Author: Marandi Group B241
 */

#ifndef SRC_DRIVERS_CMD_HANDLER_H_
#define SRC_DRIVERS_CMD_HANDLER_H_


//Test case defines
#define PULSE_TEST '0'
#define SINE_TEST '1'
#define EXT_TRIGGER_TEST '2'
#define FLUSH_BUFFER '3'
#define REPEAT_TEST '4'
#define TRIGGER_DETECT_TEST '6'

//LED defines
#define LED_DELAY 50000

//Python command defines
#define PING_BOARD 0x00
#define RF_LOAD_WAVEFORM 0x01
#define RF_TRIGGER 0x02
#define RF_SET_TRIGGER_MODE 0x03
#define RF_FLUSH_BUFFER 0x04
#define RF_SET_LOOPBACK 0x05
#define RF_SET_TRIGGER 0x07
#define RF_SET_LOCKING_SELECT 0x09
#define RF_SET_ADC_CYCLES 0x10
#define RF_READ_ADC 0x11
#define RF_FLUSH_ADC 0x12
#define RF_SET_ADC_SHIFT 0x13


//Python commands
void cmd_set_repeat_cycles();
void cmd_load_waveform();
void cmd_set_trigger_mode();
void cmd_set_loopback();
void cmd_set_locking_waveform();
void cmd_set_locking_select();
void cmd_set_trigger();
void cmd_set_zero_delay();
void cmd_set_adc_cycles();
void cmd_read_adc();
void cmd_set_adc_shift();

//Test case commands
void cmd_pulse_test();
void cmd_sine_test();
void handle_cmd();
void cmd_ext_trigger_test();
void cmd_led_test();
void cmd_repeat_test();
void cmd_trigger_detect_test();




#endif /* SRC_DRIVERS_CMD_HANDLER_H_ */
