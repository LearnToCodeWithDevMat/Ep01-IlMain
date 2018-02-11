#include "unistd.h"

void hello(void)
{
	write(1, "hello world", 11);
}
