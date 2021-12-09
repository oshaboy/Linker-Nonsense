import ctypes,os
if __name__=="__main__":
    module=ctypes.cdll.LoadLibrary(os.getcwd()+"/call_this.so")
    module.call_this(b"Python")