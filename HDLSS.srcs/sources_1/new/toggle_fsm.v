module toggle_fsm(
    input wire clk,        
    input wire rst,        
    input wire d_in,  
    output reg odd_even 
);
    
    // State encoding
    parameter S0 = 1'b0;  // State 0: Even number of transitions
    parameter S1 = 1'b1;  // State 1: Odd number of transitions
    
    // Internal signals
    reg present_state, next_state;
    reg [31:0] transition_count;  // Transition count
    reg odd_pulse;  // Signal to pulse odd_even output
    
    // Sequential logic (state updates and output pulse generation)
    always @(posedge clk or posedge rst) begin
        if (rst) begin    
            transition_count <= 0;  // Reset transition count
            odd_even <= 0;          // Reset output
            present_state <= S0;    // Initial state
            odd_pulse <= 0;         // Reset odd pulse signal
        end else begin
            present_state <= next_state;  // Update state
            odd_even <= odd_pulse;        // Set output pulse (high for 1 cycle)
        end
    end
    
    // Combinational logic for state transitions and pulse logic
    always @(*) begin
        // Default values
        next_state = present_state;
        odd_pulse = 0;
        
        case(present_state)
            S0: begin
                // Transition occurs if d_in is high
                if (d_in) begin
                    next_state = S1;               // Move to state S1
                    transition_count = transition_count + 1;  // Increment transition count
                    
                    // If transition count is odd, pulse high for one cycle
                    if (transition_count % 2 == 1) begin
                        odd_pulse = 1;
                    end
                end else begin
                    next_state = S0;  // Stay in state S0 if no transition
                end
            end
            
            S1: begin
                // Transition occurs if d_in is high
                if (d_in) begin
                    next_state = S0;               // Move to state S0
                    transition_count = transition_count + 1;  // Increment transition count
                    
                    // If transition count is odd, pulse high for one cycle
                    if (transition_count % 2 == 1) begin
                        odd_pulse = 1;
                    end
                end else begin
                    next_state = S1;  // Stay in state S1 if no transition
                end
            end
            
            default: begin
                next_state = S0;  // Default to state S0
            end
        endcase
    end

endmodule
