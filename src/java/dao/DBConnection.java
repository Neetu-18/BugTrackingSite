
package dao;
import java.sql.DriverManager;
import java.sql.Connection;
public class DBConnection {
    static Connection con;
    public static Connection dbCon(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bugtracking","root","root");
        }
        catch(Exception e){
            System.out.println("Error"+e);
        }
        return con;
    }
}
