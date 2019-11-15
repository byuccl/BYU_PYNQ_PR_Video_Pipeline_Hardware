set_property LOC IDELAY_X1Y68 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[0].DecoderX/InputSERDES_X/InputDelay}]
set_property LOC ILOGIC_X1Y67 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[0].DecoderX/InputSERDES_X/DeserializerSlave}]
set_property LOC ILOGIC_X1Y68 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[0].DecoderX/InputSERDES_X/DeserializerMaster}]
set_property LOC V20 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[0].DecoderX/InputSERDES_X/InputBuffer}]
set_property LOC IDELAY_X1Y70 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[1].DecoderX/InputSERDES_X/InputDelay}]
set_property LOC ILOGIC_X1Y69 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[1].DecoderX/InputSERDES_X/DeserializerSlave}]
set_property LOC ILOGIC_X1Y70 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[1].DecoderX/InputSERDES_X/DeserializerMaster}]
set_property LOC T20 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[1].DecoderX/InputSERDES_X/InputBuffer}]
set_property LOC IDELAY_X1Y72 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[2].DecoderX/InputSERDES_X/InputDelay}]
set_property LOC ILOGIC_X1Y71 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[2].DecoderX/InputSERDES_X/DeserializerSlave}]
set_property LOC ILOGIC_X1Y72 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[2].DecoderX/InputSERDES_X/DeserializerMaster}]
set_property LOC N20 [get_cells {system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/DataDecoders[2].DecoderX/InputSERDES_X/InputBuffer}]
set_property LOC N18 [get_cells system_i/video/hdmi_in/frontend/dvi2rgb_0/U0/TMDS_ClockingX/InputBuffer]
set_property LOC J18 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[2].DataSerializer/OutputBuffer}]
set_property LOC OLOGIC_X1Y121 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[2].DataSerializer/SerializerSlave}]
set_property LOC OLOGIC_X1Y122 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[2].DataSerializer/SerializerMaster}]
set_property LOC K17 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[0].DataSerializer/OutputBuffer}]
set_property LOC OLOGIC_X1Y125 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[0].DataSerializer/SerializerSlave}]
set_property LOC OLOGIC_X1Y126 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[0].DataSerializer/SerializerMaster}]
set_property LOC L16 [get_cells system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/ClockSerializer/OutputBuffer]
set_property LOC OLOGIC_X1Y127 [get_cells system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/ClockSerializer/SerializerSlave]
set_property LOC OLOGIC_X1Y128 [get_cells system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/ClockSerializer/SerializerMaster]
set_property LOC K19 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[1].DataSerializer/OutputBuffer}]
set_property LOC OLOGIC_X1Y129 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[1].DataSerializer/SerializerSlave}]
set_property LOC OLOGIC_X1Y130 [get_cells {system_i/video/hdmi_out/frontend/rgb2dvi_0/U0/DataEncoders[1].DataSerializer/SerializerMaster}]


create_pblock pblock_v_vid_in_axi4s_0
add_cells_to_pblock [get_pblocks pblock_v_vid_in_axi4s_0] [get_cells -quiet [list system_i/video/hdmi_in/frontend/v_vid_in_axi4s_0]]
resize_pblock [get_pblocks pblock_v_vid_in_axi4s_0] -add {SLICE_X50Y50:SLICE_X53Y99}
resize_pblock [get_pblocks pblock_v_vid_in_axi4s_0] -add {RAMB18_X3Y20:RAMB18_X3Y39}
resize_pblock [get_pblocks pblock_v_vid_in_axi4s_0] -add {RAMB36_X3Y10:RAMB36_X3Y19}
