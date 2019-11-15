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
	static unsigned char lower_red = 0;
	static unsigned char upper_red = 255;
	static unsigned char lower_green = 0;
	static unsigned char upper_green = 255;
	static unsigned char lower_blue = 0;
	static unsigned char upper_blue = 255;
	static bool use_input_a = true;
	static bool two_outputs = false;




	if(WR_EN){
		if(CMD == 0){
			lower_red = DATA;}
		else if(CMD == 1){
			upper_red = DATA;}
		else if(CMD == 2){
			lower_green = DATA;}
		else if(CMD == 3){
			upper_green = DATA;}
		else if(CMD == 4){
			lower_blue = DATA;}
		else if(CMD == 5){
			upper_blue = DATA;}
		else if(CMD == 6){
			use_input_a = DATA;}
		else if(CMD == 7){
			two_outputs = DATA;}
	}

	pixel_type A_R;
	pixel_type A_G;
	pixel_type A_B;
	pixel_type B_R;
	pixel_type B_G;
	pixel_type B_B;



	pixel_type	R0 = stream_in_a_24->data.R;
	pixel_type	G0 = stream_in_a_24->data.G;
	pixel_type	B0 = stream_in_a_24->data.B;
	pixel_type	R1 = stream_in_b_24->data.R;
	pixel_type	G1 = stream_in_b_24->data.G;
	pixel_type	B1 = stream_in_b_24->data.B;

	if(use_input_a){
		A_R = R0;
		A_G = G0;
		A_B = B0;
		B_R = R1;
		B_G = G1;
		B_B = B1;
	}
	else{
		A_R = R1;
		A_G = G1;
		A_B = B1;
		B_R = R0;
		B_G = G0;
		B_B = B0;
	}
	//a is FG
	//b is BG
	//IF a colors fall within limits show BG, otherwise FG



	if(A_R>=lower_red && A_R<=upper_red && A_G>=lower_green && A_G<=upper_green && A_B>=lower_blue && A_B<=upper_blue){

		stream_out_a_24->data.R = B_R;
		stream_out_a_24->data.G = B_G;
		stream_out_a_24->data.B = B_B;
		stream_out_a_24->user = SOF;
		stream_out_a_24->last = LAST;

		if(two_outputs){
			stream_out_b_24->data.R = B_R;
			stream_out_b_24->data.G = B_G;
			stream_out_b_24->data.B = B_B;
			stream_out_b_24->user = SOF;
			stream_out_b_24->last = LAST;
		}

	}else{

		stream_out_a_24->data.R = A_R;
		stream_out_a_24->data.G = A_G;
		stream_out_a_24->data.B = A_B;
		stream_out_a_24->user = SOF;
		stream_out_a_24->last = LAST;

		if(two_outputs){
			stream_out_b_24->data.R = A_R;
			stream_out_b_24->data.G = A_G;
			stream_out_b_24->data.B = A_B;
			stream_out_b_24->user = SOF;
			stream_out_b_24->last = LAST;
		}

	}



}

