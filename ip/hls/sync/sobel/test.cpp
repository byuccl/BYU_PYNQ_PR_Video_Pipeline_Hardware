#include <ap_fixed.h>
#include <ap_int.h>
#include "test.h"

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
RGB sobel_operator(WINDOW *window)
{
	short x_weight = 0;
	short y_weight = 0;

	unsigned short edge_weight;
	unsigned short edge_val_shifted;
	unsigned char edge_val;
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

	pixel.R = pixel.G = pixel.B = edge_val;

	return pixel;
}

void filter_func(video_stream* stream_in_24, video_stream* stream_out_24, ctl_t ctl) {
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
