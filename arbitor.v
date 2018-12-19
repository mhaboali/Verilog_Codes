//the arbitor works with 3 devices a,b,&c such that a has the highest priority and c has the least priority

module arbitor(GNTA,GNTB,GNTC,frame,clk,REQA,REQB,REQC);

output reg GNTA,GNTB,GNTC,frame;
input clk,REQA,REQB,REQC;

reg reg_reqa;
reg reg_reqb;
reg reg_reqc;

assign REQA=reg_reqa;
assign REQB=reg_reqb;
assign REQC=reg_reqc;


always@(posedge clk)
begin

if(REQA==0)    //read at +ve edge
begin
#5             //write at -ve edge
   frame=0;
   reg_reqa=1;
   GNTA=0; // A will be granted once the req is asserted regardless the other devices
end

else if(REQB==0)
begin
	if(REQA==1) 
	begin
	   #5 
	   frame=0;
	   reg_reqb=1;
	   GNTB=0; 
	end

end

else if(REQC==0)

begin
	if(REQA==1&&REQB==1)
	begin
	   #5 
	   frame=0; 
	   reg_reqc=1;
	   GNTC=0;
	end
	
end



end//always








endmodule
