#include <iostream>

class Base 
{
	virtual void foo() {}
};

class Derived : public Base {};

int main()
{
	Base* base_ptr = new Base();
	Derived* derived_ptr = dynamic_cast<Derived*>(base_ptr);

	if (!derived_ptr)
	{
		std::cout << "Works fine\n";
	}
	else
	{
		std::cout << "It doesn't work\n";
	}

	return 0;
}
