package test;

import java.text.ParseException;
import java.util.Random;

import org.junit.Test;

public class TestRandom {

	@Test
	public void test() throws ParseException {

		Random r = new Random(10);
		int i = r.nextInt(10000);
		System.out.println(i);
	}

}
