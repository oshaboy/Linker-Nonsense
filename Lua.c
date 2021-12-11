#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
#include "call_this.h"
int main(void){

	lua_State * L = luaL_newstate(); 
    luaL_openlibs(L);
    lua_register(L, "call_this",Lua_call_this);
    return luaL_dofile(L,"Lua.lua");
    
}