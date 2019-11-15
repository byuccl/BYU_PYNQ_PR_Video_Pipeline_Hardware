#include <ap_fixed.h>
#include <ap_int.h>


typedef ap_uint<8> pixel_type;
typedef ap_int<8> pixel_type_s;
typedef ap_ufixed<8,0, AP_RND, AP_SAT> comp_type;
typedef ap_fixed<10,2, AP_RND, AP_SAT> coeff_type;
struct video_stream {
	struct {
		pixel_type_s R;
		pixel_type_s G;
		pixel_type_s B;
	} data;
	ap_uint<1> user;
	ap_uint<1> last;
};


void filter_func(video_stream* stream_in_24, video_stream* stream_out_24) {
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=stream_in_24
#pragma HLS INTERFACE axis port=stream_out_24
#pragma HLS pipeline II=1

	stream_out_24->user = stream_in_24->user;
	stream_out_24->last = stream_in_24->last;
	stream_out_24->data.R = 255 - stream_in_24->data.R;
	stream_out_24->data.G = 255 - stream_in_24->data.G;
	stream_out_24->data.B = 255 - stream_in_24->data.B;



}
