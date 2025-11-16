`timescale 1ns/1ps

module tb_NOT;

reg a;       // 輸入信號
wire b;      // NOT gate 輸出

// DUT: Device Under Test
NOT dut (
    .a(a),
    .b(b)
);

// 產生 VCD 波形 (可用 GTKWave 看)
initial begin
    $dumpfile("not_wave.vcd"); 
    $dumpvars(0, tb_NOT);
end

// 測試向量
initial begin
    // 初始值
    a = 0;
    #10;     // 等 10ns

    a = 1;
    #10;

    a = 0;
    #10;

    $finish; // 結束模擬
end

endmodule