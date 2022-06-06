all: cdp-print.cu
	nvcc -o cdpprint -lcudart -lculibos -lstdc++ -lm -ldl -lpthread -std=c++11 -arch=sm_75 -lcudadevrt -rdc=true -O3 -g cdp-print.cu

clean:
	rm -f cdpprint
