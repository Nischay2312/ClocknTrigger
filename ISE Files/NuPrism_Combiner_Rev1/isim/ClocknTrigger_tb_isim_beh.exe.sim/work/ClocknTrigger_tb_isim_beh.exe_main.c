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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_06074576677493259548_1001191551_init();
    work_m_13564564553341176893_0586769035_init();
    work_m_18021082334643337183_3379532387_init();
    work_m_01388281785946483793_3223463248_init();
    work_m_18199964715607899314_0827135679_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_18199964715607899314_0827135679");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
