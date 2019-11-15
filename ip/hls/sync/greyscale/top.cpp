#include <ap_fixed.h>
#include <ap_int.h>


typedef ap_uint<8> pixel_type;
typedef ap_int<8> pixel_type_s;
typedef ap_ufixed<8,0, AP_RND, AP_SAT> comp_type;
typedef ap_fixed<10,2, AP_RND, AP_SAT> coeff_type;

/* Parametrized RGB structure */
template <int A, int D, int C>
  struct ap_rgb{
    ap_uint<A> B;
    ap_uint<D> G;
    ap_uint<C> R;
  };

typedef ap_rgb<8,8,8> RGB;
struct video_stream {
	struct {
		pixel_type_s R;
		pixel_type_s G;
		pixel_type_s B;
	} data;
	ap_uint<1> user;
	ap_uint<1> last;
};

unsigned char rgb2y(RGB pix)
{
	unsigned char y;

	y = ((66 * pix.R.to_int() + 129 * pix.G.to_int() + 25 * pix.B.to_int() + 128) >> 8) + 16;

	return y;
}

void grey_func(video_stream* stream_in_24, video_stream* stream_out_24) {
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=stream_in_24
#pragma HLS INTERFACE axis port=stream_out_24
#pragma HLS pipeline II=1
	RGB tmp;
	tmp.R = stream_in_24->data.R;
	tmp.G = stream_in_24->data.G;
	tmp.B = stream_in_24->data.B;
	stream_out_24->user = stream_in_24->user;
	stream_out_24->last = stream_in_24->last;

	unsigned char output = rgb2y(tmp);

	stream_out_24->data.R = output;
	stream_out_24->data.G = output;
	stream_out_24->data.B = output;



}
