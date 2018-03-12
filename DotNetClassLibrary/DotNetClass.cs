using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DotNetClassLibrary
{
    public class DotNetClass
    {
        public DotNetClass()
        {

        }

        public DateTime CallMethodWithoutArguments()
        {
            return DateTime.UtcNow;
        }

        public static string CallStaticMethod(string name, int age)
        {
            return string.Format("Hello {0}!... Your age is {1}", name, age);
        }
    }
}
