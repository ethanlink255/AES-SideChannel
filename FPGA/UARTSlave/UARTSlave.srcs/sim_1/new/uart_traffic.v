`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2022 04:01:30 AM
// Design Name: 
// Module Name: uart_traffic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_traffic(

    );
    
   parameter PERIOD = 9600;
   reg CLK;
   
   wire[127:0] c_text = 'hDEADBEEFDEADBEEF;
   wire[127:0] p_text = 0;
   wire[127:0] k_block = 0;
   
   wire[127:0] k_text = 'hCAFEBABECAFED00D8A55;
   wire rl_tx;
   
   
   wire rx;
   reg tx;
   
   assign rl_tx = tx;
   
 
  /* always begin
      CLK = 1'b0;
      #(PERIOD/2) CLK = 1'b1;
      #(PERIOD/2);
   end*/
				
				

   reg[7:0] pointer = 0;
   reg[7:0] pointer2 = 0;
   
   reg trans = 0;
   reg complete = 0;
   reg [3:0] counter;
   reg [4:0] init;
  
   initial begin
    tx <= 1;
    counter <= 0;
    init <= 0;
   end
   
   always @(posedge CLK) begin
        if(!complete && init == 'b11111) begin
            if(!trans) begin
                tx <= 0;
                trans <= 1;
                counter <= 0;
            end
            else begin
                if(counter != 'b1000) begin
                    if(pointer != 'b10000000) begin
                        tx <= c_text[pointer];
                        pointer = pointer + 1;
                        counter = counter + 1;
                    end
                    else begin
                         if(pointer2 != 'b10000000) begin
                            tx <= k_text[pointer2];
                            pointer2 = pointer2 + 1;
                            counter = counter + 1;      
                         end 
                         else begin
                            complete <= 1;
                         end
                    end
                end
                else begin
                    trans <= 0;
                    tx <= 1;
                end
               
            end
        end
        
        if(init != 'b11111) begin
            init = init + 1;
            
        end
   end

    wrapper_d test_d(
        .baud_clk(CLK),
        .clk(CLK),
        .tx(rx),
        .rx(rl_tx),
        .p_block(p_text),
        .k_block(k_block),
        .c_block(c_text)
    );	
   
endmodule