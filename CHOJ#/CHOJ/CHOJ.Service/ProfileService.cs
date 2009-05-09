using CHOJ.Abstractions;
using IBatisNet.DataAccess;

namespace CHOJ.Service
{
    public class ProfileService
    {
           private static ProfileService _instance = new ProfileService();
        private IDaoManager _daoManager;
        private IProfileDao _Dao;



        private ProfileService()
        {
            _daoManager = ServiceConfig.GetInstance().DaoManager;
            _Dao = (IProfileDao)_daoManager.GetDao(typeof(IProfileDao));
        }

        IProfileDao ProfileDao
        {
            get { return _Dao; }
        }

        public static ProfileService GetInstance()
        {
            return _instance;
        }
    }
}