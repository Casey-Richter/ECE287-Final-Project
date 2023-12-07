module text(clk, rst, xCount, yCount, game_over_text, win_text, level_text, level_num0_text, level_num1_text, level_num2_text);
input clk, rst;
input [9:0]xCount;
input [9:0] yCount;
wire [9:0] xCount;
wire [9:0] yCount;

output game_over_text;
output win_text;
output level_text;
output level_num0_text;
output level_num1_text;
output level_num2_text;



//game over
wire game_over_text;
assign game_over_text = (go1 || go2 || go3 || go4 || go5 || go6 || go7 || go8 || go9 || go10);
reg [9:0] game_overX[0:31];
reg [8:0] game_overY[0:31];

//"GAME"
reg go1, go2, go3, go4, go5;


//"OVER"
reg go6, go7, go8, go9, go10;

always@(posedge clk) 
	begin	
			if (rst == 1'b0)
				begin
					game_overX[0] = 10'd200;
					game_overY[0] = 9'd200;
					
				end
			else
				begin
					//"GAME"
					go1 = ((yCount >= (game_overY[0] + 9'd0))  && (yCount < (game_overY[0] + 9'd10)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd150)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd260)) )  );
					go2 = ((yCount >= (game_overY[0] + 9'd10)) && (yCount < (game_overY[0] + 9'd20)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd160)) && (xCount < (game_overX[0] + 10'd170)) ) || ( (xCount >= (game_overX[0] + 10'd180)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) );
					go3 = ((yCount >= (game_overY[0] + 9'd20)) && (yCount < (game_overY[0] + 9'd30)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd30)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd160)) && (xCount < (game_overX[0] + 10'd170)) ) || ( (xCount >= (game_overX[0] + 10'd180)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd240)) ) );
					go4 = ((yCount >= (game_overY[0] + 9'd30)) && (yCount < (game_overY[0] + 9'd40)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd40)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd160)) && (xCount < (game_overX[0] + 10'd170)) ) || ( (xCount >= (game_overX[0] + 10'd180)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) );
					go5 = ((yCount >= (game_overY[0] + 9'd40)) && (yCount < (game_overY[0] + 9'd50)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) /*|| ( (xCount >= (game_overX[0] + 10'd160)) && (xCount < (game_overX[0] + 10'd170)) ) */|| ( (xCount >= (game_overX[0] + 10'd180)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd260)) ) );
					
					//"OVER"
					go6 =  ((yCount >= (game_overY[0] + 9'd60))  && (yCount < (game_overY[0] + 9'd70)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd260)) ) );
					go7 =  ((yCount >= (game_overY[0] + 9'd70))  && (yCount < (game_overY[0] + 9'd80)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd40)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) || ( (xCount >= (game_overX[0] + 10'd250)) && (xCount < (game_overX[0] + 10'd260)) ) );
					go8 =  ((yCount >= (game_overY[0] + 9'd80))  && (yCount < (game_overY[0] + 9'd90)))  &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd40)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd70)) && (xCount < (game_overX[0] + 10'd80)) ) || ( (xCount >= (game_overX[0] + 10'd110)) && (xCount < (game_overX[0] + 10'd120)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd170)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd260)) ) );
					go9 =  ((yCount >= (game_overY[0] + 9'd90))  && (yCount < (game_overY[0] + 9'd100))) &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd10)) ) || ( (xCount >= (game_overX[0] + 10'd40)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd80)) && (xCount < (game_overX[0] + 10'd90)) ) || ( (xCount >= (game_overX[0] + 10'd100)) && (xCount < (game_overX[0] + 10'd110)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd150)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) || ( (xCount >= (game_overX[0] + 10'd240)) && (xCount < (game_overX[0] + 10'd250)) ) );
					go10 = ((yCount >= (game_overY[0] + 9'd100)) && (yCount < (game_overY[0] + 9'd110))) &&  ( ( (xCount >= (game_overX[0] + 10'd0)) && (xCount < (game_overX[0] + 10'd50)) ) || ( (xCount >= (game_overX[0] + 10'd90)) && (xCount < (game_overX[0] + 10'd100)) ) || ( (xCount >= (game_overX[0] + 10'd140)) && (xCount < (game_overX[0] + 10'd190)) ) || ( (xCount >= (game_overX[0] + 10'd210)) && (xCount < (game_overX[0] + 10'd220)) ) || ( (xCount >= (game_overX[0] + 10'd250)) && (xCount < (game_overX[0] + 10'd260)) ) );
				end
	end

//win
wire win_text;
assign win_text = (win1 || win2 || win3 || win4 || win5);
reg [9:0] wt_X[0:31];
reg [8:0] wt_Y[0:31];

reg win1, win2, win3, win4, win5;

always @(posedge clk)
	begin
		if (rst == 1'b0)
			begin
				wt_X[0] = 10'd230;
				wt_Y[0] = 9'd230;
			end
		else
			begin
			//"WIN!"
			win1 = ((yCount >= (wt_Y[0] + 9'd0))  && (yCount < (wt_Y[0] + 9'd10)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd40)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd70)) && (xCount < (wt_X[0] + 10'd120)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd150)) ) || ((xCount >= (wt_X[0] + 10'd180)) && (xCount < (wt_X[0] + 10'd190)) ) || ( (xCount >= (wt_X[0] + 10'd200)) && (xCount < (wt_X[0] + 10'd210)) ) );
			win2 = ((yCount >= (wt_Y[0] + 9'd10)) && (yCount < (wt_Y[0] + 9'd20)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd20)) && (xCount < (wt_X[0] + 10'd30)) ) || ( (xCount >= (wt_X[0] + 10'd40)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd90)) && (xCount < (wt_X[0] + 10'd100)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd160)) ) || ((xCount >= (wt_X[0] + 10'd180)) && (xCount < (wt_X[0] + 10'd190)) ) || ( (xCount >= (wt_X[0] + 10'd200)) && (xCount < (wt_X[0] + 10'd210)) ) );
			win3 = ((yCount >= (wt_Y[0] + 9'd20)) && (yCount < (wt_Y[0] + 9'd30)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd20)) && (xCount < (wt_X[0] + 10'd30)) ) || ( (xCount >= (wt_X[0] + 10'd40)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd90)) && (xCount < (wt_X[0] + 10'd100)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd150)) ) || ((xCount >= (wt_X[0] + 10'd160)) && (xCount < (wt_X[0] + 10'd170)) ) || ( (xCount >= (wt_X[0] + 10'd180)) && (xCount < (wt_X[0] + 10'd190)) ) || ( (xCount >= (wt_X[0] + 10'd200)) && (xCount < (wt_X[0] + 10'd210)) ) );
			win4 = ((yCount >= (wt_Y[0] + 9'd30)) && (yCount < (wt_Y[0] + 9'd40)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd20)) && (xCount < (wt_X[0] + 10'd30)) ) || ( (xCount >= (wt_X[0] + 10'd40)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd90)) && (xCount < (wt_X[0] + 10'd100)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd150)) ) || ((xCount >= (wt_X[0] + 10'd170)) && (xCount < (wt_X[0] + 10'd190)) ) );
			win5 = ((yCount >= (wt_Y[0] + 9'd40)) && (yCount < (wt_Y[0] + 9'd50)))  && ( ( (xCount >= (wt_X[0] + 10'd0)) && (xCount < (wt_X[0] + 10'd10)) ) || ( (xCount >= (wt_X[0] + 10'd10)) && (xCount < (wt_X[0] + 10'd50)) ) || ( (xCount >= (wt_X[0] + 10'd70)) && (xCount < (wt_X[0] + 10'd120)) ) || ( (xCount >= (wt_X[0] + 10'd140)) && (xCount < (wt_X[0] + 10'd150)) ) || ((xCount >= (wt_X[0] + 10'd180)) && (xCount < (wt_X[0] + 10'd190)) ) || ( (xCount >= (wt_X[0] + 10'd200)) && (xCount < (wt_X[0] + 10'd210)) ) );
			end
	end
	
endmodule
