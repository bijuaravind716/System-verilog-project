module font_rom (
    input wire [2:0] ascii_code,
    input wire [2:0] row,
    output reg [7:0] row_data
);

    always @(*) begin

        row_data = 8'b00000000;

        case(ascii_code)

            // A
            3'd1: begin
                case(row)
                    3'd0: row_data = 8'b00111100;
                    3'd1: row_data = 8'b01000010;
                    3'd2: row_data = 8'b01000010;
                    3'd3: row_data = 8'b01111110;
                    3'd4: row_data = 8'b01000010;
                    3'd5: row_data = 8'b01000010;
                    3'd6: row_data = 8'b01000010;
                    3'd7: row_data = 8'b00000000;
                endcase
            end

            // B
            3'd2: begin
                case(row)
                    3'd0: row_data = 8'b01111100;
                    3'd1: row_data = 8'b01000010;
                    3'd2: row_data = 8'b01000010;
                    3'd3: row_data = 8'b01111100;
                    3'd4: row_data = 8'b01000010;
                    3'd5: row_data = 8'b01000010;
                    3'd6: row_data = 8'b01111100;
                    3'd7: row_data = 8'b00000000;
                endcase
            end

            // C
            3'd3: begin
                case(row)
                    3'd0: row_data = 8'b00111100;
                    3'd1: row_data = 8'b01000010;
                    3'd2: row_data = 8'b01000000;
                    3'd3: row_data = 8'b01000000;
                    3'd4: row_data = 8'b01000000;
                    3'd5: row_data = 8'b01000010;
                    3'd6: row_data = 8'b00111100;
                    3'd7: row_data = 8'b00000000;
                endcase
            end

            // D
            3'd4: begin
                case(row)
                    3'd0: row_data = 8'b01111000;
                    3'd1: row_data = 8'b01000100;
                    3'd2: row_data = 8'b01000010;
                    3'd3: row_data = 8'b01000010;
                    3'd4: row_data = 8'b01000010;
                    3'd5: row_data = 8'b01000100;
                    3'd6: row_data = 8'b01111000;
                    3'd7: row_data = 8'b00000000;
                endcase
            end

            // E
            3'd5: begin
                case(row)
                    3'd0: row_data = 8'b01111110;
                    3'd1: row_data = 8'b01000000;
                    3'd2: row_data = 8'b01000000;
                    3'd3: row_data = 8'b01111100;
                    3'd4: row_data = 8'b01000000;
                    3'd5: row_data = 8'b01000000;
                    3'd6: row_data = 8'b01111110;
                    3'd7: row_data = 8'b00000000;
                endcase
            end

            // F
            3'd6: begin
                case(row)
                    3'd0: row_data = 8'b01111110;
                    3'd1: row_data = 8'b01000000;
                    3'd2: row_data = 8'b01000000;
                    3'd3: row_data = 8'b01111100;
                    3'd4: row_data = 8'b01000000;
                    3'd5: row_data = 8'b01000000;
                    3'd6: row_data = 8'b01000000;
                    3'd7: row_data = 8'b00000000;
                endcase
            end

            // SPACE
            3'd0: begin
                row_data = 8'b00000000;
            end

            default: begin
                row_data = 8'b00000000;
            end

        endcase

    end

endmodule