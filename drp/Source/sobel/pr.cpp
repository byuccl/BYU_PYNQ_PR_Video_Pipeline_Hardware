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
pixel_type sobel_operator(WINDOW *window)
{
	short x_weight = 0;
	short y_weight = 0;

	unsigned short edge_weight;
	unsigned short edge_val_shifted;
	pixel_type edge_val;
	RGB pixel;

	char i;
	char j;


	char x_op[3][3] = { {-1,0,1},
			{-sobel_weight,0,sobel_weight},
			{-1,0,1}};

	char y_op[3][3] = { {1,sobel_weight,1},
			{0,0,0},
			{-1,-sobel_weight,-1}};
	printf("Window\n");
	//Compute approximation of the gradients in the X-Y direction
	for(i=0; i < 3; i++){
		for(j = 0; j < 3; j++){
			printf("%d \t",window->getval(i,j));
			// X direction gradient
			x_weight = x_weight + (window->getval(i,j) * x_op[i][j]);

			// Y direction gradient
			y_weight = y_weight + (window->getval(i,j) * y_op[i][j]);
		}
		printf("\n");
	}

	edge_weight = ABS(x_weight) + ABS(y_weight);

	edge_val_shifted = edge_weight>>shift_value;


	//Edge thresholding
	if(edge_val_shifted > upper_limit)
		edge_val_shifted = 255;
	else if(edge_val_shifted < lower_limit)
		edge_val_shifted = 0;

	edge_val = (255-(unsigned char)(edge_val_shifted));

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
	static int delay = 0;

	static int RGBY = 0;

	if(WR_EN){
		if(CMD == 0){
			shift_value = DATA;}
		else if(CMD == 1){
			sobel_weight = DATA;}
		else if(CMD == 2){
			upper_limit = DATA;}
		else if(CMD == 3){
			lower_limit = DATA;}
	}






		unsigned char temp;
		RGB tempx;

		temp = mod(RGBY,3);
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

		edge = sobel_operator(&buff_C);

		stream_out_24->data.R = edge;
		stream_out_24->data.G = edge;
		stream_out_24->data.B = edge;








		RGBX++;
		if(stream_in_24->last){
			RGBX =0;
			RGBY++;
		}
		if( SOF){
			RGBY=0;
		}



}
