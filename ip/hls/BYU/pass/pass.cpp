#include <ap_fixed.h>
#include <ap_int.h>
#include "pass.h"

typedef ap_uint<8> pixel_type;
typedef ap_int<8> pixel_type_s;

#define LINE_BUFFER_SIZE (MAX_WIDTH)
#define MAX_WIDTH 1920 //1920
#define MAX_HEIGHT 1080 //1080
#define ABSDIFF(x,y)	((x>y)? x - y : y - x)
#define ABS(x)          ((x>0)? x : -x)

struct video_stream {
	struct {
		pixel_type R;
		pixel_type G;
		pixel_type B;
	} data;
	ap_uint<1> user;
	ap_uint<1> last;
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


void pass_hls(video_stream* stream_in_24, video_stream* stream_out_24, ctl_t ctl) {
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=stream_in_24
#pragma HLS INTERFACE axis port=stream_out_24
#pragma HLS pipeline II=1
	ap_uint<1> SOF = stream_in_24->user.range(65,65);
	ap_uint<1> WR_EN = stream_in_24->user.range(64,64);
	ap_uint<32> CMD = stream_in_24->user.range(63,32);
	ap_uint<32> DATA = stream_in_24->user.range(31,0);

	static RGB tmp;
	static ap_uint<1> tmp_user = 0;
	static ap_uint<1> tmp_last = 0;
	stream_out_24->data.R = tmp.R;
	stream_out_24->data.G = tmp.G;
	stream_out_24->data.B = tmp.B;
	tmp_user = stream_in_24->user;
	tmp_last = stream_in_24->last;


	tmp.R = stream_in_24->data.R;
	tmp.G = stream_in_24->data.G;
	tmp.B = stream_in_24->data.B;
	stream_out_24->user = tmp_user;
	stream_out_24->last = tmp_last;






}
