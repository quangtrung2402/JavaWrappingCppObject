public class ClientJNI {
    static {
        System.loadLibrary("jni");
    }

    private static final ClientJNI instance = new ClientJNI();

    private ClientJNI() {}

    public static ClientJNI getInstance(){
        return instance;
    }

    public native int Start();
    public native int Stop();

}