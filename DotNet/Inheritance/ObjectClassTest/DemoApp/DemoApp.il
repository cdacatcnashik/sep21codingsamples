
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
// MVID: {01CF984A-A75E-488A-A0BF-942A55BC80C7}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x000001DAA2610000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed beforefieldinit Microsoft.CodeAnalysis.EmbeddedAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method EmbeddedAttribute::.ctor

} // end of class Microsoft.CodeAnalysis.EmbeddedAttribute

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.NullableAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.AttributeUsageAttribute::.ctor(valuetype [System.Runtime]System.AttributeTargets) = ( 01 00 84 6B 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ...k....T..Allow
                                                                                                                                     4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                                     72 69 74 65 64 00 )                               // rited.
  .field public initonly uint8[] NullableFlags
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8 A_1) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  newarr     [System.Runtime]System.Byte
    IL_000e:  dup
    IL_000f:  ldc.i4.0
    IL_0010:  ldarg.1
    IL_0011:  stelem.i1
    IL_0012:  stfld      uint8[] System.Runtime.CompilerServices.NullableAttribute::NullableFlags
    IL_0017:  ret
  } // end of method NullableAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8[] A_1) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  stfld      uint8[] System.Runtime.CompilerServices.NullableAttribute::NullableFlags
    IL_000e:  ret
  } // end of method NullableAttribute::.ctor

} // end of class System.Runtime.CompilerServices.NullableAttribute

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.NullableContextAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.AttributeUsageAttribute::.ctor(valuetype [System.Runtime]System.AttributeTargets) = ( 01 00 4C 14 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ..L.....T..Allow
                                                                                                                                     4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                                     72 69 74 65 64 00 )                               // rited.
  .field public initonly uint8 Flag
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8 A_1) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  stfld      uint8 System.Runtime.CompilerServices.NullableContextAttribute::Flag
    IL_000e:  ret
  } // end of method NullableContextAttribute::.ctor

} // end of class System.Runtime.CompilerServices.NullableContextAttribute

.class private auto ansi beforefieldinit Interval
       extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .field private int32 '<Minutes>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private int32 '<Seconds>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_Minutes() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Interval::'<Minutes>k__BackingField'
    IL_0006:  ret
  } // end of method Interval::get_Minutes

  .method private hidebysig specialname instance void 
          set_Minutes(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Interval::'<Minutes>k__BackingField'
    IL_0007:  ret
  } // end of method Interval::set_Minutes

  .method public hidebysig specialname instance int32 
          get_Seconds() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Interval::'<Seconds>k__BackingField'
    IL_0006:  ret
  } // end of method Interval::get_Seconds

  .method private hidebysig specialname instance void 
          set_Seconds(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Interval::'<Seconds>k__BackingField'
    IL_0007:  ret
  } // end of method Interval::set_Seconds

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(int32 min,
                               int32 sec) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldarg.2
    IL_000b:  ldc.i4.s   60
    IL_000d:  div
    IL_000e:  add
    IL_000f:  call       instance void Interval::set_Minutes(int32)
    IL_0014:  nop
    IL_0015:  ldarg.0
    IL_0016:  ldarg.2
    IL_0017:  ldc.i4.s   60
    IL_0019:  rem
    IL_001a:  call       instance void Interval::set_Seconds(int32)
    IL_001f:  nop
    IL_0020:  ret
  } // end of method Interval::.ctor

  .method public hidebysig instance int32 
          Time() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.s   60
    IL_0003:  ldarg.0
    IL_0004:  call       instance int32 Interval::get_Minutes()
    IL_0009:  mul
    IL_000a:  ldarg.0
    IL_000b:  call       instance int32 Interval::get_Seconds()
    IL_0010:  add
    IL_0011:  stloc.0
    IL_0012:  br.s       IL_0014

    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method Interval::Time

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "{0}:{1:00}"
    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Interval::get_Minutes()
    IL_000c:  box        [System.Runtime]System.Int32
    IL_0011:  ldarg.0
    IL_0012:  call       instance int32 Interval::get_Seconds()
    IL_0017:  box        [System.Runtime]System.Int32
    IL_001c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object,
                                                                      object)
    IL_0021:  stloc.0
    IL_0022:  br.s       IL_0024

    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method Interval::ToString

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       instance int32 Interval::get_Minutes()
    IL_0007:  ldarg.0
    IL_0008:  call       instance int32 Interval::get_Seconds()
    IL_000d:  add
    IL_000e:  stloc.0
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.0
    IL_0012:  ret
  } // end of method Interval::GetHashCode

  .method public hidebysig virtual instance bool 
          Equals(object other) cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  2
    .locals init (class Interval V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  isinst     Interval
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_0029

    IL_000b:  ldarg.0
    IL_000c:  call       instance int32 Interval::get_Minutes()
    IL_0011:  ldloc.0
    IL_0012:  callvirt   instance int32 Interval::get_Minutes()
    IL_0017:  bne.un.s   IL_0029

    IL_0019:  ldarg.0
    IL_001a:  call       instance int32 Interval::get_Seconds()
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance int32 Interval::get_Seconds()
    IL_0025:  ceq
    IL_0027:  br.s       IL_002a

    IL_0029:  ldc.i4.0
    IL_002a:  stloc.1
    IL_002b:  br.s       IL_002d

    IL_002d:  ldloc.1
    IL_002e:  ret
  } // end of method Interval::Equals

  .property instance callconv(8) int32 Minutes()
  {
    .get instance int32 Interval::get_Minutes()
    .set instance void Interval::set_Minutes(int32)
  } // end of property Interval::Minutes
  .property instance callconv(8) int32 Seconds()
  {
    .get instance int32 Interval::get_Seconds()
    .set instance void Interval::set_Seconds(int32)
  } // end of property Interval::Seconds
} // end of class Interval

.class private auto ansi beforefieldinit Program
       extends [System.Runtime]System.Object
{
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 ) 
  .method private hidebysig static void  PrintItem(string label,
                                                   object info) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "{0} = {1}"
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_000d:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object,
                                                                        object)
    IL_0012:  nop
    IL_0013:  ret
  } // end of method Program::PrintItem

  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       354 (0x162)
    .maxstack  3
    .locals init (class Interval V_0,
             class Interval V_1,
             class Interval V_2,
             class Interval V_3,
             bool V_4,
             valuetype Rectangle V_5)
    IL_0000:  nop
    IL_0001:  ldc.i4.5
    IL_0002:  ldc.i4.s   15
    IL_0004:  newobj     instance void Interval::.ctor(int32,
                                                       int32)
    IL_0009:  stloc.0
    IL_000a:  ldc.i4.3
    IL_000b:  ldc.i4.s   50
    IL_000d:  newobj     instance void Interval::.ctor(int32,
                                                       int32)
    IL_0012:  stloc.1
    IL_0013:  ldc.i4.4
    IL_0014:  ldc.i4.s   75
    IL_0016:  newobj     instance void Interval::.ctor(int32,
                                                       int32)
    IL_001b:  stloc.2
    IL_001c:  ldloc.1
    IL_001d:  stloc.3
    IL_001e:  ldstr      "Interval a"
    IL_0023:  ldloc.0
    IL_0024:  call       void Program::PrintItem(string,
                                                 object)
    IL_0029:  nop
    IL_002a:  ldstr      "Interval b"
    IL_002f:  ldloc.1
    IL_0030:  call       void Program::PrintItem(string,
                                                 object)
    IL_0035:  nop
    IL_0036:  ldstr      "Interval c"
    IL_003b:  ldloc.2
    IL_003c:  call       void Program::PrintItem(string,
                                                 object)
    IL_0041:  nop
    IL_0042:  ldstr      "Interval d"
    IL_0047:  ldloc.3
    IL_0048:  call       void Program::PrintItem(string,
                                                 object)
    IL_004d:  nop
    IL_004e:  ldstr      "----------------------"
    IL_0053:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0058:  nop
    IL_0059:  ldstr      "a is identical to b: {0}"
    IL_005e:  ldloc.0
    IL_005f:  ldloc.1
    IL_0060:  ceq
    IL_0062:  box        [System.Runtime]System.Boolean
    IL_0067:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_006c:  nop
    IL_006d:  ldstr      "a is identical to c: {0}"
    IL_0072:  ldloc.0
    IL_0073:  ldloc.2
    IL_0074:  ceq
    IL_0076:  box        [System.Runtime]System.Boolean
    IL_007b:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0080:  nop
    IL_0081:  ldstr      "d is identical to b: {0}"
    IL_0086:  ldloc.3
    IL_0087:  ldloc.1
    IL_0088:  ceq
    IL_008a:  box        [System.Runtime]System.Boolean
    IL_008f:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0094:  nop
    IL_0095:  ldstr      "----------------------"
    IL_009a:  call       void [System.Console]System.Console::WriteLine(string)
    IL_009f:  nop
    IL_00a0:  ldstr      "a is equal to b: {0}"
    IL_00a5:  ldloc.0
    IL_00a6:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00ab:  ldloc.1
    IL_00ac:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00b1:  bne.un.s   IL_00bc

    IL_00b3:  ldloc.0
    IL_00b4:  ldloc.1
    IL_00b5:  callvirt   instance bool [System.Runtime]System.Object::Equals(object)
    IL_00ba:  br.s       IL_00bd

    IL_00bc:  ldc.i4.0
    IL_00bd:  box        [System.Runtime]System.Boolean
    IL_00c2:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_00c7:  nop
    IL_00c8:  ldstr      "a is equal to c: {0}"
    IL_00cd:  ldloc.0
    IL_00ce:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00d3:  ldloc.2
    IL_00d4:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00d9:  bne.un.s   IL_00e4

    IL_00db:  ldloc.0
    IL_00dc:  ldloc.2
    IL_00dd:  callvirt   instance bool [System.Runtime]System.Object::Equals(object)
    IL_00e2:  br.s       IL_00e5

    IL_00e4:  ldc.i4.0
    IL_00e5:  box        [System.Runtime]System.Boolean
    IL_00ea:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_00ef:  nop
    IL_00f0:  ldstr      "d is equal to b: {0}"
    IL_00f5:  ldloc.3
    IL_00f6:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_00fb:  ldloc.1
    IL_00fc:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
    IL_0101:  bne.un.s   IL_010c

    IL_0103:  ldloc.3
    IL_0104:  ldloc.1
    IL_0105:  callvirt   instance bool [System.Runtime]System.Object::Equals(object)
    IL_010a:  br.s       IL_010d

    IL_010c:  ldc.i4.0
    IL_010d:  box        [System.Runtime]System.Boolean
    IL_0112:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0117:  nop
    IL_0118:  ldstr      "----------------------"
    IL_011d:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0122:  nop
    IL_0123:  ldarg.0
    IL_0124:  ldlen
    IL_0125:  conv.i4
    IL_0126:  ldc.i4.1
    IL_0127:  cgt
    IL_0129:  stloc.s    V_4
    IL_012b:  ldloc.s    V_4
    IL_012d:  brfalse.s  IL_0161

    IL_012f:  nop
    IL_0130:  ldloca.s   V_5
    IL_0132:  ldarg.0
    IL_0133:  ldc.i4.0
    IL_0134:  ldelem.ref
    IL_0135:  call       float32 [System.Runtime]System.Single::Parse(string)
    IL_013a:  stfld      float32 Rectangle::Length
    IL_013f:  ldloca.s   V_5
    IL_0141:  ldarg.0
    IL_0142:  ldc.i4.1
    IL_0143:  ldelem.ref
    IL_0144:  call       float32 [System.Runtime]System.Single::Parse(string)
    IL_0149:  stfld      float32 Rectangle::Breadth
    IL_014e:  ldstr      "Your Frame"
    IL_0153:  ldloc.s    V_5
    IL_0155:  box        Rectangle
    IL_015a:  call       void Program::PrintItem(string,
                                                 object)
    IL_015f:  nop
    IL_0160:  nop
    IL_0161:  ret
  } // end of method Program::Main

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

} // end of class Program

.class private sequential ansi sealed beforefieldinit Rectangle
       extends [System.Runtime]System.ValueType
{
  .field public float32 Length
  .field public float32 Breadth
  .method public hidebysig instance float64 
          Area() cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      float32 Rectangle::Length
    IL_0007:  ldarg.0
    IL_0008:  ldfld      float32 Rectangle::Breadth
    IL_000d:  mul
    IL_000e:  conv.r8
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method Rectangle::Area

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       63 (0x3f)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldloca.s   V_0
    IL_0003:  ldc.i4.3
    IL_0004:  ldc.i4.2
    IL_0005:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_000a:  ldloca.s   V_0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      float32 Rectangle::Length
    IL_0012:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<float32>(!!0)
    IL_0017:  nop
    IL_0018:  ldloca.s   V_0
    IL_001a:  ldstr      " x "
    IL_001f:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0024:  nop
    IL_0025:  ldloca.s   V_0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      float32 Rectangle::Breadth
    IL_002d:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<float32>(!!0)
    IL_0032:  nop
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_003a:  stloc.1
    IL_003b:  br.s       IL_003d

    IL_003d:  ldloc.1
    IL_003e:  ret
  } // end of method Rectangle::ToString

} // end of class Rectangle


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
