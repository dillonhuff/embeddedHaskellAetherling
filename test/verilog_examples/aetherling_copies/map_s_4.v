module coreir_ugt #(parameter width = 1) (input [width-1:0] in0/*verilator public*/, input [width-1:0] in1/*verilator public*/, output out/*verilator public*/);
  assign out = in0 > in1;
endmodule

module coreir_neg #(parameter width = 1) (input [width-1:0] in/*verilator public*/, output [width-1:0] out/*verilator public*/);
  assign out = -in;
endmodule

module coreir_mux #(parameter width = 1) (input [width-1:0] in0/*verilator public*/, input [width-1:0] in1/*verilator public*/, input sel/*verilator public*/, output [width-1:0] out/*verilator public*/);
  assign out = sel ? in1 : in0;
endmodule

module top (input CLK/*verilator public*/, output [7:0] O/*verilator public*/, input [7:0] hi/*verilator public*/, output valid_down/*verilator public*/, input valid_up/*verilator public*/);
wire [7:0] Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out;
wire [7:0] Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out;
wire Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$coreir_ugt8_inst0_out;
coreir_mux #(.width(8)) Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join(.in0({hi[7],hi[6],hi[5],hi[4],hi[3],hi[2],hi[1],hi[0]}), .in1({Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out[7],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out[6],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out[5],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out[4],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out[3],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out[2],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out[1],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out[0]}), .out(Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out), .sel(Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$coreir_ugt8_inst0_out));
coreir_neg #(.width(8)) Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0(.in(hi), .out(Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out));
coreir_ugt #(.width(8)) Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$coreir_ugt8_inst0(.in0(hi), .in1(Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Negate8_inst0$coreir_neg_inst0_out), .out(Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$coreir_ugt8_inst0_out));
assign O = {Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out[7],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out[6],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out[5],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out[4],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out[3],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out[2],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out[1],Map_T_n4_i0_opModule_0_f_in_Array_8_In_Bit___O_Array_8_Out_Bit___CLK_In_Clock__valid_up_In_Bit__valid_down_Out_Bit___inst0$Module_0_inst0$Abs_Atom_inst0$Mux_Array_8_Bit_t_2n_inst0$CommonlibMuxN_n2_w8_inst0$_join_out[0]};
assign valid_down = valid_up;
endmodule

