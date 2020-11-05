package stream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {
	public static void main(String[] args) {
//		createDir();
//		createFile();
//		dirList();
//		fileDelte();
		fileCopy(args[0],args[1]);
		
	}
	public static void fileCopy(String src, String tar) {
		try {
			FileInputStream fis = new FileInputStream(src);
			FileOutputStream fos = new FileOutputStream(tar);
			
			byte[] readBytes = new byte[100];
			int readCnt=0;
			while((readCnt=fis.read(readBytes)) !=-1) {
				fos.write(readBytes,0 , readCnt);
			}
			fis.close();
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void fileDelte() {
		File file = new File("d:/img/data.txt");
		file.delete();
		System.out.println("삭제되었습니다");
	}
	
	public static void dirList() {
		File dir = new File("d:/img");
		File[] list = dir.listFiles();
		for(File file:list) {
			System.out.println("이름: " + file.getName());
			System.out.println("크기: " + file.getTotalSpace()+ file.length());
		}
	}
	
	public static void createFile() {
		File file = new File("d:/img/data.txt");
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	//폴더 생성
	public static void createDir() {
		
		File dir = new File("d:/img");
			dir.mkdir();
	}
}
