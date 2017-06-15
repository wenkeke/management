package test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

import org.junit.Test;

public class test {

	@Test
	public void test() throws ParseException {

		InputStream is;
		Workbook rwb = null;
		try {
			is = new FileInputStream("C:/Users/shinian/Desktop/abc.xls");
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

		// SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// Employee e = new Employee();
		// Date d1 = (sdf.parse("2017-4-9"));
		// Date d2 = (sdf.parse("2017-5-9"));
		// System.out.println(d1.getTime() < d2.getTime());
	}

}
