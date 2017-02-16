TARGET = group2_score
all:    $(TARGET)

$(TARGET): $(TARGET).c
	gcc -o $(TARGET) $(TARGET).c

clean:
	rm -f $(TARGET) *.o core *~

test:
	./$(TARGET) >> ../score_record.txt



