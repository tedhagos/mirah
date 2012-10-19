

class DelThread extends Thread {
	
	int counter = 0;
	
	public void run(){
		System.out.println(counter++);
	}
	
	
	public static void main(String[] args) {
		Thread t = new DelThread();
		t.start();
	}
	
}
	