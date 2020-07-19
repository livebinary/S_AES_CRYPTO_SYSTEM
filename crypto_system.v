module crypto_system(plain,keyin,cipherout,plainout);
input [15:0]plain,keyin;
output [15:0]cipherout,plainout;

wire [15:0] k0,k1,k2,cipo;
key key1(keyin,k0,k1,k2);
encryption b(plain,k0,k1,k2,cipo);
assign cipherout = cipo;
decryption gc(cipo,k0,k1,k2,plainout);

endmodule 