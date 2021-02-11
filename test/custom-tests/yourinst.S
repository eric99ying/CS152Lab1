# See LICENSE for license details.

#*****************************************************************************
# yourinst.S
#-----------------------------------------------------------------------------
#
# This is the most basic self checking test. If your simulator does not
# pass thiss then there is little chance that it will pass any of the
# more complicated self checking tests.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

# FIXME: Add your tests here
# See the tests in movn.S for examples
  TEST_CASE(4, x4, 	11, \
  	la x1, arr1_1; \
	la x2, arr2_1; \
	li x3, 2; \
	.word 0x002081d7; \
	la x1, arr1_1; \
	lw x4, 0(x1); \
  ) 

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

arr1_1: .word 0x00000006
arr1_2: .word 0x0000000a
arr2_1: .word 0x00000005
arr2_2: .word 0x0000000a

RVTEST_DATA_END
