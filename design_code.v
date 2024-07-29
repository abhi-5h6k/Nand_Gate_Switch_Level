`timescale 1ns / 1ps

module naand_gate(
       input A,B,
       output Vout
    );
    
    supply1 vdd;
    supply0 gnd;
    
    wire t1;
    pmos p1(Vout, vdd, A);
    pmos p2(Vout, vdd, B); 
    
    nmos n1(Vout, t1, A);
    nmos n2(t1, gnd, B);
    
endmodule
