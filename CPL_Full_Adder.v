/* Verilog for cell 'CPL_Full_Adder:CPL_Full_Adder{lay}' from library 'CPL_Full_Adder' */
/* Created on Fri Mar 24, 2023 15:10:26 */
/* Last revised on Sat Mar 25, 2023 09:58:15 */
/* Written on Sat Mar 25, 2023 09:59:40 by Electric VLSI Design System, version 9.07 */

module CPL_Full_Adder(A, Abar, B, Bbar, C, Cbar, Carry, CarryBar, Sum, SumBar, 
      vdd, gnd);
  input A;
  input Abar;
  input B;
  input Bbar;
  input C;
  input Cbar;
  output Carry;
  output CarryBar;
  output Sum;
  output SumBar;
  input vdd;
  input gnd;

  supply1 vdd;
  supply0 gnd;
  wire net_1, net_2, net_4, net_5, net_124, net_138, net_144, net_154, net_160;
  wire net_169;

  tranif1 nmos_0(net_1, Bbar, A);
  tranif1 nmos_1(net_1, B, Abar);
  tranif1 nmos_2(net_2, B, A);
  tranif1 nmos_3(net_2, Bbar, Abar);
  tranif1 nmos_4(net_5, net_1, Cbar);
  tranif1 nmos_5(net_5, net_2, C);
  tranif1 nmos_6(net_4, net_1, C);
  tranif1 nmos_7(net_4, net_2, Cbar);
  tranif1 nmos_8(SumBar, gnd, net_5);
  tranif1 nmos_9(Sum, gnd, net_4);
  tranif1 nmos_10(net_124, B, A);
  tranif1 nmos_11(net_124, gnd, Abar);
  tranif1 nmos_12(net_138, gnd, A);
  tranif1 nmos_13(net_138, Bbar, Abar);
  tranif1 nmos_14(net_144, vdd, A);
  tranif1 nmos_15(net_144, B, Abar);
  tranif1 nmos_16(net_154, Bbar, A);
  tranif1 nmos_17(net_154, vdd, Abar);
  tranif1 nmos_18(net_160, net_124, Cbar);
  tranif1 nmos_19(net_160, net_144, C);
  tranif1 nmos_20(net_169, net_154, Cbar);
  tranif1 nmos_21(net_169, net_138, C);
  tranif1 nmos_22(CarryBar, gnd, net_160);
  tranif1 nmos_23(Carry, gnd, net_169);
  tranif0 pmos_0(SumBar, vdd, net_5);
  tranif0 pmos_1(net_4, vdd, net_5);
  tranif0 pmos_2(net_5, vdd, net_4);
  tranif0 pmos_3(Sum, vdd, net_4);
  tranif0 pmos_4(CarryBar, vdd, net_160);
  tranif0 pmos_5(net_169, vdd, net_160);
  tranif0 pmos_6(net_160, vdd, net_169);
  tranif0 pmos_7(Carry, vdd, net_169);
endmodule   /* CPL_Full_Adder */
