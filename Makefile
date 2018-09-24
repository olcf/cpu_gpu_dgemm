CUCOMP  = nvcc
CUFLAGS = -arch=sm_70

INCLUDES  = 
LIBRARIES = 

cpu_gpu_dgemm: cpu_gpu_dgemm.o
	$(CUCOMP) $(CUFLAGS) $(LIBRARIES) cpu_gpu_dgemm.o -o cpu_gpu_dgemm

cpu_gpu_dgemm.o: cpu_gpu_dgemm.cu
	$(CUCOMP) $(CUFLAGS) $(INCLUDES) -c cpu_gpu_dgemm.cu

.PHONY: clean

clean:
	rm -f cpu_gpu_dgemm *.o
