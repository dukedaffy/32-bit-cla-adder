module cla_32_adder(input clk,input [31:0]A,input [31:0]B,input Carry_in,output [31:0]Sum, output Carry_out);


wire [31:0]carry_wire;

cla_32_gen(.a(A[31:0]),.b(B[31:0]),.carry_in(Carry_in),.c(carry_wire[31:0]));


assign Carry_out = carry_wire[31];
assign Sum[0]=A[0]^B[0]^Carry_in;
assign Sum[1]=A[1]^B[1]^carry_wire[0];
assign Sum[2]=A[2]^B[2]^carry_wire[1];
assign Sum[3]=A[3]^B[3]^carry_wire[2];
assign Sum[4]=A[4]^B[4]^carry_wire[3];
assign Sum[5]=A[5]^B[5]^carry_wire[4];
assign Sum[6]=A[6]^B[6]^carry_wire[5];
assign Sum[7]=A[7]^B[7]^carry_wire[6];
assign Sum[8]=A[8]^B[8]^carry_wire[7];
assign Sum[9]=A[9]^B[9]^carry_wire[8];

assign Sum[10]=A[10]^B[10]^carry_wire[9];
assign Sum[11]=A[11]^B[11]^carry_wire[10];
assign Sum[12]=A[12]^B[12]^carry_wire[11];
assign Sum[13]=A[13]^B[13]^carry_wire[12];
assign Sum[14]=A[14]^B[14]^carry_wire[13];
assign Sum[15]=A[15]^B[15]^carry_wire[14];
assign Sum[16]=A[16]^B[16]^carry_wire[15];
assign Sum[17]=A[17]^B[17]^carry_wire[16];
assign Sum[18]=A[18]^B[18]^carry_wire[17];
assign Sum[19]=A[19]^B[19]^carry_wire[18];
assign Sum[20]=A[20]^B[20]^carry_wire[19];
assign Sum[21]=A[21]^B[21]^carry_wire[20];
assign Sum[22]=A[22]^B[22]^carry_wire[21];
assign Sum[23]=A[23]^B[23]^carry_wire[22];
assign Sum[24]=A[24]^B[24]^carry_wire[23];
assign Sum[25]=A[25]^B[25]^carry_wire[24];
assign Sum[26]=A[26]^B[26]^carry_wire[25];
assign Sum[27]=A[27]^B[27]^carry_wire[26];
assign Sum[28]=A[28]^B[28]^carry_wire[27];
assign Sum[29]=A[29]^B[29]^carry_wire[28];
assign Sum[30]=A[30]^B[30]^carry_wire[29];
assign Sum[31]=A[31]^B[31]^carry_wire[30];


endmodule
