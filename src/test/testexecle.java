package test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

public class testexecle {

	public static void main(String[] args) {
		InputStream is;
		Workbook rwb = null;
		try {
			is = new FileInputStream("C:/Users/shinian/Desktop/test3.xls");
			rwb = Workbook.getWorkbook(is);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (BiffException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Sheet rs = rwb.getSheet(0);
		Cell c00 = rs.getCell(0, 1);
		String strc00 = c00.getContents();
		Cell c10 = rs.getCell(2, 0);
		String strc10 = c10.getContents();
		System.out.println("strc00" + strc00);
		System.out.println("strc10:" + strc10);
		System.out.println("rs.getColumns()" + rs.getColumns());
		System.out.println("(rs.getName()" + rs.getName());
		System.out.println("(rs.getRows()()" + rs.getRows());
		System.out.println("==============");

		for (int i = 0; i < rs.getRows(); i++) {
			for (int j = 0; j < rs.getColumns(); j++) {
				System.out.print("|");
				System.out.print(rs.getCell(j, i).getContents() + "(" + j + ","
						+ i + ")" + "|\t");
			}
			System.out.println();
		}

		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// Employee e = new Employee();
		// Date d1 = (sdf.parse("2017-4-9"));
		// Date d2 = (sdf.parse("2017-5-9"));
		// System.out.println(d1.getTime() < d2.getTime());
	}
}
