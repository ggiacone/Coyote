// Generator : SpinalHDL v1.12.0    git head : 1aa7d7b5732f11cca2dd83bacc2a4cb92ca8e5c9
// Component : testLogic
// Git hash  : 95d85d2f158787909a29d859d202c92236805ac4

`timescale 1ns/1ps

module testLogic (
  input  wire          io_axi_ctrl_aw_valid,
  output wire          io_axi_ctrl_aw_ready,
  input  wire [63:0]   io_axi_ctrl_aw_payload_addr,
  input  wire [2:0]    io_axi_ctrl_aw_payload_prot,
  input  wire          io_axi_ctrl_w_valid,
  output wire          io_axi_ctrl_w_ready,
  input  wire [63:0]   io_axi_ctrl_w_payload_data,
  input  wire [7:0]    io_axi_ctrl_w_payload_strb,
  output wire          io_axi_ctrl_b_valid,
  input  wire          io_axi_ctrl_b_ready,
  output wire [1:0]    io_axi_ctrl_b_payload_resp,
  input  wire          io_axi_ctrl_ar_valid,
  output wire          io_axi_ctrl_ar_ready,
  input  wire [63:0]   io_axi_ctrl_ar_payload_addr,
  input  wire [2:0]    io_axi_ctrl_ar_payload_prot,
  output wire          io_axi_ctrl_r_valid,
  input  wire          io_axi_ctrl_r_ready,
  output wire [63:0]   io_axi_ctrl_r_payload_data,
  output wire [1:0]    io_axi_ctrl_r_payload_resp,
  output wire          io_sq_rd_valid,
  input  wire          io_sq_rd_ready,
  output wire [4:0]    io_sq_rd_payload_opcode,
  output wire [1:0]    io_sq_rd_payload_strm,
  output wire          io_sq_rd_payload_mode,
  output wire          io_sq_rd_payload_rdma,
  output wire          io_sq_rd_payload_remote,
  output wire [3:0]    io_sq_rd_payload_vfid,
  output wire [5:0]    io_sq_rd_payload_pid,
  output wire [3:0]    io_sq_rd_payload_dest,
  output wire          io_sq_rd_payload_last,
  output wire [47:0]   io_sq_rd_payload_vaddr,
  output wire [27:0]   io_sq_rd_payload_len,
  output wire          io_sq_rd_payload_actv,
  output wire          io_sq_rd_payload_host,
  output wire [5:0]    io_sq_rd_payload_offs,
  output wire [18:0]   io_sq_rd_payload_rsrvd,
  output wire          io_sq_wr_valid,
  input  wire          io_sq_wr_ready,
  output wire [4:0]    io_sq_wr_payload_opcode,
  output wire [1:0]    io_sq_wr_payload_strm,
  output wire          io_sq_wr_payload_mode,
  output wire          io_sq_wr_payload_rdma,
  output wire          io_sq_wr_payload_remote,
  output wire [3:0]    io_sq_wr_payload_vfid,
  output wire [5:0]    io_sq_wr_payload_pid,
  output wire [3:0]    io_sq_wr_payload_dest,
  output wire          io_sq_wr_payload_last,
  output wire [47:0]   io_sq_wr_payload_vaddr,
  output wire [27:0]   io_sq_wr_payload_len,
  output wire          io_sq_wr_payload_actv,
  output wire          io_sq_wr_payload_host,
  output wire [5:0]    io_sq_wr_payload_offs,
  output wire [18:0]   io_sq_wr_payload_rsrvd,
  input  wire          io_cq_rd_valid,
  output wire          io_cq_rd_ready,
  input  wire [4:0]    io_cq_rd_payload_opcode,
  input  wire [1:0]    io_cq_rd_payload_strm,
  input  wire          io_cq_rd_payload_remote,
  input  wire          io_cq_rd_payload_host,
  input  wire [3:0]    io_cq_rd_payload_dest,
  input  wire [5:0]    io_cq_rd_payload_pid,
  input  wire [3:0]    io_cq_rd_payload_vfid,
  input  wire [8:0]    io_cq_rd_payload_rsrvd,
  input  wire          io_cq_wr_valid,
  output wire          io_cq_wr_ready,
  input  wire [4:0]    io_cq_wr_payload_opcode,
  input  wire [1:0]    io_cq_wr_payload_strm,
  input  wire          io_cq_wr_payload_remote,
  input  wire          io_cq_wr_payload_host,
  input  wire [3:0]    io_cq_wr_payload_dest,
  input  wire [5:0]    io_cq_wr_payload_pid,
  input  wire [3:0]    io_cq_wr_payload_vfid,
  input  wire [8:0]    io_cq_wr_payload_rsrvd,
  input  wire [511:0]  io_axis_card_recv_tdata,
  input  wire [63:0]   io_axis_card_recv_tkeep,
  input  wire [5:0]    io_axis_card_recv_tid,
  input  wire          io_axis_card_recv_tlast,
  input  wire          io_axis_card_recv_tvalid,
  output wire          io_axis_card_recv_tready,
  output wire [511:0]  io_axis_card_send_tdata,
  output wire [63:0]   io_axis_card_send_tkeep,
  output wire [5:0]    io_axis_card_send_tid,
  output wire          io_axis_card_send_tlast,
  output wire          io_axis_card_send_tvalid,
  input  wire          io_axis_card_send_tready,
  input  wire          clk,
  input  wire          resetn
);

  wire                logic_2_io_done;
  wire                logic_2_io_sq_rd_valid;
  wire       [4:0]    logic_2_io_sq_rd_payload_opcode;
  wire       [1:0]    logic_2_io_sq_rd_payload_strm;
  wire                logic_2_io_sq_rd_payload_mode;
  wire                logic_2_io_sq_rd_payload_rdma;
  wire                logic_2_io_sq_rd_payload_remote;
  wire       [3:0]    logic_2_io_sq_rd_payload_vfid;
  wire       [5:0]    logic_2_io_sq_rd_payload_pid;
  wire       [3:0]    logic_2_io_sq_rd_payload_dest;
  wire                logic_2_io_sq_rd_payload_last;
  wire       [47:0]   logic_2_io_sq_rd_payload_vaddr;
  wire       [27:0]   logic_2_io_sq_rd_payload_len;
  wire                logic_2_io_sq_rd_payload_actv;
  wire                logic_2_io_sq_rd_payload_host;
  wire       [5:0]    logic_2_io_sq_rd_payload_offs;
  wire       [18:0]   logic_2_io_sq_rd_payload_rsrvd;
  wire                logic_2_io_sq_wr_valid;
  wire       [4:0]    logic_2_io_sq_wr_payload_opcode;
  wire       [1:0]    logic_2_io_sq_wr_payload_strm;
  wire                logic_2_io_sq_wr_payload_mode;
  wire                logic_2_io_sq_wr_payload_rdma;
  wire                logic_2_io_sq_wr_payload_remote;
  wire       [3:0]    logic_2_io_sq_wr_payload_vfid;
  wire       [5:0]    logic_2_io_sq_wr_payload_pid;
  wire       [3:0]    logic_2_io_sq_wr_payload_dest;
  wire                logic_2_io_sq_wr_payload_last;
  wire       [47:0]   logic_2_io_sq_wr_payload_vaddr;
  wire       [27:0]   logic_2_io_sq_wr_payload_len;
  wire                logic_2_io_sq_wr_payload_actv;
  wire                logic_2_io_sq_wr_payload_host;
  wire       [5:0]    logic_2_io_sq_wr_payload_offs;
  wire       [18:0]   logic_2_io_sq_wr_payload_rsrvd;
  wire                logic_2_io_cq_rd_ready;
  wire                logic_2_io_cq_wr_ready;
  wire                logic_2_io_axis_card_recv_tready;
  wire       [511:0]  logic_2_io_axis_card_send_tdata;
  wire       [63:0]   logic_2_io_axis_card_send_tkeep;
  wire       [5:0]    logic_2_io_axis_card_send_tid;
  wire                logic_2_io_axis_card_send_tlast;
  wire                logic_2_io_axis_card_send_tvalid;
  wire                ctrlR_readErrorFlag;
  wire                ctrlR_writeErrorFlag;
  wire                ctrlR_readHaltRequest;
  wire                ctrlR_writeHaltRequest;
  wire                ctrlR_writeJoinEvent_valid;
  wire                ctrlR_writeJoinEvent_ready;
  wire                ctrlR_writeOccur;
  reg        [1:0]    ctrlR_writeRsp_resp;
  wire                ctrlR_writeJoinEvent_translated_valid;
  wire                ctrlR_writeJoinEvent_translated_ready;
  wire       [1:0]    ctrlR_writeJoinEvent_translated_payload_resp;
  wire                _zz_ctrlR_writeJoinEvent_translated_ready;
  wire                ctrlR_writeJoinEvent_translated_haltWhen_valid;
  wire                ctrlR_writeJoinEvent_translated_haltWhen_ready;
  wire       [1:0]    ctrlR_writeJoinEvent_translated_haltWhen_payload_resp;
  wire                ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_valid;
  wire                ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_ready;
  wire       [1:0]    ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp;
  reg                 ctrlR_writeJoinEvent_translated_haltWhen_rValid;
  wire                ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_fire;
  reg        [1:0]    ctrlR_writeJoinEvent_translated_haltWhen_rData_resp;
  wire                ctrlR_readDataStage_valid;
  wire                ctrlR_readDataStage_ready;
  wire       [63:0]   ctrlR_readDataStage_payload_addr;
  wire       [2:0]    ctrlR_readDataStage_payload_prot;
  reg                 io_axi_ctrl_ar_rValid;
  wire                ctrlR_readDataStage_fire;
  reg        [63:0]   io_axi_ctrl_ar_rData_addr;
  reg        [2:0]    io_axi_ctrl_ar_rData_prot;
  reg        [63:0]   ctrlR_readRsp_data;
  reg        [1:0]    ctrlR_readRsp_resp;
  wire                _zz_ctrlR_readDataStage_ready;
  wire                ctrlR_readDataStage_haltWhen_valid;
  wire                ctrlR_readDataStage_haltWhen_ready;
  wire       [63:0]   ctrlR_readDataStage_haltWhen_payload_addr;
  wire       [2:0]    ctrlR_readDataStage_haltWhen_payload_prot;
  wire                ctrlR_readDataStage_haltWhen_translated_valid;
  wire                ctrlR_readDataStage_haltWhen_translated_ready;
  wire       [63:0]   ctrlR_readDataStage_haltWhen_translated_payload_data;
  wire       [1:0]    ctrlR_readDataStage_haltWhen_translated_payload_resp;
  wire       [63:0]   ctrlR_readAddressMasked;
  wire       [63:0]   ctrlR_writeAddressMasked;
  wire                ctrlR_readOccur;
  reg                 input_start;
  reg                 done;
  reg        [63:0]   input_base_addr_X;
  reg        [63:0]   input_base_addr_W;
  reg        [63:0]   input_base_addr_Y;
  wire                when_BusSlaveFactory_l1043;
  wire                when_BusSlaveFactory_l1043_1;
  wire                when_BusSlaveFactory_l1043_2;
  wire                when_BusSlaveFactory_l1043_3;
  wire                when_BusSlaveFactory_l1043_4;
  wire                when_BusSlaveFactory_l1043_5;
  wire                when_BusSlaveFactory_l1043_6;
  wire                when_BusSlaveFactory_l1043_7;
  wire                when_BusSlaveFactory_l1043_8;
  wire                when_BusSlaveFactory_l1043_9;
  wire                when_BusSlaveFactory_l1043_10;
  wire                when_BusSlaveFactory_l1043_11;
  wire                when_BusSlaveFactory_l1043_12;
  wire                when_BusSlaveFactory_l1043_13;
  wire                when_BusSlaveFactory_l1043_14;
  wire                when_BusSlaveFactory_l1043_15;
  wire                when_BusSlaveFactory_l1043_16;
  wire                when_BusSlaveFactory_l1043_17;
  wire                when_BusSlaveFactory_l1043_18;
  wire                when_BusSlaveFactory_l1043_19;
  wire                when_BusSlaveFactory_l1043_20;
  wire                when_BusSlaveFactory_l1043_21;
  wire                when_BusSlaveFactory_l1043_22;
  wire                when_BusSlaveFactory_l1043_23;
  wire                when_BusSlaveFactory_l1043_24;

  logic_1 logic_2 (
    .io_start                 (input_start                           ), //i
    .io_done                  (logic_2_io_done                       ), //o
    .io_base_addr_X           (input_base_addr_X[63:0]               ), //i
    .io_base_addr_W           (input_base_addr_W[63:0]               ), //i
    .io_base_addr_Y           (input_base_addr_Y[63:0]               ), //i
    .io_sq_rd_valid           (logic_2_io_sq_rd_valid                ), //o
    .io_sq_rd_ready           (io_sq_rd_ready                        ), //i
    .io_sq_rd_payload_opcode  (logic_2_io_sq_rd_payload_opcode[4:0]  ), //o
    .io_sq_rd_payload_strm    (logic_2_io_sq_rd_payload_strm[1:0]    ), //o
    .io_sq_rd_payload_mode    (logic_2_io_sq_rd_payload_mode         ), //o
    .io_sq_rd_payload_rdma    (logic_2_io_sq_rd_payload_rdma         ), //o
    .io_sq_rd_payload_remote  (logic_2_io_sq_rd_payload_remote       ), //o
    .io_sq_rd_payload_vfid    (logic_2_io_sq_rd_payload_vfid[3:0]    ), //o
    .io_sq_rd_payload_pid     (logic_2_io_sq_rd_payload_pid[5:0]     ), //o
    .io_sq_rd_payload_dest    (logic_2_io_sq_rd_payload_dest[3:0]    ), //o
    .io_sq_rd_payload_last    (logic_2_io_sq_rd_payload_last         ), //o
    .io_sq_rd_payload_vaddr   (logic_2_io_sq_rd_payload_vaddr[47:0]  ), //o
    .io_sq_rd_payload_len     (logic_2_io_sq_rd_payload_len[27:0]    ), //o
    .io_sq_rd_payload_actv    (logic_2_io_sq_rd_payload_actv         ), //o
    .io_sq_rd_payload_host    (logic_2_io_sq_rd_payload_host         ), //o
    .io_sq_rd_payload_offs    (logic_2_io_sq_rd_payload_offs[5:0]    ), //o
    .io_sq_rd_payload_rsrvd   (logic_2_io_sq_rd_payload_rsrvd[18:0]  ), //o
    .io_sq_wr_valid           (logic_2_io_sq_wr_valid                ), //o
    .io_sq_wr_ready           (io_sq_wr_ready                        ), //i
    .io_sq_wr_payload_opcode  (logic_2_io_sq_wr_payload_opcode[4:0]  ), //o
    .io_sq_wr_payload_strm    (logic_2_io_sq_wr_payload_strm[1:0]    ), //o
    .io_sq_wr_payload_mode    (logic_2_io_sq_wr_payload_mode         ), //o
    .io_sq_wr_payload_rdma    (logic_2_io_sq_wr_payload_rdma         ), //o
    .io_sq_wr_payload_remote  (logic_2_io_sq_wr_payload_remote       ), //o
    .io_sq_wr_payload_vfid    (logic_2_io_sq_wr_payload_vfid[3:0]    ), //o
    .io_sq_wr_payload_pid     (logic_2_io_sq_wr_payload_pid[5:0]     ), //o
    .io_sq_wr_payload_dest    (logic_2_io_sq_wr_payload_dest[3:0]    ), //o
    .io_sq_wr_payload_last    (logic_2_io_sq_wr_payload_last         ), //o
    .io_sq_wr_payload_vaddr   (logic_2_io_sq_wr_payload_vaddr[47:0]  ), //o
    .io_sq_wr_payload_len     (logic_2_io_sq_wr_payload_len[27:0]    ), //o
    .io_sq_wr_payload_actv    (logic_2_io_sq_wr_payload_actv         ), //o
    .io_sq_wr_payload_host    (logic_2_io_sq_wr_payload_host         ), //o
    .io_sq_wr_payload_offs    (logic_2_io_sq_wr_payload_offs[5:0]    ), //o
    .io_sq_wr_payload_rsrvd   (logic_2_io_sq_wr_payload_rsrvd[18:0]  ), //o
    .io_cq_rd_valid           (io_cq_rd_valid                        ), //i
    .io_cq_rd_ready           (logic_2_io_cq_rd_ready                ), //o
    .io_cq_rd_payload_opcode  (io_cq_rd_payload_opcode[4:0]          ), //i
    .io_cq_rd_payload_strm    (io_cq_rd_payload_strm[1:0]            ), //i
    .io_cq_rd_payload_remote  (io_cq_rd_payload_remote               ), //i
    .io_cq_rd_payload_host    (io_cq_rd_payload_host                 ), //i
    .io_cq_rd_payload_dest    (io_cq_rd_payload_dest[3:0]            ), //i
    .io_cq_rd_payload_pid     (io_cq_rd_payload_pid[5:0]             ), //i
    .io_cq_rd_payload_vfid    (io_cq_rd_payload_vfid[3:0]            ), //i
    .io_cq_rd_payload_rsrvd   (io_cq_rd_payload_rsrvd[8:0]           ), //i
    .io_cq_wr_valid           (io_cq_wr_valid                        ), //i
    .io_cq_wr_ready           (logic_2_io_cq_wr_ready                ), //o
    .io_cq_wr_payload_opcode  (io_cq_wr_payload_opcode[4:0]          ), //i
    .io_cq_wr_payload_strm    (io_cq_wr_payload_strm[1:0]            ), //i
    .io_cq_wr_payload_remote  (io_cq_wr_payload_remote               ), //i
    .io_cq_wr_payload_host    (io_cq_wr_payload_host                 ), //i
    .io_cq_wr_payload_dest    (io_cq_wr_payload_dest[3:0]            ), //i
    .io_cq_wr_payload_pid     (io_cq_wr_payload_pid[5:0]             ), //i
    .io_cq_wr_payload_vfid    (io_cq_wr_payload_vfid[3:0]            ), //i
    .io_cq_wr_payload_rsrvd   (io_cq_wr_payload_rsrvd[8:0]           ), //i
    .io_axis_card_recv_tdata  (io_axis_card_recv_tdata[511:0]        ), //i
    .io_axis_card_recv_tkeep  (io_axis_card_recv_tkeep[63:0]         ), //i
    .io_axis_card_recv_tid    (io_axis_card_recv_tid[5:0]            ), //i
    .io_axis_card_recv_tlast  (io_axis_card_recv_tlast               ), //i
    .io_axis_card_recv_tvalid (io_axis_card_recv_tvalid              ), //i
    .io_axis_card_recv_tready (logic_2_io_axis_card_recv_tready      ), //o
    .io_axis_card_send_tdata  (logic_2_io_axis_card_send_tdata[511:0]), //o
    .io_axis_card_send_tkeep  (logic_2_io_axis_card_send_tkeep[63:0] ), //o
    .io_axis_card_send_tid    (logic_2_io_axis_card_send_tid[5:0]    ), //o
    .io_axis_card_send_tlast  (logic_2_io_axis_card_send_tlast       ), //o
    .io_axis_card_send_tvalid (logic_2_io_axis_card_send_tvalid      ), //o
    .io_axis_card_send_tready (io_axis_card_send_tready              ), //i
    .clk                      (clk                                   ), //i
    .resetn                   (resetn                                )  //i
  );
  assign ctrlR_readErrorFlag = 1'b0;
  assign ctrlR_writeErrorFlag = 1'b0;
  assign ctrlR_readHaltRequest = 1'b0;
  assign ctrlR_writeHaltRequest = 1'b0;
  assign ctrlR_writeOccur = (ctrlR_writeJoinEvent_valid && ctrlR_writeJoinEvent_ready);
  assign ctrlR_writeJoinEvent_valid = (io_axi_ctrl_aw_valid && io_axi_ctrl_w_valid);
  assign io_axi_ctrl_aw_ready = ctrlR_writeOccur;
  assign io_axi_ctrl_w_ready = ctrlR_writeOccur;
  assign ctrlR_writeJoinEvent_translated_valid = ctrlR_writeJoinEvent_valid;
  assign ctrlR_writeJoinEvent_ready = ctrlR_writeJoinEvent_translated_ready;
  assign ctrlR_writeJoinEvent_translated_payload_resp = ctrlR_writeRsp_resp;
  assign _zz_ctrlR_writeJoinEvent_translated_ready = (! ctrlR_writeHaltRequest);
  assign ctrlR_writeJoinEvent_translated_haltWhen_valid = (ctrlR_writeJoinEvent_translated_valid && _zz_ctrlR_writeJoinEvent_translated_ready);
  assign ctrlR_writeJoinEvent_translated_ready = (ctrlR_writeJoinEvent_translated_haltWhen_ready && _zz_ctrlR_writeJoinEvent_translated_ready);
  assign ctrlR_writeJoinEvent_translated_haltWhen_payload_resp = ctrlR_writeJoinEvent_translated_payload_resp;
  assign ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_fire = (ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_valid && ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_ready);
  assign ctrlR_writeJoinEvent_translated_haltWhen_ready = (! ctrlR_writeJoinEvent_translated_haltWhen_rValid);
  assign ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_valid = ctrlR_writeJoinEvent_translated_haltWhen_rValid;
  assign ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp = ctrlR_writeJoinEvent_translated_haltWhen_rData_resp;
  assign io_axi_ctrl_b_valid = ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_valid;
  assign ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_ready = io_axi_ctrl_b_ready;
  assign io_axi_ctrl_b_payload_resp = ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_payload_resp;
  assign ctrlR_readDataStage_fire = (ctrlR_readDataStage_valid && ctrlR_readDataStage_ready);
  assign io_axi_ctrl_ar_ready = (! io_axi_ctrl_ar_rValid);
  assign ctrlR_readDataStage_valid = io_axi_ctrl_ar_rValid;
  assign ctrlR_readDataStage_payload_addr = io_axi_ctrl_ar_rData_addr;
  assign ctrlR_readDataStage_payload_prot = io_axi_ctrl_ar_rData_prot;
  assign _zz_ctrlR_readDataStage_ready = (! ctrlR_readHaltRequest);
  assign ctrlR_readDataStage_haltWhen_valid = (ctrlR_readDataStage_valid && _zz_ctrlR_readDataStage_ready);
  assign ctrlR_readDataStage_ready = (ctrlR_readDataStage_haltWhen_ready && _zz_ctrlR_readDataStage_ready);
  assign ctrlR_readDataStage_haltWhen_payload_addr = ctrlR_readDataStage_payload_addr;
  assign ctrlR_readDataStage_haltWhen_payload_prot = ctrlR_readDataStage_payload_prot;
  assign ctrlR_readDataStage_haltWhen_translated_valid = ctrlR_readDataStage_haltWhen_valid;
  assign ctrlR_readDataStage_haltWhen_ready = ctrlR_readDataStage_haltWhen_translated_ready;
  assign ctrlR_readDataStage_haltWhen_translated_payload_data = ctrlR_readRsp_data;
  assign ctrlR_readDataStage_haltWhen_translated_payload_resp = ctrlR_readRsp_resp;
  assign io_axi_ctrl_r_valid = ctrlR_readDataStage_haltWhen_translated_valid;
  assign ctrlR_readDataStage_haltWhen_translated_ready = io_axi_ctrl_r_ready;
  assign io_axi_ctrl_r_payload_data = ctrlR_readDataStage_haltWhen_translated_payload_data;
  assign io_axi_ctrl_r_payload_resp = ctrlR_readDataStage_haltWhen_translated_payload_resp;
  always @(*) begin
    if(ctrlR_writeErrorFlag) begin
      ctrlR_writeRsp_resp = 2'b10;
    end else begin
      ctrlR_writeRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    if(ctrlR_readErrorFlag) begin
      ctrlR_readRsp_resp = 2'b10;
    end else begin
      ctrlR_readRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    ctrlR_readRsp_data = 64'h0;
    case(ctrlR_readAddressMasked)
      64'h0 : begin
        ctrlR_readRsp_data[0 : 0] = input_start;
      end
      64'h0000000000000008 : begin
        ctrlR_readRsp_data[0 : 0] = done;
      end
      64'h0000000000000010 : begin
        ctrlR_readRsp_data[63 : 0] = input_base_addr_X;
      end
      64'h0000000000000018 : begin
        ctrlR_readRsp_data[63 : 0] = input_base_addr_W;
      end
      64'h0000000000000020 : begin
        ctrlR_readRsp_data[63 : 0] = input_base_addr_Y;
      end
      default : begin
      end
    endcase
  end

  assign ctrlR_readAddressMasked = (ctrlR_readDataStage_payload_addr & (~ 64'h0000000000000007));
  assign ctrlR_writeAddressMasked = (io_axi_ctrl_aw_payload_addr & (~ 64'h0000000000000007));
  assign ctrlR_readOccur = (io_axi_ctrl_r_valid && io_axi_ctrl_r_ready);
  assign io_sq_rd_valid = logic_2_io_sq_rd_valid;
  assign io_sq_rd_payload_opcode = logic_2_io_sq_rd_payload_opcode;
  assign io_sq_rd_payload_strm = logic_2_io_sq_rd_payload_strm;
  assign io_sq_rd_payload_mode = logic_2_io_sq_rd_payload_mode;
  assign io_sq_rd_payload_rdma = logic_2_io_sq_rd_payload_rdma;
  assign io_sq_rd_payload_remote = logic_2_io_sq_rd_payload_remote;
  assign io_sq_rd_payload_vfid = logic_2_io_sq_rd_payload_vfid;
  assign io_sq_rd_payload_pid = logic_2_io_sq_rd_payload_pid;
  assign io_sq_rd_payload_dest = logic_2_io_sq_rd_payload_dest;
  assign io_sq_rd_payload_last = logic_2_io_sq_rd_payload_last;
  assign io_sq_rd_payload_vaddr = logic_2_io_sq_rd_payload_vaddr;
  assign io_sq_rd_payload_len = logic_2_io_sq_rd_payload_len;
  assign io_sq_rd_payload_actv = logic_2_io_sq_rd_payload_actv;
  assign io_sq_rd_payload_host = logic_2_io_sq_rd_payload_host;
  assign io_sq_rd_payload_offs = logic_2_io_sq_rd_payload_offs;
  assign io_sq_rd_payload_rsrvd = logic_2_io_sq_rd_payload_rsrvd;
  assign io_sq_wr_valid = logic_2_io_sq_wr_valid;
  assign io_sq_wr_payload_opcode = logic_2_io_sq_wr_payload_opcode;
  assign io_sq_wr_payload_strm = logic_2_io_sq_wr_payload_strm;
  assign io_sq_wr_payload_mode = logic_2_io_sq_wr_payload_mode;
  assign io_sq_wr_payload_rdma = logic_2_io_sq_wr_payload_rdma;
  assign io_sq_wr_payload_remote = logic_2_io_sq_wr_payload_remote;
  assign io_sq_wr_payload_vfid = logic_2_io_sq_wr_payload_vfid;
  assign io_sq_wr_payload_pid = logic_2_io_sq_wr_payload_pid;
  assign io_sq_wr_payload_dest = logic_2_io_sq_wr_payload_dest;
  assign io_sq_wr_payload_last = logic_2_io_sq_wr_payload_last;
  assign io_sq_wr_payload_vaddr = logic_2_io_sq_wr_payload_vaddr;
  assign io_sq_wr_payload_len = logic_2_io_sq_wr_payload_len;
  assign io_sq_wr_payload_actv = logic_2_io_sq_wr_payload_actv;
  assign io_sq_wr_payload_host = logic_2_io_sq_wr_payload_host;
  assign io_sq_wr_payload_offs = logic_2_io_sq_wr_payload_offs;
  assign io_sq_wr_payload_rsrvd = logic_2_io_sq_wr_payload_rsrvd;
  assign io_cq_rd_ready = logic_2_io_cq_rd_ready;
  assign io_cq_wr_ready = logic_2_io_cq_wr_ready;
  assign io_axis_card_recv_tready = logic_2_io_axis_card_recv_tready;
  assign io_axis_card_send_tdata = logic_2_io_axis_card_send_tdata;
  assign io_axis_card_send_tkeep = logic_2_io_axis_card_send_tkeep;
  assign io_axis_card_send_tid = logic_2_io_axis_card_send_tid;
  assign io_axis_card_send_tlast = logic_2_io_axis_card_send_tlast;
  assign io_axis_card_send_tvalid = logic_2_io_axis_card_send_tvalid;
  assign when_BusSlaveFactory_l1043 = io_axi_ctrl_w_payload_strb[0];
  assign when_BusSlaveFactory_l1043_1 = io_axi_ctrl_w_payload_strb[0];
  assign when_BusSlaveFactory_l1043_2 = io_axi_ctrl_w_payload_strb[1];
  assign when_BusSlaveFactory_l1043_3 = io_axi_ctrl_w_payload_strb[2];
  assign when_BusSlaveFactory_l1043_4 = io_axi_ctrl_w_payload_strb[3];
  assign when_BusSlaveFactory_l1043_5 = io_axi_ctrl_w_payload_strb[4];
  assign when_BusSlaveFactory_l1043_6 = io_axi_ctrl_w_payload_strb[5];
  assign when_BusSlaveFactory_l1043_7 = io_axi_ctrl_w_payload_strb[6];
  assign when_BusSlaveFactory_l1043_8 = io_axi_ctrl_w_payload_strb[7];
  assign when_BusSlaveFactory_l1043_9 = io_axi_ctrl_w_payload_strb[0];
  assign when_BusSlaveFactory_l1043_10 = io_axi_ctrl_w_payload_strb[1];
  assign when_BusSlaveFactory_l1043_11 = io_axi_ctrl_w_payload_strb[2];
  assign when_BusSlaveFactory_l1043_12 = io_axi_ctrl_w_payload_strb[3];
  assign when_BusSlaveFactory_l1043_13 = io_axi_ctrl_w_payload_strb[4];
  assign when_BusSlaveFactory_l1043_14 = io_axi_ctrl_w_payload_strb[5];
  assign when_BusSlaveFactory_l1043_15 = io_axi_ctrl_w_payload_strb[6];
  assign when_BusSlaveFactory_l1043_16 = io_axi_ctrl_w_payload_strb[7];
  assign when_BusSlaveFactory_l1043_17 = io_axi_ctrl_w_payload_strb[0];
  assign when_BusSlaveFactory_l1043_18 = io_axi_ctrl_w_payload_strb[1];
  assign when_BusSlaveFactory_l1043_19 = io_axi_ctrl_w_payload_strb[2];
  assign when_BusSlaveFactory_l1043_20 = io_axi_ctrl_w_payload_strb[3];
  assign when_BusSlaveFactory_l1043_21 = io_axi_ctrl_w_payload_strb[4];
  assign when_BusSlaveFactory_l1043_22 = io_axi_ctrl_w_payload_strb[5];
  assign when_BusSlaveFactory_l1043_23 = io_axi_ctrl_w_payload_strb[6];
  assign when_BusSlaveFactory_l1043_24 = io_axi_ctrl_w_payload_strb[7];
  always @(posedge clk) begin
    if(!resetn) begin
      ctrlR_writeJoinEvent_translated_haltWhen_rValid <= 1'b0;
      io_axi_ctrl_ar_rValid <= 1'b0;
    end else begin
      if(ctrlR_writeJoinEvent_translated_haltWhen_valid) begin
        ctrlR_writeJoinEvent_translated_haltWhen_rValid <= 1'b1;
      end
      if(ctrlR_writeJoinEvent_translated_haltWhen_halfPipe_fire) begin
        ctrlR_writeJoinEvent_translated_haltWhen_rValid <= 1'b0;
      end
      if(io_axi_ctrl_ar_valid) begin
        io_axi_ctrl_ar_rValid <= 1'b1;
      end
      if(ctrlR_readDataStage_fire) begin
        io_axi_ctrl_ar_rValid <= 1'b0;
      end
    end
  end

  always @(posedge clk) begin
    if(ctrlR_writeJoinEvent_translated_haltWhen_ready) begin
      ctrlR_writeJoinEvent_translated_haltWhen_rData_resp <= ctrlR_writeJoinEvent_translated_haltWhen_payload_resp;
    end
    if(io_axi_ctrl_ar_ready) begin
      io_axi_ctrl_ar_rData_addr <= io_axi_ctrl_ar_payload_addr;
      io_axi_ctrl_ar_rData_prot <= io_axi_ctrl_ar_payload_prot;
    end
    done <= logic_2_io_done;
    case(ctrlR_writeAddressMasked)
      64'h0 : begin
        if(ctrlR_writeOccur) begin
          if(when_BusSlaveFactory_l1043) begin
            input_start <= io_axi_ctrl_w_payload_data[0];
          end
        end
      end
      64'h0000000000000010 : begin
        if(ctrlR_writeOccur) begin
          if(when_BusSlaveFactory_l1043_1) begin
            input_base_addr_X[7 : 0] <= io_axi_ctrl_w_payload_data[7 : 0];
          end
          if(when_BusSlaveFactory_l1043_2) begin
            input_base_addr_X[15 : 8] <= io_axi_ctrl_w_payload_data[15 : 8];
          end
          if(when_BusSlaveFactory_l1043_3) begin
            input_base_addr_X[23 : 16] <= io_axi_ctrl_w_payload_data[23 : 16];
          end
          if(when_BusSlaveFactory_l1043_4) begin
            input_base_addr_X[31 : 24] <= io_axi_ctrl_w_payload_data[31 : 24];
          end
          if(when_BusSlaveFactory_l1043_5) begin
            input_base_addr_X[39 : 32] <= io_axi_ctrl_w_payload_data[39 : 32];
          end
          if(when_BusSlaveFactory_l1043_6) begin
            input_base_addr_X[47 : 40] <= io_axi_ctrl_w_payload_data[47 : 40];
          end
          if(when_BusSlaveFactory_l1043_7) begin
            input_base_addr_X[55 : 48] <= io_axi_ctrl_w_payload_data[55 : 48];
          end
          if(when_BusSlaveFactory_l1043_8) begin
            input_base_addr_X[63 : 56] <= io_axi_ctrl_w_payload_data[63 : 56];
          end
        end
      end
      64'h0000000000000018 : begin
        if(ctrlR_writeOccur) begin
          if(when_BusSlaveFactory_l1043_9) begin
            input_base_addr_W[7 : 0] <= io_axi_ctrl_w_payload_data[7 : 0];
          end
          if(when_BusSlaveFactory_l1043_10) begin
            input_base_addr_W[15 : 8] <= io_axi_ctrl_w_payload_data[15 : 8];
          end
          if(when_BusSlaveFactory_l1043_11) begin
            input_base_addr_W[23 : 16] <= io_axi_ctrl_w_payload_data[23 : 16];
          end
          if(when_BusSlaveFactory_l1043_12) begin
            input_base_addr_W[31 : 24] <= io_axi_ctrl_w_payload_data[31 : 24];
          end
          if(when_BusSlaveFactory_l1043_13) begin
            input_base_addr_W[39 : 32] <= io_axi_ctrl_w_payload_data[39 : 32];
          end
          if(when_BusSlaveFactory_l1043_14) begin
            input_base_addr_W[47 : 40] <= io_axi_ctrl_w_payload_data[47 : 40];
          end
          if(when_BusSlaveFactory_l1043_15) begin
            input_base_addr_W[55 : 48] <= io_axi_ctrl_w_payload_data[55 : 48];
          end
          if(when_BusSlaveFactory_l1043_16) begin
            input_base_addr_W[63 : 56] <= io_axi_ctrl_w_payload_data[63 : 56];
          end
        end
      end
      64'h0000000000000020 : begin
        if(ctrlR_writeOccur) begin
          if(when_BusSlaveFactory_l1043_17) begin
            input_base_addr_Y[7 : 0] <= io_axi_ctrl_w_payload_data[7 : 0];
          end
          if(when_BusSlaveFactory_l1043_18) begin
            input_base_addr_Y[15 : 8] <= io_axi_ctrl_w_payload_data[15 : 8];
          end
          if(when_BusSlaveFactory_l1043_19) begin
            input_base_addr_Y[23 : 16] <= io_axi_ctrl_w_payload_data[23 : 16];
          end
          if(when_BusSlaveFactory_l1043_20) begin
            input_base_addr_Y[31 : 24] <= io_axi_ctrl_w_payload_data[31 : 24];
          end
          if(when_BusSlaveFactory_l1043_21) begin
            input_base_addr_Y[39 : 32] <= io_axi_ctrl_w_payload_data[39 : 32];
          end
          if(when_BusSlaveFactory_l1043_22) begin
            input_base_addr_Y[47 : 40] <= io_axi_ctrl_w_payload_data[47 : 40];
          end
          if(when_BusSlaveFactory_l1043_23) begin
            input_base_addr_Y[55 : 48] <= io_axi_ctrl_w_payload_data[55 : 48];
          end
          if(when_BusSlaveFactory_l1043_24) begin
            input_base_addr_Y[63 : 56] <= io_axi_ctrl_w_payload_data[63 : 56];
          end
        end
      end
      default : begin
      end
    endcase
  end


endmodule

module logic_1 (
  input  wire          io_start,
  output reg           io_done,
  input  wire [63:0]   io_base_addr_X,
  input  wire [63:0]   io_base_addr_W,
  input  wire [63:0]   io_base_addr_Y,
  output reg           io_sq_rd_valid,
  input  wire          io_sq_rd_ready,
  output reg  [4:0]    io_sq_rd_payload_opcode,
  output reg  [1:0]    io_sq_rd_payload_strm,
  output wire          io_sq_rd_payload_mode,
  output wire          io_sq_rd_payload_rdma,
  output wire          io_sq_rd_payload_remote,
  output wire [3:0]    io_sq_rd_payload_vfid,
  output wire [5:0]    io_sq_rd_payload_pid,
  output reg  [3:0]    io_sq_rd_payload_dest,
  output reg           io_sq_rd_payload_last,
  output reg  [47:0]   io_sq_rd_payload_vaddr,
  output reg  [27:0]   io_sq_rd_payload_len,
  output wire          io_sq_rd_payload_actv,
  output wire          io_sq_rd_payload_host,
  output wire [5:0]    io_sq_rd_payload_offs,
  output wire [18:0]   io_sq_rd_payload_rsrvd,
  output reg           io_sq_wr_valid,
  input  wire          io_sq_wr_ready,
  output reg  [4:0]    io_sq_wr_payload_opcode,
  output reg  [1:0]    io_sq_wr_payload_strm,
  output wire          io_sq_wr_payload_mode,
  output wire          io_sq_wr_payload_rdma,
  output wire          io_sq_wr_payload_remote,
  output wire [3:0]    io_sq_wr_payload_vfid,
  output wire [5:0]    io_sq_wr_payload_pid,
  output reg  [3:0]    io_sq_wr_payload_dest,
  output reg           io_sq_wr_payload_last,
  output reg  [47:0]   io_sq_wr_payload_vaddr,
  output reg  [27:0]   io_sq_wr_payload_len,
  output wire          io_sq_wr_payload_actv,
  output wire          io_sq_wr_payload_host,
  output wire [5:0]    io_sq_wr_payload_offs,
  output wire [18:0]   io_sq_wr_payload_rsrvd,
  input  wire          io_cq_rd_valid,
  output reg           io_cq_rd_ready,
  input  wire [4:0]    io_cq_rd_payload_opcode,
  input  wire [1:0]    io_cq_rd_payload_strm,
  input  wire          io_cq_rd_payload_remote,
  input  wire          io_cq_rd_payload_host,
  input  wire [3:0]    io_cq_rd_payload_dest,
  input  wire [5:0]    io_cq_rd_payload_pid,
  input  wire [3:0]    io_cq_rd_payload_vfid,
  input  wire [8:0]    io_cq_rd_payload_rsrvd,
  input  wire          io_cq_wr_valid,
  output reg           io_cq_wr_ready,
  input  wire [4:0]    io_cq_wr_payload_opcode,
  input  wire [1:0]    io_cq_wr_payload_strm,
  input  wire          io_cq_wr_payload_remote,
  input  wire          io_cq_wr_payload_host,
  input  wire [3:0]    io_cq_wr_payload_dest,
  input  wire [5:0]    io_cq_wr_payload_pid,
  input  wire [3:0]    io_cq_wr_payload_vfid,
  input  wire [8:0]    io_cq_wr_payload_rsrvd,
  input  wire [511:0]  io_axis_card_recv_tdata,
  input  wire [63:0]   io_axis_card_recv_tkeep,
  input  wire [5:0]    io_axis_card_recv_tid,
  input  wire          io_axis_card_recv_tlast,
  input  wire          io_axis_card_recv_tvalid,
  output reg           io_axis_card_recv_tready,
  output reg  [511:0]  io_axis_card_send_tdata,
  output reg  [63:0]   io_axis_card_send_tkeep,
  output wire [5:0]    io_axis_card_send_tid,
  output reg           io_axis_card_send_tlast,
  output reg           io_axis_card_send_tvalid,
  input  wire          io_axis_card_send_tready,
  input  wire          clk,
  input  wire          resetn
);
  localparam FSM_BOOT = 4'd0;
  localparam FSM_IDLE = 4'd1;
  localparam FSM_READ_X = 4'd2;
  localparam FSM_Wait_X = 4'd3;
  localparam FSM_READ_W = 4'd4;
  localparam FSM_WAIT_W = 4'd5;
  localparam FSM_COMPUTE = 4'd6;
  localparam FSM_WRITE_Y = 4'd7;
  localparam FSM_Wait_Y = 4'd8;

  wire       [159:0]  _zz_io_axis_card_send_tdata;
  reg        [15:0]   vecX_0;
  reg        [15:0]   vecX_1;
  reg        [15:0]   vecX_2;
  reg        [15:0]   vecX_3;
  reg        [15:0]   vecX_4;
  reg        [15:0]   vecX_5;
  reg        [15:0]   vecX_6;
  reg        [15:0]   vecX_7;
  reg        [15:0]   vecX_8;
  reg        [15:0]   vecX_9;
  reg        [15:0]   vecW_0;
  reg        [15:0]   vecW_1;
  reg        [15:0]   vecW_2;
  reg        [15:0]   vecW_3;
  reg        [15:0]   vecW_4;
  reg        [15:0]   vecW_5;
  reg        [15:0]   vecW_6;
  reg        [15:0]   vecW_7;
  reg        [15:0]   vecW_8;
  reg        [15:0]   vecW_9;
  reg        [15:0]   vecY_0;
  reg        [15:0]   vecY_1;
  reg        [15:0]   vecY_2;
  reg        [15:0]   vecY_3;
  reg        [15:0]   vecY_4;
  reg        [15:0]   vecY_5;
  reg        [15:0]   vecY_6;
  reg        [15:0]   vecY_7;
  reg        [15:0]   vecY_8;
  reg        [15:0]   vecY_9;
  wire                FSM_wantExit;
  reg                 FSM_wantStart;
  wire                FSM_wantKill;
  reg        [3:0]    FSM_stateReg;
  reg        [3:0]    FSM_stateNext;
  wire                when_logic_l72;
  wire                io_sq_rd_fire;
  wire                when_logic_l97;
  wire                when_logic_l123;
  wire                io_sq_wr_fire;
  wire                io_cq_wr_fire;
  wire                FSM_onExit_BOOT;
  wire                FSM_onExit_IDLE;
  wire                FSM_onExit_READ_X;
  wire                FSM_onExit_Wait_X;
  wire                FSM_onExit_READ_W;
  wire                FSM_onExit_WAIT_W;
  wire                FSM_onExit_COMPUTE;
  wire                FSM_onExit_WRITE_Y;
  wire                FSM_onExit_Wait_Y;
  wire                FSM_onEntry_BOOT;
  wire                FSM_onEntry_IDLE;
  wire                FSM_onEntry_READ_X;
  wire                FSM_onEntry_Wait_X;
  wire                FSM_onEntry_READ_W;
  wire                FSM_onEntry_WAIT_W;
  wire                FSM_onEntry_COMPUTE;
  wire                FSM_onEntry_WRITE_Y;
  wire                FSM_onEntry_Wait_Y;
  `ifndef SYNTHESIS
  reg [55:0] FSM_stateReg_string;
  reg [55:0] FSM_stateNext_string;
  `endif


  assign _zz_io_axis_card_send_tdata = {{{{{{{{{vecY_9,vecY_8},vecY_7},vecY_6},vecY_5},vecY_4},vecY_3},vecY_2},vecY_1},vecY_0};
  `ifndef SYNTHESIS
  always @(*) begin
    case(FSM_stateReg)
      FSM_BOOT : FSM_stateReg_string = "BOOT   ";
      FSM_IDLE : FSM_stateReg_string = "IDLE   ";
      FSM_READ_X : FSM_stateReg_string = "READ_X ";
      FSM_Wait_X : FSM_stateReg_string = "Wait_X ";
      FSM_READ_W : FSM_stateReg_string = "READ_W ";
      FSM_WAIT_W : FSM_stateReg_string = "WAIT_W ";
      FSM_COMPUTE : FSM_stateReg_string = "COMPUTE";
      FSM_WRITE_Y : FSM_stateReg_string = "WRITE_Y";
      FSM_Wait_Y : FSM_stateReg_string = "Wait_Y ";
      default : FSM_stateReg_string = "???????";
    endcase
  end
  always @(*) begin
    case(FSM_stateNext)
      FSM_BOOT : FSM_stateNext_string = "BOOT   ";
      FSM_IDLE : FSM_stateNext_string = "IDLE   ";
      FSM_READ_X : FSM_stateNext_string = "READ_X ";
      FSM_Wait_X : FSM_stateNext_string = "Wait_X ";
      FSM_READ_W : FSM_stateNext_string = "READ_W ";
      FSM_WAIT_W : FSM_stateNext_string = "WAIT_W ";
      FSM_COMPUTE : FSM_stateNext_string = "COMPUTE";
      FSM_WRITE_Y : FSM_stateNext_string = "WRITE_Y";
      FSM_Wait_Y : FSM_stateNext_string = "Wait_Y ";
      default : FSM_stateNext_string = "???????";
    endcase
  end
  `endif

  always @(*) begin
    io_done = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
        if(io_cq_wr_fire) begin
          io_done = 1'b1;
        end
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_rd_valid = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
        io_sq_rd_valid = 1'b1;
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
        io_sq_rd_valid = 1'b1;
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_rd_payload_opcode = 5'h0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
        io_sq_rd_payload_opcode = 5'h01;
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
        io_sq_rd_payload_opcode = 5'h01;
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_rd_payload_strm = 2'b00;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
        io_sq_rd_payload_strm = 2'b00;
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
        io_sq_rd_payload_strm = 2'b00;
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  assign io_sq_rd_payload_mode = 1'b0;
  assign io_sq_rd_payload_rdma = 1'b0;
  assign io_sq_rd_payload_remote = 1'b0;
  assign io_sq_rd_payload_vfid = 4'b0000;
  assign io_sq_rd_payload_pid = 6'h0;
  always @(*) begin
    io_sq_rd_payload_dest = 4'b0000;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
        io_sq_rd_payload_dest = 4'b0000;
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
        io_sq_rd_payload_dest = 4'b0000;
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_rd_payload_last = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
        io_sq_rd_payload_last = 1'b1;
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
        io_sq_rd_payload_last = 1'b1;
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_rd_payload_vaddr = 48'h0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
        io_sq_rd_payload_vaddr = io_base_addr_X[47:0];
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
        io_sq_rd_payload_vaddr = io_base_addr_W[47:0];
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_rd_payload_len = 28'h0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
        io_sq_rd_payload_len = 28'h0;
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
        io_sq_rd_payload_len = 28'h0;
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  assign io_sq_rd_payload_actv = 1'b0;
  assign io_sq_rd_payload_host = 1'b0;
  assign io_sq_rd_payload_offs = 6'h0;
  assign io_sq_rd_payload_rsrvd = 19'h0;
  always @(*) begin
    io_sq_wr_valid = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
        io_sq_wr_valid = 1'b1;
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_wr_payload_opcode = 5'h0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
        io_sq_wr_payload_opcode = 5'h02;
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_wr_payload_strm = 2'b00;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
        io_sq_wr_payload_strm = 2'b00;
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  assign io_sq_wr_payload_mode = 1'b0;
  assign io_sq_wr_payload_rdma = 1'b0;
  assign io_sq_wr_payload_remote = 1'b0;
  assign io_sq_wr_payload_vfid = 4'b0000;
  assign io_sq_wr_payload_pid = 6'h0;
  always @(*) begin
    io_sq_wr_payload_dest = 4'b0000;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
        io_sq_wr_payload_dest = 4'b0000;
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_wr_payload_last = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
        io_sq_wr_payload_last = 1'b1;
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_wr_payload_vaddr = 48'h0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
        io_sq_wr_payload_vaddr = io_base_addr_Y[47:0];
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_sq_wr_payload_len = 28'h0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
        io_sq_wr_payload_len = 28'h0;
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  assign io_sq_wr_payload_actv = 1'b0;
  assign io_sq_wr_payload_host = 1'b0;
  assign io_sq_wr_payload_offs = 6'h0;
  assign io_sq_wr_payload_rsrvd = 19'h0;
  always @(*) begin
    io_cq_rd_ready = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
        io_cq_rd_ready = 1'b1;
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
        io_cq_rd_ready = 1'b1;
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_cq_wr_ready = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
        io_cq_wr_ready = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axis_card_recv_tready = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
        io_axis_card_recv_tready = 1'b1;
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
        io_axis_card_recv_tready = 1'b1;
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axis_card_send_tdata = 512'h0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
        io_axis_card_send_tdata = {352'd0, _zz_io_axis_card_send_tdata};
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axis_card_send_tkeep = 64'h0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
        io_axis_card_send_tkeep = 64'h0000000000000003;
      end
      default : begin
      end
    endcase
  end

  assign io_axis_card_send_tid = 6'h0;
  always @(*) begin
    io_axis_card_send_tlast = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
        io_axis_card_send_tlast = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @(*) begin
    io_axis_card_send_tvalid = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
        io_axis_card_send_tvalid = 1'b1;
      end
      default : begin
      end
    endcase
  end

  assign FSM_wantExit = 1'b0;
  always @(*) begin
    FSM_wantStart = 1'b0;
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
      end
      FSM_COMPUTE : begin
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
        FSM_wantStart = 1'b1;
      end
    endcase
  end

  assign FSM_wantKill = 1'b0;
  always @(*) begin
    FSM_stateNext = FSM_stateReg;
    case(FSM_stateReg)
      FSM_IDLE : begin
        if(when_logic_l72) begin
          FSM_stateNext = FSM_READ_X;
        end
      end
      FSM_READ_X : begin
        if(io_sq_rd_fire) begin
          FSM_stateNext = FSM_Wait_X;
        end
      end
      FSM_Wait_X : begin
        if(when_logic_l97) begin
          FSM_stateNext = FSM_READ_W;
        end
      end
      FSM_READ_W : begin
        if(io_sq_rd_fire) begin
          FSM_stateNext = FSM_WAIT_W;
        end
      end
      FSM_WAIT_W : begin
        if(when_logic_l123) begin
          FSM_stateNext = FSM_COMPUTE;
        end
      end
      FSM_COMPUTE : begin
        FSM_stateNext = FSM_WRITE_Y;
      end
      FSM_WRITE_Y : begin
        if(io_sq_wr_fire) begin
          FSM_stateNext = FSM_Wait_Y;
        end
      end
      FSM_Wait_Y : begin
        if(io_cq_wr_fire) begin
          FSM_stateNext = FSM_IDLE;
        end
      end
      default : begin
      end
    endcase
    if(FSM_wantStart) begin
      FSM_stateNext = FSM_IDLE;
    end
    if(FSM_wantKill) begin
      FSM_stateNext = FSM_BOOT;
    end
  end

  assign when_logic_l72 = (io_start && (! io_done));
  assign io_sq_rd_fire = (io_sq_rd_valid && io_sq_rd_ready);
  assign when_logic_l97 = (io_axis_card_recv_tvalid && io_axis_card_recv_tready);
  assign when_logic_l123 = (io_axis_card_recv_tvalid && io_axis_card_recv_tready);
  assign io_sq_wr_fire = (io_sq_wr_valid && io_sq_wr_ready);
  assign io_cq_wr_fire = (io_cq_wr_valid && io_cq_wr_ready);
  assign FSM_onExit_BOOT = ((FSM_stateNext != FSM_BOOT) && (FSM_stateReg == FSM_BOOT));
  assign FSM_onExit_IDLE = ((FSM_stateNext != FSM_IDLE) && (FSM_stateReg == FSM_IDLE));
  assign FSM_onExit_READ_X = ((FSM_stateNext != FSM_READ_X) && (FSM_stateReg == FSM_READ_X));
  assign FSM_onExit_Wait_X = ((FSM_stateNext != FSM_Wait_X) && (FSM_stateReg == FSM_Wait_X));
  assign FSM_onExit_READ_W = ((FSM_stateNext != FSM_READ_W) && (FSM_stateReg == FSM_READ_W));
  assign FSM_onExit_WAIT_W = ((FSM_stateNext != FSM_WAIT_W) && (FSM_stateReg == FSM_WAIT_W));
  assign FSM_onExit_COMPUTE = ((FSM_stateNext != FSM_COMPUTE) && (FSM_stateReg == FSM_COMPUTE));
  assign FSM_onExit_WRITE_Y = ((FSM_stateNext != FSM_WRITE_Y) && (FSM_stateReg == FSM_WRITE_Y));
  assign FSM_onExit_Wait_Y = ((FSM_stateNext != FSM_Wait_Y) && (FSM_stateReg == FSM_Wait_Y));
  assign FSM_onEntry_BOOT = ((FSM_stateNext == FSM_BOOT) && (FSM_stateReg != FSM_BOOT));
  assign FSM_onEntry_IDLE = ((FSM_stateNext == FSM_IDLE) && (FSM_stateReg != FSM_IDLE));
  assign FSM_onEntry_READ_X = ((FSM_stateNext == FSM_READ_X) && (FSM_stateReg != FSM_READ_X));
  assign FSM_onEntry_Wait_X = ((FSM_stateNext == FSM_Wait_X) && (FSM_stateReg != FSM_Wait_X));
  assign FSM_onEntry_READ_W = ((FSM_stateNext == FSM_READ_W) && (FSM_stateReg != FSM_READ_W));
  assign FSM_onEntry_WAIT_W = ((FSM_stateNext == FSM_WAIT_W) && (FSM_stateReg != FSM_WAIT_W));
  assign FSM_onEntry_COMPUTE = ((FSM_stateNext == FSM_COMPUTE) && (FSM_stateReg != FSM_COMPUTE));
  assign FSM_onEntry_WRITE_Y = ((FSM_stateNext == FSM_WRITE_Y) && (FSM_stateReg != FSM_WRITE_Y));
  assign FSM_onEntry_Wait_Y = ((FSM_stateNext == FSM_Wait_Y) && (FSM_stateReg != FSM_Wait_Y));
  always @(posedge clk) begin
    if(!resetn) begin
      FSM_stateReg <= FSM_BOOT;
    end else begin
      FSM_stateReg <= FSM_stateNext;
    end
  end

  always @(posedge clk) begin
    case(FSM_stateReg)
      FSM_IDLE : begin
      end
      FSM_READ_X : begin
      end
      FSM_Wait_X : begin
        if(when_logic_l97) begin
          vecX_0 <= io_axis_card_recv_tdata[15 : 0];
          vecX_1 <= io_axis_card_recv_tdata[31 : 16];
          vecX_2 <= io_axis_card_recv_tdata[47 : 32];
          vecX_3 <= io_axis_card_recv_tdata[63 : 48];
          vecX_4 <= io_axis_card_recv_tdata[79 : 64];
          vecX_5 <= io_axis_card_recv_tdata[95 : 80];
          vecX_6 <= io_axis_card_recv_tdata[111 : 96];
          vecX_7 <= io_axis_card_recv_tdata[127 : 112];
          vecX_8 <= io_axis_card_recv_tdata[143 : 128];
          vecX_9 <= io_axis_card_recv_tdata[159 : 144];
        end
      end
      FSM_READ_W : begin
      end
      FSM_WAIT_W : begin
        if(when_logic_l123) begin
          vecW_0 <= io_axis_card_recv_tdata[15 : 0];
          vecW_1 <= io_axis_card_recv_tdata[31 : 16];
          vecW_2 <= io_axis_card_recv_tdata[47 : 32];
          vecW_3 <= io_axis_card_recv_tdata[63 : 48];
          vecW_4 <= io_axis_card_recv_tdata[79 : 64];
          vecW_5 <= io_axis_card_recv_tdata[95 : 80];
          vecW_6 <= io_axis_card_recv_tdata[111 : 96];
          vecW_7 <= io_axis_card_recv_tdata[127 : 112];
          vecW_8 <= io_axis_card_recv_tdata[143 : 128];
          vecW_9 <= io_axis_card_recv_tdata[159 : 144];
        end
      end
      FSM_COMPUTE : begin
        vecY_0 <= (vecX_0 + vecW_0);
        vecY_1 <= (vecX_1 + vecW_1);
        vecY_2 <= (vecX_2 + vecW_2);
        vecY_3 <= (vecX_3 + vecW_3);
        vecY_4 <= (vecX_4 + vecW_4);
        vecY_5 <= (vecX_5 + vecW_5);
        vecY_6 <= (vecX_6 + vecW_6);
        vecY_7 <= (vecX_7 + vecW_7);
        vecY_8 <= (vecX_8 + vecW_8);
        vecY_9 <= (vecX_9 + vecW_9);
      end
      FSM_WRITE_Y : begin
      end
      FSM_Wait_Y : begin
      end
      default : begin
      end
    endcase
  end


endmodule
