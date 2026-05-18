#include"main.hpp"

#include<iostream>

void say_hello(void)noexcept{
    std::cout<<"hello world!\n";
}

int main(int argc,char* argv[]){
    say_hello();
    return 0;
}
