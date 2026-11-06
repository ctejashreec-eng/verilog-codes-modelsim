module dff_tb; 
reg d; 
reg clk; 
reg rst; 
wire q; 
wire qb; 
dff uut (.d(d), .clk(clk), .rst(rst), .q(q), .qb(qb)); 
initial 
begin 
rst = 1; clk = 0;d=0; 
end 
always #25 clk = ~clk; 
always #20 rst=0; 
always #100 d=~d; 
endmodule 
