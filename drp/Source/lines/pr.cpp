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
		pixel_type B;
		pixel_type G;
		pixel_type R;
	} data;
	ap_uint<1> user;
	ap_uint<1> last;
};

struct in_stream {
	struct {
		pixel_type B;
		pixel_type G;
		pixel_type R;
	} data;
	ap_uint<1> last;
	ap_uint <66> user;

};
static int red_line = 100;
static int green_line = 1180;
static int blue_line = 100;
static int purple_line = 620;
static int line_size = 5;




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


	static int RGBX = 0;

	static int RGBY = 0;

	if(WR_EN){
		if(CMD == 0){
			line_size = DATA;}
		else if(CMD == 1){
			red_line = DATA;}
		else if(CMD == 2){
			green_line = DATA;}
		else if(CMD == 3){
			blue_line = DATA;}
		else if(CMD == 4){
			purple_line = DATA;}
	}






		if((RGBX>(red_line-line_size))&&(RGBX<(red_line+line_size))){
			tmp.R = 255;
			tmp.G = 0;
			tmp.B = 0;
		}else if((RGBX>(green_line-line_size))&&(RGBX<(green_line+line_size))){
			tmp.R = 0;
			tmp.G = 255;
			tmp.B = 0;
		}else if((RGBY>(blue_line-line_size))&&(RGBY<(blue_line+line_size))){
			tmp.R = 0;
			tmp.G = 0;
			tmp.B = 255;
		}else if((RGBY>(purple_line-line_size))&&(RGBY<(purple_line+line_size))){
			tmp.R = 128;
			tmp.G = 0;
			tmp.B = 128;
		}


		stream_out_24->data.R = tmp.R;
		stream_out_24->data.G = tmp.G;
		stream_out_24->data.B = tmp.B;

		RGBX++;
		if(stream_in_24->last){
			RGBX =0;
			RGBY++;
		}
		if( SOF){
			RGBY=0;
		}



}
