/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/frank/School/MIPS_processor/data_memory.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_1632567566_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5712U);
    t3 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t3 < 63);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(130, ng0);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t8 = (t5 == (unsigned char)2);
    if (t8 == 1)
        goto LAB13;

LAB14:    t4 = (unsigned char)0;

LAB15:    if (t4 != 0)
        goto LAB11;

LAB12:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(131, ng0);
    t6 = (t0 + 2128U);
    t13 = *((char **)t6);
    t6 = (t0 + 1512U);
    t14 = *((char **)t6);
    t6 = (t0 + 5712U);
    t15 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t14, t6);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t15);
    t18 = (32U * t17);
    t19 = (0 + t18);
    t20 = (t13 + t19);
    t21 = (t0 + 3504);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t20, 32U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB6;

LAB8:    t6 = (t0 + 1192U);
    t10 = *((char **)t6);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)2);
    t5 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 1672U);
    t7 = *((char **)t1);
    t1 = (t0 + 2128U);
    t10 = *((char **)t1);
    t1 = (t0 + 1512U);
    t13 = *((char **)t1);
    t1 = (t0 + 5712U);
    t3 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t13, t1);
    t15 = (t3 - 0);
    t17 = (t15 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t3);
    t18 = (32U * t17);
    t19 = (0 + t18);
    t14 = (t10 + t19);
    memcpy(t14, t7, 32U);
    t20 = (t0 + 2072U);
    xsi_variable_act(t20);
    goto LAB6;

LAB13:    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t9 = *((unsigned char *)t6);
    t11 = (t9 == (unsigned char)3);
    t4 = t11;
    goto LAB15;

}


void ieee_p_2592010699_sub_7991387870887201249_503743352();

extern void work_a_1632567566_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1632567566_3212880686_p_0};
	xsi_register_didat("work_a_1632567566_3212880686", "isim/toplevel_toplevel_sch_tb_isim_beh.exe.sim/work/a_1632567566_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_7991387870887201249_503743352, 4);
}
