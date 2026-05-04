import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static void main(String[] args) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/studentdb",
            "root",
            "zhEsty.74mysql");

            System.out.println("Database Connected Successfully");

        }
        catch(Exception e){
            System.out.println("Hello");
            e.printStackTrace();
        }

    }
}