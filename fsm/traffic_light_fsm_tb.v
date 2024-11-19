module testbench;
  reg clk;
  wire [1:0] state;

  traffic_light_fsm instance1 (
    .clk(clk), .state(state)
  );

  // clock generation
  initial begin
    $dumpfile("traffic_light_fsm_gtk_tb.vcd");
    $dumpvars(0, fsm);

    clk = 0;
    forever #10 clk = ~clk; // toggling the clock
  end

  initial begin
    #200;
    $finish;
  end

  initial begin
    $monitor("time=%g, State = %b 00-RED, 01-GREEN, 10-YELLOW", $time, state);
  end
  
endmodule