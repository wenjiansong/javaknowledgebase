package javabasic;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Scanner;

/**
 * @desc: 获取键盘输入的2种方式
 *  1- Scanner,2 - BufferedReader
 * @author: wj.song
 * @create: 2020-11-06 15:57
 */
public class ReaderDemo {
    public static void main(String[] args) throws IOException {
        inputStreamMethod();
        //scannerMethod();

    }



    private static void scannerMethod() {
        Scanner reader = new Scanner(System.in);
        String msg;
        while(reader.hasNextLine()){
            msg = reader.nextLine();
            System.out.println("msg from Scanner:"+msg);
            if(Objects.equals("exit",msg)){
                System.out.println("bye,bye....");
                break;
            }
        }
    }

    private static void inputStreamMethod() throws IOException {
        InputStream in;
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String msg;
        while(true){
            msg = reader.readLine();
            System.out.println("msg from BufferedReader:"+msg);
            if(Objects.equals("exit",msg)){
                System.out.println("bye,bye....");
                break;
            }
        }
    }
}
