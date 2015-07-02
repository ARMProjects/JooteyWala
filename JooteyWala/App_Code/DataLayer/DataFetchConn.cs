using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataFetchConn
/// </summary>
/// 

namespace JooteyWala.AppCode.DataLayer.DataFetchConn
{

    public class DataFetchConn : Connection
    {
        public DataFetchConn()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public DataSet dtSetGetDataBasedStoreProc(string storeProcName)
        {
            SqlCommand sqlCmd = new SqlCommand();
            SqlDataAdapter dtAdptr = new SqlDataAdapter(sqlCmd);

            DataSet dtSetDataset = new DataSet();

            try
            {
                OpenSQLConnection();
                sqlCmd = new SqlCommand(storeProcName, oConnect);
                sqlCmd.CommandType = CommandType.StoredProcedure;

                dtAdptr = new SqlDataAdapter(sqlCmd);

                dtSetDataset = new DataSet();
                dtAdptr.Fill(dtSetDataset);
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

            return dtSetDataset;
        }


    }

}