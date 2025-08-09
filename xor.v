//gate level modelling of half adder using xor gate.
module ha_gate_level(x,y,s,c);
input x,y;
output s,c;
xor x1(s,x,y);
and a1(c,x,y):
endmodule

//gate level modeling of full adder
module full_adder_gate_level(x,y,z,s,c);
input x,y,z;
output s,c;
wire w1,w2,w3;
xor xor1(w1,x,y);
xor xor2(s,w1,z);
and and1(w2,x,y);
and and2(w3,w1,z);
or  o1(c,w3,w2);
endmodule
failed
//full adder using 2 half adders-gate level
module full_adder_gate_level_with_port_mapping(x,y,z,s,c);
input x,y,z;
output s,c;
wires s_ha1,c_ha1,c_ha2;
ha_gate_level_port HA1(x,y,s_ha1,c_ha1);
/*this ha_hate_level_port is another file we create in the 
project and it is a half adder gate level referencing the half adders
in the design. 2 half addders in the design of the full adder.*/
ha_gate_level_port HA2(z,s_ha1,s,c_ha2);
or OR1(c,c_ha1,c_ha2);
endmodule

//half adder that is referenced above
module ha_gate_level_port(x,y,s,c);
input x,y;
output s,c;
xor x1(s,x,y);
and a1(c,x,y);
endmodule
