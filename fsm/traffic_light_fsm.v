module traffic_light_fsm(
  input wire clk,  // clock signal
  output reg [1:0] state // 2-bits for 3 states
);
  // set constants for each state
  parameter RED = 2'b00, GREEN = 2'b01, YELLOW = 2'b10;

  always @(posedge clk) begin
    case (state)
      RED: state <= GREEN;
      GREEN: state <= YELLOW;
      YELLOW: state <= RED;
      default: state <= RED; // any undefined state
    endcase
  end

  initial begin
    state = RED; // init the state
  end


endmodule