module counter_4bit(clk, reset, count);

input clk, reset;  // Gli ingressi sono il clock e il reset
output reg [3:0] count;  // Uscita a 4 bit (dichiariamo count come reg, non wire)

// Logica del contatore
always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 4'b0000;  // Se reset è attivo, azzera il contatore
    end else begin
        count <= count + 1;  // Altrimenti, incrementa il contatore di 1
    end
end

endmodule
