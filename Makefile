TARGET = group_scores
all:    $(TARGET)
	make -C hustgroup1
	make -C hustgroup2
	make -C hustgroup3
	make -C hustgroup4

$(TARGET): $(TARGET).c
	gcc -o $(TARGET) $(TARGET).c

clean:
	rm -f $(TARGET) *.o core *~ score_record.txt
	make -C hustgroup1 clean
	make -C hustgroup2 clean
	make -C hustgroup3 clean
	make -C hustgroup4 clean

test:
	./$(TARGET) > ./score_record.txt
	make -C hustgroup1 test
	make -C hustgroup2 test
	make -C hustgroup3 test
	make -C hustgroup4 test





