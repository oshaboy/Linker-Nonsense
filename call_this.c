#include <stdio.h>
#include <jni.h>
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

const char *   lua_tolstring(lua_State*,int,size_t*) __attribute__((weak));

void call_this(const char * lang_name){
	printf("This call is from %s\n", lang_name);
}
JNIEXPORT void JNICALL Java_Java_callthis(JNIEnv *env, jobject obj,jstring lang_name){
    const char * c_lang_name=(*env)->GetStringUTFChars(env, lang_name, NULL);
    call_this(c_lang_name);
    (*env)->ReleaseStringUTFChars(env, lang_name, c_lang_name);

}
void CALL_THIS(const char * lang_name){
    call_this(lang_name);
}

int Bash_call_this(int argc, char * argv[]){
    call_this(argv[1]);
    return 0;
}
int Lua_call_this(lua_State *L){
    call_this(lua_tostring(L, 1));
    return 0;
}