public class JavaWrapping {

    public static void main(String[] args) {
        ClientJNI client = ClientJNI.getInstance();
        if(0 == client.Start()) {
            System.out.println("Start JNI client succesfully");
        }

        if(0 == client.Stop()) {
           System.out.println("Stop JNI client succesfully");
        }
    }
}