
//  Microsoft (R) .NET IL Disassembler.  Version 6.0.0



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly DemoApp
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56   // ....NETCoreApp,V
                                                                                                              65 72 73 69 6F 6E 3D 76 36 2E 30 01 00 54 0E 14   // ersion=v6.0..T..
                                                                                                              46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79   // FrameworkDisplay
                                                                                                              4E 61 6D 65 00 )                                  // Name.
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 07 44 65 6D 6F 41 70 70 00 00 )             // ...DemoApp..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 07 44 65 6D 6F 41 70 70 00 00 )             // ...DemoApp..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 07 44 65 6D 6F 41 70 70 00 00 )             // ...DemoApp..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module DemoApp.dll
// MVID: {59D72115-1372-4088-B679-4EE71392D20B}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x000001BAF2120000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed InterestRate
       extends [System.Runtime]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method InterestRate::.ctor

  .method public hidebysig newslot virtual 
          instance float32  Invoke(int32 period) runtime managed
  {
  } // end of method InterestRate::Invoke

  .method public hidebysig newslot virtual 
          instance class [System.Runtime]System.IAsyncResult 
          BeginInvoke(int32 period,
                      class [System.Runtime]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method InterestRate::BeginInvoke

  .method public hidebysig newslot virtual 
          instance float32  EndInvoke(class [System.Runtime]System.IAsyncResult result) runtime managed
  {
  } // end of method InterestRate::EndInvoke

} // end of class InterestRate

.class private auto ansi beforefieldinit Investment
       extends [System.Runtime]System.Object
{
  .field private initonly float64 '<Sum>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly int32 '<Years>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance float64 
          get_Sum() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Investment::'<Sum>k__BackingField'
    IL_0006:  ret
  } // end of method Investment::get_Sum

  .method public hidebysig specialname instance int32 
          get_Years() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Investment::'<Years>k__BackingField'
    IL_0006:  ret
  } // end of method Investment::get_Years

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(float64 sum,
                               int32 years) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      float64 Investment::'<Sum>k__BackingField'
    IL_000f:  ldarg.0
    IL_0010:  ldarg.2
    IL_0011:  stfld      int32 Investment::'<Years>k__BackingField'
    IL_0016:  ret
  } // end of method Investment::.ctor

  .method public hidebysig instance float64 
          Income(class InterestRate profit) cil managed
  {
    // Code size       61 (0x3d)
    .maxstack  4
    .locals init (float32 V_0,
             float64 V_1,
             float64 V_2)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  call       instance int32 Investment::get_Years()
    IL_0008:  callvirt   instance float32 InterestRate::Invoke(int32)
    IL_000d:  stloc.0
    IL_000e:  ldarg.0
    IL_000f:  call       instance float64 Investment::get_Sum()
    IL_0014:  ldc.r4     1.
    IL_0019:  ldloc.0
    IL_001a:  ldc.r4     100.
    IL_001f:  div
    IL_0020:  add
    IL_0021:  conv.r8
    IL_0022:  ldarg.0
    IL_0023:  call       instance int32 Investment::get_Years()
    IL_0028:  conv.r8
    IL_0029:  call       float64 [System.Runtime]System.Math::Pow(float64,
                                                                  float64)
    IL_002e:  mul
    IL_002f:  stloc.1
    IL_0030:  ldloc.1
    IL_0031:  ldarg.0
    IL_0032:  call       instance float64 Investment::get_Sum()
    IL_0037:  sub
    IL_0038:  stloc.2
    IL_0039:  br.s       IL_003b

    IL_003b:  ldloc.2
    IL_003c:  ret
  } // end of method Investment::Income

  .property instance callconv(8) float64 Sum()
  {
    .get instance float64 Investment::get_Sum()
  } // end of property Investment::Sum
  .property instance callconv(8) int32 Years()
  {
    .get instance int32 Investment::get_Years()
  } // end of property Investment::Years
} // end of class Investment

.class private auto ansi beforefieldinit Program
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Program/'<>c' '<>9'
    .field public static class InterestRate '<>9__0_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Program/'<>c'::.ctor()
      IL_0005:  stsfld     class Program/'<>c' Program/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance float32 
            '<<Main>$>b__0_1'(int32 n) cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  ldc.r4     8.
      IL_0005:  ldarg.1
      IL_0006:  ldc.i4.3
      IL_0007:  div
      IL_0008:  conv.r4
      IL_0009:  add
      IL_000a:  ret
    } // end of method '<>c'::'<<Main>$>b__0_1'

  } // end of class '<>c'

  .method private hidebysig static void  '<Main>$'(string[] args) cil managed
  {
    .entrypoint
    // Code size       141 (0x8d)
    .maxstack  4
    .locals init (float64 V_0,
             int32 V_1,
             class Investment V_2)
    IL_0000:  nop
    IL_0001:  ldstr      "Sum  : "
    IL_0006:  call       void [System.Console]System.Console::Write(string)
    IL_000b:  nop
    IL_000c:  call       string [System.Console]System.Console::ReadLine()
    IL_0011:  call       float64 [System.Runtime]System.Double::Parse(string)
    IL_0016:  stloc.0
    IL_0017:  ldstr      "Years: "
    IL_001c:  call       void [System.Console]System.Console::Write(string)
    IL_0021:  nop
    IL_0022:  call       string [System.Console]System.Console::ReadLine()
    IL_0027:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_002c:  stloc.1
    IL_002d:  ldloc.0
    IL_002e:  ldloc.1
    IL_002f:  newobj     instance void Investment::.ctor(float64,
                                                         int32)
    IL_0034:  stloc.2
    IL_0035:  ldstr      "Income in risk-free investment: {0:0.00}"
    IL_003a:  ldloc.2
    IL_003b:  ldnull
    IL_003c:  ldftn      float32 Program::'<<Main>$>g__SafeScheme|0_0'(int32)
    IL_0042:  newobj     instance void InterestRate::.ctor(object,
                                                           native int)
    IL_0047:  callvirt   instance float64 Investment::Income(class InterestRate)
    IL_004c:  box        [System.Runtime]System.Double
    IL_0051:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0056:  nop
    IL_0057:  ldstr      "Income in riskful investment: {0:0.00}"
    IL_005c:  ldloc.2
    IL_005d:  ldsfld     class InterestRate Program/'<>c'::'<>9__0_1'
    IL_0062:  dup
    IL_0063:  brtrue.s   IL_007c

    IL_0065:  pop
    IL_0066:  ldsfld     class Program/'<>c' Program/'<>c'::'<>9'
    IL_006b:  ldftn      instance float32 Program/'<>c'::'<<Main>$>b__0_1'(int32)
    IL_0071:  newobj     instance void InterestRate::.ctor(object,
                                                           native int)
    IL_0076:  dup
    IL_0077:  stsfld     class InterestRate Program/'<>c'::'<>9__0_1'
    IL_007c:  callvirt   instance float64 Investment::Income(class InterestRate)
    IL_0081:  box        [System.Runtime]System.Double
    IL_0086:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_008b:  nop
    IL_008c:  ret
  } // end of method Program::'<Main>$'

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

  .method assembly hidebysig static float32 
          '<<Main>$>g__SafeScheme|0_0'(int32 n) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       15 (0xf)
    .maxstack  2
    .locals init (float32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.3
    IL_0003:  blt.s      IL_0008

    IL_0005:  ldc.i4.6
    IL_0006:  br.s       IL_0009

    IL_0008:  ldc.i4.5
    IL_0009:  conv.r4
    IL_000a:  stloc.0
    IL_000b:  br.s       IL_000d

    IL_000d:  ldloc.0
    IL_000e:  ret
  } // end of method Program::'<<Main>$>g__SafeScheme|0_0'

} // end of class Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
