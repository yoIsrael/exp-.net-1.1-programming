using System;
using System.Management;

namespace Apress.ExpertDotNet.ListProcessors
{
	/// <summary>
	/// Summary description for Class1.
	/// </summary>
	class Class1
	{
		static void Main()
		{
			int totalProcessors = 0;
			ManagementClass processorClass = new ManagementClass("Win32_Processor");
			foreach (ManagementObject processor in processorClass.GetInstances())
			{
				++totalProcessors;
				Console.WriteLine("{0}, {1} MHz", processor["Name"],
					processor["CurrentClockSpeed"]);
			}
			if (totalProcessors > 1)
				Console.WriteLine("\n{0} processors", totalProcessors);
			else
				Console.WriteLine("\n{0} processor", totalProcessors);
		}

	}
}
