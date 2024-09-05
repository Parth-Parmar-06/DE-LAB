module full_subtractor(input A, B, Bin, output D, Bout);
    assign D = A^B^Bin;
    assign Bout = Bin&(~(A^B))|(~A&B);
endmodule