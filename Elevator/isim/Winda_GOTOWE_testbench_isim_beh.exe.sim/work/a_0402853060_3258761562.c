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
static const char *ng0 = "/home/michal/Dokumenty/VHDL/Elevator/elevator.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_1306455576395559435_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1366267000076357978_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0402853060_3258761562_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 8240);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 8432);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t2 = (t0 + 8432);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t11;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

}

static void work_a_0402853060_3258761562_p_1(char *t0)
{
    char t17[16];
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    int t19;
    unsigned int t20;
    unsigned int t21;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6};

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8496);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 8256);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 4872U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t6 = (t0 + 5032U);
    t7 = *((char **)t6);
    t6 = (t0 + 12792U);
    t8 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t4, t7, t6);
    if (t8 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 12792U);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t8 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t8 == 1)
        goto LAB12;

LAB13:    t6 = (t0 + 4872U);
    t7 = *((char **)t6);
    t6 = (t0 + 12792U);
    t9 = (t0 + 5032U);
    t10 = *((char **)t9);
    t9 = (t0 + 12792U);
    t14 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t7, t6, t10, t9);
    t3 = t14;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:
LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 12792U);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t3 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 12792U);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB2;

LAB5:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 12792U);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB23;

LAB25:
LAB24:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 12792U);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB28;

LAB30:
LAB29:    goto LAB2;

LAB6:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 12792U);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB31;

LAB33:
LAB32:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 12792U);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t3 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB34;

LAB36:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 12792U);
    t4 = (t0 + 5032U);
    t5 = *((char **)t4);
    t4 = (t0 + 12792U);
    t3 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t2, t1, t5, t4);
    if (t3 != 0)
        goto LAB37;

LAB38:
LAB35:    goto LAB2;

LAB7:    xsi_set_current_line(70, ng0);
    t9 = (t0 + 8496);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t9);
    goto LAB8;

LAB10:    xsi_set_current_line(72, ng0);
    t11 = (t0 + 8496);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast(t11);
    goto LAB8;

LAB12:    t3 = (unsigned char)1;
    goto LAB14;

LAB15:    xsi_set_current_line(76, ng0);
    t6 = (t0 + 8496);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t1 = (t0 + 12776U);
    t4 = (t0 + 12850);
    t6 = (t18 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t19 = (3 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t20;
    t7 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t17, t2, t1, t4, t18);
    t9 = (t17 + 12U);
    t20 = *((unsigned int *)t9);
    t21 = (1U * t20);
    t3 = (4U != t21);
    if (t3 == 1)
        goto LAB18;

LAB19:    t10 = (t0 + 8560);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB16;

LAB18:    xsi_size_not_matching(4U, t21, 0);
    goto LAB19;

LAB20:    xsi_set_current_line(80, ng0);
    t6 = (t0 + 8496);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB21;

LAB23:    xsi_set_current_line(84, ng0);
    t6 = (t0 + 8496);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    t1 = (t0 + 12776U);
    t4 = (t0 + 12854);
    t6 = (t18 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t19 = (3 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t20;
    t7 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t17, t2, t1, t4, t18);
    t9 = (t17 + 12U);
    t20 = *((unsigned int *)t9);
    t21 = (1U * t20);
    t3 = (4U != t21);
    if (t3 == 1)
        goto LAB26;

LAB27:    t10 = (t0 + 8560);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t15 = *((char **)t13);
    memcpy(t15, t7, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB24;

LAB26:    xsi_size_not_matching(4U, t21, 0);
    goto LAB27;

LAB28:    xsi_set_current_line(88, ng0);
    t6 = (t0 + 8496);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB29;

LAB31:    xsi_set_current_line(92, ng0);
    t6 = (t0 + 8496);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t6);
    goto LAB32;

LAB34:    xsi_set_current_line(95, ng0);
    t6 = (t0 + 8496);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    goto LAB35;

LAB37:    xsi_set_current_line(97, ng0);
    t6 = (t0 + 8496);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t6);
    goto LAB35;

}

static void work_a_0402853060_3258761562_p_2(char *t0)
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;

LAB0:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 3912U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 992U);
    t4 = xsi_signal_has_event(t2);
    if (t4 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 8272);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 12858);
    t10 = (t0 + 8624);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 1672U);
    t9 = *((char **)t3);
    t8 = *((unsigned char *)t9);
    t15 = (t8 == (unsigned char)3);
    if (t15 != 0)
        goto LAB13;

LAB15:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB16;

LAB17:    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB18;

LAB19:    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB20;

LAB21:    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB22;

LAB23:    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB24;

LAB25:    t2 = (t0 + 2632U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB26;

LAB27:    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB28;

LAB29:    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB30;

LAB31:    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB32;

LAB33:    t2 = (t0 + 3272U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB34;

LAB35:
LAB14:    goto LAB3;

LAB10:    t3 = (t0 + 1032U);
    t6 = *((char **)t3);
    t5 = *((unsigned char *)t6);
    t7 = (t5 == (unsigned char)3);
    t1 = t7;
    goto LAB12;

LAB13:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 12862);
    t11 = (t0 + 8624);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t16 = *((char **)t14);
    memcpy(t16, t3, 4U);
    xsi_driver_first_trans_fast(t11);
    goto LAB14;

LAB16:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 12866);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB18:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 12870);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB20:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 12874);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB22:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 12878);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB24:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 12882);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB26:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 12886);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB28:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 12890);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB30:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 12894);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB32:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 12898);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

LAB34:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 12902);
    t9 = (t0 + 8624);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB14;

}

static void work_a_0402853060_3258761562_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 8288);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(126, ng0);
    t8 = (t0 + 4232U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)1);
    if (t11 == 1)
        goto LAB11;

LAB12:    t7 = (unsigned char)0;

LAB13:    if (t7 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 4232U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(127, ng0);
    t16 = (t0 + 4712U);
    t17 = *((char **)t16);
    t16 = (t0 + 8688);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t17, 4U);
    xsi_driver_first_trans_fast(t16);
    goto LAB9;

LAB11:    t8 = (t0 + 4872U);
    t12 = *((char **)t8);
    t8 = (t0 + 12792U);
    t13 = (t0 + 5032U);
    t14 = *((char **)t13);
    t13 = (t0 + 12792U);
    t15 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t12, t8, t14, t13);
    t7 = t15;
    goto LAB13;

LAB14:    xsi_set_current_line(129, ng0);
    t13 = (t0 + 4712U);
    t14 = *((char **)t13);
    t13 = (t0 + 8688);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t14, 4U);
    xsi_driver_first_trans_fast(t13);
    goto LAB9;

LAB16:    t2 = (t0 + 4872U);
    t8 = *((char **)t2);
    t2 = (t0 + 12792U);
    t9 = (t0 + 5032U);
    t12 = *((char **)t9);
    t9 = (t0 + 12792U);
    t6 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t8, t2, t12, t9);
    t1 = t6;
    goto LAB18;

}

static void work_a_0402853060_3258761562_p_4(char *t0)
{
    char t18[16];
    char t21[16];
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    char *t19;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 3912U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 8304);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 12906);
    t10 = (t0 + 8752);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(139, ng0);
    t6 = (t0 + 4232U);
    t9 = *((char **)t6);
    t15 = *((unsigned char *)t9);
    t16 = (t15 == (unsigned char)3);
    if (t16 == 1)
        goto LAB16;

LAB17:    t8 = (unsigned char)0;

LAB18:    if (t8 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 12910);
    t6 = (t0 + 8752);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 2U);
    xsi_driver_first_trans_fast(t6);

LAB14:    goto LAB3;

LAB10:    t2 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t2);
    t1 = t7;
    goto LAB12;

LAB13:    xsi_set_current_line(140, ng0);
    t13 = (t0 + 4552U);
    t14 = *((char **)t13);
    t13 = (t0 + 12760U);
    t19 = (t0 + 12908);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (1 - 0);
    t25 = (t24 * 1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t23 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t18, t14, t13, t19, t21);
    t26 = (t18 + 12U);
    t25 = *((unsigned int *)t26);
    t27 = (1U * t25);
    t28 = (2U != t27);
    if (t28 == 1)
        goto LAB19;

LAB20:    t29 = (t0 + 8752);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t23, 2U);
    xsi_driver_first_trans_fast(t29);
    goto LAB14;

LAB16:    t6 = (t0 + 4872U);
    t10 = *((char **)t6);
    t6 = (t0 + 12792U);
    t11 = (t0 + 5032U);
    t12 = *((char **)t11);
    t11 = (t0 + 12792U);
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t10, t6, t12, t11);
    t8 = t17;
    goto LAB18;

LAB19:    xsi_size_not_matching(2U, t27, 0);
    goto LAB20;

}

static void work_a_0402853060_3258761562_p_5(char *t0)
{
    char t20[16];
    char t31[16];
    char t39[16];
    char t47[16];
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
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t32;
    char *t33;
    int t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t40;
    char *t41;
    int t42;
    unsigned char t43;
    char *t44;
    char *t45;
    char *t48;
    char *t49;
    int t50;
    unsigned char t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;

LAB0:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 3912U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB10;

LAB11:    t1 = (unsigned char)0;

LAB12:    if (t1 != 0)
        goto LAB8;

LAB9:
LAB3:    t2 = (t0 + 8320);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 8816);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 8880);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(156, ng0);
    t6 = (t0 + 4232U);
    t9 = *((char **)t6);
    t13 = *((unsigned char *)t9);
    t14 = (t13 == (unsigned char)3);
    if (t14 == 1)
        goto LAB16;

LAB17:    t8 = (unsigned char)0;

LAB18:    if (t8 != 0)
        goto LAB13;

LAB15:    t2 = (t0 + 4232U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB38;

LAB39:    t1 = (unsigned char)0;

LAB40:    if (t1 != 0)
        goto LAB36;

LAB37:    t2 = (t0 + 4232U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB43;

LAB44:    t1 = (unsigned char)0;

LAB45:    if (t1 != 0)
        goto LAB41;

LAB42:
LAB14:    goto LAB3;

LAB10:    t2 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t2);
    t1 = t7;
    goto LAB12;

LAB13:    xsi_set_current_line(157, ng0);
    t16 = (t0 + 4552U);
    t17 = *((char **)t16);
    t16 = (t0 + 12760U);
    t18 = (t0 + 12912);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 1;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (1 - 0);
    t24 = (t23 * 1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t25 = ieee_p_3620187407_sub_1306455576395559435_3965413181(IEEE_P_3620187407, t17, t16, t18, t20);
    if (t25 != 0)
        goto LAB19;

LAB21:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB33;

LAB34:    t1 = (unsigned char)0;

LAB35:    if (t1 != 0)
        goto LAB31;

LAB32:
LAB20:    goto LAB14;

LAB16:    t6 = (t0 + 4872U);
    t10 = *((char **)t6);
    t6 = (t0 + 12792U);
    t11 = (t0 + 5032U);
    t12 = *((char **)t11);
    t11 = (t0 + 12792U);
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t10, t6, t12, t11);
    t8 = t15;
    goto LAB18;

LAB19:    xsi_set_current_line(158, ng0);
    t22 = (t0 + 4552U);
    t28 = *((char **)t22);
    t22 = (t0 + 12760U);
    t29 = (t0 + 12914);
    t32 = (t31 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 0;
    t33 = (t32 + 4U);
    *((int *)t33) = 1;
    t33 = (t32 + 8U);
    *((int *)t33) = 1;
    t34 = (1 - 0);
    t24 = (t34 * 1);
    t24 = (t24 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t24;
    t35 = ieee_p_3620187407_sub_1306455576395559435_3965413181(IEEE_P_3620187407, t28, t22, t29, t31);
    if (t35 == 1)
        goto LAB28;

LAB29:    t33 = (t0 + 4552U);
    t36 = *((char **)t33);
    t33 = (t0 + 12760U);
    t37 = (t0 + 12916);
    t40 = (t39 + 0U);
    t41 = (t40 + 0U);
    *((int *)t41) = 0;
    t41 = (t40 + 4U);
    *((int *)t41) = 1;
    t41 = (t40 + 8U);
    *((int *)t41) = 1;
    t42 = (1 - 0);
    t24 = (t42 * 1);
    t24 = (t24 + 1);
    t41 = (t40 + 12U);
    *((unsigned int *)t41) = t24;
    t43 = ieee_p_3620187407_sub_1306455576395559435_3965413181(IEEE_P_3620187407, t36, t33, t37, t39);
    t27 = t43;

LAB30:    if (t27 == 1)
        goto LAB25;

LAB26:    t41 = (t0 + 4552U);
    t44 = *((char **)t41);
    t41 = (t0 + 12760U);
    t45 = (t0 + 12918);
    t48 = (t47 + 0U);
    t49 = (t48 + 0U);
    *((int *)t49) = 0;
    t49 = (t48 + 4U);
    *((int *)t49) = 1;
    t49 = (t48 + 8U);
    *((int *)t49) = 1;
    t50 = (1 - 0);
    t24 = (t50 * 1);
    t24 = (t24 + 1);
    t49 = (t48 + 12U);
    *((unsigned int *)t49) = t24;
    t51 = ieee_p_3620187407_sub_1306455576395559435_3965413181(IEEE_P_3620187407, t44, t41, t45, t47);
    t26 = t51;

LAB27:    if (t26 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB20;

LAB22:    xsi_set_current_line(159, ng0);
    t49 = (t0 + 8880);
    t52 = (t49 + 56U);
    t53 = *((char **)t52);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    *((unsigned char *)t55) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t49);
    xsi_set_current_line(160, ng0);
    t2 = (t0 + 8816);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB23;

LAB25:    t26 = (unsigned char)1;
    goto LAB27;

LAB28:    t27 = (unsigned char)1;
    goto LAB30;

LAB31:    xsi_set_current_line(163, ng0);
    t6 = (t0 + 8880);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(164, ng0);
    t2 = (t0 + 8816);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB20;

LAB33:    t2 = (t0 + 992U);
    t7 = xsi_signal_has_event(t2);
    t1 = t7;
    goto LAB35;

LAB36:    xsi_set_current_line(167, ng0);
    t11 = (t0 + 8816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 8880);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

LAB38:    t2 = (t0 + 4872U);
    t6 = *((char **)t2);
    t2 = (t0 + 12792U);
    t9 = (t0 + 5032U);
    t10 = *((char **)t9);
    t9 = (t0 + 12792U);
    t7 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t6, t2, t10, t9);
    t1 = t7;
    goto LAB40;

LAB41:    xsi_set_current_line(170, ng0);
    t11 = (t0 + 8816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(171, ng0);
    t2 = (t0 + 8880);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

LAB43:    t2 = (t0 + 4872U);
    t6 = *((char **)t2);
    t2 = (t0 + 12792U);
    t9 = (t0 + 5032U);
    t10 = *((char **)t9);
    t9 = (t0 + 12792U);
    t7 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t6, t2, t10, t9);
    t1 = t7;
    goto LAB45;

}

static void work_a_0402853060_3258761562_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(181, ng0);

LAB3:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t1 = (t0 + 8944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 8336);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0402853060_3258761562_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(182, ng0);

LAB3:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t1 = (t0 + 9008);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 8352);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0402853060_3258761562_init()
{
	static char *pe[] = {(void *)work_a_0402853060_3258761562_p_0,(void *)work_a_0402853060_3258761562_p_1,(void *)work_a_0402853060_3258761562_p_2,(void *)work_a_0402853060_3258761562_p_3,(void *)work_a_0402853060_3258761562_p_4,(void *)work_a_0402853060_3258761562_p_5,(void *)work_a_0402853060_3258761562_p_6,(void *)work_a_0402853060_3258761562_p_7};
	xsi_register_didat("work_a_0402853060_3258761562", "isim/Winda_GOTOWE_testbench_isim_beh.exe.sim/work/a_0402853060_3258761562.didat");
	xsi_register_executes(pe);
}
