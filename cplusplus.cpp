extern "C"{
    #include "call_this.h"
}
#include <string>
int main(void){
    std::string lang_name = "C++";
    call_this(lang_name.c_str());
    return 0;
}