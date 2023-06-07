////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: combiner_timesim.v
// /___/   /\     Timestamp: Tue Jun 14 16:23:24 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -sdf_anno true -sdf_path netgen/fit -insert_glbl true -w -dir netgen/fit -ofmt verilog -sim combiner.nga combiner_timesim.v 
// Device	: XC9572XL-5-PC44 (Speed File: Version 3.0)
// Input file	: combiner.nga
// Output file	: /home/ise/NuPrism_Combiner_Rev1/netgen/fit/combiner_timesim.v
// # of Modules	: 1
// Design Name	: combiner.nga
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module combiner (
  sma_trig, osc_clk0, trig1, sma_trig_monitor
);
  input sma_trig;
  input osc_clk0;
  output trig1;
  output [3 : 0] sma_trig_monitor;
  wire sma_trig_IBUF_1;
  wire FCLKIO_0_3;
  wire dff_clock_modulated$Q_5;
  wire dff_clock_modulated$BUF0_7;
  wire sma_trig_monitor_1_OBUF$Q_9;
  wire sma_trig_monitor_1_OBUF$BUF0_11;
  wire sma_trig_monitor_1_OBUF$BUF1_13;
  wire \dffe_trig_out.Q ;
  wire dffe_trig_out_15;
  wire \dffe_trig_out.D_16 ;
  wire Gnd_17;
  wire \dffe_trig_out.CE_18 ;
  wire \dffe_trig_out.D1_19 ;
  wire \dffe_trig_out.D2_20 ;
  wire d0_shreg_21;
  wire d1_shreg_22;
  wire \dff_clock_modulated.Q ;
  wire \dff_clock_modulated.D_24 ;
  wire Vcc_25;
  wire \dff_clock_modulated.D1_26 ;
  wire \dff_clock_modulated.D2_27 ;
  wire d1_75duty_28;
  wire \dff_clock_modulated.D2_PT_0_29 ;
  wire d0_25duty_30;
  wire \dff_clock_modulated.D2_PT_1_31 ;
  wire \d0_shreg.Q ;
  wire \d0_shreg.D_33 ;
  wire \d0_shreg.D1_34 ;
  wire \d0_shreg.D2_35 ;
  wire \d1_shreg.Q ;
  wire \d1_shreg.D_37 ;
  wire \d1_shreg.D1_38 ;
  wire \d1_shreg.D2_39 ;
  wire \d0_25duty.Q ;
  wire \d0_25duty.D_41 ;
  wire \d0_25duty.D1_42 ;
  wire \d0_25duty.D2_43 ;
  wire \d0_75duty.Q ;
  wire d0_75duty_45;
  wire \d0_75duty.D_46 ;
  wire \d0_75duty.D1_47 ;
  wire \d0_75duty.D2_48 ;
  wire \d1_75duty.Q ;
  wire \d1_75duty.D_50 ;
  wire \d1_75duty.D1_51 ;
  wire \d1_75duty.D2_52 ;
  wire \dff_clock_modulated$BUF0.Q ;
  wire \dff_clock_modulated$BUF0.D_54 ;
  wire \dff_clock_modulated$BUF0.D1_55 ;
  wire \dff_clock_modulated$BUF0.D2_56 ;
  wire \dff_clock_modulated$BUF0.D2_PT_0_57 ;
  wire \dff_clock_modulated$BUF0.D2_PT_1_58 ;
  wire \sma_trig_monitor_1_OBUF.Q_59 ;
  wire \sma_trig_monitor_1_OBUF.D_60 ;
  wire \sma_trig_monitor_1_OBUF.D1_61 ;
  wire \sma_trig_monitor_1_OBUF.D2_62 ;
  wire \sma_trig_monitor_1_OBUF$BUF0.Q_63 ;
  wire \sma_trig_monitor_1_OBUF$BUF0.D_64 ;
  wire \sma_trig_monitor_1_OBUF$BUF0.D1_65 ;
  wire \sma_trig_monitor_1_OBUF$BUF0.D2_66 ;
  wire \sma_trig_monitor_1_OBUF$BUF1.Q_67 ;
  wire \sma_trig_monitor_1_OBUF$BUF1.D_68 ;
  wire \sma_trig_monitor_1_OBUF$BUF1.D1_69 ;
  wire \sma_trig_monitor_1_OBUF$BUF1.D2_70 ;
  wire \NlwBufferSignal_dffe_trig_out.REG/IN ;
  wire \NlwBufferSignal_dffe_trig_out.REG/CLK ;
  wire \NlwBufferSignal_dffe_trig_out.D/IN0 ;
  wire \NlwBufferSignal_dffe_trig_out.D/IN1 ;
  wire \NlwBufferSignal_dffe_trig_out.D2/IN0 ;
  wire \NlwBufferSignal_dffe_trig_out.D2/IN1 ;
  wire \NlwBufferSignal_dffe_trig_out.CE/IN0 ;
  wire \NlwBufferSignal_dffe_trig_out.CE/IN1 ;
  wire \NlwBufferSignal_dff_clock_modulated.REG/IN ;
  wire \NlwBufferSignal_dff_clock_modulated.REG/CLK ;
  wire \NlwBufferSignal_dff_clock_modulated.D/IN0 ;
  wire \NlwBufferSignal_dff_clock_modulated.D/IN1 ;
  wire \NlwBufferSignal_dff_clock_modulated.D2_PT_0/IN0 ;
  wire \NlwBufferSignal_dff_clock_modulated.D2_PT_0/IN1 ;
  wire \NlwBufferSignal_dff_clock_modulated.D2_PT_1/IN0 ;
  wire \NlwBufferSignal_dff_clock_modulated.D2_PT_1/IN1 ;
  wire \NlwBufferSignal_dff_clock_modulated.D2/IN0 ;
  wire \NlwBufferSignal_dff_clock_modulated.D2/IN1 ;
  wire \NlwBufferSignal_d0_shreg.REG/IN ;
  wire \NlwBufferSignal_d0_shreg.REG/CLK ;
  wire \NlwBufferSignal_d0_shreg.D/IN0 ;
  wire \NlwBufferSignal_d0_shreg.D/IN1 ;
  wire \NlwBufferSignal_d0_shreg.D2/IN0 ;
  wire \NlwBufferSignal_d0_shreg.D2/IN1 ;
  wire \NlwBufferSignal_d1_shreg.REG/IN ;
  wire \NlwBufferSignal_d1_shreg.REG/CLK ;
  wire \NlwBufferSignal_d1_shreg.D/IN0 ;
  wire \NlwBufferSignal_d1_shreg.D/IN1 ;
  wire \NlwBufferSignal_d1_shreg.D2/IN0 ;
  wire \NlwBufferSignal_d1_shreg.D2/IN1 ;
  wire \NlwBufferSignal_d0_25duty.REG/IN ;
  wire \NlwBufferSignal_d0_25duty.REG/CLK ;
  wire \NlwBufferSignal_d0_25duty.D/IN0 ;
  wire \NlwBufferSignal_d0_25duty.D/IN1 ;
  wire \NlwBufferSignal_d0_25duty.D2/IN0 ;
  wire \NlwBufferSignal_d0_25duty.D2/IN1 ;
  wire \NlwBufferSignal_d0_75duty.REG/IN ;
  wire \NlwBufferSignal_d0_75duty.REG/CLK ;
  wire \NlwBufferSignal_d0_75duty.D/IN0 ;
  wire \NlwBufferSignal_d0_75duty.D/IN1 ;
  wire \NlwBufferSignal_d0_75duty.D2/IN0 ;
  wire \NlwBufferSignal_d0_75duty.D2/IN1 ;
  wire \NlwBufferSignal_d1_75duty.REG/IN ;
  wire \NlwBufferSignal_d1_75duty.REG/CLK ;
  wire \NlwBufferSignal_d1_75duty.D/IN0 ;
  wire \NlwBufferSignal_d1_75duty.D/IN1 ;
  wire \NlwBufferSignal_d1_75duty.D2/IN0 ;
  wire \NlwBufferSignal_d1_75duty.D2/IN1 ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.REG/IN ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.REG/CLK ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.D/IN0 ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.D/IN1 ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_0/IN0 ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_0/IN1 ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_1/IN0 ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_1/IN1 ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.D2/IN0 ;
  wire \NlwBufferSignal_dff_clock_modulated$BUF0.D2/IN1 ;
  wire \NlwBufferSignal_sma_trig_monitor_1_OBUF.D/IN0 ;
  wire \NlwBufferSignal_sma_trig_monitor_1_OBUF.D/IN1 ;
  wire \NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF0.D/IN0 ;
  wire \NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF0.D/IN1 ;
  wire \NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF1.D/IN0 ;
  wire \NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF1.D/IN1 ;
  wire \NlwInverterSignal_dffe_trig_out.CE/IN1 ;
  wire \NlwInverterSignal_dff_clock_modulated.D2_PT_1/IN0 ;
  wire \NlwInverterSignal_d0_shreg.D2/IN0 ;
  wire \NlwInverterSignal_d0_shreg.D2/IN1 ;
  wire \NlwInverterSignal_d0_25duty.D2/IN1 ;
  wire \NlwInverterSignal_d0_75duty.D/IN0 ;
  wire \NlwInverterSignal_d0_75duty.D2/IN0 ;
  wire \NlwInverterSignal_dff_clock_modulated$BUF0.D2_PT_1/IN0 ;
  initial $sdf_annotate("netgen/fit/combiner_timesim.sdf");
  X_IPAD   \sma_trig.PAD  (
    .PAD(sma_trig)
  );
  X_BUF   sma_trig_IBUF (
    .I(sma_trig),
    .O(sma_trig_IBUF_1)
  );
  X_IPAD   \osc_clk0.PAD  (
    .PAD(osc_clk0)
  );
  X_BUF   FCLKIO_0 (
    .I(osc_clk0),
    .O(FCLKIO_0_3)
  );
  X_OPAD   \trig1.PAD  (
    .PAD(trig1)
  );
  X_BUF   trig1_6 (
    .I(dff_clock_modulated$Q_5),
    .O(trig1)
  );
  X_OPAD   \sma_trig_monitor<0>.PAD  (
    .PAD(sma_trig_monitor[0])
  );
  X_BUF   \sma_trig_monitor<0>  (
    .I(dff_clock_modulated$BUF0_7),
    .O(sma_trig_monitor[0])
  );
  X_OPAD   \sma_trig_monitor<3>.PAD  (
    .PAD(sma_trig_monitor[3])
  );
  X_BUF   \sma_trig_monitor<3>  (
    .I(sma_trig_monitor_1_OBUF$Q_9),
    .O(sma_trig_monitor[3])
  );
  X_OPAD   \sma_trig_monitor<2>.PAD  (
    .PAD(sma_trig_monitor[2])
  );
  X_BUF   \sma_trig_monitor<2>  (
    .I(sma_trig_monitor_1_OBUF$BUF0_11),
    .O(sma_trig_monitor[2])
  );
  X_OPAD   \sma_trig_monitor<1>.PAD  (
    .PAD(sma_trig_monitor[1])
  );
  X_BUF   \sma_trig_monitor<1>  (
    .I(sma_trig_monitor_1_OBUF$BUF1_13),
    .O(sma_trig_monitor[1])
  );
  X_BUF   dffe_trig_out (
    .I(\dffe_trig_out.Q ),
    .O(dffe_trig_out_15)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \dffe_trig_out.REG  (
    .I(\NlwBufferSignal_dffe_trig_out.REG/IN ),
    .CE(\dffe_trig_out.CE_18 ),
    .CLK(\NlwBufferSignal_dffe_trig_out.REG/CLK ),
    .SET(Gnd_17),
    .RST(Gnd_17),
    .O(\dffe_trig_out.Q )
  );
  X_ZERO   Gnd (
    .O(Gnd_17)
  );
  X_XOR2   \dffe_trig_out.D  (
    .I0(\NlwBufferSignal_dffe_trig_out.D/IN0 ),
    .I1(\NlwBufferSignal_dffe_trig_out.D/IN1 ),
    .O(\dffe_trig_out.D_16 )
  );
  X_ZERO   \dffe_trig_out.D1  (
    .O(\dffe_trig_out.D1_19 )
  );
  X_AND2   \dffe_trig_out.D2  (
    .I0(\NlwBufferSignal_dffe_trig_out.D2/IN0 ),
    .I1(\NlwBufferSignal_dffe_trig_out.D2/IN1 ),
    .O(\dffe_trig_out.D2_20 )
  );
  X_AND2   \dffe_trig_out.CE  (
    .I0(\NlwBufferSignal_dffe_trig_out.CE/IN0 ),
    .I1(\NlwInverterSignal_dffe_trig_out.CE/IN1 ),
    .O(\dffe_trig_out.CE_18 )
  );
  X_BUF   dff_clock_modulated$Q (
    .I(\dff_clock_modulated.Q ),
    .O(dff_clock_modulated$Q_5)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \dff_clock_modulated.REG  (
    .I(\NlwBufferSignal_dff_clock_modulated.REG/IN ),
    .CE(Vcc_25),
    .CLK(\NlwBufferSignal_dff_clock_modulated.REG/CLK ),
    .SET(Gnd_17),
    .RST(Gnd_17),
    .O(\dff_clock_modulated.Q )
  );
  X_ONE   Vcc (
    .O(Vcc_25)
  );
  X_XOR2   \dff_clock_modulated.D  (
    .I0(\NlwBufferSignal_dff_clock_modulated.D/IN0 ),
    .I1(\NlwBufferSignal_dff_clock_modulated.D/IN1 ),
    .O(\dff_clock_modulated.D_24 )
  );
  X_ZERO   \dff_clock_modulated.D1  (
    .O(\dff_clock_modulated.D1_26 )
  );
  X_AND2   \dff_clock_modulated.D2_PT_0  (
    .I0(\NlwBufferSignal_dff_clock_modulated.D2_PT_0/IN0 ),
    .I1(\NlwBufferSignal_dff_clock_modulated.D2_PT_0/IN1 ),
    .O(\dff_clock_modulated.D2_PT_0_29 )
  );
  X_AND2   \dff_clock_modulated.D2_PT_1  (
    .I0(\NlwInverterSignal_dff_clock_modulated.D2_PT_1/IN0 ),
    .I1(\NlwBufferSignal_dff_clock_modulated.D2_PT_1/IN1 ),
    .O(\dff_clock_modulated.D2_PT_1_31 )
  );
  X_OR2   \dff_clock_modulated.D2  (
    .I0(\NlwBufferSignal_dff_clock_modulated.D2/IN0 ),
    .I1(\NlwBufferSignal_dff_clock_modulated.D2/IN1 ),
    .O(\dff_clock_modulated.D2_27 )
  );
  X_BUF   d0_shreg (
    .I(\d0_shreg.Q ),
    .O(d0_shreg_21)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \d0_shreg.REG  (
    .I(\NlwBufferSignal_d0_shreg.REG/IN ),
    .CE(Vcc_25),
    .CLK(\NlwBufferSignal_d0_shreg.REG/CLK ),
    .SET(Gnd_17),
    .RST(Gnd_17),
    .O(\d0_shreg.Q )
  );
  X_XOR2   \d0_shreg.D  (
    .I0(\NlwBufferSignal_d0_shreg.D/IN0 ),
    .I1(\NlwBufferSignal_d0_shreg.D/IN1 ),
    .O(\d0_shreg.D_33 )
  );
  X_ZERO   \d0_shreg.D1  (
    .O(\d0_shreg.D1_34 )
  );
  X_AND2   \d0_shreg.D2  (
    .I0(\NlwInverterSignal_d0_shreg.D2/IN0 ),
    .I1(\NlwInverterSignal_d0_shreg.D2/IN1 ),
    .O(\d0_shreg.D2_35 )
  );
  X_BUF   d1_shreg (
    .I(\d1_shreg.Q ),
    .O(d1_shreg_22)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \d1_shreg.REG  (
    .I(\NlwBufferSignal_d1_shreg.REG/IN ),
    .CE(Vcc_25),
    .CLK(\NlwBufferSignal_d1_shreg.REG/CLK ),
    .SET(Gnd_17),
    .RST(Gnd_17),
    .O(\d1_shreg.Q )
  );
  X_XOR2   \d1_shreg.D  (
    .I0(\NlwBufferSignal_d1_shreg.D/IN0 ),
    .I1(\NlwBufferSignal_d1_shreg.D/IN1 ),
    .O(\d1_shreg.D_37 )
  );
  X_ZERO   \d1_shreg.D1  (
    .O(\d1_shreg.D1_38 )
  );
  X_AND2   \d1_shreg.D2  (
    .I0(\NlwBufferSignal_d1_shreg.D2/IN0 ),
    .I1(\NlwBufferSignal_d1_shreg.D2/IN1 ),
    .O(\d1_shreg.D2_39 )
  );
  X_BUF   d0_25duty (
    .I(\d0_25duty.Q ),
    .O(d0_25duty_30)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \d0_25duty.REG  (
    .I(\NlwBufferSignal_d0_25duty.REG/IN ),
    .CE(Vcc_25),
    .CLK(\NlwBufferSignal_d0_25duty.REG/CLK ),
    .SET(Gnd_17),
    .RST(Gnd_17),
    .O(\d0_25duty.Q )
  );
  X_XOR2   \d0_25duty.D  (
    .I0(\NlwBufferSignal_d0_25duty.D/IN0 ),
    .I1(\NlwBufferSignal_d0_25duty.D/IN1 ),
    .O(\d0_25duty.D_41 )
  );
  X_ZERO   \d0_25duty.D1  (
    .O(\d0_25duty.D1_42 )
  );
  X_AND2   \d0_25duty.D2  (
    .I0(\NlwBufferSignal_d0_25duty.D2/IN0 ),
    .I1(\NlwInverterSignal_d0_25duty.D2/IN1 ),
    .O(\d0_25duty.D2_43 )
  );
  X_BUF   d0_75duty (
    .I(\d0_75duty.Q ),
    .O(d0_75duty_45)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \d0_75duty.REG  (
    .I(\NlwBufferSignal_d0_75duty.REG/IN ),
    .CE(Vcc_25),
    .CLK(\NlwBufferSignal_d0_75duty.REG/CLK ),
    .SET(Gnd_17),
    .RST(Gnd_17),
    .O(\d0_75duty.Q )
  );
  X_XOR2   \d0_75duty.D  (
    .I0(\NlwInverterSignal_d0_75duty.D/IN0 ),
    .I1(\NlwBufferSignal_d0_75duty.D/IN1 ),
    .O(\d0_75duty.D_46 )
  );
  X_ZERO   \d0_75duty.D1  (
    .O(\d0_75duty.D1_47 )
  );
  X_AND2   \d0_75duty.D2  (
    .I0(\NlwInverterSignal_d0_75duty.D2/IN0 ),
    .I1(\NlwBufferSignal_d0_75duty.D2/IN1 ),
    .O(\d0_75duty.D2_48 )
  );
  X_BUF   d1_75duty (
    .I(\d1_75duty.Q ),
    .O(d1_75duty_28)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \d1_75duty.REG  (
    .I(\NlwBufferSignal_d1_75duty.REG/IN ),
    .CE(Vcc_25),
    .CLK(\NlwBufferSignal_d1_75duty.REG/CLK ),
    .SET(Gnd_17),
    .RST(Gnd_17),
    .O(\d1_75duty.Q )
  );
  X_XOR2   \d1_75duty.D  (
    .I0(\NlwBufferSignal_d1_75duty.D/IN0 ),
    .I1(\NlwBufferSignal_d1_75duty.D/IN1 ),
    .O(\d1_75duty.D_50 )
  );
  X_ZERO   \d1_75duty.D1  (
    .O(\d1_75duty.D1_51 )
  );
  X_AND2   \d1_75duty.D2  (
    .I0(\NlwBufferSignal_d1_75duty.D2/IN0 ),
    .I1(\NlwBufferSignal_d1_75duty.D2/IN1 ),
    .O(\d1_75duty.D2_52 )
  );
  X_BUF   dff_clock_modulated$BUF0 (
    .I(\dff_clock_modulated$BUF0.Q ),
    .O(dff_clock_modulated$BUF0_7)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \dff_clock_modulated$BUF0.REG  (
    .I(\NlwBufferSignal_dff_clock_modulated$BUF0.REG/IN ),
    .CE(Vcc_25),
    .CLK(\NlwBufferSignal_dff_clock_modulated$BUF0.REG/CLK ),
    .SET(Gnd_17),
    .RST(Gnd_17),
    .O(\dff_clock_modulated$BUF0.Q )
  );
  X_XOR2   \dff_clock_modulated$BUF0.D  (
    .I0(\NlwBufferSignal_dff_clock_modulated$BUF0.D/IN0 ),
    .I1(\NlwBufferSignal_dff_clock_modulated$BUF0.D/IN1 ),
    .O(\dff_clock_modulated$BUF0.D_54 )
  );
  X_ZERO   \dff_clock_modulated$BUF0.D1  (
    .O(\dff_clock_modulated$BUF0.D1_55 )
  );
  X_AND2   \dff_clock_modulated$BUF0.D2_PT_0  (
    .I0(\NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_0/IN0 ),
    .I1(\NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_0/IN1 ),
    .O(\dff_clock_modulated$BUF0.D2_PT_0_57 )
  );
  X_AND2   \dff_clock_modulated$BUF0.D2_PT_1  (
    .I0(\NlwInverterSignal_dff_clock_modulated$BUF0.D2_PT_1/IN0 ),
    .I1(\NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_1/IN1 ),
    .O(\dff_clock_modulated$BUF0.D2_PT_1_58 )
  );
  X_OR2   \dff_clock_modulated$BUF0.D2  (
    .I0(\NlwBufferSignal_dff_clock_modulated$BUF0.D2/IN0 ),
    .I1(\NlwBufferSignal_dff_clock_modulated$BUF0.D2/IN1 ),
    .O(\dff_clock_modulated$BUF0.D2_56 )
  );
  X_BUF   sma_trig_monitor_1_OBUF$Q (
    .I(\sma_trig_monitor_1_OBUF.Q_59 ),
    .O(sma_trig_monitor_1_OBUF$Q_9)
  );
  X_BUF   \sma_trig_monitor_1_OBUF.Q  (
    .I(\sma_trig_monitor_1_OBUF.D_60 ),
    .O(\sma_trig_monitor_1_OBUF.Q_59 )
  );
  X_XOR2   \sma_trig_monitor_1_OBUF.D  (
    .I0(\NlwBufferSignal_sma_trig_monitor_1_OBUF.D/IN0 ),
    .I1(\NlwBufferSignal_sma_trig_monitor_1_OBUF.D/IN1 ),
    .O(\sma_trig_monitor_1_OBUF.D_60 )
  );
  X_ZERO   \sma_trig_monitor_1_OBUF.D1  (
    .O(\sma_trig_monitor_1_OBUF.D1_61 )
  );
  X_ZERO   \sma_trig_monitor_1_OBUF.D2  (
    .O(\sma_trig_monitor_1_OBUF.D2_62 )
  );
  X_BUF   sma_trig_monitor_1_OBUF$BUF0 (
    .I(\sma_trig_monitor_1_OBUF$BUF0.Q_63 ),
    .O(sma_trig_monitor_1_OBUF$BUF0_11)
  );
  X_BUF   \sma_trig_monitor_1_OBUF$BUF0.Q  (
    .I(\sma_trig_monitor_1_OBUF$BUF0.D_64 ),
    .O(\sma_trig_monitor_1_OBUF$BUF0.Q_63 )
  );
  X_XOR2   \sma_trig_monitor_1_OBUF$BUF0.D  (
    .I0(\NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF0.D/IN0 ),
    .I1(\NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF0.D/IN1 ),
    .O(\sma_trig_monitor_1_OBUF$BUF0.D_64 )
  );
  X_ZERO   \sma_trig_monitor_1_OBUF$BUF0.D1  (
    .O(\sma_trig_monitor_1_OBUF$BUF0.D1_65 )
  );
  X_ZERO   \sma_trig_monitor_1_OBUF$BUF0.D2  (
    .O(\sma_trig_monitor_1_OBUF$BUF0.D2_66 )
  );
  X_BUF   sma_trig_monitor_1_OBUF$BUF1 (
    .I(\sma_trig_monitor_1_OBUF$BUF1.Q_67 ),
    .O(sma_trig_monitor_1_OBUF$BUF1_13)
  );
  X_BUF   \sma_trig_monitor_1_OBUF$BUF1.Q  (
    .I(\sma_trig_monitor_1_OBUF$BUF1.D_68 ),
    .O(\sma_trig_monitor_1_OBUF$BUF1.Q_67 )
  );
  X_XOR2   \sma_trig_monitor_1_OBUF$BUF1.D  (
    .I0(\NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF1.D/IN0 ),
    .I1(\NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF1.D/IN1 ),
    .O(\sma_trig_monitor_1_OBUF$BUF1.D_68 )
  );
  X_ZERO   \sma_trig_monitor_1_OBUF$BUF1.D1  (
    .O(\sma_trig_monitor_1_OBUF$BUF1.D1_69 )
  );
  X_ZERO   \sma_trig_monitor_1_OBUF$BUF1.D2  (
    .O(\sma_trig_monitor_1_OBUF$BUF1.D2_70 )
  );
  X_BUF   \NlwBufferBlock_dffe_trig_out.REG/IN  (
    .I(\dffe_trig_out.D_16 ),
    .O(\NlwBufferSignal_dffe_trig_out.REG/IN )
  );
  X_BUF   \NlwBufferBlock_dffe_trig_out.REG/CLK  (
    .I(FCLKIO_0_3),
    .O(\NlwBufferSignal_dffe_trig_out.REG/CLK )
  );
  X_BUF   \NlwBufferBlock_dffe_trig_out.D/IN0  (
    .I(\dffe_trig_out.D1_19 ),
    .O(\NlwBufferSignal_dffe_trig_out.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_dffe_trig_out.D/IN1  (
    .I(\dffe_trig_out.D2_20 ),
    .O(\NlwBufferSignal_dffe_trig_out.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_dffe_trig_out.D2/IN0  (
    .I(sma_trig_IBUF_1),
    .O(\NlwBufferSignal_dffe_trig_out.D2/IN0 )
  );
  X_BUF   \NlwBufferBlock_dffe_trig_out.D2/IN1  (
    .I(sma_trig_IBUF_1),
    .O(\NlwBufferSignal_dffe_trig_out.D2/IN1 )
  );
  X_BUF   \NlwBufferBlock_dffe_trig_out.CE/IN0  (
    .I(d0_shreg_21),
    .O(\NlwBufferSignal_dffe_trig_out.CE/IN0 )
  );
  X_BUF   \NlwBufferBlock_dffe_trig_out.CE/IN1  (
    .I(d1_shreg_22),
    .O(\NlwBufferSignal_dffe_trig_out.CE/IN1 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.REG/IN  (
    .I(\dff_clock_modulated.D_24 ),
    .O(\NlwBufferSignal_dff_clock_modulated.REG/IN )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.REG/CLK  (
    .I(FCLKIO_0_3),
    .O(\NlwBufferSignal_dff_clock_modulated.REG/CLK )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.D/IN0  (
    .I(\dff_clock_modulated.D1_26 ),
    .O(\NlwBufferSignal_dff_clock_modulated.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.D/IN1  (
    .I(\dff_clock_modulated.D2_27 ),
    .O(\NlwBufferSignal_dff_clock_modulated.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.D2_PT_0/IN0  (
    .I(dffe_trig_out_15),
    .O(\NlwBufferSignal_dff_clock_modulated.D2_PT_0/IN0 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.D2_PT_0/IN1  (
    .I(d1_75duty_28),
    .O(\NlwBufferSignal_dff_clock_modulated.D2_PT_0/IN1 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.D2_PT_1/IN0  (
    .I(dffe_trig_out_15),
    .O(\NlwBufferSignal_dff_clock_modulated.D2_PT_1/IN0 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.D2_PT_1/IN1  (
    .I(d0_25duty_30),
    .O(\NlwBufferSignal_dff_clock_modulated.D2_PT_1/IN1 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.D2/IN0  (
    .I(\dff_clock_modulated.D2_PT_0_29 ),
    .O(\NlwBufferSignal_dff_clock_modulated.D2/IN0 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated.D2/IN1  (
    .I(\dff_clock_modulated.D2_PT_1_31 ),
    .O(\NlwBufferSignal_dff_clock_modulated.D2/IN1 )
  );
  X_BUF   \NlwBufferBlock_d0_shreg.REG/IN  (
    .I(\d0_shreg.D_33 ),
    .O(\NlwBufferSignal_d0_shreg.REG/IN )
  );
  X_BUF   \NlwBufferBlock_d0_shreg.REG/CLK  (
    .I(FCLKIO_0_3),
    .O(\NlwBufferSignal_d0_shreg.REG/CLK )
  );
  X_BUF   \NlwBufferBlock_d0_shreg.D/IN0  (
    .I(\d0_shreg.D1_34 ),
    .O(\NlwBufferSignal_d0_shreg.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_d0_shreg.D/IN1  (
    .I(\d0_shreg.D2_35 ),
    .O(\NlwBufferSignal_d0_shreg.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_d0_shreg.D2/IN0  (
    .I(d1_shreg_22),
    .O(\NlwBufferSignal_d0_shreg.D2/IN0 )
  );
  X_BUF   \NlwBufferBlock_d0_shreg.D2/IN1  (
    .I(d1_shreg_22),
    .O(\NlwBufferSignal_d0_shreg.D2/IN1 )
  );
  X_BUF   \NlwBufferBlock_d1_shreg.REG/IN  (
    .I(\d1_shreg.D_37 ),
    .O(\NlwBufferSignal_d1_shreg.REG/IN )
  );
  X_BUF   \NlwBufferBlock_d1_shreg.REG/CLK  (
    .I(FCLKIO_0_3),
    .O(\NlwBufferSignal_d1_shreg.REG/CLK )
  );
  X_BUF   \NlwBufferBlock_d1_shreg.D/IN0  (
    .I(\d1_shreg.D1_38 ),
    .O(\NlwBufferSignal_d1_shreg.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_d1_shreg.D/IN1  (
    .I(\d1_shreg.D2_39 ),
    .O(\NlwBufferSignal_d1_shreg.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_d1_shreg.D2/IN0  (
    .I(d0_shreg_21),
    .O(\NlwBufferSignal_d1_shreg.D2/IN0 )
  );
  X_BUF   \NlwBufferBlock_d1_shreg.D2/IN1  (
    .I(d0_shreg_21),
    .O(\NlwBufferSignal_d1_shreg.D2/IN1 )
  );
  X_BUF   \NlwBufferBlock_d0_25duty.REG/IN  (
    .I(\d0_25duty.D_41 ),
    .O(\NlwBufferSignal_d0_25duty.REG/IN )
  );
  X_BUF   \NlwBufferBlock_d0_25duty.REG/CLK  (
    .I(FCLKIO_0_3),
    .O(\NlwBufferSignal_d0_25duty.REG/CLK )
  );
  X_BUF   \NlwBufferBlock_d0_25duty.D/IN0  (
    .I(\d0_25duty.D1_42 ),
    .O(\NlwBufferSignal_d0_25duty.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_d0_25duty.D/IN1  (
    .I(\d0_25duty.D2_43 ),
    .O(\NlwBufferSignal_d0_25duty.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_d0_25duty.D2/IN0  (
    .I(d0_shreg_21),
    .O(\NlwBufferSignal_d0_25duty.D2/IN0 )
  );
  X_BUF   \NlwBufferBlock_d0_25duty.D2/IN1  (
    .I(d1_shreg_22),
    .O(\NlwBufferSignal_d0_25duty.D2/IN1 )
  );
  X_BUF   \NlwBufferBlock_d0_75duty.REG/IN  (
    .I(\d0_75duty.D_46 ),
    .O(\NlwBufferSignal_d0_75duty.REG/IN )
  );
  X_BUF   \NlwBufferBlock_d0_75duty.REG/CLK  (
    .I(FCLKIO_0_3),
    .O(\NlwBufferSignal_d0_75duty.REG/CLK )
  );
  X_BUF   \NlwBufferBlock_d0_75duty.D/IN0  (
    .I(\d0_75duty.D1_47 ),
    .O(\NlwBufferSignal_d0_75duty.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_d0_75duty.D/IN1  (
    .I(\d0_75duty.D2_48 ),
    .O(\NlwBufferSignal_d0_75duty.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_d0_75duty.D2/IN0  (
    .I(d0_shreg_21),
    .O(\NlwBufferSignal_d0_75duty.D2/IN0 )
  );
  X_BUF   \NlwBufferBlock_d0_75duty.D2/IN1  (
    .I(d1_shreg_22),
    .O(\NlwBufferSignal_d0_75duty.D2/IN1 )
  );
  X_BUF   \NlwBufferBlock_d1_75duty.REG/IN  (
    .I(\d1_75duty.D_50 ),
    .O(\NlwBufferSignal_d1_75duty.REG/IN )
  );
  X_BUF   \NlwBufferBlock_d1_75duty.REG/CLK  (
    .I(FCLKIO_0_3),
    .O(\NlwBufferSignal_d1_75duty.REG/CLK )
  );
  X_BUF   \NlwBufferBlock_d1_75duty.D/IN0  (
    .I(\d1_75duty.D1_51 ),
    .O(\NlwBufferSignal_d1_75duty.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_d1_75duty.D/IN1  (
    .I(\d1_75duty.D2_52 ),
    .O(\NlwBufferSignal_d1_75duty.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_d1_75duty.D2/IN0  (
    .I(d0_75duty_45),
    .O(\NlwBufferSignal_d1_75duty.D2/IN0 )
  );
  X_BUF   \NlwBufferBlock_d1_75duty.D2/IN1  (
    .I(d0_75duty_45),
    .O(\NlwBufferSignal_d1_75duty.D2/IN1 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.REG/IN  (
    .I(\dff_clock_modulated$BUF0.D_54 ),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.REG/IN )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.REG/CLK  (
    .I(FCLKIO_0_3),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.REG/CLK )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.D/IN0  (
    .I(\dff_clock_modulated$BUF0.D1_55 ),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.D/IN1  (
    .I(\dff_clock_modulated$BUF0.D2_56 ),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.D2_PT_0/IN0  (
    .I(dffe_trig_out_15),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_0/IN0 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.D2_PT_0/IN1  (
    .I(d1_75duty_28),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_0/IN1 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.D2_PT_1/IN0  (
    .I(dffe_trig_out_15),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_1/IN0 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.D2_PT_1/IN1  (
    .I(d0_25duty_30),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_1/IN1 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.D2/IN0  (
    .I(\dff_clock_modulated$BUF0.D2_PT_0_57 ),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.D2/IN0 )
  );
  X_BUF   \NlwBufferBlock_dff_clock_modulated$BUF0.D2/IN1  (
    .I(\dff_clock_modulated$BUF0.D2_PT_1_58 ),
    .O(\NlwBufferSignal_dff_clock_modulated$BUF0.D2/IN1 )
  );
  X_BUF   \NlwBufferBlock_sma_trig_monitor_1_OBUF.D/IN0  (
    .I(\sma_trig_monitor_1_OBUF.D1_61 ),
    .O(\NlwBufferSignal_sma_trig_monitor_1_OBUF.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_sma_trig_monitor_1_OBUF.D/IN1  (
    .I(\sma_trig_monitor_1_OBUF.D2_62 ),
    .O(\NlwBufferSignal_sma_trig_monitor_1_OBUF.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_sma_trig_monitor_1_OBUF$BUF0.D/IN0  (
    .I(\sma_trig_monitor_1_OBUF$BUF0.D1_65 ),
    .O(\NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF0.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_sma_trig_monitor_1_OBUF$BUF0.D/IN1  (
    .I(\sma_trig_monitor_1_OBUF$BUF0.D2_66 ),
    .O(\NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF0.D/IN1 )
  );
  X_BUF   \NlwBufferBlock_sma_trig_monitor_1_OBUF$BUF1.D/IN0  (
    .I(\sma_trig_monitor_1_OBUF$BUF1.D1_69 ),
    .O(\NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF1.D/IN0 )
  );
  X_BUF   \NlwBufferBlock_sma_trig_monitor_1_OBUF$BUF1.D/IN1  (
    .I(\sma_trig_monitor_1_OBUF$BUF1.D2_70 ),
    .O(\NlwBufferSignal_sma_trig_monitor_1_OBUF$BUF1.D/IN1 )
  );
  X_INV   \NlwInverterBlock_dffe_trig_out.CE/IN1  (
    .I(\NlwBufferSignal_dffe_trig_out.CE/IN1 ),
    .O(\NlwInverterSignal_dffe_trig_out.CE/IN1 )
  );
  X_INV   \NlwInverterBlock_dff_clock_modulated.D2_PT_1/IN0  (
    .I(\NlwBufferSignal_dff_clock_modulated.D2_PT_1/IN0 ),
    .O(\NlwInverterSignal_dff_clock_modulated.D2_PT_1/IN0 )
  );
  X_INV   \NlwInverterBlock_d0_shreg.D2/IN0  (
    .I(\NlwBufferSignal_d0_shreg.D2/IN0 ),
    .O(\NlwInverterSignal_d0_shreg.D2/IN0 )
  );
  X_INV   \NlwInverterBlock_d0_shreg.D2/IN1  (
    .I(\NlwBufferSignal_d0_shreg.D2/IN1 ),
    .O(\NlwInverterSignal_d0_shreg.D2/IN1 )
  );
  X_INV   \NlwInverterBlock_d0_25duty.D2/IN1  (
    .I(\NlwBufferSignal_d0_25duty.D2/IN1 ),
    .O(\NlwInverterSignal_d0_25duty.D2/IN1 )
  );
  X_INV   \NlwInverterBlock_d0_75duty.D/IN0  (
    .I(\NlwBufferSignal_d0_75duty.D/IN0 ),
    .O(\NlwInverterSignal_d0_75duty.D/IN0 )
  );
  X_INV   \NlwInverterBlock_d0_75duty.D2/IN0  (
    .I(\NlwBufferSignal_d0_75duty.D2/IN0 ),
    .O(\NlwInverterSignal_d0_75duty.D2/IN0 )
  );
  X_INV   \NlwInverterBlock_dff_clock_modulated$BUF0.D2_PT_1/IN0  (
    .I(\NlwBufferSignal_dff_clock_modulated$BUF0.D2_PT_1/IN0 ),
    .O(\NlwInverterSignal_dff_clock_modulated$BUF0.D2_PT_1/IN0 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

