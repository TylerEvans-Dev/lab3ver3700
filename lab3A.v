module lab3A(input [3:0]A, input [3:0]B, input C, output reg [2:0]F); 

	reg [3:0]ab;
	//always keyword for using if logic means it will compile every time.
	always @(*) 
		begin
		if (C == 1)
			begin
			if(A[3] > B[3])
					begin
					//B is greater
						F[2] = 1;
						F[1] = 0;
						F[0] = 0;
					end
				
				else if(A[3] < B[3])
					begin
						//A is greater
						F[2] = 0;
						F[1] = 0;
						F[0] = 1;
					end
				//the first bit is equal
				else
					begin
					// a will be greater
						if (A[2:0] > B[2:0])
							//this is equal
							begin
							F[2] = 0;
							F[1] = 0;
							F[0] = 1;
							end
						else if (A[2:0] < B[2:0])
							//b is greater
							begin
							F[2] = 1;
							F[1] = 0;
							F[0] = 0;
							end
						
						else
							begin
							//equal
							F[2] = 0;
							F[1] = 1;
							F[0] = 0;
							end
						
					end
			end
		
		else 
			begin
				if(A[3] > B[3])
					begin
					//B is greater
						F[2] = 1;
						F[1] = 0;
						F[0] = 0;
					end
				
				else if(A[3] < B[3])
					begin
						//A is greater
						F[2] = 0;
						F[1] = 0;
						F[0] = 1;
					end
				//the first bit is equal
				else
					begin
					// a will be greater
						if (A[2:0] > B[2:0])
							//this is equal
							begin
							F[2] = 0;
							F[1] = 0;
							F[0] = 1;
							end
						else if (A[2:0] < B[2:0])
							//b is greater
							begin
							F[2] = 1;
							F[1] = 0;
							F[0] = 0;
							end
						
						else
							begin
							//equal
							F[2] = 0;
							F[1] = 1;
							F[0] = 0;
							end
						
					end
			end
	end
endmodule