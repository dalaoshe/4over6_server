
OBJS = main.o error_check.o test_client.o 4over6_server.o 4over6_util.o keep_alive_thread.o
HEAD = 4over6_util.h unp.h
main: $(OBJS) $(HEAD)
	g++ -o $@ $(OBJS) -lpthread

%.o: %.cpp
	g++ -c $< -o $@

clean: 
	rm main *.o
