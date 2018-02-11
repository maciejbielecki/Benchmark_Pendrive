using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Benchmark
{
    public class CreateCopyDelete
    {

        public void CreateFile(int capacity, string fileName)
        {   
            var fileStream = new FileStream(fileName+".txt", FileMode.Create, FileAccess.Write, FileShare.None);
            fileStream.SetLength(capacity * 1024 * 1024);
            fileStream.Close();
        }

        public double CreateCopy(string path, string fileName)
        {
            
            var sourceFile = System.IO.Path.GetDirectoryName(
                System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase) + "\\"+fileName+".txt";
            string destinationFile = path+fileName+".txt";
            string pathSource = sourceFile.Substring(6);

            var start = DateTime.Now;
            System.IO.File.Copy(pathSource, destinationFile);
            var stop = DateTime.Now;

            var result = stop - start;

            var res = Convert.ToDouble(result.Seconds.ToString() + "," + result.Milliseconds.ToString());

            return res;
        }

        public void DeleteFile(string path, string fileName)
        {
            string destinationFile = path + fileName+".txt";
            System.IO.File.Delete(destinationFile);
        }

        public void DeleteFile(string fileName)
        {
            string sourceFile = System.IO.Path.GetDirectoryName(
                System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase) + "\\" + fileName + ".txt";
            string pathSource = sourceFile.Substring(6);
            System.IO.File.Delete(pathSource);
        }
    }
}
