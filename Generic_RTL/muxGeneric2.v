// Generating any mux using a 2*1 multiplexer

module muxGeneric2 #(parameter muxSize=8)(selector,d,Q);
	
	
	parameter selectorSize=$clog2(muxSize);
	input  [selectorSize-1:0] selector;
	input  [muxSize-1:0] d;
	output   Q;
	
	wire [muxSize-1:0] out [selectorSize:0];
	
	
	assign out[0]=d;
	
	
    if (muxSize==1) 
        begin
        
         assign Q = (d[0] & ~(selector[0])) ;
        end
    if (muxSize==2) 
        begin
        
        mux2 test(.cmd(selector),.i0(d[0]),.i1(d[1]),.Q(Q));
        end
        
    else 
        begin          
          genvar i;
          for (i=0;i<selectorSize;i=i+1)
            begin
             if ((muxSize%(2**i))==0)
                begin
                  if (((muxSize/(2**i))%2)==0)
                    begin
                     genvar j;
                     for (j=0;j<(muxSize/(2**i));j=j+2)
                     begin
                      mux2 test0(.cmd(selector[i]),.i0(out[i][j]),.i1(out[i][j+1]),.Q(out[i+1][j/2]));
                     end
                    end
               
                  else
                    begin
                     genvar k;
                     for (k=0;k<((muxSize/(2**i))-1);k=k+2)
                     begin
                      mux2 test1(.cmd(selector[i]),.i0(out[i][k]),.i1(out[i][k+1]),.Q(out[i+1][k/2]));
                     end
                     assign out[i+1][((muxSize/(2**i)-1)/2)]=out[i][(muxSize/(2**i)-1)];
                    end
                
                end
                
             else
                begin
                  if ((((muxSize/(2**i))+1)%2)==0)
                    begin
                     genvar j;
                     for (j=0;j<((muxSize/(2**i))+1);j=j+2)
                     begin
                      mux2 test0(.cmd(selector[i]),.i0(out[i][j]),.i1(out[i][j+1]),.Q(out[i+1][j/2]));
                     end
                    end
               
                  else
                    begin
                     genvar k;
                     for (k=0;k<(muxSize/(2**i));k=k+2)
                     begin
                      mux2 test1(.cmd(selector[i]),.i0(out[i][k]),.i1(out[i][k+1]),.Q(out[i+1][k/2]));
                     end
                     assign out[i+1][(muxSize/(2**i)/2)]=out[i][(muxSize/(2**i))];
                    end
                
                end
            end
            assign Q=out[selectorSize][0];
        end
	
	endmodule 
