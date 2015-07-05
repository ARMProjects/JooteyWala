using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JooteyWala.Account;

using System.Data;
using DataLayer = JooteyWala.AppCode.DataLayer;

namespace JooteyWala.Web.General
{
    public partial class Cntrl_ProductList : System.Web.UI.UserControl
    {
        DataLayer.DataFetchConn.DataFetchConn dtLayer = new DataLayer.DataFetchConn.DataFetchConn();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dsRecords = new DataSet();

            dsRecords = dtLayer.dtSetGetDataBasedStoreProc("GetTest_Items");
            RptProductDetails.DataSource = dsRecords;
            RptProductDetails.DataBind();
        }
    }
}