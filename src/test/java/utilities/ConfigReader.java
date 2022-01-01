package utilities;

import jdk.dynalink.beans.StaticClass;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ConfigReader {
    // 1- properties objesi olusturacagiz

    static Properties properties;


    // 2- bu class in amaci configuration properties dosyasini okumak
    // ve oradaki key value ikililerini kullanarak istedigimiz key' ait
    // value'yi bize getirmek
    static {
        String dosyaYolu="configuration.properties";
        try {
            FileInputStream fileInputStream=new FileInputStream(dosyaYolu);
            properties=new Properties();
            properties.load(fileInputStream);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //3- test classlarindan config reader classina ulasip yukaridaki islemleri /
    // yapmamizi saglayacak bir method olusturucagiz

    public static String getProperty(String key) {
        String value=properties.getProperty(key);

        return value;
    }

}