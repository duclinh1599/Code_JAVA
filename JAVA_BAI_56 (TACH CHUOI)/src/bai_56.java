import java.util.Arrays;

public class bai_56 {
    public static void main(String[] args) throws Exception {
        String s ="Xin chào các bạn, tui là Peter!";

        String[] a = s.split(" ");
        System.out.println("Chuoi a: " + Arrays.toString(a));

        String s3 = "Nguyen Duc Linh";
        String[] b = s3.split(" ");
        System.out.println(Arrays.toString(b));
        System.out.println("Tên: " + b[b.length-1]);
    }
}
