always_comb notify.tie_off_m();

testLogic inst_test_Logic (
  .io_axi_ctrl_aw_valid(axi_ctrl.awvalid),
  .io_axi_ctrl_aw_ready(axi_ctrl.awready),
  .io_axi_ctrl_aw_payload_addr(axi_ctrl.awaddr),
  .io_axi_ctrl_aw_payload_prot(axi_ctrl.awprot),
  .io_axi_ctrl_w_valid(axi_ctrl.wvalid),
  .io_axi_ctrl_w_ready(axi_ctrl.wready),
  .io_axi_ctrl_w_payload_data(axi_ctrl.wdata),
  .io_axi_ctrl_w_payload_strb(axi_ctrl.wstrb),
  .io_axi_ctrl_b_valid(axi_ctrl.bvalid),
  .io_axi_ctrl_b_ready(axi_ctrl.bready),
  .io_axi_ctrl_b_payload_resp(axi_ctrl.bresp),
  .io_axi_ctrl_ar_valid(axi_ctrl.arvalid),
  .io_axi_ctrl_ar_ready(axi_ctrl.arready),
  .io_axi_ctrl_ar_payload_addr(axi_ctrl.araddr),
  .io_axi_ctrl_ar_payload_prot(axi_ctrl.arprot),
  .io_axi_ctrl_r_valid(axi_ctrl.rvalid),
  .io_axi_ctrl_r_ready(axi_ctrl.rready),
  .io_axi_ctrl_r_payload_data(axi_ctrl.rdata),
  .io_axi_ctrl_r_payload_resp(axi_ctrl.rresp),
  .io_sq_rd_valid(sq_rd.valid),
  .io_sq_rd_ready(sq_rd.ready),
  .io_sq_rd_payload_opcode(sq_rd.data.opcode),
  .io_sq_rd_payload_strm(sq_rd.data.strm),
  .io_sq_rd_payload_mode(sq_rd.data.mode),
  .io_sq_rd_payload_rdma(sq_rd.data.rdma),
  .io_sq_rd_payload_remote(sq_rd.data.remote),
  .io_sq_rd_payload_vfid(sq_rd.data.vfid),
  .io_sq_rd_payload_pid(sq_rd.data.pid),
  .io_sq_rd_payload_dest(sq_rd.data.dest),
  .io_sq_rd_payload_last(sq_rd.data.last),
  .io_sq_rd_payload_vaddr(sq_rd.data.vaddr),
  .io_sq_rd_payload_len(sq_rd.data.len),
  .io_sq_rd_payload_actv(sq_rd.data.actv),
  .io_sq_rd_payload_host(sq_rd.data.host),
  .io_sq_rd_payload_offs(sq_rd.data.offs),
  .io_sq_rd_payload_rsrvd(sq_rd.data.rsrvd),
  .io_sq_wr_valid(sq_wr.valid),
  .io_sq_wr_ready(sq_wr.ready),
  .io_sq_wr_payload_opcode(sq_wr.data.opcode),
  .io_sq_wr_payload_strm(sq_wr.data.strm),
  .io_sq_wr_payload_mode(sq_wr.data.mode),
  .io_sq_wr_payload_rdma(sq_wr.data.rdma),
  .io_sq_wr_payload_remote(sq_wr.data.remote),
  .io_sq_wr_payload_vfid(sq_wr.data.vfid),
  .io_sq_wr_payload_pid(sq_wr.data.pid),
  .io_sq_wr_payload_dest(sq_wr.data.dest),
  .io_sq_wr_payload_last(sq_wr.data.last),
  .io_sq_wr_payload_vaddr(sq_wr.data.vaddr),
  .io_sq_wr_payload_len(sq_wr.data.len),
  .io_sq_wr_payload_actv(sq_wr.data.actv),
  .io_sq_wr_payload_host(sq_wr.data.host),
  .io_sq_wr_payload_offs(sq_wr.data.offs),
  .io_sq_wr_payload_rsrvd(sq_wr.data.rsrvd),
  .io_cq_rd_valid(cq_rd.valid),
  .io_cq_rd_ready(cq_rd.valid),
  .io_cq_rd_payload_opcode(cq_rd.data.opcode),
  .io_cq_rd_payload_strm(cq_rd.data.strm),
  .io_cq_rd_payload_remote(cq_rd.data.remote),
  .io_cq_rd_payload_host(cq_rd.data.host),
  .io_cq_rd_payload_dest(cq_rd.data.dest),
  .io_cq_rd_payload_pid(cq_rd.data.pid),
  .io_cq_rd_payload_vfid(cq_rd.data.vfid),
  .io_cq_rd_payload_rsrvd(cq_rd.data.rsrvd),
  .io_cq_wr_valid(cq_wr.valid),
  .io_cq_wr_ready(cq_wr.ready),
  .io_cq_wr_payload_opcode(cq_wr.data.opcode),
  .io_cq_wr_payload_strm(cq_wr.data.strm),
  .io_cq_wr_payload_remote(cq_wr.data.remote),
  .io_cq_wr_payload_host(cq_wr.data.host),
  .io_cq_wr_payload_dest(cq_wr.data.dest),
  .io_cq_wr_payload_pid(cq_wr.data.pid),
  .io_cq_wr_payload_vfid(cq_wr.data.vfid),
  .io_cq_wr_payload_rsrvd(cq_wr.data.rsrvd),
  .io_axis_card_recv_tdata(axis_card_recv[0].tdata),
  .io_axis_card_recv_tkeep(axis_card_recv[0].tkeep),
  .io_axis_card_recv_tid(axis_card_recv[0].tid),
  .io_axis_card_recv_tlast(axis_card_recv[0].tlast),
  .io_axis_card_recv_tvalid(axis_card_recv[0].tvalid),
  .io_axis_card_recv_tready(axis_card_recv[0].tready),
  .io_axis_card_send_tdata(axis_card_send[0].tdata),
  .io_axis_card_send_tkeep(axis_card_send[0].tkeep),
  .io_axis_card_send_tid(axis_card_send[0].tid),
  .io_axis_card_send_tlast(axis_card_send[0].tlast),
  .io_axis_card_send_tvalid(axis_card_send[0].tvalid),
  .io_axis_card_send_tready(axis_card_send[0].tready),
  .clk(aclk),
  .resetn(aresetn)
);

ila_0 inst_ila_test (
  .clk(aclk),
  .probe0(axi_ctrl.awvalid),               // 1 bit
  .probe1(axi_ctrl.awready),               // 1 bit
  .probe2(axi_ctrl.awaddr),                // 8 bits
  .probe3(axi_ctrl.wvalid),                // 1 bit
  .probe4(axi_ctrl.wready),                // 1 bit
  .probe5(axi_ctrl.wdata),                 // 64 bits
  .probe6(sq_rd.valid),                    // 1 bit
  .probe7(sq_rd.ready),                    // 1 bit
  .probe8(sq_rd.data.vaddr),               // 48 bits
  .probe9(sq_rd.data.len),                 // 2 bits
  .probe10(sq_wr.valid),                   // 1 bit
  .probe11(sq_wr.ready),                   // 1 bit
  .probe12(sq_wr.data.vaddr),              // 48 bits
  .probe13(sq_wr.data.len),                // 2 bits
  .probe14(axis_card_recv[0].tdata),       // 160 bits
  .probe15(axis_card_recv[0].tvalid),      // 1 bit
  .probe16(axis_card_recv[0].tready),      // 1 bit
  .probe17(axis_card_send[0].tdata),       // 160 bits
  .probe18(axis_card_send[0].tvalid),      // 1 bit
  .probe19(axis_card_send[0].tready)       // 1 bit
);
