`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/14/2022 11:24:27 PM
// Design Name: 
// Module Name: wrapper_d
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


module wrapper_d
    (
        input clk,
        input baud_clk,
    
        input rx,
        output reg tx,
        
        output reg [127:0] p_block,
        output reg [127:0] k_block,
        
        input [127:0] c_block
    );
    
    reg [9:0] counter = 0;
    reg [2:0] trans = 0;
    
    reg [127:0] p_block_buf;
    reg [127:0] k_block_buf;
    reg [127:0] c_block_buf;
    
    reg [7:0] p_pointer = 0;
    reg [7:0] k_pointer = 0;
    reg idle = 0;
    
    initial begin
        tx <= 1;
    end
    
    
    always @(posedge baud_clk) begin
        if (!trans[0] && rx == 0) begin
            trans[0] <= 1;
            idle <= 0;
            $display(rx);
        end
        
        if (trans[0] && counter != 'b111) begin
            if(p_pointer != 'b10000000) begin
                p_block_buf[p_pointer] <= rx;
                p_pointer = p_pointer + 1;
            end
        
            else begin
                if(k_pointer != 'b10000000) begin
                    k_block_buf[k_pointer] <= rx;
                    k_pointer = k_pointer + 1;
                end
                else begin
                    trans[0] <= 0;
                    trans[1] <= 1;
                    counter <= 0;               
                end
            end
            
            counter = counter + 1;
        end
        else begin
            if(counter == 'b111) begin
                trans[0] <= 0;
                counter <= 0;
            end
            
        end
        
        if (trans[1]) begin
            p_block <= p_block_buf;
            k_block <= k_block_buf;        
        end
        
        if(trans[2] && counter != 'b111 && !idle) begin
            if(p_pointer != 0) begin
                tx <= p_block_buf[p_pointer];
                p_pointer = p_pointer - 1;
            end
            else begin
                if(k_pointer != 0) begin
                    tx <= k_block_buf[k_pointer];
                    k_pointer = k_pointer - 1;
                end
                else begin
                    counter <= 0;
                    trans <= 0;             
                end
            
            end
        
        end
        else begin
            if(counter == 'b111) begin
                tx <= 1;
                counter <= 0;
                idle <= 1;
            end
        end
        
        if(idle) begin
            tx <= 1;
            idle <= 1;
        end
    
    end
    
    always @(posedge clk) begin
        if(counter == 90) begin
            c_block_buf <= c_block;
            trans[2] <= 1;
            trans[1] <= 0;
            counter <= 0;
        end
        if(trans[1]) begin
            counter = counter + 1;
        end     
    end
    
    
   
    
   
endmodule
