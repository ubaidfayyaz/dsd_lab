module mycircuit (
    input a, b, c,
    output logic y
);

always_comb begin : mylogic
    y = (~(a&&b)) || c;
end
    
endmodule