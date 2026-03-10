module sync_ram_tb;

reg clk;
reg we;
reg [3:0] addr;
reg [7:0] data_in;
wire [7:0] data_out;

sync_ram uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .data_in(data_in),
    .data_out(data_out)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;

    $display("Time\tWE\tADDR\tDATA_IN\tDATA_OUT\tOPERATION");

    // WRITE PHASE
    we = 1; addr = 4'b0001; data_in = 8'b10101010; #10;
    $display("%0t\t%b\t%b\t%b\t-\tWRITE", $time, we, addr, data_in);

    we = 1; addr = 4'b0010; data_in = 8'b11110000; #10;
    $display("%0t\t%b\t%b\t%b\t-\tWRITE", $time, we, addr, data_in);

    we = 1; addr = 4'b0011; data_in = 8'b00001111; #10;
    $display("%0t\t%b\t%b\t%b\t-\tWRITE", $time, we, addr, data_in);


    // READ PHASE
    we = 0; addr = 4'b0001; #10;
    $display("%0t\t%b\t%b\t-\t%b\tREAD", $time, we, addr, data_out);

    we = 0; addr = 4'b0010; #10;
    $display("%0t\t%b\t%b\t-\t%b\tREAD", $time, we, addr, data_out);

    we = 0; addr = 4'b0011; #10;
    $display("%0t\t%b\t%b\t-\t%b\tREAD", $time, we, addr, data_out);

    $finish;

end

endmodule
