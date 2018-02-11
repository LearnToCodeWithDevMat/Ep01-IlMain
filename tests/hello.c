#include <criterion/criterion.h>
#include <criterion/redirect.h>

void hello(void);
void redirect(void)
{
	cr_redirect_stdout();
}

Test(hello, hello, .init=redirect)
{
	hello();
	cr_assert_stdout_eq_str("hello world");
}
