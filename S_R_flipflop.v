
module SR_flipflop(
  input clk,reset,S,R,
  output reg Q,Qbar
);
always @(posedge clk)
begin
   if (reset)begin
     Q<=0;
     Qbar<=1;
      end
   else begin
       if (S)
       Q<=1;
       else if(R)
       Q<=0;
       else if(S && R)
       Q<=1'bx;
       else Q<=Q;
 Qbar<=Q;
 end
 end
   
endmodule
