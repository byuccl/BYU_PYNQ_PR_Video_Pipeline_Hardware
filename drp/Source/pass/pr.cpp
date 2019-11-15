#include <ap_fixed.h>
#include <ap_int.h>
#include "pr.h"

typedef ap_uint<8> pixel_type;
typedef ap_int<8> pixel_type_s;

#define LINE_BUFFER_SIZE (MAX_WIDTH)
#define MAX_WIDTH 1920 //1920
#define MAX_HEIGHT 1080 //1080
#define ABSDIFF(x,y)	((x>y)? x - y : y - x)
#define ABS(x)          ((x>0)? x : -x)

struct out_stream {
	struct {
		pixel_type R;
		pixel_type G;
		pixel_type B;
	} data;
	ap_uint<1> user;
	ap_uint<1> last;
};

struct in_stream {
	struct {
		pixel_type R;
		pixel_type G;
		pixel_type B;
	} data;
	ap_uint<1> last;
	ap_uint <66> user;

};
static unsigned char shift_value = 0;
static unsigned char lower_limit = 100;
static unsigned char upper_limit = 200;
static unsigned char sobel_weight = 2;


int mod(int k, int n) {
    return ((k %= n) < 0) ? k+n : k;
}
unsigned char rgb2y(RGB pix)
{
	unsigned char y;

	y = ((66 * pix.R.to_int() + 129 * pix.G.to_int() + 25 * pix.B.to_int() + 128) >> 8) + 16;

	return y;
}

void filter_operator(in_stream* stream_in_24, out_stream* stream_out_24) {

//#####################################################
//######################PRAGMAS########################
#pragma HLS CLOCK domain=default
#pragma HLS INTERFACE ap_ctrl_none port=return
//Register and depth
#pragma HLS INTERFACE axis port=stream_in_24
#pragma HLS INTERFACE axis port=stream_out_24
#pragma HLS pipeline II=1 enable_flush
//#####################################################

	ap_uint<1> SOF = stream_in_24->user.range(65,65);
	ap_uint<1> WR_EN = stream_in_24->user.range(64,64);
	ap_uint<32> CMD = stream_in_24->user.range(63,32);
	ap_uint<32> DATA = stream_in_24->user.range(31,0);


	stream_out_24->data.R = stream_in_24->data.R;
	stream_out_24->data.G = stream_in_24->data.G;
	stream_out_24->data.B = stream_in_24->data.B;
	stream_out_24->user = SOF;
	stream_out_24->last = stream_in_24->last;

}
