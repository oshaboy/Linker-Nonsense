
class Java {
    public static void main(String[] args){
        System.load(System.getProperty("user.dir")+"/"+"call_this.so");
        callthis("Java");
    }
    public static native void callthis(String lang_name);

    
}