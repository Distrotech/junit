JARDIR = /usr/share/java
JUNIT = junit4.11/junit-4.11.jar


$(JUNIT):
	ant

all: $(JUNIT)

install: all
	install -d $(DESTDIR)$(JARDIR)
	install -m 644 -t $(DESTDIR)$(JARDIR) $(JUNIT)

clean:
	ant clean
