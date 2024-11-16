module odd_togggle_fsm (
    input wire clk,        
    input wire rst,        
    input wire toggle_in,  
    output reg odd_even    
);

    reg prev_toggle_in;    // Previous value of toggle_in to detect transitions
    reg [31:0] transition_count; // Count transitions
    reg [1:0] state, next_state; // State registers for FSM
    reg odd_pulse; // Signal to pulse odd_even for one cycle

    // State encoding
    localparam S0 = 2'b00,  // State 0: Even number of transitions
               S1  = 2'b01;  // State 1: Odd number of transitions

    // Sequential logic for state transition and counting
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            prev_toggle_in <= 0;           
            transition_count <= 0;         
            odd_even <= 0;                
            state <= S0;                
            odd_pulse <= 0;  // Reset pulse signal
        end else begin
            state <= next_state;          
            odd_even <= odd_pulse; // Set output pulse for one cycle
            prev_toggle_in <= toggle_in;  // Update previous input for detecting changes
            odd_pulse <= 0; // Reset pulse signal after setting the output
        end
    end

    // Combinational logic for state transitions and odd pulse logic
    always @(state or toggle_in or prev_toggle_in) begin
        // Default values for next state and pulse
        next_state = state;
        odd_pulse = 0;

        case (state)
            S0: begin
                if (toggle_in != prev_toggle_in) begin
                    next_state = S1;  // Transition to ODD state if a change occurs
                    transition_count = transition_count + 1; // Increment transition count
                    if (transition_count % 2 == 1) begin
                        odd_pulse = 1;  // Set pulse high for one cycle when odd number of transitions
                    end
                end else begin
                    next_state = S0; // No change, remain in EVEN state
                end
            end
            
            S1: begin
                if (toggle_in != prev_toggle_in) begin
                    next_state = S0;  // Transition to EVEN state if a change occurs
                    transition_count = transition_count + 1; // Increment transition count
                    if (transition_count % 2 == 1) begin
                        odd_pulse = 1;  // Set pulse high for one cycle when odd number of transitions
                    end
                end else begin
                    next_state = S1; // No change, remain in ODD state
                end
            end
            
            default: begin
                next_state = S0;  
            end
        endcase
    end

endmodule
