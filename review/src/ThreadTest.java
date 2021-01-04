
public class ThreadTest {
	public static void main(String[] args) {
		Object s;
		s.
		
		new Task1().start();
		new Thread(new Task2()).start();
		new Thread(() -> {
			for (int i = 2000; i < 3000; i++) {
				System.out.println(i);
				try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
			
		}).start();
	}
}
