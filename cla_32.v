module cla_32(
	clk,
	reset,
	Carry_in,
	A,
	B,
	Carry_out,
	Sum_out
);


input wire	clk;
input wire	reset;
input wire	Carry_in;
input wire	[31:0] A;
input wire	[31:0] B;
output reg	Carry_out;
output reg	[31:0] Sum_out;

reg	dff3;
reg	[31:0] dff1;
reg	[31:0] dff2;
wire	[31:0] sum_wire;
wire carry_wire;





cla_32_adder(
	.Carry_in(dff3),
	.A(dff1),
	.B(dff2),
	.Carry_out(carry_wire),
	.Sum(sum_wire));


always@(posedge clk or negedge reset)
begin
if (!reset)
	begin
	dff1[31:0] <= 32'b00000000000000000000000000000000;
	end
else
	begin
	dff1[31:0] <= A[31:0];
	end
end


always@(posedge clk or negedge reset)
begin
if (!reset)
	begin
	dff2[31:0] <= 32'b00000000000000000000000000000000;
	end
else
	begin
	dff2[31:0] <= B[31:0];
	end
end


always@(posedge clk or negedge reset)
begin
if (!reset)
	begin
	dff3 <= 0;
	end
else
	begin
	dff3 <= Carry_in;
	end
end


always@(posedge clk or negedge reset)
begin
if (!reset)
	begin
	Sum_out[31:0] <= 32'b00000000000000000000000000000000;
	Carry_out <= 1'b0;
	end
else
	begin
	Sum_out[31:0] <= sum_wire[31:0];
	Carry_out <= carry_wire;
	end
end


endmodule