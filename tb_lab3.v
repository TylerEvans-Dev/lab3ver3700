module tb_lab3();
//twos com var
reg [3:0]A;
reg [3:0]B;
reg C;
wire [2:0]F;

lab3A comp(.A(A), .B(B), .C(C), .F(F));


//three cases to be tested 

initial  begin
//twos complement comp.
//when c = 1 and A>B
	//a is 7
	A[3:0] = 4'b0111;
	//b is 5
	B[3:0] = 4'b0101;
	//c
	C = 1;
	#10;
	$display("2s comp");
	$display("the result should be a greater 001 the res is %b %b %b", F[2], F[1], F[0]); 
//when c = 1 and A<B
	//a is 5
	A[3:0] = 4'b0101;
	//b is 7
	B[3:0] = 4'b0111;
	//c
	C = 1;
	#10;
	$display("the result should be b greater 100 the res is %b %b %b", F[2], F[1], F[0]);
//when c = 1 and A==B
	//a is 5
	A[3:0] = 4'b0101;
	//b is 5
	B[3:0] = 4'b0101;
	//c
	C = 1;
	#10;
	$display("the result should be equal  010 the res is %b %b %b", F[2], F[1], F[0]);

//signed comp. 
//when c = 0 and A>B
	//a is 5
	A[3:0] = 4'b0101;
	//b is -5
	B[3:0] = 4'b1101;
	//c
	C = 0;
	#10;
	$display("SIGNED values");
	$display("a should be greater as 001 the res is %b %b %b", F[2], F[1], F[0]);
//when c = 0 and A<B
	//a is -5
	A[3:0] = 4'b1101;
	//b is 5
	B[3:0] = 4'b0101;
	//c
	C = 0;
	#10;
	$display("b is greater res should be 100 the res is %b %b %b", F[2], F[1], F[0]);
//when c = 0 and A==B
	//a is 7
	A[3:0] = 4'b0111;
	//b is 7
	B[3:0] = 4'b0111;
	//c was simulated as 1 but was supposed to be 0 
	C = 1;
	#10;
	$display("the result should be equal  010 the res is %b %b %b", F[2], F[1], F[0]);
end

endmodule