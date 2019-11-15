#include <ap_fixed.h>
#include <ap_int.h>


typedef ap_uint<8> pixel_type;
typedef ap_int<8> pixel_type_s;
typedef ap_ufixed<8,0, AP_RND, AP_SAT> comp_type;
typedef ap_fixed<10,2, AP_RND, AP_SAT> coeff_type;
struct video_stream {
	struct {
		pixel_type B;
		pixel_type G;
		pixel_type R;
	} data;
	ap_uint<1> user;
	ap_uint<1> last;
};

struct stream_ctrl {
	struct {
		pixel_type B;
		pixel_type G;
		pixel_type R;
	} data;
	ap_uint<1> last;
	ap_uint <66> user;

};




void mux_operator(stream_ctrl* stream_in_a_24, video_stream* stream_in_b_24,video_stream* stream_out_a_24,video_stream* stream_out_b_24) {
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis depth=24 port=stream_in_a_24
#pragma HLS INTERFACE axis depth=24 port=stream_in_b_24
#pragma HLS INTERFACE axis depth=24 port=stream_out_a_24
#pragma HLS INTERFACE axis depth=24 port=stream_out_b_24

#pragma HLS pipeline II=1  enable_flush

	ap_uint<1> LAST = stream_in_a_24->last;
	ap_uint<1> SOF = stream_in_a_24->user.range(65,65);
	ap_uint<1> WR_EN = stream_in_a_24->user.range(64,64);
	ap_uint<32> CMD = stream_in_a_24->user.range(63,32);
	ap_uint<32> DATA = stream_in_a_24->user.range(31,0);


	ap_uint<24> tmpa;
	ap_uint<24> tmpb;
	static ap_uint<24> tmpc;
	static ap_uint<24> tmpd;
	static int vid_id = 0;
	static bool video_a = false;
	static bool video_b = false;
	static bool split = true;



	if(WR_EN){
		if(CMD == 0){
			video_a = DATA;}
		else if(CMD == 1){
			video_b = DATA;}
		else if(CMD == 2){
			split = DATA;}
	}


	pixel_type A_R = stream_in_a_24->data.R;//tmpc;
	pixel_type A_G = stream_in_a_24->data.G;//tmpc;
	pixel_type A_B = stream_in_a_24->data.B;//tmpc;
	pixel_type B_R = stream_in_b_24->data.R;//tmpc;
	pixel_type B_G = stream_in_b_24->data.G;//tmpc;
	pixel_type B_B = stream_in_b_24->data.B;//tmpc;

	//	stream_out_a_24->data.R = A_R;
	//	stream_out_a_24->data.G = A_G;
	//	stream_out_a_24->data.B = A_B;
	//	stream_out_b_24->data.R = A_R;
	//	stream_out_b_24->data.G = A_G;
	//	stream_out_b_24->data.B = A_B;
	//	stream_out_a_24->user = SOF;
	//	stream_out_a_24->last = LAST;
	//	stream_out_b_24->user = SOF;
	//	stream_out_b_24->last = LAST;


	if(split){
		if(vid_id){
			stream_out_a_24->data.R = A_R;
			stream_out_a_24->data.G = A_G;
			stream_out_a_24->data.B = A_B;
			stream_out_b_24->data.R = A_R;
			stream_out_b_24->data.G = A_G;
			stream_out_b_24->data.B = A_B;
			stream_out_a_24->user = SOF;
			stream_out_a_24->last = LAST;


			stream_out_b_24->user = SOF;
			stream_out_b_24->last = LAST;
			vid_id = 0;
		}else{
			stream_out_a_24->data.R = B_R;
			stream_out_a_24->data.G = B_G;
			stream_out_a_24->data.B = B_B;
			stream_out_b_24->data.R = B_R;
			stream_out_b_24->data.G = B_G;
			stream_out_b_24->data.B = B_B;
			stream_out_a_24->user = SOF;
			stream_out_a_24->last = LAST;


			stream_out_b_24->user = SOF;
			stream_out_b_24->last = LAST;
			vid_id = 1;
		}}
	else if(video_a){
		stream_out_a_24->data.R = A_R;
		stream_out_a_24->data.G = A_G;
		stream_out_a_24->data.B = A_B;
		stream_out_b_24->data.R = A_R;
		stream_out_b_24->data.G = A_G;
		stream_out_b_24->data.B = A_B;
		stream_out_a_24->user = SOF;
		stream_out_a_24->last = LAST;


		stream_out_b_24->user = SOF;
		stream_out_b_24->last = LAST;
	}else{
		stream_out_a_24->data.R = B_R;
		stream_out_a_24->data.G = B_G;
		stream_out_a_24->data.B = B_B;
		stream_out_b_24->data.R = B_R;
		stream_out_b_24->data.G = B_G;
		stream_out_b_24->data.B = B_B;
		stream_out_a_24->user = SOF;
		stream_out_a_24->last = LAST;


		stream_out_b_24->user = SOF;
		stream_out_b_24->last = LAST;
	}



}

