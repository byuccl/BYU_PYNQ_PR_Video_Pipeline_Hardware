
#ifndef PR_CONTROL_H
#define PR_CONTROL_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

#define PR_CONTROL_S00_AXI_SLV_REG0_OFFSET 0
#define PR_CONTROL_S00_AXI_SLV_REG1_OFFSET 4
#define PR_CONTROL_S00_AXI_SLV_REG2_OFFSET 8
#define PR_CONTROL_S00_AXI_SLV_REG3_OFFSET 12
#define PR_CONTROL_S00_AXI_SLV_REG4_OFFSET 16
#define PR_CONTROL_S00_AXI_SLV_REG5_OFFSET 20
#define PR_CONTROL_S00_AXI_SLV_REG6_OFFSET 24
#define PR_CONTROL_S00_AXI_SLV_REG7_OFFSET 28
#define PR_CONTROL_S00_AXI_SLV_REG8_OFFSET 32
#define PR_CONTROL_S00_AXI_SLV_REG9_OFFSET 36
#define PR_CONTROL_S00_AXI_SLV_REG10_OFFSET 40
#define PR_CONTROL_S00_AXI_SLV_REG11_OFFSET 44
#define PR_CONTROL_S00_AXI_SLV_REG12_OFFSET 48
#define PR_CONTROL_S00_AXI_SLV_REG13_OFFSET 52
#define PR_CONTROL_S00_AXI_SLV_REG14_OFFSET 56
#define PR_CONTROL_S00_AXI_SLV_REG15_OFFSET 60


/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a PR_CONTROL register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the PR_CONTROLdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void PR_CONTROL_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define PR_CONTROL_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a PR_CONTROL register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the PR_CONTROL device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 PR_CONTROL_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define PR_CONTROL_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the PR_CONTROL instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus PR_CONTROL_Reg_SelfTest(void * baseaddr_p);

#endif // PR_CONTROL_H
