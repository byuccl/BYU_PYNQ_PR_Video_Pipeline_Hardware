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
	static RGB line_buffer0[LINE_BUFFER_SIZE];
	static RGB line_buffer1[LINE_BUFFER_SIZE];



	static int RGBX = 0;
	static int RGBY = 0;
	static int RGBX_MAX = 1920;


	static RGB last_read;
	RGB read;
	RGB tmp;
	tmp.R = stream_in_24->data.R;
	tmp.G = stream_in_24->data.G;
	tmp.B = stream_in_24->data.B;
	stream_out_24->user = SOF;
	stream_out_24->last = stream_in_24->last;

	int read_value = RGBX + 1;
	if(RGBX_MAX == read_value)
		read_value = 0;


	if(RGBY){
		read = line_buffer0[RGBX];
		line_buffer1[RGBX] = tmp;
	}else{
		read = line_buffer1[RGBX];
		line_buffer0[RGBX] = tmp;
	}






	int redDiff = ((int)tmp.R) - last_read.R;
	int greenDiff = ((int)tmp.G) - last_read.G;
	int blueDiff = ((int)tmp.B) - last_read.B;


	 int largestDiff = redDiff;
	if(ABS(greenDiff)>ABS(largestDiff))
		largestDiff = greenDiff;
	if(ABS(blueDiff)>ABS(largestDiff))
		largestDiff = blueDiff;


	int v = largestDiff + 128;
	if(v<0)
		v=0;
	if(v>255)
		v=255;

	
	
	stream_out_24->data.R = v;
	stream_out_24->data.G = v;
	stream_out_24->data.B = v;
	
	last_read = read;

	RGBX++;
	if(stream_in_24->last){
		RGBX_MAX=RGBX;
		RGBX =0;
		if(RGBY)
			RGBY = 0;
		else
			RGBY = 1;

	}

}
