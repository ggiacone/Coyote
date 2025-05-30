/**
  * Copyright (c) 2021, Systems Group, ETH Zurich
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *
  * 1. Redistributions of source code must retain the above copyright notice,
  * this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  * this list of conditions and the following disclaimer in the documentation
  * and/or other materials provided with the distribution.
  * 3. Neither the name of the copyright holder nor the names of its contributors
  * may be used to endorse or promote products derived from this software
  * without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
  * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
  * IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
  * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */


import lynxTypes::*;

module axis_reg_array_vc #(
    parameter integer                           N_STAGES = 2
) (
	input  logic 			                    aclk,
	input  logic 			                    aresetn,

    input  logic [17*ECI_WORD_BITS-1:0]         s_axis_tdata,
    input  logic [ECI_ID_BITS-1:0]              s_axis_tuser,
    input  logic 			                    s_axis_tvalid,
    output logic 			                    s_axis_tready,

    output logic [17*ECI_WORD_BITS-1:0]         m_axis_tdata,
    output logic [ECI_ID_BITS-1:0]              m_axis_tuser,
    output logic 			                    m_axis_tvalid,
    input  logic 			                    m_axis_tready
);

logic [N_STAGES:0][17*ECI_WORD_BITS-1:0] axis_tdata;
logic [N_STAGES:0] axis_tvalid;
logic [N_STAGES:0] axis_tready;
logic [N_STAGES:0][ECI_ID_BITS-1:0] axis_tuser;
logic [N_STAGES:0] axis_tlast;

assign axis_tdata[0] = s_axis_tdata;
assign axis_tvalid[0] = s_axis_tvalid;
assign s_axis_tready = axis_tready[0];
assign axis_tuser[0] = s_axis_tuser;

assign m_axis_tdata = axis_tdata[N_STAGES];
assign m_axis_tvalid = axis_tvalid[N_STAGES];
assign axis_tready[N_STAGES] = m_axis_tready;
assign m_axis_tuser = axis_tuser[N_STAGES];

for(genvar i = 0; i < N_STAGES; i++) begin
    axis_register_slice_vc inst_reg_slice (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_axis_tvalid(axis_tvalid[i]),
        .s_axis_tready(axis_tready[i]),
        .s_axis_tdata(axis_tdata[i]),
        .s_axis_tuser(axis_tuser[i]),
        .m_axis_tvalid(axis_tvalid[i+1]),
        .m_axis_tready(axis_tready[i+1]),
        .m_axis_tdata(axis_tdata[i+1]),
        .m_axis_tuser(axis_tuser[i+1])
    );
end

endmodule