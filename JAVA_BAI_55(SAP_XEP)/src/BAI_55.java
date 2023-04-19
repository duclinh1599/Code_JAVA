import java.util.Arrays;


public class BAI_55 {


    public static int[] reverse(int[] x) {
        int[] rs = new int[x.length];
        int index =0;
        for(int i = x.length-1; i>=0; i-- ) {
            rs[index]=x[i];
			index++;
        }

        return rs;
    }

    public static void main(String[] args) throws Exception {
        int a[] = new int[] {1, 8, 2, 6, 4, 3, 7, 9};
        int b[] = new int[15];

        System.out.println("a ban đầu: " + Arrays.toString(a));
        //Hàm sắp xếp tăng dần
        Arrays.sort(a);
        System.out.println("a sau khi sắp xếp " + Arrays.toString(a));

        //Hàm tìm kiếm 
        System.out.println(Arrays.binarySearch(a, 4));
        //Hàm điền giá trị
        Arrays.fill(b, 5);
        System.out.println("Mảng b: " + Arrays.toString(b));
    }
}
