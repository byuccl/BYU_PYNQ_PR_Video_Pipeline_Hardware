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

static unsigned char thres_value = 128;

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


unsigned char rgb2y(RGB pix)
{
	unsigned char y;

	y = ((66 * pix.R.to_int() + 129 * pix.G.to_int() + 25 * pix.B.to_int() + 128) >> 8) + 16;

	return y;
}
pixel_type dilation(WINDOW *window)
{
	unsigned char edge_val = 0;
	if((window->getval(0,0)>thres_value))
		edge_val = 255;
	if((window->getval(1,0)>thres_value))
		edge_val = 255;
	if((window->getval(0,1)>thres_value))
		edge_val = 255;
	if((window->getval(1,1)>thres_value))
		edge_val = 255;

	return edge_val;
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

	RGB tmp;
	tmp.R = stream_in_24->data.R;
	tmp.G = stream_in_24->data.G;
	tmp.B = stream_in_24->data.B;
	stream_out_24->user = SOF;
	stream_out_24->last = stream_in_24->last;




	static unsigned char line_RGB0[LINE_BUFFER_SIZE];
	static unsigned char line_RGB1[LINE_BUFFER_SIZE];
	static unsigned char line_RGB2[LINE_BUFFER_SIZE];
//#pragma HLS DEPENDENCE variable=line_RGB0 intra false
//#pragma HLS DEPENDENCE variable=line_RGB1 intra false
//#pragma HLS DEPENDENCE variable=line_RGB2 intra false

	static WINDOW buff_C;
	//#pragma HLS DEPENDENCE variable=kernel intra false
	static int kernel_index = 0;

	static int RGBX = 0;

	static int RGBY = 0;

	if(WR_EN){
		if(CMD == 0){
			thres_value = DATA;}
	}






		static char temp = 0;
		RGB tempx;


		tempx = tmp;

		if(temp==0){
			line_RGB0[RGBX]=rgb2y(tempx);

			buff_C.shift_right();

			buff_C.insert(line_RGB1[RGBX],0,2);
			buff_C.insert(line_RGB2[RGBX],1,2);
			buff_C.insert(rgb2y(tempx),2,2);
		}else if(temp==1){
			line_RGB1[RGBX]=rgb2y(tempx);

			buff_C.shift_right();

			buff_C.insert(line_RGB2[RGBX],0,2);
			buff_C.insert(line_RGB0[RGBX],1,2);
			buff_C.insert(rgb2y(tempx),2,2);
		}else{
			line_RGB2[RGBX]=rgb2y(tempx);

			buff_C.shift_right();

			buff_C.insert(line_RGB0[RGBX],0,2);
			buff_C.insert(line_RGB1[RGBX],1,2);
			buff_C.insert(rgb2y(tempx),2,2);
		}







		pixel_type edge;

		edge = dilation(&buff_C);

		stream_out_24->data.R = edge;
		stream_out_24->data.G = edge;
		stream_out_24->data.B = edge;








		RGBX++;
		if(stream_in_24->last){
			RGBX =0;
			RGBY++;
			if(++temp == 3)
				temp =0;
		}
		if( SOF){
			RGBY=0;
		}



}
