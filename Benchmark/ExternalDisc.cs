using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Benchmark
{
    public class ExternalDisc
    { 

        public List<DriveInfo> Lista()
        {
            List<DriveInfo> lista = new List<DriveInfo>();
            DriveInfo[] allDrives = DriveInfo.GetDrives();

            foreach (DriveInfo d in allDrives)
            {
                if (d.DriveType == DriveType.Removable)
                {
                    lista.Add(d);
                }
            }
            return lista;
        } 
        

        public long TotalSize(string name)
        {
            long result=0;
            DriveInfo[] allDrives = DriveInfo.GetDrives();

            foreach (DriveInfo d in allDrives)
            {
                if (d.DriveType == DriveType.Removable && d.Name == name)
                {                 
                    result = d.TotalSize;
                }
            }
            return result;
        }
    }
}
