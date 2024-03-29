
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		int num = scan.nextInt();
		
		String[] arr = new String[num];
		
		int alpha[] = new int[26];
		
		for(int i = 0; i < arr.length; i++) {
			arr[i] = scan.next();
		}
		
		for(int i = 0; i < num; i++) {
			int temp = (int)Math.pow(10, arr[i].length()-1);
			for(int j = 0; j < arr[i].length(); j++) {
				alpha[arr[i].charAt(j) - 65] += temp;
				temp /= 10;
			}
		}
		
		Arrays.sort(alpha);
		
		int index = 9;
		int sum = 0;
		
		for(int i = alpha.length-1; i >= 0; i--) {
			if(alpha[i] == 0) {
				break;
			}
			sum += alpha[i] * index;
			index--;
		}
		
		System.out.println(sum);
	}
}

