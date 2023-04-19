import java.util.Arrays;

public class Test {
    public static void main(String[] args) {
        SinhVien sv1 =new SinhVien(150, "Tran Van Thanh", "Lop 1", 9);
        SinhVien sv2 =new SinhVien(100, "Nguyen Thi Thanh Hoa", "Lop 2", 8);
        SinhVien sv3 =new SinhVien(199, "Nguyen Van An", "Lop 2", 8);
        SinhVien sv4 =new SinhVien(199, "Nguyen Van Binh", "Lop 2", 8);


        SinhVien[] a_sv = new SinhVien[] {sv1, sv2, sv3 };
        System.out.println("Mang sinh vien ban dau: " + Arrays.toString(a_sv));

        //Hàm sắp xếp sinh viên
        Arrays.sort(a_sv);
        System.out.println("Mang sinh vien sau khi sap xep: " + Arrays.toString(a_sv));

    }
}
