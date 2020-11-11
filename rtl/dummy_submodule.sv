//-----------------------------------------------------------------------------
// Title         : Dummy Submodule
//-----------------------------------------------------------------------------
// File          : dummy_submodule.sv
// Author        : Manuel Eggimann  <meggimann@iis.ee.ethz.ch>
// Created       : 11.11.2020
//-----------------------------------------------------------------------------
// Description :
// Component of the Dummy Module for IP integration exercise in PULP Training
//-----------------------------------------------------------------------------
// Copyright (C) 2013-2020 ETH Zurich, University of Bologna
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License. You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//-----------------------------------------------------------------------------

`include "dummy_module/dummy_header.svh"

module dummy_submodule;
  import cf_math_pkg::*;
`ifdef ENABLE_DUMMY_VIP
  initial begin
    #10us $info(`DUMMY_SUCCESS_MESSAGE);
  end
`else
  initial begin
    #10us $fatal("Dummy module is not enabled. Add the define flag to the package description (src_files.yml)");
  end
`endif

  //Random instantiation of common cells IP to enforce correct dependency declaration. 
  lzc i_lzc (
       .in_i(),
       .cnt_o(),
       .empty_o()
       );

endmodule : dummy_submodule
