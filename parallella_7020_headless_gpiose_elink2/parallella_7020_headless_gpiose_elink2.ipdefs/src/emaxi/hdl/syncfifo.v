/*
 Copyright (C) 2014 Adapteva, Inc.
 Contributed by Fred Huettig <fred@adapteva.com>
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program (see the file COPYING).  If not, see
 <http://www.gnu.org/licenses/>.
 */
/*
 ########################################################################
 Generic small FIFO using distributed memory
 
 Caution:  There is no protection against overflow or underflow,
           driving logic should avoid wen on full or ren on empty.
 ########################################################################
 */

module syncfifo
  #(
    // Address width (must be 5 => 32-deep FIFO)
    parameter AW = 5,
    // Data width
    parameter DW = 16
    )
   (
    input                clk,
    input                reset,
    input [DW-1:0]       wdata,
    input                wen,
    input                ren,
    output wire [DW-1:0] rdata,
    output reg           empty,
    output reg           full
    );
   
   reg [AW-1:0]          waddr;
   reg [AW-1:0]          raddr;
   reg [AW-1:0]          count;
   
   always @ ( posedge clk ) begin
      if( reset ) begin

         waddr <= 'd0;
         raddr <= 'd0;
         count <= 'd0;
         empty <= 1'b1;
         full  <= 1'b0;
         
      end else begin

         if( wen & ren ) begin

            waddr <= waddr + 'd1;
            raddr <= raddr + 'd1;

         end else if( wen ) begin

            waddr <= waddr + 'd1;
            count <= count + 'd1;
            empty <= 1'b0;
            if( & count )
              full <= 1'b1;

         end else if( ren ) begin

            raddr <= raddr + 'd1;
            count <= count - 'd1;
            full <= 1'b0;
            if( count == 'd1 )
              empty <= 1'b1;

         end
      end // else: !if( reset )
   end // always @ ( posedge clk )
   
   genvar               dn;
   
   generate for(dn=0; dn<DW; dn=dn+1)
     begin : genbits
        RAM32X1D RAM32X1D_inst
          (
           .DPO(rdata[dn] ),   // Read-only 1-bit data output
           .SPO(),            // Rw/ 1-bit data output
           .A0(waddr[0]),     // Rw/ address[0] input bit
           .A1(waddr[1]),     // Rw/ address[1] input bit
           .A2(waddr[2]),     // Rw/ address[2] input bit
           .A3(waddr[3]),     // Rw/ address[3] input bit
           .A4(waddr[4]),     // Rw/ address[4] input bit
           .D(wdata[dn]),     // Write 1-bit data input
           .DPRA0(raddr[0]),  // Read-only address[0] input bit
           .DPRA1(raddr[1]),  // Read-only address[1] input bit
           .DPRA2(raddr[2]),  // Read-only address[2] input bit
           .DPRA3(raddr[3]),  // Read-only address[3] input bit
           .DPRA4(raddr[4]),  // Read-only address[4] input bit
           .WCLK(clk),        // Write clock input
           .WE(wen)           // Write enable input
           );
     end
   endgenerate
   
endmodule // syncfifo

