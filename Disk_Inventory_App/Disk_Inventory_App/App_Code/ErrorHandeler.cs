using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ErrorHandeler
/// </summary>

namespace DiskInventory
{
    public static class ErrorHandeler
    {
        public static string ErrorMessage { get; set; }
        public static Exception GlobalException { get; set; }
        public static SqlException GlobalSqlException { get; set; }
    }

   
}