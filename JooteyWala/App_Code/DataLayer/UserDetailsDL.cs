using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;



using System.Data.SqlClient;
using System.IO;
using System.Text;

//using Customer = JooteyWala.App_Code.Schema.Customer;


public class UserDetailsDL : Connection
{

    public UserDetailsDL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    ErrorLogger oErrorLog = new ErrorLogger();

    public int GenerateRegistration(Customer cust)
    {
        int iResultId = 0;

        SqlCommand sqlCmd = new SqlCommand();
        try
        {
            OpenSQLConnection();
            sqlCmd = new SqlCommand("GenerateRegistration", oConnect);
            //sqlCmd = new SqlCommand("GenerateInvoice_MultipleOrders", oConnect);
            sqlCmd.CommandType = CommandType.StoredProcedure;

            sqlCmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = cust.FirstName;
            sqlCmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = cust.LastName;
            sqlCmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = cust.Email;
            sqlCmd.Parameters.Add("@Username", SqlDbType.VarChar).Value = cust.Username;
            sqlCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = cust.Password;

            SqlParameter paramResult = new SqlParameter("@ResultId", SqlDbType.Int);
            paramResult.Direction = ParameterDirection.Output;
            sqlCmd.Parameters.Add(paramResult);

            sqlCmd.ExecuteNonQuery();

            if (paramResult.Value != null)
            {
                iResultId = Convert.ToInt32(paramResult.Value);
            }
        }
        catch (Exception ex)
        {
            oErrorLog.Open();
            oErrorLog.Log("GenerateRegistration in UserDetailsDL.cs" + ex.Message);
            oErrorLog.Flush();
            oErrorLog.Close();
        }
        finally
        {
            sqlCmd.Dispose();
            sqlCmd = null;

            CloseSQLConnection();
        }
        return iResultId;
    }

    public DataSet GetLoginDetails(Customer cust)
    {
        SqlCommand sqlCmd = new SqlCommand();
        SqlDataAdapter dtAdptr = new SqlDataAdapter(sqlCmd);

        DataSet dsDataSet = new DataSet();
        try
        {

            OpenSQLConnection();
            sqlCmd = new SqlCommand("GetLoginDetails", oConnect);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            //if (sStandardCode != "")
            sqlCmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = cust.Email;
            sqlCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = cust.Password;
            //else
            //sqlCmd.Parameters.Add("@StandardCode", SqlDbType.VarChar).Value = DBNull.Value;

            dtAdptr = new SqlDataAdapter(sqlCmd);

            dsDataSet = new DataSet();
            dtAdptr.Fill(dsDataSet);
        }
        catch (Exception ex)
        {
            dtAdptr.Dispose();
            dtAdptr = null;

            sqlCmd.Dispose();
            sqlCmd = null;

            CloseSQLConnection();
        }
        finally
        {
            sqlCmd.Dispose();
            sqlCmd = null;
        }
        return dsDataSet;
    }

    public DataTable CheckLoginDetails(Customer cust)
    {
        SqlCommand sqlCmd = new SqlCommand();
        SqlDataAdapter dtAdptr = new SqlDataAdapter(sqlCmd);

        DataTable dsDataTable = new DataTable();
        try
        {

            OpenSQLConnection();
            sqlCmd = new SqlCommand("CheckLoginDetails", oConnect);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            //if (sStandardCode != "")
            sqlCmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = cust.Email;
            //sqlCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = cust.Password;
            //else
            //sqlCmd.Parameters.Add("@StandardCode", SqlDbType.VarChar).Value = DBNull.Value;

            dtAdptr = new SqlDataAdapter(sqlCmd);

            dsDataTable = new DataTable();
            dtAdptr.Fill(dsDataTable);
        }
        catch (Exception ex)
        {
            dtAdptr.Dispose();
            dtAdptr = null;

            sqlCmd.Dispose();
            sqlCmd = null;

            CloseSQLConnection();
        }
        finally
        {
            sqlCmd.Dispose();
            sqlCmd = null;
        }
        return dsDataTable;
    }


    
}
