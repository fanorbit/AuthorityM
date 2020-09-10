import com.itheima.ssm.domain.Product;
import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class test {
    @Test
    public void test1() throws Exception {
        //jdbc.driver=oracle.jdbc.driver.OracleDriver
        //jdbc.url=jdbc:oracle:thin:@192.168.152.2:1521:orcl
        //jdbc.username=ssm
        //jdbc.password=itcast

        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@192.168.152.2:1521:orcl", "ssm", "itcast"
        );
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select * from product");
        System.out.println("resultSet = " + resultSet);
        while (resultSet.next()) {
            String string = resultSet.getString(3);
            System.out.println("目的地： = " + string);
        }
    }
}
