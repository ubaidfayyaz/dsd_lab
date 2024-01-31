module tb_mycircuit;
    
    // signal generators
    logic A, B, C;

    mycircuit dut (
        .a(A),
        .b(B),
        .c(C),
        .y(Y)
    );

    initial begin
        A = 0;
        B = 0;
        C = 1;
        #10
        A = 1;
        #10
        B = 1;
        #5 
        C = 0;
        #2 
        A = 1;
        #2
        $stop;
    end

    initial
    begin
        $monitor("a = %d, b = %d, c = %d, y = %d", A, B, C, Y);
    end
endmodule