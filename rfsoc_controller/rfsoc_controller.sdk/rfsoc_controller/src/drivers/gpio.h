/*
 * gpio.h
 *
 *  Created on: Jun 28, 2019
 *      Author: Marandi Group B241
 */

#ifndef SRC_DRIVERS_GPIO_H_
#define SRC_DRIVERS_GPIO_H_

#include "xparameters.h"
#include "xbasic_types.h"
#include "xgpio.h"

#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID

#define TRIGGER_OVERRIDE_PIN 0
#define FIFO_TREADY_PIN 1
#define FIFO_MUX_PIN 2
#define BUFFER_FLUSH_PIN 5

#define RF_BANK 2
#define COUNT_BANK 1

XGpio Gpio; /* The Instance of the GPIO Driver */


void gpio_set_pin(u8 bank, u8 bit, u8 value);
void gpio_set_bank(u8 bank, u8 value);
void gpio_write_repeat_cycles(u32 cycles);


#endif /* SRC_DRIVERS_GPIO_H_ */
