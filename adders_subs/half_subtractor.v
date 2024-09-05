module half_subtractor (input A, input Bin, output D, output Bout);
    assign D = A ^ Bin;  
    assign Bout = ~A & Bin;
endmodule