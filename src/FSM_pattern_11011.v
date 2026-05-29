module FSM_pattern_11011(
    input wire din,
    input wire clk,
    input wire reset,
    output reg Z
);

// State Encoding
parameter Sin    = 3'b000,
          S1     = 3'b001,
          S11    = 3'b010,
          S110   = 3'b011,
          S1101  = 3'b100,
          S11011 = 3'b101;

reg [2:0] state, next_state;

//
// Sequential Block
//
always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= Sin;
    else
        state <= next_state;
end

//
// Combinational Block
//
always @(state or din)
begin

    // Default values
    next_state = state;
    Z = 1'b0;

    case(state)

        Sin:
        begin
            if(din == 1'b1)
                next_state = S1;
            else
                next_state = Sin;
        end

        S1:
        begin
            if(din == 1'b1)
                next_state = S11;
            else
                next_state = Sin;
        end

        S11:
        begin
            if(din == 1'b1)
                next_state = S11;
            else
                next_state = S110;
        end

        S110:
        begin
            if(din == 1'b1)
                next_state = S1101;
            else
                next_state = Sin;
        end

        S1101:
        begin
            if(din == 1'b1)
                next_state = S11011;
            else
                next_state = Sin;
        end

        S11011:
        begin
            Z = 1'b1;

            if(din == 1'b1)
                next_state = S11;
            else
                next_state = Sin;
        end

        default:
        begin
            next_state = Sin;
            Z = 1'b0;
        end

    endcase

end

endmodule
