module crypto_system_tb;
reg [15:0]plain;
reg [15:0]key_in;
wire [15:0] cipherout,plainout;

initial
begin
key_in='hABACABAC;
plain='hDEADBEEF;
#10;
plain='hDADABABA;
#20;
$finish;
end


crypto_system dut (
.plain(plain),
.keyin(key_in),
.cipherout(cipherout),
.plainout(plainout));



endmodule
