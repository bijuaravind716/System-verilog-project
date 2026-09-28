module clock_divider (
    input  wire clk,
    input  wire rst_n,

    output reg clk_1mhz
);

    reg [5:0] count;

    always @(posedge clk or negedge rst_n) begin

        if(!rst_n) begin
            count    <= 6'd0;
            clk_1mhz <= 1'b0;
        end

        else begin

            if(count == 6'd49) begin
                count    <= 6'd0;
                clk_1mhz <= ~clk_1mhz;
            end

            else begin
                count <= count + 1'b1;
            end

        end

    end

endmodule