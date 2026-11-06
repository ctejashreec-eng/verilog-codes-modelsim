module dff(d,clk,rst,q,qb); 
input d,clk,rst; 
output q,qb; 
reg q,qb; 
always@(posedge clk,posedge rst) 
begin
if (rst==1) 
begin q=0; qb=~q; end 
else 
begin q=d; qb=~q; end 
end 
endmodule 
