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

TEST_CASE(3, x7, 0x0000000b, \
li x6, 2; \
la x7, arr1; \
la x28, arr3; \
.word 0x01c3830b; \
la x7, arr1; \
lw x7, 0(x7); \
)


TEST_CASE(4, x7, 0x00000006, \
li x6, 2; \
la x7, arr1; \
la x28, arr3; \
.word 0x01c3830b; \
la x7, arr1; \
lw x7, 4(x7); \
)

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

arr1: .word 0x00000006
      .word 0x00000004
arr3: .word 0x00000005
      .word 0x00000002


RVTEST_DATA_END
