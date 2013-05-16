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
static const char *ng0 = "/home/frank/School/MIPS_Project/MIPS_processor/data_memory.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_1632567566_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 1948);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 1224U);
    t9 = *((char **)t2);
    t2 = (t0 + 868U);
    t10 = *((char **)t2);
    t2 = (t0 + 3756U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t11);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t16 = (t9 + t15);
    t17 = (t0 + 1992);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 32U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB3;

LAB5:    t2 = (t0 + 684U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 960U);
    t9 = *((char **)t2);
    t2 = (t0 + 1224U);
    t10 = *((char **)t2);
    t2 = (t0 + 868U);
    t16 = *((char **)t2);
    t2 = (t0 + 3756U);
    t11 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t16, t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t11);
    t14 = (32U * t13);
    t15 = (0 + t14);
    t17 = (t10 + t15);
    memcpy(t17, t9, 32U);
    t18 = (t0 + 1188U);
    xsi_variable_act(t18);
    goto LAB3;

LAB10:    t2 = (t0 + 684U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB12;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_1632567566_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1632567566_3212880686_p_0};
	xsi_register_didat("work_a_1632567566_3212880686", "isim/toplevel_toplevel_sch_tb_isim_beh.exe.sim/work/a_1632567566_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
