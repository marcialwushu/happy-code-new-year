import java.util.*;
import java.text.*;

public class Apollo {
	public static void main(String[] args) {
		Date date = new Date();
		SimpleDateFormat simpleDateformat=new SimpleDateFormat("yyyy");
		System.out.println(simpleDateformat.format(date));
	}
}
