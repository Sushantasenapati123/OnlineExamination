using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Online_Examination.adminRepo
{
    public class BaseRepo
    {
        private readonly IConfiguration Config = null;
        public BaseRepo(IConfiguration conf)
        {
            Config = conf;
        }
        public SqlConnection CreateConnection()
        {
            return new SqlConnection(Config.GetConnectionString("MyCon"));
        }
    }
}
