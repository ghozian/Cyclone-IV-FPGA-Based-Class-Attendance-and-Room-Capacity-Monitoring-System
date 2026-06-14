module status_logic (
    input  wire [5:0] count,
    output reg  [1:0] status,
    output reg  led_aman,
    output reg  led_half,
    output reg  led_full
);

    always @(*) begin
        status = 2'd0;

        // Default semua LED mati
        led_aman = 1'b1;
        led_half = 1'b1;
        led_full = 1'b1;

        if (count < 10) begin
            status = 2'd0;      // AMAN
            led_aman = 1'b0;    // LED 1 menyala
            led_half = 1'b1;
            led_full = 1'b1;
        end else if (count < 20) begin
            status = 2'd1;      // HALF
            led_aman = 1'b1;
            led_half = 1'b0;    // LED 2 menyala
            led_full = 1'b1;
        end else begin
            status = 2'd2;      // FULL
            led_aman = 1'b0;    // LED 1 menyala
            led_half = 1'b0;    // LED 2 menyala
            led_full = 1'b0;    // LED 3 menyala
        end
    end

endmodule