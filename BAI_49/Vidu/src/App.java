import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner sc = new Scanner(System.in);
        String s;
        System.out.println("Nhập vào chuỗi: ");
        s = sc.nextLine();
        System.out.println("-------");

        //Hàm length() ->> lấy độ dài của chuỗi 
        System.out.println(s.length());
        int dodai = s.length();

        //Hàm charAt(vị trí) ---> lấy ra 1 kí tự tại vị trí.

        for(int i = 0; i < dodai ; i++){
            System.out.println("Vị trí: " + i + " là: " + s.charAt(i));
        }

    }
}
