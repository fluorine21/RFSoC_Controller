/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xuartlite.h"
#include "xparameters.h"
#include "xiomodule.h"
#include "xstatus.h"
#include <sleep.h>

#define UARTLITE_DEVICE_ID	XPAR_UARTLITE_0_DEVICE_ID

void uart_interrupt_handler(XUartLite *InstancePtr);
void debug_print(u8* str);
int UartLitePolledExample(u16 DeviceId);

u8 rec_buff[1];

XUartLite UartLite;		/* Instance of the UartLite Device */
XIOModule gpo;

int enable_uart_interrupts(u16 DeviceId);


int main()
{

	//u32 data;
	int Status;
	init_platform();
	//if(enable_uart_interrupts(UARTLITE_DEVICE_ID) == XST_FAILURE){
	//	debug_print("Hardware test failed!\r\n");
	//	cleanup_platform();
	//	return 0;
	//}
	//else{
	//debug_print("Hardware test passed!\r\n");
	//}
	//debug_print("Board is online\r\n");


	//data = XIOModule_Initialize(&gpo, XPAR_IOMODULE_0_DEVICE_ID);
	//data = XIOModule_Start(&gpo);

	Status = UartLitePolledExample(UARTLITE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Uartlite polled Example Failed\r\n");
		//return XST_FAILURE;
	}
	else{
		xil_printf("Successfully ran Uartlite polled Example\r\n");
	}
	//return XST_SUCCESS;
	while(1){
		u8* buff = "Hello sand!\r\n";
		xil_printf("Successfully ran Uartlite polled Example\r\n");
		print("hello anyone?");
		XUartLite_Send(&UartLite, buff, 13);
		usleep(500000);
	}

	cleanup_platform();
	return 0;
}

int enable_uart_interrupts(u16 DeviceId){
	int Status;
	/*
	 * Initialize the UartLite driver so that it is ready to use.
	 */
	Status = XUartLite_Initialize(&UartLite, DeviceId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XUartLite_SelfTest(&UartLite);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//enable uart interrupts and tie them to our callback function
	//XUartLite_EnableInterrupt(&UartLite);
	//XUartLite_SetRecvHandler(&UartLite, (XUartLite_Handler)uart_interrupt_handler, 0);

	return XST_SUCCESS;

}

void uart_interrupt_handler(XUartLite *InstancePtr){

	u8* rec_char = rec_buff[0];
	u8 str_buff[100];
	sprintf(str_buff, "Received character: %c", rec_char);
	debug_print(str_buff);
	//Rearm the interrupt
	XUartLite_Recv(&UartLite, rec_buff, 1);
}

void debug_print(u8* str){

	//Send the string
	XUartLite_Send(&UartLite, str, strlen(str));
	//Wait until the string is sent
	while(XUartLite_IsSending(&UartLite));
}


int UartLitePolledExample(u16 DeviceId)
{
	int Status;
	unsigned int SentCount;
	unsigned int ReceivedCount = 0;
	int Index;

	/*
	 * Initialize the UartLite driver so that it is ready to use.
	 */
	Status = XUartLite_Initialize(&UartLite, DeviceId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XUartLite_SelfTest(&UartLite);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}


