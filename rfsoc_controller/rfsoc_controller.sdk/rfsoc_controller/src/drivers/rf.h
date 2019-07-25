/*
 * rf.h
 *
 *  Created on: Jun 26, 2019
 *      Author: Marandi Group B241
 */

#ifndef SRC_DRIVERS_RF_H_
#define SRC_DRIVERS_RF_H_


#include "xrfdc.h"
#include "mb_interface.h"
#include "xparameters.h"


XRFdc RFdcInst;      /* RFdc driver instance */



/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define RFDC_DEVICE_ID 	XPAR_XRFDC_0_DEVICE_ID
#ifndef __BAREMETAL__
#define BUS_NAME        "platform"
#define RFDC_DEV_NAME    "a0000000.usp_rf_data_converter"
#endif

u8* waveform_buffer;


void rf_wave_test();
void write_sample_stream(u16* samples, u16 length, u8 channel);
int CompareFabricRate(u32 SetFabricRate, u32 GetFabricRate);
void gpio_init();
void rf_pulse_test();
void rf_sine_test();
void rf_ext_trigger_test();
void rf_init();
void rf_repeat_test();
u32 rf_read_stream(u8 stream_num);


//Core defines
#define TRIGGER_CONTINUOUS 0x00
#define TRIGGER_CYCLES 0x01
#define YES 0x00
#define NO 0x01
#define NUM_CHANNELS 8
#define ON 0x01
#define OFF 0x00
#define ADC_BUFFER_DEPTH 65536
#define WAVEFORM_BUFFER_SIZE (4096 * 32)
//Core functions
void rf_load_bitstream(u8* stream, u32 length, u8 channel);
void rf_set_repeat_cycles(u8 channel, u32 cycles);
void rf_flush_buffer();
void rf_set_trigger_mode(u8 mode);
void rf_set_loopback(u8 option);
void rf_set_trigger(u8 option);
void rf_trigger();
void rf_set_locking_waveform(u8 channel, u8* stream);
void rf_set_locking_select(u8* bytes);
void rf_set_zero_delay(u8 channel, u32 value);
void rf_set_pre_waveform(u8 channel, u8* stream);
void rf_read_adc_buffer(u8* buffer, u32 num_samples);
void rf_set_adc_cycles(u32 cycles);
u32 rf_get_last_adc_cycles();
void rf_flush_adc_buffer();


#endif /* SRC_DRIVERS_RF_H_ */
