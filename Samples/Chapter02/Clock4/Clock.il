.assembly extern mscorlib {}
.assembly Clock
{
	.ver 4:0:1:0
}

.module Clock.dll
 
.namespace Apress.ExpertDotNet.ClockSample
{	
	.class public ansi auto sealed Clock extends [mscorlib]System.ValueType
	{
		.field private unsigned int8 hours

		.method specialname public instance unsigned int8 get_Hours() cil managed
		{
			ldarg.0
			ldfld unsigned int8  Apress.ExpertDotNet.ClockSample.Clock::hours
			ret
		}

		.method specialname public instance void set_Hours(unsigned int8 'value')
		{
			ldarg.0
			ldarg.1
			stfld unsigned int8  Apress.ExpertDotNet.ClockSample.Clock::hours
			ret
		}

		.property instance unsigned int8 Hours ()
		{
			.get instance unsigned int8 get_Hours()
			.set instance void set_Hours(unsigned int8 'value')
		}

		.method public specialname rtspecialname instance void
		.ctor()
		{
			ldarg.0
			ldc.i4.s	12
			call instance void Apress.ExpertDotNet.ClockSample.Clock::.ctor(unsigned int8)

			ret
		}

		.method public specialname rtspecialname instance void
		.ctor(unsigned int8 hours)
		{
			ldarg.0
			ldarg.1
			stfld unsigned int8 Apress.ExpertDotNet.ClockSample.Clock::hours

			ret
		}
	}
} 
