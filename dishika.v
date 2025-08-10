//write a verilog code to implement a function.
// y = (b ' ? c') + (a' ? b')
//we will make a test bench too.
module sillyfunction(y,a,b,c);
input a,b,c;
output y;
assign y= ~b&~c|~a&~b;
endmodule
//this is dataflow modeling-ASSIGN KEYWORD

//now the test bench:testbenches are almost always in behavioural.
module testbench_tb();
reg a,b,c;
wire y;
/*instantiate the dut-device under test,
here we will refernce the above module, by calling it by its name
and we will give the inputs-possible inputs or the ones we choose.
then also give the timeperiod. 10ns*/
initial begin
a=0;b=0;c=0; #10;
c=1;#10;
b=1;c=0;#10;
c=1;#10;
a=1;b=0;c=10;#10;
end
endmodule

//4to1 mux in dataflow.
//a subtractor 4 bit
//full subtractor using half subtractor
//4 bit ripple carry adder
//a bit full adder
// a 4 bit twos complement adder.
//9 bit parity generator
// all bit 0 1 indicator.
//implementation of basic gates.
//1 bit full adder
//loops-forever repeat for while 
