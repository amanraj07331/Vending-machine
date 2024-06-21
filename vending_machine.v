module vending_machine(
    input clk,rst, // by default net(cannot store value)
    input [1:0] in,
    output reg out, //explicitly declare reg(can store values)(1bit; values -0 and 1 )
    output reg [1:0] change //change is 2 bit; 00=0rs 01=5rs 10=10rs
);
parameter s0= 2'b00; //0rs
parameter s1= 2'b01; //5 rs
parameter s2= 2'b10; //10rs

reg [1:0] c_state,n_state;

always @(posedge clk)
    begin
        if (rst==1) begin
            c_state=s0;
            n_state=s0;
            change=0;
            out=0;
        end
        else 
            c_state=n_state;

            case (c_state)
                s0: begin 
                    if(in==0) begin
                        out=0;
                        change=0;
                        n_state=s0;
                    end
                    else if(in == 2'b01) begin
                        out=0;
                        change=0;
                        n_state=s1;
                    end
                    else if(in==2'b10) begin
                        out=0;
                        change=0;
                        n_state=s2;
                    end
                    
                end
                s1:
                    if(in==0) begin
                        out=0;
                        change=2'b01;
                        n_state=s0;
                    end
                    else if(in==2'b01) begin
                        out = 0;
                        change = 0;
                        n_state= s2;
                    end
                    else if(in==2'b10) begin
                        out=1;
                        change=0;
                        n_state=s0;
                    end
                s2:
                    if(in==0) begin
                        out=0;
                        change=2'b10;
                        n_state=s0;
                    end
                    else if(in==2'b01) begin
                        out = 1;
                        change = 0;
                        n_state= s0;
                    end
                    else if(in==2'b10) begin
                        out=1;
                        change=2'b01;
                        n_state=s0;
                    end
            endcase
    end
endmodule
