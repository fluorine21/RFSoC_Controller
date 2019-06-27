/*
 * rf.c
 *
 *  Created on: Jun 26, 2019
 *      Author: Marandi Group B241
 */

#include "rf.h"


void gpio_init()
{
	if (XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID) == XST_SUCCESS)
	{
		debug_print("GPIO init success!");
	}
	else
	{
		debug_print("GPIO init failed!");
	}

	//set channel 1 and 2 to be all outputs
	XGpio_SetDataDirection(&Gpio, 1, 0x00);
	XGpio_SetDataDirection(&Gpio, 2, 0x00);

	//assert valid and ready
	XGpio_DiscreteWrite(&Gpio, 2, 0x03);

	//turn LEDs on
	XGpio_DiscreteWrite(&Gpio, 1, 0xFF);
}

void rf_wave_test()
{

	u16 sine_wave[16] = {0x8000, 0xB0FC, 0xDA82, 0xF642, 0xFFFF, 0xF642, 0xDA82, 0xB0FC, 0x8000, 0x4F04, 0x257E, 0x9BE, 0x0, 0x9BE, 0x257E, 0x4F04};
	u16 t_wave[16] = {0x0, 0x2000, 0x4000, 0x6000, 0x8000, 0xA000, 0xC000, 0xE000, 0xC000, 0xA000, 0x8000, 0x6000, 0x4000, 0x2000, 0x0, 0x0};
	//volatile unsigned int *sine_wave = {0x10000, 0x161F8, 0x1B505, 0x1EC83, 0x20000, 0x1EC83, 0x1B505, 0x161F8, 0x10000, 0x9E08, 0x4AFB, 0x137D, 0x0, 0x137D, 0x4AFB, 0x9E08};
	u16 pulse[16] = {0x0, 0x7FFF, 0xFFFF, 0x7FFF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0};
	u16 zeros [16];

	u16 test_train[256];

	for(u16 i = 0; i <256; i++)
	{
		test_train[i] = i;
	}

	for(int i = 0; i < 16; i++)
	{
		t_wave[i] = t_wave[i] >> 1;
		sine_wave[i] = sine_wave[i] >> 1;
		pulse[i] = pulse[i] >> 1;
		zeros[i] = 0;
	}
	//turn off ready
	XGpio_DiscreteWrite(&Gpio, 2, 0x01);
	//write wave data
	write_sample_stream(zeros, 16);
	write_sample_stream(pulse, 16);
	write_sample_stream(pulse, 16);
	write_sample_stream(pulse, 16);
	write_sample_stream(zeros, 16);
	write_sample_stream(zeros, 16);
	write_sample_stream(zeros, 16);
	write_sample_stream(zeros, 16);
	//turn on ready
	XGpio_DiscreteWrite(&Gpio, 2, 0x03);
	usleep(1000000);
}


void write_sample_stream(u16* samples, u16 length)
{
#define sample_0 0
#define sample_1 1

	register int sample;
	volatile unsigned int word;



	for(int i = 0; i < length; i+=2)
	{
		word = (samples[i+sample_1] << 16) | (samples[i+sample_0]);
		sample = word;
		putfsl(sample,  0);
	}

}




/****************************************************************************/
/**
 *
 * This function runs a test on the RFSoC data converter device using the
 * driver APIs.
 * This function does the following tasks:
 *	- Initialize the RFdc device driver instance
 *	- Set the Decoder Mode.
 *	- Get the Decoder Mode
 *	- Compare Set and Get settings
 *
 * @param	RFdcDeviceId is the XPAR_<XRFDC_instance>_DEVICE_ID value
 *		from xparameters.h.
 *
 * @return
 *		- XRFDC_SUCCESS if the example has completed successfully.
 *		- XRFDC_FAILURE if the example has failed.
 *
 * @note   	None
 *
 ****************************************************************************/

void rf_init()
{


	debug_print("Running RF self test...");

	if(rf_self_test() == XRFDC_SUCCESS)
	{
		debug_print("Self test success!");
	}
	else
	{
		debug_print("Self test failed!");
	}

	debug_print("Checking data path...");

	if(XRFdc_IsDACDigitalPathEnabled(&RFdcInst, 0, 0))
	{
		debug_print("Data path enabled!");
	}
	else
	{
		debug_print("Data path not available!");
	}

	gpio_init();
}

int rf_self_test()
{
	u16 RFdcDeviceId = RFDC_DEVICE_ID;
	int Status;
	u16 Tile;
	u16 Block;
	XRFdc_Config *ConfigPtr;
	XRFdc *RFdcInstPtr = &RFdcInst;
	u32 SetFabricRate;
	u32 GetFabricRate;
#ifndef __BAREMETAL__
	struct metal_device *device;
	struct metal_io_region *io;
	int ret = 0;
#endif

	struct metal_init_params init_param = METAL_INIT_DEFAULTS;

	if (metal_init(&init_param)) {
		printf("ERROR: Failed to run metal initialization\n");
		return XRFDC_FAILURE;
	}

	/* Initialize the RFdc driver. */
	ConfigPtr = XRFdc_LookupConfig(RFdcDeviceId);
	if (ConfigPtr == NULL) {
		return XRFDC_FAILURE;
	}

	Status = XRFdc_CfgInitialize(RFdcInstPtr, ConfigPtr);
	if (Status != XRFDC_SUCCESS) {
		return XRFDC_FAILURE;
	}

#ifndef __BAREMETAL__
	ret = metal_device_open(BUS_NAME, RFDC_DEV_NAME, &device);
	if (ret) {
		printf("ERROR: Failed to open device a0000000.usp_rf_data_converter.\n");
		return XRFDC_FAILURE;
	}

	/* Map RFDC device IO region */
	io = metal_device_io_region(device, 0);
	if (!io) {
		printf("ERROR: Failed to map RFDC regio for %s.\n",
				device->name);
		return XRFDC_FAILURE;
	}
	RFdcInstPtr->device = device;
	RFdcInstPtr->io = io;
#endif

	SetFabricRate = 0x8;
	Tile = 0x0;
	for (Block = 0; Block <4; Block++) {
		if (XRFdc_IsDACBlockEnabled(RFdcInstPtr, Tile, Block)) {
			Status = XRFdc_SetFabWrVldWords(RFdcInstPtr, Tile, Block, SetFabricRate);
			if (Status != XRFDC_SUCCESS) {
				return XRFDC_FAILURE;
			}
			Status = XRFdc_GetFabWrVldWords(RFdcInstPtr, XRFDC_DAC_TILE,
					Tile, Block, &GetFabricRate);
			if (Status != XRFDC_SUCCESS) {
				return XRFDC_FAILURE;
			}
			Status = CompareFabricRate(SetFabricRate, GetFabricRate);
			if (Status != XRFDC_SUCCESS) {
				return XRFDC_FAILURE;
			}
		}
		SetFabricRate = 0x4;
		if (XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile, Block)) {
			if (RFdcInstPtr->ADC4GSPS == XRFDC_ADC_4GSPS) {
				if ((Block == 2) || (Block == 3))
					continue;
				else if (Block == 1) {
					if (XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile, 2) == 0)
						continue;
				}
			}
			Status = XRFdc_SetFabRdVldWords(RFdcInstPtr, Tile, Block, SetFabricRate);
			if (Status != XRFDC_SUCCESS) {
				return XRFDC_FAILURE;
			}
			Status = XRFdc_GetFabRdVldWords(RFdcInstPtr, XRFDC_ADC_TILE,
					Tile, Block, &GetFabricRate);
			if (Status != XRFDC_SUCCESS) {
				return XRFDC_FAILURE;
			}
			Status = CompareFabricRate(SetFabricRate, GetFabricRate);
			if (Status != XRFDC_SUCCESS) {
				return XRFDC_FAILURE;
			}
		}
	}

	Status = XRFdc_Reset(RFdcInstPtr, XRFDC_ADC_TILE, Tile);
	if (Status != XRFDC_SUCCESS) {
		//return XRFDC_FAILURE;
	}
	Status = XRFdc_Reset(RFdcInstPtr, XRFDC_DAC_TILE, Tile);
	if (Status != XRFDC_SUCCESS) {
		//return XRFDC_FAILURE;
	}

	for (Block = 0; Block <4; Block++) {
		if (XRFdc_IsDACBlockEnabled(RFdcInstPtr, Tile, Block)) {
			Status = XRFdc_GetFabWrVldWords(RFdcInstPtr, XRFDC_DAC_TILE,
					Tile, Block, &GetFabricRate);
			if (Status != XRFDC_SUCCESS) {
				return XRFDC_FAILURE;
			}
			if (GetFabricRate == 0x8) {
				return XRFDC_FAILURE;
			}
		}
		if (XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile, Block)) {
			if (RFdcInstPtr->ADC4GSPS == XRFDC_ADC_4GSPS) {
				if ((Block == 2) || (Block == 3))
					continue;
				else if (Block == 1) {
					if (XRFdc_IsADCBlockEnabled(RFdcInstPtr, Tile, 2) == 0)
						continue;
				}
			}
			Status = XRFdc_GetFabRdVldWords(RFdcInstPtr, XRFDC_ADC_TILE,
					Tile, Block, &GetFabricRate);
			if (Status != XRFDC_SUCCESS) {
				return XRFDC_FAILURE;
			}
			if (GetFabricRate == 0x4) {
				return XRFDC_FAILURE;
			}
		}
	}

	return XRFDC_SUCCESS;
}

/****************************************************************************/
/*
 *
 * This function compares the two Fabric Rate variables and return 0 if
 * same and returns 1 if not same.
 *
 * @param	SetFabricRate Fabric Rate value set.
 * @param	GetFabricRate Fabric Rate value get.
 *
 * @return
 *			- 0 if both structures are same.
 *			- 1 if both structures are not same.
 *
 * @note		None
 *
 *****************************************************************************/
static int CompareFabricRate(u32 SetFabricRate, u32 GetFabricRate)
{
	if (SetFabricRate == GetFabricRate)
		return 0;
	else
		return 1;
}