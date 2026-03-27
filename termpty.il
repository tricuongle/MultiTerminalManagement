
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.module extern KERNEL32.dll
.module extern conpty.dll
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System.Runtime.InteropServices
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern PresentationFramework
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 8:0:0:0
}
.assembly extern Microsoft.Terminal.Wpf
{
  .ver 1:22:0:0
}
.assembly extern WindowsBase
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 8:0:0:0
}
.assembly extern PresentationCore
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 8:0:0:0
}
.assembly extern System.Linq.Expressions
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System.ComponentModel.TypeConverter
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System.ObjectModel
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System.ComponentModel.Primitives
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System.Text.RegularExpressions
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System.Diagnostics.Process
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System.Memory
{
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 )                         // .{...-.Q
  .ver 8:0:0:0
}
.assembly extern System.Threading
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern Microsoft.Win32.Primitives
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly EasyWindowsTerminalControl
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 02 00 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56   // ....NETCoreApp,V
                                                                                                              65 72 73 69 6F 6E 3D 76 38 2E 30 01 00 54 0E 14   // ersion=v8.0..T..
                                                                                                              46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79   // FrameworkDisplay
                                                                                                              4E 61 6D 65 08 2E 4E 45 54 20 38 2E 30 )          // Name..NET 8.0
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0B 4D 69 74 63 68 43 61 70 70 65 72 00 00 ) // ...MitchCapper..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 07 52 65 6C 65 61 73 65 00 00 )             // ...Release..
  .custom instance void [System.Runtime]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1D 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                        4D 69 74 63 68 43 61 70 70 65 72 20 32 30 32 35   // MitchCapper 2025
                                                                                                        00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 08 31 2E 30 2E 33 36 2E 30 00 00 )          // ...1.0.36.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 2F 31 2E 30 2E 33 36 2B 36 35 64 66 36 63   // ../1.0.36+65df6c
                                                                                                                   37 37 63 36 34 38 63 34 32 62 38 62 63 39 37 32   // 77c648c42b8bc972
                                                                                                                   30 35 31 66 36 61 35 61 34 63 31 66 35 33 37 61   // 051f6a5a4c1f537a
                                                                                                                   32 64 00 00 )                                     // 2d..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 1A 45 61 73 79 57 69 6E 64 6F 77 73 54 65   // ...EasyWindowsTe
                                                                                                      72 6D 69 6E 61 6C 43 6F 6E 74 72 6F 6C 00 00 )    // rminalControl..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 1A 45 61 73 79 57 69 6E 64 6F 77 73 54 65   // ...EasyWindowsTe
                                                                                                    72 6D 69 6E 61 6C 43 6F 6E 74 72 6F 6C 00 00 )    // rminalControl..
  .custom instance void [System.Runtime]System.Reflection.AssemblyMetadataAttribute::.ctor(string,
                                                                                           string) = ( 01 00 0D 52 65 70 6F 73 69 74 6F 72 79 55 72 6C   // ...RepositoryUrl
                                                                                                       39 68 74 74 70 73 3A 2F 2F 67 69 74 68 75 62 2E   // 9https://github.
                                                                                                       63 6F 6D 2F 4D 69 74 63 68 43 61 70 70 65 72 2F   // com/MitchCapper/
                                                                                                       45 61 73 79 57 69 6E 64 6F 77 73 54 65 72 6D 69   // EasyWindowsTermi
                                                                                                       6E 61 6C 43 6F 6E 74 72 6F 6C 00 00 )             // nalControl..
  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetPlatformAttribute::.ctor(string) = ( 01 00 0A 57 69 6E 64 6F 77 73 37 2E 30 00 00 )    // ...Windows7.0..
  .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0A 57 69 6E 64 6F 77 73 37 2E 30 00 00 )    // ...Windows7.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyMetadataAttribute::.ctor(string,
                                                                                           string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                       64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                       2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                       00 ) 
  .permissionset reqmin
             = {[System.Runtime]System.Security.Permissions.SecurityPermissionAttribute = {property bool 'SkipVerification' = bool(true)}}
  .hash algorithm 0x00008004
  .ver 1:0:36:0
}
.module EasyWindowsTerminalControl.dll
// MVID: {6457078E-E0B6-46D0-A3A2-0EA98B37A8FA}
.custom instance void [System.Runtime]System.Security.UnverifiableCodeAttribute::.ctor() = ( 01 00 00 00 ) 
.custom instance void [System.Runtime]System.Runtime.CompilerServices.RefSafetyRulesAttribute::.ctor(int32) = ( 01 00 0B 00 00 00 00 00 ) 
.imagebase 0x0000000180000000
.file alignment 0x00000200
.stackreserve 0x0000000000400000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x05A60000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit Windows.Win32.ClosePseudoConsoleSafeHandle
       extends [System.Runtime]System.Runtime.InteropServices.SafeHandle
{
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field private static initonly native int INVALID_HANDLE_VALUE
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     native int Windows.Win32.ClosePseudoConsoleSafeHandle::INVALID_HANDLE_VALUE
    IL_0006:  ldc.i4.1
    IL_0007:  call       instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::.ctor(native int,
                                                                                                        bool)
    IL_000c:  ret
  } // end of method ClosePseudoConsoleSafeHandle::.ctor

  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(native int preexistingHandle,
                               [opt] bool ownsHandle) cil managed
  {
    .param [2] = bool(true)
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     native int Windows.Win32.ClosePseudoConsoleSafeHandle::INVALID_HANDLE_VALUE
    IL_0006:  ldarg.2
    IL_0007:  call       instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::.ctor(native int,
                                                                                                        bool)
    IL_000c:  ldarg.0
    IL_000d:  ldarg.1
    IL_000e:  call       instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::SetHandle(native int)
    IL_0013:  ret
  } // end of method ClosePseudoConsoleSafeHandle::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_IsInvalid() cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::handle
    IL_0006:  call       instance int64 [System.Runtime]System.IntPtr::ToInt64()
    IL_000b:  ldc.i4.m1
    IL_000c:  conv.i8
    IL_000d:  beq.s      IL_001f

    IL_000f:  ldarg.0
    IL_0010:  ldflda     native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::handle
    IL_0015:  call       instance int64 [System.Runtime]System.IntPtr::ToInt64()
    IL_001a:  ldc.i4.0
    IL_001b:  conv.i8
    IL_001c:  ceq
    IL_001e:  ret

    IL_001f:  ldc.i4.1
    IL_0020:  ret
  } // end of method ClosePseudoConsoleSafeHandle::get_IsInvalid

  .method family hidebysig virtual instance bool 
          ReleaseHandle() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::handle
    IL_0006:  call       valuetype Windows.Win32.System.Console.HPCON Windows.Win32.System.Console.HPCON::op_Explicit(native int)
    IL_000b:  call       void Windows.Win32.PInvoke::ClosePseudoConsole(valuetype Windows.Win32.System.Console.HPCON)
    IL_0010:  ldc.i4.1
    IL_0011:  ret
  } // end of method ClosePseudoConsoleSafeHandle::ReleaseHandle

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldc.i4.m1
    IL_0001:  conv.i8
    IL_0002:  newobj     instance void [System.Runtime]System.IntPtr::.ctor(int64)
    IL_0007:  stsfld     native int Windows.Win32.ClosePseudoConsoleSafeHandle::INVALID_HANDLE_VALUE
    IL_000c:  ret
  } // end of method ClosePseudoConsoleSafeHandle::.cctor

  .property instance bool IsInvalid()
  {
    .get instance bool Windows.Win32.ClosePseudoConsoleSafeHandle::get_IsInvalid()
  } // end of property ClosePseudoConsoleSafeHandle::IsInvalid
} // end of class Windows.Win32.ClosePseudoConsoleSafeHandle

.class private abstract auto ansi sealed beforefieldinit Windows.Win32.PInvoke
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field static assembly literal uint32 PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE = uint32(0x00020016)
  .field static assembly literal uint32 CTRL_CLOSE_EVENT = uint32(0x00000002)
  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle lasterr winapi) 
          valuetype Windows.Win32.Foundation.BOOL 
          CloseHandle(valuetype Windows.Win32.Foundation.HANDLE hObject) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0A 77 69 6E 64 6F 77 73 35 2E 30 00 00 )    // ...windows5.0..
  }
  .method assembly hidebysig static valuetype Windows.Win32.Foundation.BOOL 
          GetConsoleMode(class [System.Runtime]System.Runtime.InteropServices.SafeHandle hConsoleHandle,
                         [out] valuetype Windows.Win32.System.Console.CONSOLE_MODE& lpMode) cil managed
  {
    // Code size       71 (0x47)
    .maxstack  2
    .locals init (bool V_0,
             valuetype Windows.Win32.System.Console.CONSOLE_MODE* V_1,
             valuetype Windows.Win32.System.Console.CONSOLE_MODE& pinned V_2,
             valuetype Windows.Win32.Foundation.HANDLE V_3,
             valuetype Windows.Win32.Foundation.BOOL V_4)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    .try
    {
      .try
      {
        IL_0002:  ldarg.1
        IL_0003:  stloc.2
        IL_0004:  ldloc.2
        IL_0005:  conv.u
        IL_0006:  stloc.1
        IL_0007:  ldarg.0
        IL_0008:  brfalse.s  IL_0020

        IL_000a:  ldarg.0
        IL_000b:  ldloca.s   V_0
        IL_000d:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousAddRef(bool&)
        IL_0012:  ldarg.0
        IL_0013:  callvirt   instance native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousGetHandle()
        IL_0018:  call       valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.Foundation.HANDLE::op_Explicit(native int)
        IL_001d:  stloc.3
        IL_001e:  br.s       IL_002b

        IL_0020:  ldstr      "hConsoleHandle"
        IL_0025:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
        IL_002a:  throw

        IL_002b:  ldloc.3
        IL_002c:  ldloc.1
        IL_002d:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::GetConsoleMode(valuetype Windows.Win32.Foundation.HANDLE,
                                                                                                           valuetype Windows.Win32.System.Console.CONSOLE_MODE*)
        IL_0032:  stloc.s    V_4
        IL_0034:  leave.s    IL_0044

      }  // end .try
      finally
      {
        IL_0036:  ldc.i4.0
        IL_0037:  conv.u
        IL_0038:  stloc.2
        IL_0039:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_003a:  ldloc.0
      IL_003b:  brfalse.s  IL_0043

      IL_003d:  ldarg.0
      IL_003e:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousRelease()
      IL_0043:  endfinally
    }  // end handler
    IL_0044:  ldloc.s    V_4
    IL_0046:  ret
  } // end of method PInvoke::GetConsoleMode

  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle lasterr winapi) 
          valuetype Windows.Win32.Foundation.BOOL 
          GetConsoleMode(valuetype Windows.Win32.Foundation.HANDLE hConsoleHandle,
                         valuetype Windows.Win32.System.Console.CONSOLE_MODE* lpMode) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
  }
  .method assembly hidebysig static valuetype Windows.Win32.Foundation.BOOL 
          SetConsoleMode(class [System.Runtime]System.Runtime.InteropServices.SafeHandle hConsoleHandle,
                         valuetype Windows.Win32.System.Console.CONSOLE_MODE dwMode) cil managed
  {
    // Code size       60 (0x3c)
    .maxstack  2
    .locals init (bool V_0,
             valuetype Windows.Win32.Foundation.HANDLE V_1,
             valuetype Windows.Win32.Foundation.BOOL V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    .try
    {
      IL_0002:  ldarg.0
      IL_0003:  brfalse.s  IL_001b

      IL_0005:  ldarg.0
      IL_0006:  ldloca.s   V_0
      IL_0008:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousAddRef(bool&)
      IL_000d:  ldarg.0
      IL_000e:  callvirt   instance native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousGetHandle()
      IL_0013:  call       valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.Foundation.HANDLE::op_Explicit(native int)
      IL_0018:  stloc.1
      IL_0019:  br.s       IL_0026

      IL_001b:  ldstr      "hConsoleHandle"
      IL_0020:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
      IL_0025:  throw

      IL_0026:  ldloc.1
      IL_0027:  ldarg.1
      IL_0028:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::SetConsoleMode(valuetype Windows.Win32.Foundation.HANDLE,
                                                                                                         valuetype Windows.Win32.System.Console.CONSOLE_MODE)
      IL_002d:  stloc.2
      IL_002e:  leave.s    IL_003a

    }  // end .try
    finally
    {
      IL_0030:  ldloc.0
      IL_0031:  brfalse.s  IL_0039

      IL_0033:  ldarg.0
      IL_0034:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousRelease()
      IL_0039:  endfinally
    }  // end handler
    IL_003a:  ldloc.2
    IL_003b:  ret
  } // end of method PInvoke::SetConsoleMode

  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle lasterr winapi) 
          valuetype Windows.Win32.Foundation.BOOL 
          SetConsoleMode(valuetype Windows.Win32.Foundation.HANDLE hConsoleHandle,
                         valuetype Windows.Win32.System.Console.CONSOLE_MODE dwMode) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
  }
  .method assembly hidebysig static valuetype Windows.Win32.Foundation.BOOL 
          CreatePipe([out] class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle& hReadPipe,
                     [out] class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle& hWritePipe,
                     valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES> lpPipeAttributes,
                     uint32 nSize) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0A 77 69 6E 64 6F 77 73 35 2E 30 00 00 )    // ...windows5.0..
    // Code size       65 (0x41)
    .maxstack  4
    .locals init (valuetype Windows.Win32.Foundation.HANDLE V_0,
             valuetype Windows.Win32.Foundation.HANDLE V_1,
             valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES V_2)
    IL_0000:  ldarga.s   lpPipeAttributes
    IL_0002:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>::GetValueOrDefault()
    IL_0007:  stloc.2
    IL_0008:  ldloca.s   V_0
    IL_000a:  conv.u
    IL_000b:  ldloca.s   V_1
    IL_000d:  conv.u
    IL_000e:  ldarga.s   lpPipeAttributes
    IL_0010:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>::get_HasValue()
    IL_0015:  brtrue.s   IL_001b

    IL_0017:  ldc.i4.0
    IL_0018:  conv.u
    IL_0019:  br.s       IL_001e

    IL_001b:  ldloca.s   V_2
    IL_001d:  conv.u
    IL_001e:  ldarg.3
    IL_001f:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::CreatePipe(valuetype Windows.Win32.Foundation.HANDLE*,
                                                                                                   valuetype Windows.Win32.Foundation.HANDLE*,
                                                                                                   valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES*,
                                                                                                   uint32)
    IL_0024:  ldarg.0
    IL_0025:  ldloc.0
    IL_0026:  call       native int Windows.Win32.Foundation.HANDLE::op_Implicit(valuetype Windows.Win32.Foundation.HANDLE)
    IL_002b:  ldc.i4.1
    IL_002c:  newobj     instance void [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle::.ctor(native int,
                                                                                                         bool)
    IL_0031:  stind.ref
    IL_0032:  ldarg.1
    IL_0033:  ldloc.1
    IL_0034:  call       native int Windows.Win32.Foundation.HANDLE::op_Implicit(valuetype Windows.Win32.Foundation.HANDLE)
    IL_0039:  ldc.i4.1
    IL_003a:  newobj     instance void [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle::.ctor(native int,
                                                                                                         bool)
    IL_003f:  stind.ref
    IL_0040:  ret
  } // end of method PInvoke::CreatePipe

  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle lasterr winapi) 
          valuetype Windows.Win32.Foundation.BOOL 
          CreatePipe(valuetype Windows.Win32.Foundation.HANDLE* hReadPipe,
                     valuetype Windows.Win32.Foundation.HANDLE* hWritePipe,
                     [opt] valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES* lpPipeAttributes,
                     uint32 nSize) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0A 77 69 6E 64 6F 77 73 35 2E 30 00 00 )    // ...windows5.0..
  }
  .method assembly hidebysig static valuetype Windows.Win32.Foundation.BOOL 
          CreateProcess(string lpApplicationName,
                        valuetype [System.Runtime]System.Span`1<char>& lpCommandLine,
                        valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES> lpProcessAttributes,
                        valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES> lpThreadAttributes,
                        valuetype Windows.Win32.Foundation.BOOL bInheritHandles,
                        valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS dwCreationFlags,
                        void* lpEnvironment,
                        string lpCurrentDirectory,
                        [in] valuetype Windows.Win32.System.Threading.STARTUPINFOW& lpStartupInfo,
                        [out] valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION& lpProcessInformation) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0F 77 69 6E 64 6F 77 73 35 2E 31 2E 32 36   // ...windows5.1.26
                                                                                                                    30 30 00 00 )                                     // 00..
    .param [9]
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       222 (0xde)
    .maxstack  10
    .locals init (valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION* V_0,
             valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION& pinned V_1,
             valuetype Windows.Win32.System.Threading.STARTUPINFOW* V_2,
             valuetype Windows.Win32.System.Threading.STARTUPINFOW& pinned V_3,
             char* V_4,
             char& pinned V_5,
             char& pinned V_6,
             char* V_7,
             char& pinned V_8,
             valuetype Windows.Win32.Foundation.PWSTR V_9,
             valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES V_10,
             valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES V_11)
    IL_0000:  ldarg.1
    IL_0001:  ldobj      valuetype [System.Runtime]System.Span`1<char>
    IL_0006:  ldnull
    IL_0007:  call       valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::op_Implicit(!0[])
    IL_000c:  call       bool valuetype [System.Runtime]System.Span`1<char>::op_Inequality(valuetype [System.Runtime]System.Span`1<!0>,
                                                                                           valuetype [System.Runtime]System.Span`1<!0>)
    IL_0011:  brfalse.s  IL_0032

    IL_0013:  ldarg.1
    IL_0014:  ldobj      valuetype [System.Runtime]System.Span`1<char>
    IL_0019:  ldc.i4.0
    IL_001a:  call       int32 [System.Memory]System.MemoryExtensions::LastIndexOf<char>(valuetype [System.Runtime]System.Span`1<!!0>,
                                                                                         !!0)
    IL_001f:  ldc.i4.m1
    IL_0020:  bne.un.s   IL_0032

    IL_0022:  ldstr      "Required null terminator missing."
    IL_0027:  ldstr      "lpCommandLine"
    IL_002c:  newobj     instance void [System.Runtime]System.ArgumentException::.ctor(string,
                                                                                       string)
    IL_0031:  throw

    IL_0032:  ldarg.s    lpProcessInformation
    IL_0034:  stloc.1
    IL_0035:  ldloc.1
    IL_0036:  conv.u
    IL_0037:  stloc.0
    IL_0038:  ldarg.s    lpStartupInfo
    IL_003a:  stloc.3
    IL_003b:  ldloc.3
    IL_003c:  conv.u
    IL_003d:  stloc.2
    IL_003e:  ldarg.s    lpCurrentDirectory
    IL_0040:  brtrue.s   IL_0046

    IL_0042:  ldc.i4.0
    IL_0043:  conv.u
    IL_0044:  br.s       IL_0052

    IL_0046:  ldarg.s    lpCurrentDirectory
    IL_0048:  call       instance char& modreq([System.Runtime]System.Runtime.InteropServices.InAttribute) [System.Runtime]System.String::GetPinnableReference()
    IL_004d:  stloc.s    V_5
    IL_004f:  ldloc.s    V_5
    IL_0051:  conv.u
    IL_0052:  stloc.s    V_4
    IL_0054:  ldarg.1
    IL_0055:  call       instance !0& valuetype [System.Runtime]System.Span`1<char>::GetPinnableReference()
    IL_005a:  stloc.s    V_6
    IL_005c:  ldloc.s    V_6
    IL_005e:  conv.u
    IL_005f:  ldarg.0
    IL_0060:  brtrue.s   IL_0066

    IL_0062:  ldc.i4.0
    IL_0063:  conv.u
    IL_0064:  br.s       IL_0071

    IL_0066:  ldarg.0
    IL_0067:  call       instance char& modreq([System.Runtime]System.Runtime.InteropServices.InAttribute) [System.Runtime]System.String::GetPinnableReference()
    IL_006c:  stloc.s    V_8
    IL_006e:  ldloc.s    V_8
    IL_0070:  conv.u
    IL_0071:  stloc.s    V_7
    IL_0073:  call       valuetype Windows.Win32.Foundation.PWSTR Windows.Win32.Foundation.PWSTR::op_Implicit(char*)
    IL_0078:  stloc.s    V_9
    IL_007a:  ldarga.s   lpProcessAttributes
    IL_007c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>::GetValueOrDefault()
    IL_0081:  stloc.s    V_10
    IL_0083:  ldarga.s   lpThreadAttributes
    IL_0085:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>::GetValueOrDefault()
    IL_008a:  stloc.s    V_11
    IL_008c:  ldloc.s    V_7
    IL_008e:  call       valuetype Windows.Win32.Foundation.PCWSTR Windows.Win32.Foundation.PCWSTR::op_Implicit(char*)
    IL_0093:  ldloc.s    V_9
    IL_0095:  ldarga.s   lpProcessAttributes
    IL_0097:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>::get_HasValue()
    IL_009c:  brtrue.s   IL_00a2

    IL_009e:  ldc.i4.0
    IL_009f:  conv.u
    IL_00a0:  br.s       IL_00a5

    IL_00a2:  ldloca.s   V_10
    IL_00a4:  conv.u
    IL_00a5:  ldarga.s   lpThreadAttributes
    IL_00a7:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>::get_HasValue()
    IL_00ac:  brtrue.s   IL_00b2

    IL_00ae:  ldc.i4.0
    IL_00af:  conv.u
    IL_00b0:  br.s       IL_00b5

    IL_00b2:  ldloca.s   V_11
    IL_00b4:  conv.u
    IL_00b5:  ldarg.s    bInheritHandles
    IL_00b7:  ldarg.s    dwCreationFlags
    IL_00b9:  ldarg.s    lpEnvironment
    IL_00bb:  ldloc.s    V_4
    IL_00bd:  call       valuetype Windows.Win32.Foundation.PCWSTR Windows.Win32.Foundation.PCWSTR::op_Implicit(char*)
    IL_00c2:  ldloc.2
    IL_00c3:  ldloc.0
    IL_00c4:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::CreateProcess(valuetype Windows.Win32.Foundation.PCWSTR,
                                                                                                      valuetype Windows.Win32.Foundation.PWSTR,
                                                                                                      valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES*,
                                                                                                      valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES*,
                                                                                                      valuetype Windows.Win32.Foundation.BOOL,
                                                                                                      valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS,
                                                                                                      void*,
                                                                                                      valuetype Windows.Win32.Foundation.PCWSTR,
                                                                                                      valuetype Windows.Win32.System.Threading.STARTUPINFOW*,
                                                                                                      valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION*)
    IL_00c9:  ldarg.1
    IL_00ca:  ldarg.1
    IL_00cb:  ldc.i4.0
    IL_00cc:  ldloca.s   V_9
    IL_00ce:  call       instance int32 Windows.Win32.Foundation.PWSTR::get_Length()
    IL_00d3:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32,
                                                                                                                                   int32)
    IL_00d8:  stobj      valuetype [System.Runtime]System.Span`1<char>
    IL_00dd:  ret
  } // end of method PInvoke::CreateProcess

  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" as "CreateProcessW" nomangle lasterr winapi) 
          valuetype Windows.Win32.Foundation.BOOL 
          CreateProcess(valuetype Windows.Win32.Foundation.PCWSTR lpApplicationName,
                        valuetype Windows.Win32.Foundation.PWSTR lpCommandLine,
                        [opt] valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES* lpProcessAttributes,
                        [opt] valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES* lpThreadAttributes,
                        valuetype Windows.Win32.Foundation.BOOL bInheritHandles,
                        valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS dwCreationFlags,
                        [opt] void* lpEnvironment,
                        valuetype Windows.Win32.Foundation.PCWSTR lpCurrentDirectory,
                        valuetype Windows.Win32.System.Threading.STARTUPINFOW* lpStartupInfo,
                        valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION* lpProcessInformation) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0F 77 69 6E 64 6F 77 73 35 2E 31 2E 32 36   // ...windows5.1.26
                                                                                                                    30 30 00 00 )                                     // 00..
  }
  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle winapi) 
          void  DeleteProcThreadAttributeList(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0F 77 69 6E 64 6F 77 73 36 2E 30 2E 36 30   // ...windows6.0.60
                                                                                                                    30 30 00 00 )                                     // 00..
  }
  .method assembly hidebysig static valuetype Windows.Win32.Foundation.BOOL 
          UpdateProcThreadAttribute(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
                                    uint32 dwFlags,
                                    native uint Attribute,
                                    void* lpValue,
                                    native uint cbSize,
                                    void* lpPreviousValue,
                                    valuetype [System.Runtime]System.Nullable`1<native uint> lpReturnSize) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0F 77 69 6E 64 6F 77 73 36 2E 30 2E 36 30   // ...windows6.0.60
                                                                                                                    30 30 00 00 )                                     // 00..
    // Code size       38 (0x26)
    .maxstack  7
    .locals init (native uint V_0)
    IL_0000:  ldarga.s   lpReturnSize
    IL_0002:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<native uint>::GetValueOrDefault()
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldarg.2
    IL_000b:  ldarg.3
    IL_000c:  ldarg.s    cbSize
    IL_000e:  ldarg.s    lpPreviousValue
    IL_0010:  ldarga.s   lpReturnSize
    IL_0012:  call       instance bool valuetype [System.Runtime]System.Nullable`1<native uint>::get_HasValue()
    IL_0017:  brtrue.s   IL_001d

    IL_0019:  ldc.i4.0
    IL_001a:  conv.u
    IL_001b:  br.s       IL_0020

    IL_001d:  ldloca.s   V_0
    IL_001f:  conv.u
    IL_0020:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::UpdateProcThreadAttribute(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST,
                                                                                                                  uint32,
                                                                                                                  native uint,
                                                                                                                  void*,
                                                                                                                  native uint,
                                                                                                                  void*,
                                                                                                                  native uint*)
    IL_0025:  ret
  } // end of method PInvoke::UpdateProcThreadAttribute

  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle lasterr winapi) 
          valuetype Windows.Win32.Foundation.BOOL 
          UpdateProcThreadAttribute(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
                                    uint32 dwFlags,
                                    native uint Attribute,
                                    [opt] void* lpValue,
                                    native uint cbSize,
                                    [opt] void* lpPreviousValue,
                                    [opt] native uint* lpReturnSize) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0F 77 69 6E 64 6F 77 73 36 2E 30 2E 36 30   // ...windows6.0.60
                                                                                                                    30 30 00 00 )                                     // 00..
  }
  .method assembly hidebysig static valuetype Windows.Win32.Foundation.BOOL 
          InitializeProcThreadAttributeList(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
                                            uint32 dwAttributeCount,
                                            native uint& lpSize) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0F 77 69 6E 64 6F 77 73 36 2E 30 2E 36 30   // ...windows6.0.60
                                                                                                                    30 30 00 00 )                                     // 00..
    // Code size       15 (0xf)
    .maxstack  4
    .locals init (native uint* V_0,
             native uint& pinned V_1)
    IL_0000:  ldarg.2
    IL_0001:  stloc.1
    IL_0002:  ldloc.1
    IL_0003:  conv.u
    IL_0004:  stloc.0
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.0
    IL_0008:  ldloc.0
    IL_0009:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::InitializeProcThreadAttributeList(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST,
                                                                                                                          uint32,
                                                                                                                          uint32,
                                                                                                                          native uint*)
    IL_000e:  ret
  } // end of method PInvoke::InitializeProcThreadAttributeList

  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle lasterr winapi) 
          valuetype Windows.Win32.Foundation.BOOL 
          InitializeProcThreadAttributeList(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
                                            uint32 dwAttributeCount,
                                            uint32 dwFlags,
                                            native uint* lpSize) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.Versioning.SupportedOSPlatformAttribute::.ctor(string) = ( 01 00 0F 77 69 6E 64 6F 77 73 36 2E 30 2E 36 30   // ...windows6.0.60
                                                                                                                    30 30 00 00 )                                     // 00..
  }
  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle winapi) 
          void  ClosePseudoConsole(valuetype Windows.Win32.System.Console.HPCON hPC) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
  }
  .method assembly hidebysig static valuetype Windows.Win32.Foundation.HRESULT 
          ResizePseudoConsole(class [System.Runtime]System.Runtime.InteropServices.SafeHandle hPC,
                              valuetype Windows.Win32.System.Console.COORD size) cil managed
  {
    // Code size       60 (0x3c)
    .maxstack  2
    .locals init (bool V_0,
             valuetype Windows.Win32.System.Console.HPCON V_1,
             valuetype Windows.Win32.Foundation.HRESULT V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    .try
    {
      IL_0002:  ldarg.0
      IL_0003:  brfalse.s  IL_001b

      IL_0005:  ldarg.0
      IL_0006:  ldloca.s   V_0
      IL_0008:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousAddRef(bool&)
      IL_000d:  ldarg.0
      IL_000e:  callvirt   instance native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousGetHandle()
      IL_0013:  call       valuetype Windows.Win32.System.Console.HPCON Windows.Win32.System.Console.HPCON::op_Explicit(native int)
      IL_0018:  stloc.1
      IL_0019:  br.s       IL_0026

      IL_001b:  ldstr      "hPC"
      IL_0020:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
      IL_0025:  throw

      IL_0026:  ldloc.1
      IL_0027:  ldarg.1
      IL_0028:  call       valuetype Windows.Win32.Foundation.HRESULT Windows.Win32.PInvoke::ResizePseudoConsole(valuetype Windows.Win32.System.Console.HPCON,
                                                                                                                 valuetype Windows.Win32.System.Console.COORD)
      IL_002d:  stloc.2
      IL_002e:  leave.s    IL_003a

    }  // end .try
    finally
    {
      IL_0030:  ldloc.0
      IL_0031:  brfalse.s  IL_0039

      IL_0033:  ldarg.0
      IL_0034:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousRelease()
      IL_0039:  endfinally
    }  // end handler
    IL_003a:  ldloc.2
    IL_003b:  ret
  } // end of method PInvoke::ResizePseudoConsole

  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle winapi) 
          valuetype Windows.Win32.Foundation.HRESULT 
          ResizePseudoConsole(valuetype Windows.Win32.System.Console.HPCON hPC,
                              valuetype Windows.Win32.System.Console.COORD size) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
  }
  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle lasterr winapi) 
          valuetype Windows.Win32.Foundation.BOOL 
          SetConsoleCtrlHandler(class Windows.Win32.System.Console.PHANDLER_ROUTINE HandlerRoutine,
                                valuetype Windows.Win32.Foundation.BOOL Add) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
  }
  .method assembly hidebysig static valuetype Windows.Win32.Foundation.HRESULT 
          CreatePseudoConsole(valuetype Windows.Win32.System.Console.COORD size,
                              class [System.Runtime]System.Runtime.InteropServices.SafeHandle hInput,
                              class [System.Runtime]System.Runtime.InteropServices.SafeHandle hOutput,
                              uint32 dwFlags,
                              [out] class Windows.Win32.ClosePseudoConsoleSafeHandle& phPC) cil managed
  {
    // Code size       130 (0x82)
    .maxstack  5
    .locals init (bool V_0,
             bool V_1,
             valuetype Windows.Win32.Foundation.HANDLE V_2,
             valuetype Windows.Win32.Foundation.HANDLE V_3,
             valuetype Windows.Win32.System.Console.HPCON V_4,
             valuetype Windows.Win32.Foundation.HRESULT V_5)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    .try
    {
      IL_0004:  ldarg.1
      IL_0005:  brfalse.s  IL_001d

      IL_0007:  ldarg.1
      IL_0008:  ldloca.s   V_0
      IL_000a:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousAddRef(bool&)
      IL_000f:  ldarg.1
      IL_0010:  callvirt   instance native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousGetHandle()
      IL_0015:  call       valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.Foundation.HANDLE::op_Explicit(native int)
      IL_001a:  stloc.2
      IL_001b:  br.s       IL_0028

      IL_001d:  ldstr      "hInput"
      IL_0022:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
      IL_0027:  throw

      IL_0028:  ldarg.2
      IL_0029:  brfalse.s  IL_0041

      IL_002b:  ldarg.2
      IL_002c:  ldloca.s   V_1
      IL_002e:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousAddRef(bool&)
      IL_0033:  ldarg.2
      IL_0034:  callvirt   instance native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousGetHandle()
      IL_0039:  call       valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.Foundation.HANDLE::op_Explicit(native int)
      IL_003e:  stloc.3
      IL_003f:  br.s       IL_004c

      IL_0041:  ldstr      "hOutput"
      IL_0046:  newobj     instance void [System.Runtime]System.ArgumentNullException::.ctor(string)
      IL_004b:  throw

      IL_004c:  ldarg.0
      IL_004d:  ldloc.2
      IL_004e:  ldloc.3
      IL_004f:  ldarg.3
      IL_0050:  ldloca.s   V_4
      IL_0052:  conv.u
      IL_0053:  call       valuetype Windows.Win32.Foundation.HRESULT Windows.Win32.PInvoke::CreatePseudoConsole(valuetype Windows.Win32.System.Console.COORD,
                                                                                                                 valuetype Windows.Win32.Foundation.HANDLE,
                                                                                                                 valuetype Windows.Win32.Foundation.HANDLE,
                                                                                                                 uint32,
                                                                                                                 valuetype Windows.Win32.System.Console.HPCON*)
      IL_0058:  ldarg.s    phPC
      IL_005a:  ldloc.s    V_4
      IL_005c:  call       native int Windows.Win32.System.Console.HPCON::op_Implicit(valuetype Windows.Win32.System.Console.HPCON)
      IL_0061:  ldc.i4.1
      IL_0062:  newobj     instance void Windows.Win32.ClosePseudoConsoleSafeHandle::.ctor(native int,
                                                                                           bool)
      IL_0067:  stind.ref
      IL_0068:  stloc.s    V_5
      IL_006a:  leave.s    IL_007f

    }  // end .try
    finally
    {
      IL_006c:  ldloc.0
      IL_006d:  brfalse.s  IL_0075

      IL_006f:  ldarg.1
      IL_0070:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousRelease()
      IL_0075:  ldloc.1
      IL_0076:  brfalse.s  IL_007e

      IL_0078:  ldarg.2
      IL_0079:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousRelease()
      IL_007e:  endfinally
    }  // end handler
    IL_007f:  ldloc.s    V_5
    IL_0081:  ret
  } // end of method PInvoke::CreatePseudoConsole

  .method assembly hidebysig static pinvokeimpl("KERNEL32.dll" nomangle winapi) 
          valuetype Windows.Win32.Foundation.HRESULT 
          CreatePseudoConsole(valuetype Windows.Win32.System.Console.COORD size,
                              valuetype Windows.Win32.Foundation.HANDLE hInput,
                              valuetype Windows.Win32.Foundation.HANDLE hOutput,
                              uint32 dwFlags,
                              valuetype Windows.Win32.System.Console.HPCON* phPC) cil managed preservesig
  {
    .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.DefaultDllImportSearchPathsAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.DllImportSearchPath) = ( 01 00 00 08 00 00 00 00 ) 
  }
} // end of class Windows.Win32.PInvoke

.class private sequential ansi sealed beforefieldinit Windows.Win32.Security.SECURITY_ATTRIBUTES
       extends [System.Runtime]System.ValueType
{
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly uint32 nLength
  .field assembly void* lpSecurityDescriptor
  .field assembly valuetype Windows.Win32.Foundation.BOOL bInheritHandle
} // end of class Windows.Win32.Security.SECURITY_ATTRIBUTES

.class private sequential ansi sealed beforefieldinit Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST
       extends [System.Runtime]System.ValueType
       implements class [System.Runtime]System.IEquatable`1<valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST>
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 07 7B 56 61 6C 75 65 7D 00 00 )             // ...{Value}..
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly initonly void* Value
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(void* 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_0007:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::.ctor

  .method public hidebysig specialname static 
          void*  op_Implicit(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_0006:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST 
          op_Explicit(void* 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::.ctor(void*)
    IL_0006:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::op_Explicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST left,
                            valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST right) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST left,
                              valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST right) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::op_Equality(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST,
                                                                                                       valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::op_Inequality

  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST other) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::Equals

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.1
    IL_0009:  unbox.any  Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  call       instance bool Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Equals(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST)
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_0006:  conv.i4
    IL_0007:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldc.i4.2
    IL_0003:  ldc.i4.1
    IL_0004:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_0009:  ldloca.s   V_0
    IL_000b:  ldstr      "0x"
    IL_0010:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0015:  ldloca.s   V_0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_001d:  ldstr      "x"
    IL_0022:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<native uint>(!!0,
                                                                                                                                                      string)
    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_002e:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::ToString

  .method public hidebysig specialname static 
          native int  op_Implicit(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST 'value') cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      void* Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::Value
    IL_0006:  newobj     instance void [System.Runtime]System.IntPtr::.ctor(void*)
    IL_000b:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST 
          op_Explicit(native int 'value') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarga.s   'value'
    IL_0002:  call       instance void* [System.Runtime]System.IntPtr::ToPointer()
    IL_0007:  newobj     instance void Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::.ctor(void*)
    IL_000c:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::op_Explicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST 
          op_Explicit(native uint 'value') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarga.s   'value'
    IL_0002:  call       instance void* [System.Runtime]System.UIntPtr::ToPointer()
    IL_0007:  newobj     instance void Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::.ctor(void*)
    IL_000c:  ret
  } // end of method LPPROC_THREAD_ATTRIBUTE_LIST::op_Explicit

} // end of class Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST

.class private auto ansi sealed Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS
       extends [System.Runtime]System.Enum
{
  .custom instance void [System.Runtime]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field public specialname rtspecialname uint32 value__
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS DEBUG_PROCESS = uint32(0x00000001)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS DEBUG_ONLY_THIS_PROCESS = uint32(0x00000002)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_SUSPENDED = uint32(0x00000004)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS DETACHED_PROCESS = uint32(0x00000008)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_NEW_CONSOLE = uint32(0x00000010)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS NORMAL_PRIORITY_CLASS = uint32(0x00000020)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS IDLE_PRIORITY_CLASS = uint32(0x00000040)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS HIGH_PRIORITY_CLASS = uint32(0x00000080)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS REALTIME_PRIORITY_CLASS = uint32(0x00000100)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_NEW_PROCESS_GROUP = uint32(0x00000200)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_UNICODE_ENVIRONMENT = uint32(0x00000400)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_SEPARATE_WOW_VDM = uint32(0x00000800)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_SHARED_WOW_VDM = uint32(0x00001000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_FORCEDOS = uint32(0x00002000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS BELOW_NORMAL_PRIORITY_CLASS = uint32(0x00004000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS ABOVE_NORMAL_PRIORITY_CLASS = uint32(0x00008000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS INHERIT_PARENT_AFFINITY = uint32(0x00010000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS INHERIT_CALLER_PRIORITY = uint32(0x00020000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_PROTECTED_PROCESS = uint32(0x00040000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS EXTENDED_STARTUPINFO_PRESENT = uint32(0x00080000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS PROCESS_MODE_BACKGROUND_BEGIN = uint32(0x00100000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS PROCESS_MODE_BACKGROUND_END = uint32(0x00200000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_SECURE_PROCESS = uint32(0x00400000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_BREAKAWAY_FROM_JOB = uint32(0x01000000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_PRESERVE_CODE_AUTHZ_LEVEL = uint32(0x02000000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_DEFAULT_ERROR_MODE = uint32(0x04000000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_NO_WINDOW = uint32(0x08000000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS PROFILE_USER = uint32(0x10000000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS PROFILE_KERNEL = uint32(0x20000000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS PROFILE_SERVER = uint32(0x40000000)
  .field public static literal valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS CREATE_IGNORE_SYSTEM_DEFAULT = uint32(0x80000000)
} // end of class Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS

.class private sequential ansi sealed beforefieldinit Windows.Win32.System.Threading.PROCESS_INFORMATION
       extends [System.Runtime]System.ValueType
{
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly valuetype Windows.Win32.Foundation.HANDLE hProcess
  .field assembly valuetype Windows.Win32.Foundation.HANDLE hThread
  .field assembly uint32 dwProcessId
  .field assembly uint32 dwThreadId
} // end of class Windows.Win32.System.Threading.PROCESS_INFORMATION

.class private sequential ansi sealed beforefieldinit Windows.Win32.System.Threading.STARTUPINFOEXW
       extends [System.Runtime]System.ValueType
{
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly valuetype Windows.Win32.System.Threading.STARTUPINFOW StartupInfo
  .field assembly valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList
} // end of class Windows.Win32.System.Threading.STARTUPINFOEXW

.class private sequential ansi sealed beforefieldinit Windows.Win32.System.Threading.STARTUPINFOW
       extends [System.Runtime]System.ValueType
{
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly uint32 cb
  .field assembly valuetype Windows.Win32.Foundation.PWSTR lpReserved
  .field assembly valuetype Windows.Win32.Foundation.PWSTR lpDesktop
  .field assembly valuetype Windows.Win32.Foundation.PWSTR lpTitle
  .field assembly uint32 dwX
  .field assembly uint32 dwY
  .field assembly uint32 dwXSize
  .field assembly uint32 dwYSize
  .field assembly uint32 dwXCountChars
  .field assembly uint32 dwYCountChars
  .field assembly uint32 dwFillAttribute
  .field assembly valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS dwFlags
  .field assembly uint16 wShowWindow
  .field assembly uint16 cbReserved2
  .field assembly uint8* lpReserved2
  .field assembly valuetype Windows.Win32.Foundation.HANDLE hStdInput
  .field assembly valuetype Windows.Win32.Foundation.HANDLE hStdOutput
  .field assembly valuetype Windows.Win32.Foundation.HANDLE hStdError
} // end of class Windows.Win32.System.Threading.STARTUPINFOW

.class private auto ansi sealed Windows.Win32.System.Threading.STARTUPINFOW_FLAGS
       extends [System.Runtime]System.Enum
{
  .custom instance void [System.Runtime]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field public specialname rtspecialname uint32 value__
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_FORCEONFEEDBACK = uint32(0x00000040)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_FORCEOFFFEEDBACK = uint32(0x00000080)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_PREVENTPINNING = uint32(0x00002000)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_RUNFULLSCREEN = uint32(0x00000020)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_TITLEISAPPID = uint32(0x00001000)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_TITLEISLINKNAME = uint32(0x00000800)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_UNTRUSTEDSOURCE = uint32(0x00008000)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_USECOUNTCHARS = uint32(0x00000008)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_USEFILLATTRIBUTE = uint32(0x00000010)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_USEHOTKEY = uint32(0x00000200)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_USEPOSITION = uint32(0x00000004)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_USESHOWWINDOW = uint32(0x00000001)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_USESIZE = uint32(0x00000002)
  .field public static literal valuetype Windows.Win32.System.Threading.STARTUPINFOW_FLAGS STARTF_USESTDHANDLES = uint32(0x00000100)
} // end of class Windows.Win32.System.Threading.STARTUPINFOW_FLAGS

.class private auto ansi sealed Windows.Win32.System.Console.CONSOLE_MODE
       extends [System.Runtime]System.Enum
{
  .custom instance void [System.Runtime]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field public specialname rtspecialname uint32 value__
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_PROCESSED_INPUT = uint32(0x00000001)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_LINE_INPUT = uint32(0x00000002)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_ECHO_INPUT = uint32(0x00000004)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_WINDOW_INPUT = uint32(0x00000008)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_MOUSE_INPUT = uint32(0x00000010)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_INSERT_MODE = uint32(0x00000020)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_QUICK_EDIT_MODE = uint32(0x00000040)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_EXTENDED_FLAGS = uint32(0x00000080)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_AUTO_POSITION = uint32(0x00000100)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_VIRTUAL_TERMINAL_INPUT = uint32(0x00000200)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_PROCESSED_OUTPUT = uint32(0x00000001)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_WRAP_AT_EOL_OUTPUT = uint32(0x00000002)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_VIRTUAL_TERMINAL_PROCESSING = uint32(0x00000004)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE DISABLE_NEWLINE_AUTO_RETURN = uint32(0x00000008)
  .field public static literal valuetype Windows.Win32.System.Console.CONSOLE_MODE ENABLE_LVB_GRID_WORLDWIDE = uint32(0x00000010)
} // end of class Windows.Win32.System.Console.CONSOLE_MODE

.class private sequential ansi sealed beforefieldinit Windows.Win32.System.Console.COORD
       extends [System.Runtime]System.ValueType
{
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly int16 X
  .field assembly int16 Y
} // end of class Windows.Win32.System.Console.COORD

.class private auto ansi sealed Windows.Win32.System.Console.PHANDLER_ROUTINE
       extends [System.Runtime]System.MulticastDelegate
{
  .custom instance void [System.Runtime.InteropServices]System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute::.ctor(valuetype [System.Runtime.InteropServices]System.Runtime.InteropServices.CallingConvention) = ( 01 00 01 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method PHANDLER_ROUTINE::.ctor

  .method public hidebysig newslot virtual 
          instance valuetype Windows.Win32.Foundation.BOOL 
          Invoke(uint32 CtrlType) runtime managed
  {
  } // end of method PHANDLER_ROUTINE::Invoke

  .method public hidebysig newslot virtual 
          instance class [System.Runtime]System.IAsyncResult 
          BeginInvoke(uint32 CtrlType,
                      class [System.Runtime]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method PHANDLER_ROUTINE::BeginInvoke

  .method public hidebysig newslot virtual 
          instance valuetype Windows.Win32.Foundation.BOOL 
          EndInvoke(class [System.Runtime]System.IAsyncResult result) runtime managed
  {
  } // end of method PHANDLER_ROUTINE::EndInvoke

} // end of class Windows.Win32.System.Console.PHANDLER_ROUTINE

.class private sequential ansi sealed beforefieldinit Windows.Win32.System.Console.HPCON
       extends [System.Runtime]System.ValueType
       implements class [System.Runtime]System.IEquatable`1<valuetype Windows.Win32.System.Console.HPCON>
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 07 7B 56 61 6C 75 65 7D 00 00 )             // ...{Value}..
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly initonly native int Value
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(native int 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      native int Windows.Win32.System.Console.HPCON::Value
    IL_0007:  ret
  } // end of method HPCON::.ctor

  .method assembly hidebysig specialname static 
          valuetype Windows.Win32.System.Console.HPCON 
          get_Null() cil managed
  {
    // Code size       10 (0xa)
    .maxstack  1
    .locals init (valuetype Windows.Win32.System.Console.HPCON V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Windows.Win32.System.Console.HPCON
    IL_0008:  ldloc.0
    IL_0009:  ret
  } // end of method HPCON::get_Null

  .method assembly hidebysig specialname 
          instance bool  get_IsNull() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Windows.Win32.System.Console.HPCON::Value
    IL_0006:  ldc.i4.0
    IL_0007:  conv.i
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method HPCON::get_IsNull

  .method public hidebysig specialname static 
          native int  op_Implicit(valuetype Windows.Win32.System.Console.HPCON 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Windows.Win32.System.Console.HPCON::Value
    IL_0006:  ret
  } // end of method HPCON::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.System.Console.HPCON 
          op_Explicit(native int 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.System.Console.HPCON::.ctor(native int)
    IL_0006:  ret
  } // end of method HPCON::op_Explicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Windows.Win32.System.Console.HPCON left,
                            valuetype Windows.Win32.System.Console.HPCON right) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Windows.Win32.System.Console.HPCON::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      native int Windows.Win32.System.Console.HPCON::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method HPCON::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Windows.Win32.System.Console.HPCON left,
                              valuetype Windows.Win32.System.Console.HPCON right) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool Windows.Win32.System.Console.HPCON::op_Equality(valuetype Windows.Win32.System.Console.HPCON,
                                                                              valuetype Windows.Win32.System.Console.HPCON)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method HPCON::op_Inequality

  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype Windows.Win32.System.Console.HPCON other) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Windows.Win32.System.Console.HPCON::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      native int Windows.Win32.System.Console.HPCON::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method HPCON::Equals

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (valuetype Windows.Win32.System.Console.HPCON V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Windows.Win32.System.Console.HPCON
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.1
    IL_0009:  unbox.any  Windows.Win32.System.Console.HPCON
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  call       instance bool Windows.Win32.System.Console.HPCON::Equals(valuetype Windows.Win32.System.Console.HPCON)
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method HPCON::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     native int Windows.Win32.System.Console.HPCON::Value
    IL_0006:  call       instance int32 [System.Runtime]System.IntPtr::GetHashCode()
    IL_000b:  ret
  } // end of method HPCON::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldc.i4.2
    IL_0003:  ldc.i4.1
    IL_0004:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_0009:  ldloca.s   V_0
    IL_000b:  ldstr      "0x"
    IL_0010:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0015:  ldloca.s   V_0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      native int Windows.Win32.System.Console.HPCON::Value
    IL_001d:  ldstr      "x"
    IL_0022:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<native int>(!!0,
                                                                                                                                                     string)
    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_002e:  ret
  } // end of method HPCON::ToString

  .property valuetype Windows.Win32.System.Console.HPCON
          Null()
  {
    .get valuetype Windows.Win32.System.Console.HPCON Windows.Win32.System.Console.HPCON::get_Null()
  } // end of property HPCON::Null
  .property instance bool IsNull()
  {
    .get instance bool Windows.Win32.System.Console.HPCON::get_IsNull()
  } // end of property HPCON::IsNull
} // end of class Windows.Win32.System.Console.HPCON

.class private sequential ansi sealed beforefieldinit Windows.Win32.Foundation.BOOL
       extends [System.Runtime]System.ValueType
       implements class [System.Runtime]System.IEquatable`1<valuetype Windows.Win32.Foundation.BOOL>
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 07 7B 56 61 6C 75 65 7D 00 00 )             // ...{Value}..
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly initonly int32 Value
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(int32 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_0007:  ret
  } // end of method BOOL::.ctor

  .method public hidebysig specialname static 
          int32  op_Implicit(valuetype Windows.Win32.Foundation.BOOL 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_0006:  ret
  } // end of method BOOL::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.Foundation.BOOL 
          op_Explicit(int32 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.Foundation.BOOL::.ctor(int32)
    IL_0006:  ret
  } // end of method BOOL::op_Explicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Windows.Win32.Foundation.BOOL left,
                            valuetype Windows.Win32.Foundation.BOOL right) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method BOOL::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Windows.Win32.Foundation.BOOL left,
                              valuetype Windows.Win32.Foundation.BOOL right) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool Windows.Win32.Foundation.BOOL::op_Equality(valuetype Windows.Win32.Foundation.BOOL,
                                                                         valuetype Windows.Win32.Foundation.BOOL)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method BOOL::op_Inequality

  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype Windows.Win32.Foundation.BOOL other) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method BOOL::Equals

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (valuetype Windows.Win32.Foundation.BOOL V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Windows.Win32.Foundation.BOOL
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.1
    IL_0009:  unbox.any  Windows.Win32.Foundation.BOOL
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  call       instance bool Windows.Win32.Foundation.BOOL::Equals(valuetype Windows.Win32.Foundation.BOOL)
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method BOOL::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     int32 Windows.Win32.Foundation.BOOL::Value
    IL_0006:  call       instance int32 [System.Runtime]System.Int32::GetHashCode()
    IL_000b:  ret
  } // end of method BOOL::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldc.i4.2
    IL_0003:  ldc.i4.1
    IL_0004:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_0009:  ldloca.s   V_0
    IL_000b:  ldstr      "0x"
    IL_0010:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0015:  ldloca.s   V_0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_001d:  ldstr      "x"
    IL_0022:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<int32>(!!0,
                                                                                                                                                string)
    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_002e:  ret
  } // end of method BOOL::ToString

  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(bool 'value') cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  cgt.un
    IL_0005:  stfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_000a:  ret
  } // end of method BOOL::.ctor

  .method public hidebysig specialname static 
          bool  op_Implicit(valuetype Windows.Win32.Foundation.BOOL 'value') cil managed
  {
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.BOOL::Value
    IL_0006:  ldc.i4.0
    IL_0007:  cgt.un
    IL_0009:  ret
  } // end of method BOOL::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.Foundation.BOOL 
          op_Implicit(bool 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.Foundation.BOOL::.ctor(bool)
    IL_0006:  ret
  } // end of method BOOL::op_Implicit

} // end of class Windows.Win32.Foundation.BOOL

.class private sequential ansi sealed beforefieldinit Windows.Win32.Foundation.HANDLE
       extends [System.Runtime]System.ValueType
       implements class [System.Runtime]System.IEquatable`1<valuetype Windows.Win32.Foundation.HANDLE>
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 07 7B 56 61 6C 75 65 7D 00 00 )             // ...{Value}..
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly initonly native int Value
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(native int 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      native int Windows.Win32.Foundation.HANDLE::Value
    IL_0007:  ret
  } // end of method HANDLE::.ctor

  .method assembly hidebysig specialname static 
          valuetype Windows.Win32.Foundation.HANDLE 
          get_Null() cil managed
  {
    // Code size       10 (0xa)
    .maxstack  1
    .locals init (valuetype Windows.Win32.Foundation.HANDLE V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Windows.Win32.Foundation.HANDLE
    IL_0008:  ldloc.0
    IL_0009:  ret
  } // end of method HANDLE::get_Null

  .method assembly hidebysig specialname 
          instance bool  get_IsNull() cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Windows.Win32.Foundation.HANDLE::Value
    IL_0006:  ldc.i4.0
    IL_0007:  conv.i
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method HANDLE::get_IsNull

  .method public hidebysig specialname static 
          native int  op_Implicit(valuetype Windows.Win32.Foundation.HANDLE 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Windows.Win32.Foundation.HANDLE::Value
    IL_0006:  ret
  } // end of method HANDLE::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.Foundation.HANDLE 
          op_Explicit(native int 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.Foundation.HANDLE::.ctor(native int)
    IL_0006:  ret
  } // end of method HANDLE::op_Explicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Windows.Win32.Foundation.HANDLE left,
                            valuetype Windows.Win32.Foundation.HANDLE right) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Windows.Win32.Foundation.HANDLE::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      native int Windows.Win32.Foundation.HANDLE::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method HANDLE::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Windows.Win32.Foundation.HANDLE left,
                              valuetype Windows.Win32.Foundation.HANDLE right) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool Windows.Win32.Foundation.HANDLE::op_Equality(valuetype Windows.Win32.Foundation.HANDLE,
                                                                           valuetype Windows.Win32.Foundation.HANDLE)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method HANDLE::op_Inequality

  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype Windows.Win32.Foundation.HANDLE other) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      native int Windows.Win32.Foundation.HANDLE::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      native int Windows.Win32.Foundation.HANDLE::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method HANDLE::Equals

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (valuetype Windows.Win32.Foundation.HANDLE V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Windows.Win32.Foundation.HANDLE
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.1
    IL_0009:  unbox.any  Windows.Win32.Foundation.HANDLE
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  call       instance bool Windows.Win32.Foundation.HANDLE::Equals(valuetype Windows.Win32.Foundation.HANDLE)
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method HANDLE::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     native int Windows.Win32.Foundation.HANDLE::Value
    IL_0006:  call       instance int32 [System.Runtime]System.IntPtr::GetHashCode()
    IL_000b:  ret
  } // end of method HANDLE::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  3
    .locals init (valuetype [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldc.i4.2
    IL_0003:  ldc.i4.1
    IL_0004:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_0009:  ldloca.s   V_0
    IL_000b:  ldstr      "0x"
    IL_0010:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0015:  ldloca.s   V_0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      native int Windows.Win32.Foundation.HANDLE::Value
    IL_001d:  ldstr      "x"
    IL_0022:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<native int>(!!0,
                                                                                                                                                     string)
    IL_0027:  ldloca.s   V_0
    IL_0029:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_002e:  ret
  } // end of method HANDLE::ToString

  .property valuetype Windows.Win32.Foundation.HANDLE
          Null()
  {
    .get valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.Foundation.HANDLE::get_Null()
  } // end of property HANDLE::Null
  .property instance bool IsNull()
  {
    .get instance bool Windows.Win32.Foundation.HANDLE::get_IsNull()
  } // end of property HANDLE::IsNull
} // end of class Windows.Win32.Foundation.HANDLE

.class private sequential ansi sealed beforefieldinit Windows.Win32.Foundation.HRESULT
       extends [System.Runtime]System.ValueType
       implements class [System.Runtime]System.IEquatable`1<valuetype Windows.Win32.Foundation.HRESULT>
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 07 7B 56 61 6C 75 65 7D 00 00 )             // ...{Value}..
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly initonly int32 Value
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(int32 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0007:  ret
  } // end of method HRESULT::.ctor

  .method public hidebysig specialname static 
          int32  op_Implicit(valuetype Windows.Win32.Foundation.HRESULT 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  ret
  } // end of method HRESULT::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.Foundation.HRESULT 
          op_Explicit(int32 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.Foundation.HRESULT::.ctor(int32)
    IL_0006:  ret
  } // end of method HRESULT::op_Explicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Windows.Win32.Foundation.HRESULT left,
                            valuetype Windows.Win32.Foundation.HRESULT right) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method HRESULT::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Windows.Win32.Foundation.HRESULT left,
                              valuetype Windows.Win32.Foundation.HRESULT right) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool Windows.Win32.Foundation.HRESULT::op_Equality(valuetype Windows.Win32.Foundation.HRESULT,
                                                                            valuetype Windows.Win32.Foundation.HRESULT)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method HRESULT::op_Inequality

  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype Windows.Win32.Foundation.HRESULT other) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method HRESULT::Equals

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (valuetype Windows.Win32.Foundation.HRESULT V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Windows.Win32.Foundation.HRESULT
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.1
    IL_0009:  unbox.any  Windows.Win32.Foundation.HRESULT
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  call       instance bool Windows.Win32.Foundation.HRESULT::Equals(valuetype Windows.Win32.Foundation.HRESULT)
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method HRESULT::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  call       instance int32 [System.Runtime]System.Int32::GetHashCode()
    IL_000b:  ret
  } // end of method HRESULT::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  call       class [System.Runtime]System.Globalization.CultureInfo [System.Runtime]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0005:  ldstr      "0x{0:X8}"
    IL_000a:  ldarg.0
    IL_000b:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0010:  box        [System.Runtime]System.Int32
    IL_0015:  call       string [System.Runtime]System.String::Format(class [System.Runtime]System.IFormatProvider,
                                                                      string,
                                                                      object)
    IL_001a:  ret
  } // end of method HRESULT::ToString

  .method public hidebysig specialname static 
          uint32  op_Implicit(valuetype Windows.Win32.Foundation.HRESULT 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  ret
  } // end of method HRESULT::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.Foundation.HRESULT 
          op_Explicit(uint32 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.Foundation.HRESULT::.ctor(int32)
    IL_0006:  ret
  } // end of method HRESULT::op_Explicit

  .method assembly hidebysig specialname 
          instance bool  get_Succeeded() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  ldc.i4.0
    IL_0007:  clt
    IL_0009:  ldc.i4.0
    IL_000a:  ceq
    IL_000c:  ret
  } // end of method HRESULT::get_Succeeded

  .method assembly hidebysig specialname 
          instance bool  get_Failed() cil managed
  {
    // Code size       10 (0xa)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  ldc.i4.0
    IL_0007:  clt
    IL_0009:  ret
  } // end of method HRESULT::get_Failed

  .method assembly hidebysig instance valuetype Windows.Win32.Foundation.HRESULT 
          ThrowOnFailure([opt] native int errorInfo) cil managed
  {
    .param [1] = int32(0x00000000)
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  ldarg.1
    IL_0007:  call       void [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::ThrowExceptionForHR(int32,
                                                                                                                          native int)
    IL_000c:  ldarg.0
    IL_000d:  ldobj      Windows.Win32.Foundation.HRESULT
    IL_0012:  ret
  } // end of method HRESULT::ThrowOnFailure

  .method assembly hidebysig instance string 
          ToString(string format,
                   class [System.Runtime]System.IFormatProvider formatProvider) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  3
    .locals init (uint32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Windows.Win32.Foundation.HRESULT::Value
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_0
    IL_0009:  ldarg.1
    IL_000a:  ldarg.2
    IL_000b:  call       instance string [System.Runtime]System.UInt32::ToString(string,
                                                                                 class [System.Runtime]System.IFormatProvider)
    IL_0010:  ret
  } // end of method HRESULT::ToString

  .property instance bool Succeeded()
  {
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
    .get instance bool Windows.Win32.Foundation.HRESULT::get_Succeeded()
  } // end of property HRESULT::Succeeded
  .property instance bool Failed()
  {
    .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
    .get instance bool Windows.Win32.Foundation.HRESULT::get_Failed()
  } // end of property HRESULT::Failed
} // end of class Windows.Win32.Foundation.HRESULT

.class private sequential ansi sealed beforefieldinit Windows.Win32.Foundation.PCWSTR
       extends [System.Runtime]System.ValueType
       implements class [System.Runtime]System.IEquatable`1<valuetype Windows.Win32.Foundation.PCWSTR>
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 11 7B 44 65 62 75 67 67 65 72 44 69 73 70   // ...{DebuggerDisp
                                                                                                       6C 61 79 7D 00 00 )                               // lay}..
  .field assembly initonly char* Value
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(char* 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0007:  ret
  } // end of method PCWSTR::.ctor

  .method public hidebysig specialname static 
          char*  op_Explicit(valuetype Windows.Win32.Foundation.PCWSTR 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0006:  ret
  } // end of method PCWSTR::op_Explicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.Foundation.PCWSTR 
          op_Implicit(char* 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.Foundation.PCWSTR::.ctor(char*)
    IL_0006:  ret
  } // end of method PCWSTR::op_Implicit

  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype Windows.Win32.Foundation.PCWSTR other) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method PCWSTR::Equals

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (valuetype Windows.Win32.Foundation.PCWSTR V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Windows.Win32.Foundation.PCWSTR
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.1
    IL_0009:  unbox.any  Windows.Win32.Foundation.PCWSTR
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  call       instance bool Windows.Win32.Foundation.PCWSTR::Equals(valuetype Windows.Win32.Foundation.PCWSTR)
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method PCWSTR::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0006:  conv.i4
    IL_0007:  ret
  } // end of method PCWSTR::GetHashCode

  .method assembly hidebysig specialname 
          instance int32  get_Length() cil managed
  {
    // Code size       35 (0x23)
    .maxstack  2
    .locals init (char* V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  conv.u
    IL_000a:  bne.un.s   IL_0012

    IL_000c:  ldc.i4.0
    IL_000d:  ret

    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.2
    IL_0010:  add
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldind.u2
    IL_0014:  brtrue.s   IL_000e

    IL_0016:  ldloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_001d:  sub
    IL_001e:  ldc.i4.2
    IL_001f:  div
    IL_0020:  conv.i8
    IL_0021:  conv.ovf.i4
    IL_0022:  ret
  } // end of method PCWSTR::get_Length

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0006:  ldc.i4.0
    IL_0007:  conv.u
    IL_0008:  beq.s      IL_0016

    IL_000a:  ldarg.0
    IL_000b:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0010:  newobj     instance void [System.Runtime]System.String::.ctor(char*)
    IL_0015:  ret

    IL_0016:  ldnull
    IL_0017:  ret
  } // end of method PCWSTR::ToString

  .method assembly hidebysig instance valuetype [System.Runtime]System.ReadOnlySpan`1<char> 
          AsSpan() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.ReadOnlySpan`1<char> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0006:  ldc.i4.0
    IL_0007:  conv.u
    IL_0008:  beq.s      IL_001c

    IL_000a:  ldarg.0
    IL_000b:  ldfld      char* Windows.Win32.Foundation.PCWSTR::Value
    IL_0010:  ldarg.0
    IL_0011:  call       instance int32 Windows.Win32.Foundation.PCWSTR::get_Length()
    IL_0016:  newobj     instance void valuetype [System.Runtime]System.ReadOnlySpan`1<char>::.ctor(void*,
                                                                                                    int32)
    IL_001b:  ret

    IL_001c:  ldloca.s   V_0
    IL_001e:  initobj    valuetype [System.Runtime]System.ReadOnlySpan`1<char>
    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method PCWSTR::AsSpan

  .method private hidebysig specialname instance string 
          get_DebuggerDisplay() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  constrained. Windows.Win32.Foundation.PCWSTR
    IL_0007:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_000c:  ret
  } // end of method PCWSTR::get_DebuggerDisplay

  .property instance int32 Length()
  {
    .get instance int32 Windows.Win32.Foundation.PCWSTR::get_Length()
  } // end of property PCWSTR::Length
  .property instance string DebuggerDisplay()
  {
    .get instance string Windows.Win32.Foundation.PCWSTR::get_DebuggerDisplay()
  } // end of property PCWSTR::DebuggerDisplay
} // end of class Windows.Win32.Foundation.PCWSTR

.class private sequential ansi sealed beforefieldinit Windows.Win32.Foundation.PWSTR
       extends [System.Runtime]System.ValueType
       implements class [System.Runtime]System.IEquatable`1<valuetype Windows.Win32.Foundation.PWSTR>
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 07 7B 56 61 6C 75 65 7D 00 00 )             // ...{Value}..
  .custom instance void [System.Runtime]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                              string) = ( 01 00 19 4D 69 63 72 6F 73 6F 66 74 2E 57 69 6E   // ...Microsoft.Win
                                                                                                          64 6F 77 73 2E 43 73 57 69 6E 33 32 12 30 2E 33   // dows.CsWin32.0.3
                                                                                                          2E 31 30 36 2B 61 33 37 61 30 62 34 62 37 30 00   // .106+a37a0b4b70.
                                                                                                          00 ) 
  .field assembly initonly char* Value
  .method assembly hidebysig specialname rtspecialname 
          instance void  .ctor(char* 'value') cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0007:  ret
  } // end of method PWSTR::.ctor

  .method public hidebysig specialname static 
          char*  op_Implicit(valuetype Windows.Win32.Foundation.PWSTR 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0006:  ret
  } // end of method PWSTR::op_Implicit

  .method public hidebysig specialname static 
          valuetype Windows.Win32.Foundation.PWSTR 
          op_Implicit(char* 'value') cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Windows.Win32.Foundation.PWSTR::.ctor(char*)
    IL_0006:  ret
  } // end of method PWSTR::op_Implicit

  .method public hidebysig specialname static 
          bool  op_Equality(valuetype Windows.Win32.Foundation.PWSTR left,
                            valuetype Windows.Win32.Foundation.PWSTR right) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method PWSTR::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(valuetype Windows.Win32.Foundation.PWSTR left,
                              valuetype Windows.Win32.Foundation.PWSTR right) cil managed
  {
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool Windows.Win32.Foundation.PWSTR::op_Equality(valuetype Windows.Win32.Foundation.PWSTR,
                                                                          valuetype Windows.Win32.Foundation.PWSTR)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method PWSTR::op_Inequality

  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype Windows.Win32.Foundation.PWSTR other) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0006:  ldarg.1
    IL_0007:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_000c:  ceq
    IL_000e:  ret
  } // end of method PWSTR::Equals

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (valuetype Windows.Win32.Foundation.PWSTR V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     Windows.Win32.Foundation.PWSTR
    IL_0006:  brfalse.s  IL_0017

    IL_0008:  ldarg.1
    IL_0009:  unbox.any  Windows.Win32.Foundation.PWSTR
    IL_000e:  stloc.0
    IL_000f:  ldarg.0
    IL_0010:  ldloc.0
    IL_0011:  call       instance bool Windows.Win32.Foundation.PWSTR::Equals(valuetype Windows.Win32.Foundation.PWSTR)
    IL_0016:  ret

    IL_0017:  ldc.i4.0
    IL_0018:  ret
  } // end of method PWSTR::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0006:  conv.i4
    IL_0007:  ret
  } // end of method PWSTR::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  1
    .locals init (valuetype Windows.Win32.Foundation.PCWSTR V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0006:  newobj     instance void Windows.Win32.Foundation.PCWSTR::.ctor(char*)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  constrained. Windows.Win32.Foundation.PCWSTR
    IL_0014:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0019:  ret
  } // end of method PWSTR::ToString

  .method public hidebysig specialname static 
          valuetype Windows.Win32.Foundation.PCWSTR 
          op_Implicit(valuetype Windows.Win32.Foundation.PWSTR 'value') cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0006:  newobj     instance void Windows.Win32.Foundation.PCWSTR::.ctor(char*)
    IL_000b:  ret
  } // end of method PWSTR::op_Implicit

  .method assembly hidebysig specialname 
          instance int32  get_Length() cil managed
  {
    // Code size       20 (0x14)
    .maxstack  1
    .locals init (valuetype Windows.Win32.Foundation.PCWSTR V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0006:  newobj     instance void Windows.Win32.Foundation.PCWSTR::.ctor(char*)
    IL_000b:  stloc.0
    IL_000c:  ldloca.s   V_0
    IL_000e:  call       instance int32 Windows.Win32.Foundation.PCWSTR::get_Length()
    IL_0013:  ret
  } // end of method PWSTR::get_Length

  .method assembly hidebysig instance valuetype [System.Runtime]System.Span`1<char> 
          AsSpan() cil managed
  {
    // Code size       38 (0x26)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Span`1<char> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0006:  ldc.i4.0
    IL_0007:  conv.u
    IL_0008:  beq.s      IL_001c

    IL_000a:  ldarg.0
    IL_000b:  ldfld      char* Windows.Win32.Foundation.PWSTR::Value
    IL_0010:  ldarg.0
    IL_0011:  call       instance int32 Windows.Win32.Foundation.PWSTR::get_Length()
    IL_0016:  newobj     instance void valuetype [System.Runtime]System.Span`1<char>::.ctor(void*,
                                                                                            int32)
    IL_001b:  ret

    IL_001c:  ldloca.s   V_0
    IL_001e:  initobj    valuetype [System.Runtime]System.Span`1<char>
    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method PWSTR::AsSpan

  .method private hidebysig specialname instance string 
          get_DebuggerDisplay() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  constrained. Windows.Win32.Foundation.PWSTR
    IL_0007:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_000c:  ret
  } // end of method PWSTR::get_DebuggerDisplay

  .property instance int32 Length()
  {
    .get instance int32 Windows.Win32.Foundation.PWSTR::get_Length()
  } // end of property PWSTR::Length
  .property instance string DebuggerDisplay()
  {
    .get instance string Windows.Win32.Foundation.PWSTR::get_DebuggerDisplay()
  } // end of property PWSTR::DebuggerDisplay
} // end of class Windows.Win32.Foundation.PWSTR

.class public auto ansi beforefieldinit EasyWindowsTerminalControl.EasyTerminalControl
       extends [PresentationFramework]System.Windows.Controls.UserControl
{
  .class auto ansi sealed nested public INPUT_CAPTURE
         extends [System.Runtime]System.Enum
  {
    .custom instance void [System.Runtime]System.FlagsAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [System.ObjectModel]System.ComponentModel.TypeConverterAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 80 8B 53 79 73 74 65 6D 2E 43 6F 6D 70 6F   // ....System.Compo
                                                                                                                                         6E 65 6E 74 4D 6F 64 65 6C 2E 45 6E 75 6D 43 6F   // nentModel.EnumCo
                                                                                                                                         6E 76 65 72 74 65 72 2C 20 53 79 73 74 65 6D 2E   // nverter, System.
                                                                                                                                         43 6F 6D 70 6F 6E 65 6E 74 4D 6F 64 65 6C 2E 54   // ComponentModel.T
                                                                                                                                         79 70 65 43 6F 6E 76 65 72 74 65 72 2C 20 56 65   // ypeConverter, Ve
                                                                                                                                         72 73 69 6F 6E 3D 38 2E 30 2E 30 2E 30 2C 20 43   // rsion=8.0.0.0, C
                                                                                                                                         75 6C 74 75 72 65 3D 6E 65 75 74 72 61 6C 2C 20   // ulture=neutral, 
                                                                                                                                         50 75 62 6C 69 63 4B 65 79 54 6F 6B 65 6E 3D 62   // PublicKeyToken=b
                                                                                                                                         30 33 66 35 66 37 66 31 31 64 35 30 61 33 61 00   // 03f5f7f11d50a3a.
                                                                                                                                         00 ) 
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE None = int32(0x00000001)
    .field public static literal valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE TabKey = int32(0x00000002)
    .field public static literal valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE DirectionKeys = int32(0x00000004)
  } // end of class INPUT_CAPTURE

  .class auto ansi nested private beforefieldinit PropHelper
         extends class EasyWindowsTerminalControl.Internals.DepPropHelper`1<class EasyWindowsTerminalControl.EasyTerminalControl>
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void class EasyWindowsTerminalControl.Internals.DepPropHelper`1<class EasyWindowsTerminalControl.EasyTerminalControl>::.ctor()
      IL_0006:  ret
    } // end of method PropHelper::.ctor

  } // end of class PropHelper

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class EasyWindowsTerminalControl.EasyTerminalControl/'<>c' '<>9'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void EasyWindowsTerminalControl.EasyTerminalControl/'<>c'::.ctor()
      IL_0005:  stsfld     class EasyWindowsTerminalControl.EasyTerminalControl/'<>c' EasyWindowsTerminalControl.EasyTerminalControl/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass50_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class EasyWindowsTerminalControl.EasyTerminalControl '<>4__this'
    .field public int32 column_width
    .field public int32 row_height
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass50_0'::.ctor

    .method assembly hidebysig instance void 
            '<StartTerm>b__0'() cil managed
    {
      // Code size       81 (0x51)
      .maxstack  3
      IL_0000:  newobj     instance void EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::.ctor()
      IL_0005:  dup
      IL_0006:  ldarg.0
      IL_0007:  stfld      class EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0' EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::'CS$<>8__locals1'
      IL_000c:  dup
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::'<>4__this'
      IL_0013:  call       instance string EasyWindowsTerminalControl.EasyTerminalControl::get_StartupCommandLine()
      IL_0018:  stfld      string EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::cmd
      IL_001d:  dup
      IL_001e:  ldarg.0
      IL_001f:  ldfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::'<>4__this'
      IL_0024:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
      IL_0029:  stfld      class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::term
      IL_002e:  dup
      IL_002f:  ldarg.0
      IL_0030:  ldfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::'<>4__this'
      IL_0035:  call       instance bool EasyWindowsTerminalControl.EasyTerminalControl::get_LogConPTYOutput()
      IL_003a:  stfld      bool EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::logOutput
      IL_003f:  ldftn      instance void EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::'<StartTerm>b__1'()
      IL_0045:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_004a:  call       class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
      IL_004f:  pop
      IL_0050:  ret
    } // end of method '<>c__DisplayClass50_0'::'<StartTerm>b__0'

  } // end of class '<>c__DisplayClass50_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass50_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class EasyWindowsTerminalControl.TermPTY term
    .field public string cmd
    .field public bool logOutput
    .field public class EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0' 'CS$<>8__locals1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass50_1'::.ctor

    .method assembly hidebysig instance void 
            '<StartTerm>b__1'() cil managed
    {
      // Code size       47 (0x2f)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::term
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::cmd
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0' EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::'CS$<>8__locals1'
      IL_0012:  ldfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::column_width
      IL_0017:  ldarg.0
      IL_0018:  ldfld      class EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0' EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::'CS$<>8__locals1'
      IL_001d:  ldfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::row_height
      IL_0022:  ldarg.0
      IL_0023:  ldfld      bool EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_1'::logOutput
      IL_0028:  ldnull
      IL_0029:  callvirt   instance void EasyWindowsTerminalControl.TermPTY::Start(string,
                                                                                   int32,
                                                                                   int32,
                                                                                   bool,
                                                                                   class EasyWindowsTerminalControl.Internals.IProcessFactory)
      IL_002e:  ret
    } // end of method '<>c__DisplayClass50_1'::'<StartTerm>b__1'

  } // end of class '<>c__DisplayClass50_1'

  .class auto ansi sealed nested private beforefieldinit '<RestartTerm>d__49'
         extends [System.Runtime]System.ValueType
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class EasyWindowsTerminalControl.EasyTerminalControl '<>4__this'
    .field public bool disposeOld
    .field public class EasyWindowsTerminalControl.TermPTY useTerm
    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       131 (0x83)
      .maxstack  4
      .locals init (class EasyWindowsTerminalControl.EasyTerminalControl V_0,
               class EasyWindowsTerminalControl.TermPTY V_1,
               class [System.Runtime]System.Exception V_2)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>4__this'
      IL_0006:  stloc.0
      .try
      {
        IL_0007:  ldloc.0
        IL_0008:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
        IL_000d:  stloc.1
        IL_000e:  ldloc.0
        IL_000f:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::DisconnectConPTYTerm()
        IL_0014:  pop
        IL_0015:  ldarg.0
        IL_0016:  ldfld      bool EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::disposeOld
        IL_001b:  brfalse.s  IL_003a

        .try
        {
          IL_001d:  ldloc.1
          IL_001e:  brfalse.s  IL_0026

          IL_0020:  ldloc.1
          IL_0021:  call       instance void EasyWindowsTerminalControl.TermPTY::CloseStdinToApp()
          IL_0026:  leave.s    IL_002b

        }  // end .try
        catch [System.Runtime]System.Object 
        {
          IL_0028:  pop
          IL_0029:  leave.s    IL_002b

        }  // end handler
        IL_002b:  nop
        .try
        {
          IL_002c:  ldloc.1
          IL_002d:  brfalse.s  IL_0035

          IL_002f:  ldloc.1
          IL_0030:  call       instance void EasyWindowsTerminalControl.TermPTY::StopExternalTermOnly()
          IL_0035:  leave.s    IL_003a

        }  // end .try
        catch [System.Runtime]System.Object 
        {
          IL_0037:  pop
          IL_0038:  leave.s    IL_003a

        }  // end handler
        IL_003a:  ldloc.0
        IL_003b:  ldarg.0
        IL_003c:  ldfld      class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::useTerm
        IL_0041:  dup
        IL_0042:  brtrue.s   IL_0051

        IL_0044:  pop
        IL_0045:  ldc.i4     0x4000
        IL_004a:  ldc.i4.0
        IL_004b:  ldnull
        IL_004c:  newobj     instance void EasyWindowsTerminalControl.TermPTY::.ctor(int32,
                                                                                     bool,
                                                                                     class EasyWindowsTerminalControl.Internals.IProcessFactory)
        IL_0051:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::set_ConPTYTerm(class EasyWindowsTerminalControl.TermPTY)
        IL_0056:  leave.s    IL_006f

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_0058:  stloc.2
        IL_0059:  ldarg.0
        IL_005a:  ldc.i4.s   -2
        IL_005c:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>1__state'
        IL_0061:  ldarg.0
        IL_0062:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>t__builder'
        IL_0067:  ldloc.2
        IL_0068:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_006d:  leave.s    IL_0082

      }  // end handler
      IL_006f:  ldarg.0
      IL_0070:  ldc.i4.s   -2
      IL_0072:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>1__state'
      IL_0077:  ldarg.0
      IL_0078:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>t__builder'
      IL_007d:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_0082:  ret
    } // end of method '<RestartTerm>d__49'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .param [1]
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>t__builder'
      IL_0006:  ldarg.1
      IL_0007:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine)
      IL_000c:  ret
    } // end of method '<RestartTerm>d__49'::SetStateMachine

  } // end of class '<RestartTerm>d__49'

  .class auto ansi sealed nested private beforefieldinit '<TermInit>d__52'
         extends [System.Runtime]System.ValueType
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder '<>t__builder'
    .field public class EasyWindowsTerminalControl.EasyTerminalControl '<>4__this'
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter '<>u__1'
    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       230 (0xe6)
      .maxstack  3
      .locals init (int32 V_0,
               class EasyWindowsTerminalControl.EasyTerminalControl V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter V_2,
               class [System.Runtime]System.Exception V_3)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>4__this'
      IL_000d:  stloc.1
      .try
      {
        IL_000e:  ldloc.0
        IL_000f:  brfalse.s  IL_008a

        IL_0011:  ldloc.1
        IL_0012:  ldloc.1
        IL_0013:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
        IL_0018:  callvirt   instance int32 [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::get_Columns()
        IL_001d:  ldloc.1
        IL_001e:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
        IL_0023:  callvirt   instance int32 [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::get_Rows()
        IL_0028:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::StartTerm(int32,
                                                                                                     int32)
        IL_002d:  ldloc.1
        IL_002e:  ldloc.1
        IL_002f:  call       instance valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> EasyWindowsTerminalControl.EasyTerminalControl::get_Theme()
        IL_0034:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::SetTheme(valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme>)
        IL_0039:  ldloc.1
        IL_003a:  ldloc.1
        IL_003b:  call       instance valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::get_IsCursorVisible()
        IL_0040:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::SetCursor(valuetype [System.Runtime]System.Nullable`1<bool>)
        IL_0045:  ldloc.1
        IL_0046:  ldloc.1
        IL_0047:  call       instance valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::get_IsReadOnly()
        IL_004c:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::SetReadOnly(valuetype [System.Runtime]System.Nullable`1<bool>)
        IL_0051:  ldc.i4     0x3e8
        IL_0056:  call       class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Threading.Tasks.Task::Delay(int32)
        IL_005b:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter [System.Runtime]System.Threading.Tasks.Task::GetAwaiter()
        IL_0060:  stloc.2
        IL_0061:  ldloca.s   V_2
        IL_0063:  call       instance bool [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
        IL_0068:  brtrue.s   IL_00a6

        IL_006a:  ldarg.0
        IL_006b:  ldc.i4.0
        IL_006c:  dup
        IL_006d:  stloc.0
        IL_006e:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>1__state'
        IL_0073:  ldarg.0
        IL_0074:  ldloc.2
        IL_0075:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>u__1'
        IL_007a:  ldarg.0
        IL_007b:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>t__builder'
        IL_0080:  ldloca.s   V_2
        IL_0082:  ldarg.0
        IL_0083:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter,valuetype EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'>(!!0&,
                                                                                                                                                                                                                                                                                            !!1&)
        IL_0088:  leave.s    IL_00e5

        IL_008a:  ldarg.0
        IL_008b:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>u__1'
        IL_0090:  stloc.2
        IL_0091:  ldarg.0
        IL_0092:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>u__1'
        IL_0097:  initobj    [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter
        IL_009d:  ldarg.0
        IL_009e:  ldc.i4.m1
        IL_009f:  dup
        IL_00a0:  stloc.0
        IL_00a1:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>1__state'
        IL_00a6:  ldloca.s   V_2
        IL_00a8:  call       instance void [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
        IL_00ad:  ldloc.1
        IL_00ae:  ldloc.1
        IL_00af:  call       instance valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::get_IsCursorVisible()
        IL_00b4:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::SetCursor(valuetype [System.Runtime]System.Nullable`1<bool>)
        IL_00b9:  leave.s    IL_00d2

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_00bb:  stloc.3
        IL_00bc:  ldarg.0
        IL_00bd:  ldc.i4.s   -2
        IL_00bf:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>1__state'
        IL_00c4:  ldarg.0
        IL_00c5:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>t__builder'
        IL_00ca:  ldloc.3
        IL_00cb:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_00d0:  leave.s    IL_00e5

      }  // end handler
      IL_00d2:  ldarg.0
      IL_00d3:  ldc.i4.s   -2
      IL_00d5:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>1__state'
      IL_00da:  ldarg.0
      IL_00db:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>t__builder'
      IL_00e0:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetResult()
      IL_00e5:  ret
    } // end of method '<TermInit>d__52'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .param [1]
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>t__builder'
      IL_0006:  ldarg.1
      IL_0007:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine)
      IL_000c:  ret
    } // end of method '<TermInit>d__52'::SetStateMachine

  } // end of class '<TermInit>d__52'

  .class auto ansi sealed nested private beforefieldinit '<Terminal_Loaded>d__51'
         extends [System.Runtime]System.ValueType
         implements [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 '<>1__state'
    .field public valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder '<>t__builder'
    .field public class EasyWindowsTerminalControl.EasyTerminalControl '<>4__this'
    .field private valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter '<>u__1'
    .method private hidebysig newslot virtual final 
            instance void  MoveNext() cil managed
    {
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::MoveNext
      // Code size       150 (0x96)
      .maxstack  3
      .locals init (int32 V_0,
               class EasyWindowsTerminalControl.EasyTerminalControl V_1,
               valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter V_2,
               class [System.Runtime]System.Exception V_3)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>4__this'
      IL_000d:  stloc.1
      .try
      {
        IL_000e:  ldloc.0
        IL_000f:  brfalse.s  IL_0046

        IL_0011:  ldloc.1
        IL_0012:  call       instance class [System.Runtime]System.Threading.Tasks.Task EasyWindowsTerminalControl.EasyTerminalControl::TermInit()
        IL_0017:  callvirt   instance valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter [System.Runtime]System.Threading.Tasks.Task::GetAwaiter()
        IL_001c:  stloc.2
        IL_001d:  ldloca.s   V_2
        IL_001f:  call       instance bool [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::get_IsCompleted()
        IL_0024:  brtrue.s   IL_0062

        IL_0026:  ldarg.0
        IL_0027:  ldc.i4.0
        IL_0028:  dup
        IL_0029:  stloc.0
        IL_002a:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>1__state'
        IL_002f:  ldarg.0
        IL_0030:  ldloc.2
        IL_0031:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>u__1'
        IL_0036:  ldarg.0
        IL_0037:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>t__builder'
        IL_003c:  ldloca.s   V_2
        IL_003e:  ldarg.0
        IL_003f:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::AwaitUnsafeOnCompleted<valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter,valuetype EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'>(!!0&,
                                                                                                                                                                                                                                                                                                   !!1&)
        IL_0044:  leave.s    IL_0095

        IL_0046:  ldarg.0
        IL_0047:  ldfld      valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>u__1'
        IL_004c:  stloc.2
        IL_004d:  ldarg.0
        IL_004e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>u__1'
        IL_0053:  initobj    [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter
        IL_0059:  ldarg.0
        IL_005a:  ldc.i4.m1
        IL_005b:  dup
        IL_005c:  stloc.0
        IL_005d:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>1__state'
        IL_0062:  ldloca.s   V_2
        IL_0064:  call       instance void [System.Runtime]System.Runtime.CompilerServices.TaskAwaiter::GetResult()
        IL_0069:  leave.s    IL_0082

      }  // end .try
      catch [System.Runtime]System.Exception 
      {
        IL_006b:  stloc.3
        IL_006c:  ldarg.0
        IL_006d:  ldc.i4.s   -2
        IL_006f:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>1__state'
        IL_0074:  ldarg.0
        IL_0075:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>t__builder'
        IL_007a:  ldloc.3
        IL_007b:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::SetException(class [System.Runtime]System.Exception)
        IL_0080:  leave.s    IL_0095

      }  // end handler
      IL_0082:  ldarg.0
      IL_0083:  ldc.i4.s   -2
      IL_0085:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>1__state'
      IL_008a:  ldarg.0
      IL_008b:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>t__builder'
      IL_0090:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::SetResult()
      IL_0095:  ret
    } // end of method '<Terminal_Loaded>d__51'::MoveNext

    .method private hidebysig newslot virtual final 
            instance void  SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine stateMachine) cil managed
    {
      .custom instance void [System.Runtime]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .param [1]
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
      .override [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine::SetStateMachine
      // Code size       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>t__builder'
      IL_0006:  ldarg.1
      IL_0007:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::SetStateMachine(class [System.Runtime]System.Runtime.CompilerServices.IAsyncStateMachine)
      IL_000c:  ret
    } // end of method '<Terminal_Loaded>d__51'::SetStateMachine

  } // end of class '<Terminal_Loaded>d__51'

  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> _Theme
  .field private valuetype [System.Runtime]System.Nullable`1<bool> _IsReadOnly
  .field private valuetype [System.Runtime]System.Nullable`1<bool> _IsCursorVisible
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty InputCaptureProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty ThemeProperty
  .field static family initonly class [WindowsBase]System.Windows.DependencyPropertyKey TerminalPropertyKey
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty TerminalProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty ConPTYTermProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty StartupCommandLineProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty LogConPTYOutputProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty Win32InputModeProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty IsReadOnlyProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty IsCursorVisibleProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty FontFamilyWhenSettingThemeProperty
  .field public static initonly class [WindowsBase]System.Windows.DependencyProperty FontSizeWhenSettingThemeProperty
  .method public hidebysig static uint32 
          ColorToVal(valuetype [PresentationCore]System.Windows.Media.Color color) cil managed
  {
    // Code size       43 (0x2b)
    .maxstack  8
    IL_0000:  ldc.i4.4
    IL_0001:  newarr     [System.Runtime]System.Byte
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldarga.s   color
    IL_000a:  call       instance uint8 [PresentationCore]System.Windows.Media.Color::get_R()
    IL_000f:  stelem.i1
    IL_0010:  dup
    IL_0011:  ldc.i4.1
    IL_0012:  ldarga.s   color
    IL_0014:  call       instance uint8 [PresentationCore]System.Windows.Media.Color::get_G()
    IL_0019:  stelem.i1
    IL_001a:  dup
    IL_001b:  ldc.i4.2
    IL_001c:  ldarga.s   color
    IL_001e:  call       instance uint8 [PresentationCore]System.Windows.Media.Color::get_B()
    IL_0023:  stelem.i1
    IL_0024:  ldc.i4.0
    IL_0025:  call       uint32 [System.Runtime]System.BitConverter::ToUInt32(uint8[],
                                                                              int32)
    IL_002a:  ret
  } // end of method EasyTerminalControl::ColorToVal

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [PresentationFramework]System.Windows.Controls.UserControl::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::InitializeComponent()
    IL_000c:  ldarg.0
    IL_000d:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::SetKBCaptureOptions()
    IL_0012:  ret
  } // end of method EasyTerminalControl::.ctor

  .method private hidebysig static void  InputCaptureChanged(class [WindowsBase]System.Windows.DependencyObject target,
                                                             valuetype [WindowsBase]System.Windows.DependencyPropertyChangedEventArgs e) cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  isinst     EasyWindowsTerminalControl.EasyTerminalControl
    IL_0006:  callvirt   instance void EasyWindowsTerminalControl.EasyTerminalControl::SetKBCaptureOptions()
    IL_000b:  ret
  } // end of method EasyTerminalControl::InputCaptureChanged

  .method private hidebysig instance void 
          SetKBCaptureOptions() cil managed
  {
    // Code size       69 (0x45)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE EasyWindowsTerminalControl.EasyTerminalControl::get_InputCapture()
    IL_0007:  box        EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
    IL_000c:  ldc.i4.2
    IL_000d:  box        EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
    IL_0012:  call       instance bool [System.Runtime]System.Enum::HasFlag(class [System.Runtime]System.Enum)
    IL_0017:  brtrue.s   IL_001c

    IL_0019:  ldc.i4.0
    IL_001a:  br.s       IL_001d

    IL_001c:  ldc.i4.4
    IL_001d:  call       void [PresentationFramework]System.Windows.Input.KeyboardNavigation::SetTabNavigation(class [WindowsBase]System.Windows.DependencyObject,
                                                                                                               valuetype [PresentationFramework]System.Windows.Input.KeyboardNavigationMode)
    IL_0022:  ldarg.0
    IL_0023:  ldarg.0
    IL_0024:  call       instance valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE EasyWindowsTerminalControl.EasyTerminalControl::get_InputCapture()
    IL_0029:  box        EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
    IL_002e:  ldc.i4.4
    IL_002f:  box        EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
    IL_0034:  call       instance bool [System.Runtime]System.Enum::HasFlag(class [System.Runtime]System.Enum)
    IL_0039:  brtrue.s   IL_003e

    IL_003b:  ldc.i4.0
    IL_003c:  br.s       IL_003f

    IL_003e:  ldc.i4.4
    IL_003f:  call       void [PresentationFramework]System.Windows.Input.KeyboardNavigation::SetDirectionalNavigation(class [WindowsBase]System.Windows.DependencyObject,
                                                                                                                       valuetype [PresentationFramework]System.Windows.Input.KeyboardNavigationMode)
    IL_0044:  ret
  } // end of method EasyTerminalControl::SetKBCaptureOptions

  .method public hidebysig specialname instance valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE 
          get_InputCapture() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::InputCaptureProperty
    IL_0006:  call       instance object [WindowsBase]System.Windows.DependencyObject::GetValue(class [WindowsBase]System.Windows.DependencyProperty)
    IL_000b:  unbox.any  EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
    IL_0010:  ret
  } // end of method EasyTerminalControl::get_InputCapture

  .method public hidebysig specialname instance void 
          set_InputCapture(valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE 'value') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::InputCaptureProperty
    IL_0006:  ldarg.1
    IL_0007:  box        EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
    IL_000c:  call       instance void [WindowsBase]System.Windows.DependencyObject::SetValue(class [WindowsBase]System.Windows.DependencyProperty,
                                                                                              object)
    IL_0011:  ret
  } // end of method EasyTerminalControl::set_InputCapture

  .method public hidebysig specialname instance void 
          set_Theme(valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> 'value') cil managed
  {
    // Code size       17 (0x11)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  dup
    IL_0004:  stloc.0
    IL_0005:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> EasyWindowsTerminalControl.EasyTerminalControl::_Theme
    IL_000a:  ldloc.0
    IL_000b:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::SetTheme(valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme>)
    IL_0010:  ret
  } // end of method EasyTerminalControl::set_Theme

  .method private hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> 
          get_Theme() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> EasyWindowsTerminalControl.EasyTerminalControl::_Theme
    IL_0006:  ret
  } // end of method EasyTerminalControl::get_Theme

  .method private hidebysig instance void 
          SetTheme(valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> v) cil managed
  {
    // Code size       60 (0x3c)
    .maxstack  5
    .locals init (valuetype [PresentationCore]System.Windows.Media.Color V_0)
    IL_0000:  ldarga.s   v
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme>::get_HasValue()
    IL_0007:  brfalse.s  IL_003b

    IL_0009:  ldarg.0
    IL_000a:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_000f:  dup
    IL_0010:  brtrue.s   IL_0014

    IL_0012:  pop
    IL_0013:  ret

    IL_0014:  ldarga.s   v
    IL_0016:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme>::get_Value()
    IL_001b:  ldarg.0
    IL_001c:  call       instance class [PresentationCore]System.Windows.Media.FontFamily EasyWindowsTerminalControl.EasyTerminalControl::get_FontFamilyWhenSettingTheme()
    IL_0021:  callvirt   instance string [PresentationCore]System.Windows.Media.FontFamily::get_Source()
    IL_0026:  ldarg.0
    IL_0027:  call       instance int32 EasyWindowsTerminalControl.EasyTerminalControl::get_FontSizeWhenSettingTheme()
    IL_002c:  conv.i2
    IL_002d:  ldloca.s   V_0
    IL_002f:  initobj    [PresentationCore]System.Windows.Media.Color
    IL_0035:  ldloc.0
    IL_0036:  call       instance void [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::SetTheme(valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme,
                                                                                                                string,
                                                                                                                int16,
                                                                                                                valuetype [PresentationCore]System.Windows.Media.Color)
    IL_003b:  ret
  } // end of method EasyTerminalControl::SetTheme

  .method public hidebysig specialname instance void 
          set_IsReadOnly(valuetype [System.Runtime]System.Nullable`1<bool> 'value') cil managed
  {
    // Code size       17 (0x11)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<bool> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  dup
    IL_0004:  stloc.0
    IL_0005:  stfld      valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::_IsReadOnly
    IL_000a:  ldloc.0
    IL_000b:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::SetReadOnly(valuetype [System.Runtime]System.Nullable`1<bool>)
    IL_0010:  ret
  } // end of method EasyTerminalControl::set_IsReadOnly

  .method private hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<bool> 
          get_IsReadOnly() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::_IsReadOnly
    IL_0006:  ret
  } // end of method EasyTerminalControl::get_IsReadOnly

  .method private hidebysig instance void 
          SetReadOnly(valuetype [System.Runtime]System.Nullable`1<bool> v) cil managed
  {
    // Code size       34 (0x22)
    .maxstack  8
    IL_0000:  ldarga.s   v
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<bool>::get_HasValue()
    IL_0007:  brfalse.s  IL_0021

    IL_0009:  ldarg.0
    IL_000a:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_000f:  dup
    IL_0010:  brtrue.s   IL_0014

    IL_0012:  pop
    IL_0013:  ret

    IL_0014:  ldarga.s   v
    IL_0016:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<bool>::get_Value()
    IL_001b:  ldc.i4.0
    IL_001c:  call       instance void EasyWindowsTerminalControl.TermPTY::SetReadOnly(bool,
                                                                                       bool)
    IL_0021:  ret
  } // end of method EasyTerminalControl::SetReadOnly

  .method public hidebysig specialname instance void 
          set_IsCursorVisible(valuetype [System.Runtime]System.Nullable`1<bool> 'value') cil managed
  {
    // Code size       17 (0x11)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<bool> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  dup
    IL_0004:  stloc.0
    IL_0005:  stfld      valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::_IsCursorVisible
    IL_000a:  ldloc.0
    IL_000b:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::SetCursor(valuetype [System.Runtime]System.Nullable`1<bool>)
    IL_0010:  ret
  } // end of method EasyTerminalControl::set_IsCursorVisible

  .method private hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<bool> 
          get_IsCursorVisible() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::_IsCursorVisible
    IL_0006:  ret
  } // end of method EasyTerminalControl::get_IsCursorVisible

  .method private hidebysig instance void 
          SetCursor(valuetype [System.Runtime]System.Nullable`1<bool> v) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarga.s   v
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<bool>::get_HasValue()
    IL_0007:  brfalse.s  IL_0020

    IL_0009:  ldarg.0
    IL_000a:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_000f:  dup
    IL_0010:  brtrue.s   IL_0014

    IL_0012:  pop
    IL_0013:  ret

    IL_0014:  ldarga.s   v
    IL_0016:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<bool>::get_Value()
    IL_001b:  call       instance void EasyWindowsTerminalControl.TermPTY::SetCursorVisibility(bool)
    IL_0020:  ret
  } // end of method EasyTerminalControl::SetCursor

  .method public hidebysig specialname instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl 
          get_Terminal() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyPropertyKey EasyWindowsTerminalControl.EasyTerminalControl::TerminalPropertyKey
    IL_0006:  callvirt   instance class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyPropertyKey::get_DependencyProperty()
    IL_000b:  call       instance object [WindowsBase]System.Windows.DependencyObject::GetValue(class [WindowsBase]System.Windows.DependencyProperty)
    IL_0010:  castclass  [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl
    IL_0015:  ret
  } // end of method EasyTerminalControl::get_Terminal

  .method public hidebysig specialname instance void 
          set_Terminal(class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl 'value') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyPropertyKey EasyWindowsTerminalControl.EasyTerminalControl::TerminalPropertyKey
    IL_0006:  ldarg.1
    IL_0007:  call       instance void [WindowsBase]System.Windows.DependencyObject::SetValue(class [WindowsBase]System.Windows.DependencyPropertyKey,
                                                                                              object)
    IL_000c:  ret
  } // end of method EasyTerminalControl::set_Terminal

  .method private hidebysig static void  OnTermChanged(class [WindowsBase]System.Windows.DependencyObject target,
                                                       valuetype [WindowsBase]System.Windows.DependencyPropertyChangedEventArgs e) cil managed
  {
    // Code size       85 (0x55)
    .maxstack  3
    .locals init (class EasyWindowsTerminalControl.EasyTerminalControl V_0,
             class EasyWindowsTerminalControl.TermPTY V_1)
    IL_0000:  ldarg.0
    IL_0001:  isinst     EasyWindowsTerminalControl.EasyTerminalControl
    IL_0006:  stloc.0
    IL_0007:  ldarga.s   e
    IL_0009:  call       instance object [WindowsBase]System.Windows.DependencyPropertyChangedEventArgs::get_NewValue()
    IL_000e:  isinst     EasyWindowsTerminalControl.TermPTY
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  brfalse.s  IL_0054

    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_001d:  callvirt   instance bool [PresentationFramework]System.Windows.FrameworkElement::get_IsLoaded()
    IL_0022:  brfalse.s  IL_0031

    IL_0024:  ldloc.0
    IL_0025:  ldloc.0
    IL_0026:  callvirt   instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_002b:  ldnull
    IL_002c:  callvirt   instance void EasyWindowsTerminalControl.EasyTerminalControl::Terminal_Loaded(object,
                                                                                                       class [PresentationCore]System.Windows.RoutedEventArgs)
    IL_0031:  ldloc.1
    IL_0032:  callvirt   instance bool EasyWindowsTerminalControl.TermPTY::get_TermProcIsStarted()
    IL_0037:  brfalse.s  IL_0042

    IL_0039:  ldloc.0
    IL_003a:  ldloc.1
    IL_003b:  ldnull
    IL_003c:  callvirt   instance void EasyWindowsTerminalControl.EasyTerminalControl::Term_TermReady(object,
                                                                                                      class [System.Runtime]System.EventArgs)
    IL_0041:  ret

    IL_0042:  ldloc.1
    IL_0043:  ldloc.0
    IL_0044:  ldftn      instance void EasyWindowsTerminalControl.EasyTerminalControl::Term_TermReady(object,
                                                                                                      class [System.Runtime]System.EventArgs)
    IL_004a:  newobj     instance void [System.Runtime]System.EventHandler::.ctor(object,
                                                                                  native int)
    IL_004f:  callvirt   instance void EasyWindowsTerminalControl.TermPTY::add_TermReady(class [System.Runtime]System.EventHandler)
    IL_0054:  ret
  } // end of method EasyTerminalControl::OnTermChanged

  .method public hidebysig specialname instance class EasyWindowsTerminalControl.TermPTY 
          get_ConPTYTerm() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::ConPTYTermProperty
    IL_0006:  call       instance object [WindowsBase]System.Windows.DependencyObject::GetValue(class [WindowsBase]System.Windows.DependencyProperty)
    IL_000b:  castclass  EasyWindowsTerminalControl.TermPTY
    IL_0010:  ret
  } // end of method EasyTerminalControl::get_ConPTYTerm

  .method public hidebysig specialname instance void 
          set_ConPTYTerm(class EasyWindowsTerminalControl.TermPTY 'value') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::ConPTYTermProperty
    IL_0006:  ldarg.1
    IL_0007:  call       instance void [WindowsBase]System.Windows.DependencyObject::SetValue(class [WindowsBase]System.Windows.DependencyProperty,
                                                                                              object)
    IL_000c:  ret
  } // end of method EasyTerminalControl::set_ConPTYTerm

  .method public hidebysig instance class EasyWindowsTerminalControl.TermPTY 
          DisconnectConPTYTerm() cil managed
  {
    // Code size       65 (0x41)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_0006:  brfalse.s  IL_0014

    IL_0008:  ldarg.0
    IL_0009:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_000e:  ldnull
    IL_000f:  callvirt   instance void [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::set_Connection(class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.ITerminalConnection)
    IL_0014:  ldarg.0
    IL_0015:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_001a:  brfalse.s  IL_0033

    IL_001c:  ldarg.0
    IL_001d:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_0022:  ldarg.0
    IL_0023:  ldftn      instance void EasyWindowsTerminalControl.EasyTerminalControl::Term_TermReady(object,
                                                                                                      class [System.Runtime]System.EventArgs)
    IL_0029:  newobj     instance void [System.Runtime]System.EventHandler::.ctor(object,
                                                                                  native int)
    IL_002e:  callvirt   instance void EasyWindowsTerminalControl.TermPTY::remove_TermReady(class [System.Runtime]System.EventHandler)
    IL_0033:  ldarg.0
    IL_0034:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_0039:  ldarg.0
    IL_003a:  ldnull
    IL_003b:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::set_ConPTYTerm(class EasyWindowsTerminalControl.TermPTY)
    IL_0040:  ret
  } // end of method EasyTerminalControl::DisconnectConPTYTerm

  .method public hidebysig specialname instance string 
          get_StartupCommandLine() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::StartupCommandLineProperty
    IL_0006:  call       instance object [WindowsBase]System.Windows.DependencyObject::GetValue(class [WindowsBase]System.Windows.DependencyProperty)
    IL_000b:  castclass  [System.Runtime]System.String
    IL_0010:  ret
  } // end of method EasyTerminalControl::get_StartupCommandLine

  .method public hidebysig specialname instance void 
          set_StartupCommandLine(string 'value') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::StartupCommandLineProperty
    IL_0006:  ldarg.1
    IL_0007:  call       instance void [WindowsBase]System.Windows.DependencyObject::SetValue(class [WindowsBase]System.Windows.DependencyProperty,
                                                                                              object)
    IL_000c:  ret
  } // end of method EasyTerminalControl::set_StartupCommandLine

  .method public hidebysig specialname instance bool 
          get_LogConPTYOutput() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::LogConPTYOutputProperty
    IL_0006:  call       instance object [WindowsBase]System.Windows.DependencyObject::GetValue(class [WindowsBase]System.Windows.DependencyProperty)
    IL_000b:  unbox.any  [System.Runtime]System.Boolean
    IL_0010:  ret
  } // end of method EasyTerminalControl::get_LogConPTYOutput

  .method public hidebysig specialname instance void 
          set_LogConPTYOutput(bool 'value') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::LogConPTYOutputProperty
    IL_0006:  ldarg.1
    IL_0007:  box        [System.Runtime]System.Boolean
    IL_000c:  call       instance void [WindowsBase]System.Windows.DependencyObject::SetValue(class [WindowsBase]System.Windows.DependencyProperty,
                                                                                              object)
    IL_0011:  ret
  } // end of method EasyTerminalControl::set_LogConPTYOutput

  .method public hidebysig specialname instance bool 
          get_Win32InputMode() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::Win32InputModeProperty
    IL_0006:  call       instance object [WindowsBase]System.Windows.DependencyObject::GetValue(class [WindowsBase]System.Windows.DependencyProperty)
    IL_000b:  unbox.any  [System.Runtime]System.Boolean
    IL_0010:  ret
  } // end of method EasyTerminalControl::get_Win32InputMode

  .method public hidebysig specialname instance void 
          set_Win32InputMode(bool 'value') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::Win32InputModeProperty
    IL_0006:  ldarg.1
    IL_0007:  box        [System.Runtime]System.Boolean
    IL_000c:  call       instance void [WindowsBase]System.Windows.DependencyObject::SetValue(class [WindowsBase]System.Windows.DependencyProperty,
                                                                                              object)
    IL_0011:  ret
  } // end of method EasyTerminalControl::set_Win32InputMode

  .method public hidebysig specialname instance class [PresentationCore]System.Windows.Media.FontFamily 
          get_FontFamilyWhenSettingTheme() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::FontFamilyWhenSettingThemeProperty
    IL_0006:  call       instance object [WindowsBase]System.Windows.DependencyObject::GetValue(class [WindowsBase]System.Windows.DependencyProperty)
    IL_000b:  castclass  [PresentationCore]System.Windows.Media.FontFamily
    IL_0010:  ret
  } // end of method EasyTerminalControl::get_FontFamilyWhenSettingTheme

  .method public hidebysig specialname instance void 
          set_FontFamilyWhenSettingTheme(class [PresentationCore]System.Windows.Media.FontFamily 'value') cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::FontFamilyWhenSettingThemeProperty
    IL_0006:  ldarg.1
    IL_0007:  call       instance void [WindowsBase]System.Windows.DependencyObject::SetValue(class [WindowsBase]System.Windows.DependencyProperty,
                                                                                              object)
    IL_000c:  ret
  } // end of method EasyTerminalControl::set_FontFamilyWhenSettingTheme

  .method public hidebysig specialname instance int32 
          get_FontSizeWhenSettingTheme() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::FontSizeWhenSettingThemeProperty
    IL_0006:  call       instance object [WindowsBase]System.Windows.DependencyObject::GetValue(class [WindowsBase]System.Windows.DependencyProperty)
    IL_000b:  unbox.any  [System.Runtime]System.Int32
    IL_0010:  ret
  } // end of method EasyTerminalControl::get_FontSizeWhenSettingTheme

  .method public hidebysig specialname instance void 
          set_FontSizeWhenSettingTheme(int32 'value') cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::FontSizeWhenSettingThemeProperty
    IL_0006:  ldarg.1
    IL_0007:  box        [System.Runtime]System.Int32
    IL_000c:  call       instance void [WindowsBase]System.Windows.DependencyObject::SetValue(class [WindowsBase]System.Windows.DependencyProperty,
                                                                                              object)
    IL_0011:  ret
  } // end of method EasyTerminalControl::set_FontSizeWhenSettingTheme

  .method private hidebysig instance void 
          InitializeComponent() cil managed
  {
    // Code size       133 (0x85)
    .maxstack  4
    .locals init (class [PresentationFramework]System.Windows.Controls.Grid V_0)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::.ctor()
    IL_0006:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::set_Terminal(class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl)
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4     0x4000
    IL_0011:  ldc.i4.0
    IL_0012:  ldnull
    IL_0013:  newobj     instance void EasyWindowsTerminalControl.TermPTY::.ctor(int32,
                                                                                 bool,
                                                                                 class EasyWindowsTerminalControl.Internals.IProcessFactory)
    IL_0018:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::set_ConPTYTerm(class EasyWindowsTerminalControl.TermPTY)
    IL_001d:  ldarg.0
    IL_001e:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_0023:  ldc.i4.1
    IL_0024:  callvirt   instance void [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::set_AutoResize(bool)
    IL_0029:  ldarg.0
    IL_002a:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_002f:  ldarg.0
    IL_0030:  ldftn      instance void EasyWindowsTerminalControl.EasyTerminalControl::Terminal_Loaded(object,
                                                                                                       class [PresentationCore]System.Windows.RoutedEventArgs)
    IL_0036:  newobj     instance void [PresentationCore]System.Windows.RoutedEventHandler::.ctor(object,
                                                                                                  native int)
    IL_003b:  callvirt   instance void [PresentationFramework]System.Windows.FrameworkElement::add_Loaded(class [PresentationCore]System.Windows.RoutedEventHandler)
    IL_0040:  newobj     instance void [PresentationFramework]System.Windows.Controls.Grid::.ctor()
    IL_0045:  stloc.0
    IL_0046:  ldloc.0
    IL_0047:  callvirt   instance class [PresentationFramework]System.Windows.Controls.UIElementCollection [PresentationFramework]System.Windows.Controls.Panel::get_Children()
    IL_004c:  ldarg.0
    IL_004d:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_0052:  callvirt   instance int32 [PresentationFramework]System.Windows.Controls.UIElementCollection::Add(class [PresentationCore]System.Windows.UIElement)
    IL_0057:  pop
    IL_0058:  ldarg.0
    IL_0059:  ldloc.0
    IL_005a:  call       instance void [PresentationFramework]System.Windows.Controls.ContentControl::set_Content(object)
    IL_005f:  ldarg.0
    IL_0060:  ldc.i4.1
    IL_0061:  call       instance void [PresentationCore]System.Windows.UIElement::set_Focusable(bool)
    IL_0066:  ldarg.0
    IL_0067:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance void [PresentationCore]System.Windows.UIElement::set_Focusable(bool)
    IL_0072:  ldarg.0
    IL_0073:  ldarg.0
    IL_0074:  ldftn      instance void EasyWindowsTerminalControl.EasyTerminalControl::'<InitializeComponent>b__46_0'(object,
                                                                                                                      class [PresentationCore]System.Windows.RoutedEventArgs)
    IL_007a:  newobj     instance void [PresentationCore]System.Windows.RoutedEventHandler::.ctor(object,
                                                                                                  native int)
    IL_007f:  call       instance void [PresentationCore]System.Windows.UIElement::add_GotFocus(class [PresentationCore]System.Windows.RoutedEventHandler)
    IL_0084:  ret
  } // end of method EasyTerminalControl::InitializeComponent

  .method private hidebysig instance void 
          MainThreadRun(class [System.Runtime]System.Action action) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [WindowsBase]System.Windows.Threading.Dispatcher [WindowsBase]System.Windows.Threading.DispatcherObject::get_Dispatcher()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void [WindowsBase]System.Windows.Threading.Dispatcher::Invoke(class [System.Runtime]System.Action)
    IL_000c:  ret
  } // end of method EasyTerminalControl::MainThreadRun

  .method private hidebysig instance void 
          Term_TermReady(object sender,
                         class [System.Runtime]System.EventArgs e) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldftn      instance void EasyWindowsTerminalControl.EasyTerminalControl::'<Term_TermReady>b__48_0'()
    IL_0008:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000d:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::MainThreadRun(class [System.Runtime]System.Action)
    IL_0012:  ret
  } // end of method EasyTerminalControl::Term_TermReady

  .method public hidebysig instance class [System.Runtime]System.Threading.Tasks.Task 
          RestartTerm([opt] class EasyWindowsTerminalControl.TermPTY useTerm,
                      [opt] bool disposeOld) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 41 45 61 73 79 57 69 6E 64 6F 77 73 54 65   // ..AEasyWindowsTe
                                                                                                                                                   72 6D 69 6E 61 6C 43 6F 6E 74 72 6F 6C 2E 45 61   // rminalControl.Ea
                                                                                                                                                   73 79 54 65 72 6D 69 6E 61 6C 43 6F 6E 74 72 6F   // syTerminalContro
                                                                                                                                                   6C 2B 3C 52 65 73 74 61 72 74 54 65 72 6D 3E 64   // l+<RestartTerm>d
                                                                                                                                                   5F 5F 34 39 00 00 )                               // __49..
    .param [1] = nullref
    .param [2] = bool(true)
    // Code size       71 (0x47)
    .maxstack  2
    .locals init (valuetype EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49' V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_0007:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>t__builder'
    IL_000c:  ldloca.s   V_0
    IL_000e:  ldarg.0
    IL_000f:  stfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>4__this'
    IL_0014:  ldloca.s   V_0
    IL_0016:  ldarg.1
    IL_0017:  stfld      class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::useTerm
    IL_001c:  ldloca.s   V_0
    IL_001e:  ldarg.2
    IL_001f:  stfld      bool EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::disposeOld
    IL_0024:  ldloca.s   V_0
    IL_0026:  ldc.i4.m1
    IL_0027:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>1__state'
    IL_002c:  ldloca.s   V_0
    IL_002e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>t__builder'
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'>(!!0&)
    IL_003a:  ldloca.s   V_0
    IL_003c:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<RestartTerm>d__49'::'<>t__builder'
    IL_0041:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_0046:  ret
  } // end of method EasyTerminalControl::RestartTerm

  .method private hidebysig instance void 
          StartTerm(int32 column_width,
                    int32 row_height) cil managed
  {
    // Code size       67 (0x43)
    .maxstack  3
    .locals init (class EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0' V_0)
    IL_0000:  newobj     instance void EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.1
    IL_000f:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::column_width
    IL_0014:  ldloc.0
    IL_0015:  ldarg.2
    IL_0016:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::row_height
    IL_001b:  ldarg.0
    IL_001c:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_0021:  dup
    IL_0022:  brtrue.s   IL_0028

    IL_0024:  pop
    IL_0025:  ldc.i4.1
    IL_0026:  br.s       IL_002d

    IL_0028:  call       instance bool EasyWindowsTerminalControl.TermPTY::get_TermProcIsStarted()
    IL_002d:  brfalse.s  IL_0030

    IL_002f:  ret

    IL_0030:  ldarg.0
    IL_0031:  ldloc.0
    IL_0032:  ldftn      instance void EasyWindowsTerminalControl.EasyTerminalControl/'<>c__DisplayClass50_0'::'<StartTerm>b__0'()
    IL_0038:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_003d:  call       instance void EasyWindowsTerminalControl.EasyTerminalControl::MainThreadRun(class [System.Runtime]System.Action)
    IL_0042:  ret
  } // end of method EasyTerminalControl::StartTerm

  .method private hidebysig instance void 
          Terminal_Loaded(object sender,
                          class [PresentationCore]System.Windows.RoutedEventArgs e) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 45 45 61 73 79 57 69 6E 64 6F 77 73 54 65   // ..EEasyWindowsTe
                                                                                                                                                   72 6D 69 6E 61 6C 43 6F 6E 74 72 6F 6C 2E 45 61   // rminalControl.Ea
                                                                                                                                                   73 79 54 65 72 6D 69 6E 61 6C 43 6F 6E 74 72 6F   // syTerminalContro
                                                                                                                                                   6C 2B 3C 54 65 72 6D 69 6E 61 6C 5F 4C 6F 61 64   // l+<Terminal_Load
                                                                                                                                                   65 64 3E 64 5F 5F 35 31 00 00 )                   // ed>d__51..
    // Code size       43 (0x2b)
    .maxstack  2
    .locals init (valuetype EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51' V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::Create()
    IL_0007:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>t__builder'
    IL_000c:  ldloca.s   V_0
    IL_000e:  ldarg.0
    IL_000f:  stfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>4__this'
    IL_0014:  ldloca.s   V_0
    IL_0016:  ldc.i4.m1
    IL_0017:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>1__state'
    IL_001c:  ldloca.s   V_0
    IL_001e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'::'<>t__builder'
    IL_0023:  ldloca.s   V_0
    IL_0025:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncVoidMethodBuilder::Start<valuetype EasyWindowsTerminalControl.EasyTerminalControl/'<Terminal_Loaded>d__51'>(!!0&)
    IL_002a:  ret
  } // end of method EasyTerminalControl::Terminal_Loaded

  .method private hidebysig instance class [System.Runtime]System.Threading.Tasks.Task 
          TermInit() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.AsyncStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 3E 45 61 73 79 57 69 6E 64 6F 77 73 54 65   // ..>EasyWindowsTe
                                                                                                                                                   72 6D 69 6E 61 6C 43 6F 6E 74 72 6F 6C 2E 45 61   // rminalControl.Ea
                                                                                                                                                   73 79 54 65 72 6D 69 6E 61 6C 43 6F 6E 74 72 6F   // syTerminalContro
                                                                                                                                                   6C 2B 3C 54 65 72 6D 49 6E 69 74 3E 64 5F 5F 35   // l+<TermInit>d__5
                                                                                                                                                   32 00 00 )                                        // 2..
    // Code size       55 (0x37)
    .maxstack  2
    .locals init (valuetype EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52' V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  call       valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Create()
    IL_0007:  stfld      valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>t__builder'
    IL_000c:  ldloca.s   V_0
    IL_000e:  ldarg.0
    IL_000f:  stfld      class EasyWindowsTerminalControl.EasyTerminalControl EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>4__this'
    IL_0014:  ldloca.s   V_0
    IL_0016:  ldc.i4.m1
    IL_0017:  stfld      int32 EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>1__state'
    IL_001c:  ldloca.s   V_0
    IL_001e:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>t__builder'
    IL_0023:  ldloca.s   V_0
    IL_0025:  call       instance void [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::Start<valuetype EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'>(!!0&)
    IL_002a:  ldloca.s   V_0
    IL_002c:  ldflda     valuetype [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder EasyWindowsTerminalControl.EasyTerminalControl/'<TermInit>d__52'::'<>t__builder'
    IL_0031:  call       instance class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Runtime.CompilerServices.AsyncTaskMethodBuilder::get_Task()
    IL_0036:  ret
  } // end of method EasyTerminalControl::TermInit

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       602 (0x25a)
    .maxstack  6
    .locals init (class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression V_0)
    IL_0000:  ldstr      "InputCapture"
    IL_0005:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
    IL_000a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000f:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_0014:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0019:  ldc.i4.6
    IL_001a:  box        EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
    IL_001f:  ldnull
    IL_0020:  ldftn      void EasyWindowsTerminalControl.EasyTerminalControl::InputCaptureChanged(class [WindowsBase]System.Windows.DependencyObject,
                                                                                                  valuetype [WindowsBase]System.Windows.DependencyPropertyChangedEventArgs)
    IL_0026:  newobj     instance void [WindowsBase]System.Windows.PropertyChangedCallback::.ctor(object,
                                                                                                  native int)
    IL_002b:  newobj     instance void [WindowsBase]System.Windows.PropertyMetadata::.ctor(object,
                                                                                           class [WindowsBase]System.Windows.PropertyChangedCallback)
    IL_0030:  call       class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyProperty::Register(string,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [WindowsBase]System.Windows.PropertyMetadata)
    IL_0035:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::InputCaptureProperty
    IL_003a:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_003f:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0044:  ldstr      "c"
    IL_0049:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                           string)
    IL_004e:  stloc.0
    IL_004f:  ldloc.0
    IL_0050:  ldtoken    method instance valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> EasyWindowsTerminalControl.EasyTerminalControl::get_Theme()
    IL_0055:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
    IL_005a:  castclass  [System.Runtime]System.Reflection.MethodInfo
    IL_005f:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                       class [System.Runtime]System.Reflection.MethodInfo)
    IL_0064:  ldc.i4.1
    IL_0065:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
    IL_006a:  dup
    IL_006b:  ldc.i4.0
    IL_006c:  ldloc.0
    IL_006d:  stelem.ref
    IL_006e:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class EasyWindowsTerminalControl.EasyTerminalControl,valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme>>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                                                                                                                                     class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
    IL_0073:  call       class [WindowsBase]System.Windows.DependencyProperty class EasyWindowsTerminalControl.Internals.DepPropHelper`1<class EasyWindowsTerminalControl.EasyTerminalControl>::GenerateWriteOnlyProperty<valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,!!0>>)
    IL_0078:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::ThemeProperty
    IL_007d:  ldstr      "Terminal"
    IL_0082:  ldtoken    [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl
    IL_0087:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_008c:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_0091:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0096:  newobj     instance void [WindowsBase]System.Windows.PropertyMetadata::.ctor()
    IL_009b:  call       class [WindowsBase]System.Windows.DependencyPropertyKey [WindowsBase]System.Windows.DependencyProperty::RegisterReadOnly(string,
                                                                                                                                                  class [System.Runtime]System.Type,
                                                                                                                                                  class [System.Runtime]System.Type,
                                                                                                                                                  class [WindowsBase]System.Windows.PropertyMetadata)
    IL_00a0:  stsfld     class [WindowsBase]System.Windows.DependencyPropertyKey EasyWindowsTerminalControl.EasyTerminalControl::TerminalPropertyKey
    IL_00a5:  ldsfld     class [WindowsBase]System.Windows.DependencyPropertyKey EasyWindowsTerminalControl.EasyTerminalControl::TerminalPropertyKey
    IL_00aa:  callvirt   instance class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyPropertyKey::get_DependencyProperty()
    IL_00af:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::TerminalProperty
    IL_00b4:  ldstr      "ConPTYTerm"
    IL_00b9:  ldtoken    EasyWindowsTerminalControl.TermPTY
    IL_00be:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00c3:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_00c8:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00cd:  ldnull
    IL_00ce:  ldnull
    IL_00cf:  ldftn      void EasyWindowsTerminalControl.EasyTerminalControl::OnTermChanged(class [WindowsBase]System.Windows.DependencyObject,
                                                                                            valuetype [WindowsBase]System.Windows.DependencyPropertyChangedEventArgs)
    IL_00d5:  newobj     instance void [WindowsBase]System.Windows.PropertyChangedCallback::.ctor(object,
                                                                                                  native int)
    IL_00da:  newobj     instance void [WindowsBase]System.Windows.PropertyMetadata::.ctor(object,
                                                                                           class [WindowsBase]System.Windows.PropertyChangedCallback)
    IL_00df:  call       class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyProperty::Register(string,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [WindowsBase]System.Windows.PropertyMetadata)
    IL_00e4:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::ConPTYTermProperty
    IL_00e9:  ldstr      "StartupCommandLine"
    IL_00ee:  ldtoken    [System.Runtime]System.String
    IL_00f3:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00f8:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_00fd:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0102:  ldstr      "powershell.exe"
    IL_0107:  newobj     instance void [WindowsBase]System.Windows.PropertyMetadata::.ctor(object)
    IL_010c:  call       class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyProperty::Register(string,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [WindowsBase]System.Windows.PropertyMetadata)
    IL_0111:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::StartupCommandLineProperty
    IL_0116:  ldstr      "LogConPTYOutput"
    IL_011b:  ldtoken    [System.Runtime]System.Boolean
    IL_0120:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0125:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_012a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_012f:  ldc.i4.0
    IL_0130:  box        [System.Runtime]System.Boolean
    IL_0135:  newobj     instance void [WindowsBase]System.Windows.PropertyMetadata::.ctor(object)
    IL_013a:  call       class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyProperty::Register(string,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [WindowsBase]System.Windows.PropertyMetadata)
    IL_013f:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::LogConPTYOutputProperty
    IL_0144:  ldstr      "Win32InputMode"
    IL_0149:  ldtoken    [System.Runtime]System.Boolean
    IL_014e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0153:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_0158:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_015d:  ldc.i4.1
    IL_015e:  box        [System.Runtime]System.Boolean
    IL_0163:  newobj     instance void [WindowsBase]System.Windows.PropertyMetadata::.ctor(object)
    IL_0168:  call       class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyProperty::Register(string,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [WindowsBase]System.Windows.PropertyMetadata)
    IL_016d:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::Win32InputModeProperty
    IL_0172:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_0177:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_017c:  ldstr      "c"
    IL_0181:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                           string)
    IL_0186:  stloc.0
    IL_0187:  ldloc.0
    IL_0188:  ldtoken    method instance valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::get_IsReadOnly()
    IL_018d:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
    IL_0192:  castclass  [System.Runtime]System.Reflection.MethodInfo
    IL_0197:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                       class [System.Runtime]System.Reflection.MethodInfo)
    IL_019c:  ldc.i4.1
    IL_019d:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
    IL_01a2:  dup
    IL_01a3:  ldc.i4.0
    IL_01a4:  ldloc.0
    IL_01a5:  stelem.ref
    IL_01a6:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class EasyWindowsTerminalControl.EasyTerminalControl,valuetype [System.Runtime]System.Nullable`1<bool>>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                                                                   class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
    IL_01ab:  call       class [WindowsBase]System.Windows.DependencyProperty class EasyWindowsTerminalControl.Internals.DepPropHelper`1<class EasyWindowsTerminalControl.EasyTerminalControl>::GenerateWriteOnlyProperty<valuetype [System.Runtime]System.Nullable`1<bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,!!0>>)
    IL_01b0:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::IsReadOnlyProperty
    IL_01b5:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_01ba:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_01bf:  ldstr      "c"
    IL_01c4:  call       class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Parameter(class [System.Runtime]System.Type,
                                                                                                                                                                           string)
    IL_01c9:  stloc.0
    IL_01ca:  ldloc.0
    IL_01cb:  ldtoken    method instance valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::get_IsCursorVisible()
    IL_01d0:  call       class [System.Runtime]System.Reflection.MethodBase [System.Runtime]System.Reflection.MethodBase::GetMethodFromHandle(valuetype [System.Runtime]System.RuntimeMethodHandle)
    IL_01d5:  castclass  [System.Runtime]System.Reflection.MethodInfo
    IL_01da:  call       class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression [System.Linq.Expressions]System.Linq.Expressions.Expression::Property(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                       class [System.Runtime]System.Reflection.MethodInfo)
    IL_01df:  ldc.i4.1
    IL_01e0:  newarr     [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression
    IL_01e5:  dup
    IL_01e6:  ldc.i4.0
    IL_01e7:  ldloc.0
    IL_01e8:  stelem.ref
    IL_01e9:  call       class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<!!0> [System.Linq.Expressions]System.Linq.Expressions.Expression::Lambda<class [System.Runtime]System.Func`2<class EasyWindowsTerminalControl.EasyTerminalControl,valuetype [System.Runtime]System.Nullable`1<bool>>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression,
                                                                                                                                                                                                                                                                                                                   class [System.Linq.Expressions]System.Linq.Expressions.ParameterExpression[])
    IL_01ee:  call       class [WindowsBase]System.Windows.DependencyProperty class EasyWindowsTerminalControl.Internals.DepPropHelper`1<class EasyWindowsTerminalControl.EasyTerminalControl>::GenerateWriteOnlyProperty<valuetype [System.Runtime]System.Nullable`1<bool>>(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!0,!!0>>)
    IL_01f3:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::IsCursorVisibleProperty
    IL_01f8:  ldstr      "FontFamilyWhenSettingTheme"
    IL_01fd:  ldtoken    [PresentationCore]System.Windows.Media.FontFamily
    IL_0202:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0207:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_020c:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0211:  ldstr      "Cascadia Code"
    IL_0216:  newobj     instance void [PresentationCore]System.Windows.Media.FontFamily::.ctor(string)
    IL_021b:  newobj     instance void [WindowsBase]System.Windows.PropertyMetadata::.ctor(object)
    IL_0220:  call       class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyProperty::Register(string,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [WindowsBase]System.Windows.PropertyMetadata)
    IL_0225:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::FontFamilyWhenSettingThemeProperty
    IL_022a:  ldstr      "FontSizeWhenSettingTheme"
    IL_022f:  ldtoken    [System.Runtime]System.Int32
    IL_0234:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0239:  ldtoken    EasyWindowsTerminalControl.EasyTerminalControl
    IL_023e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0243:  ldc.i4.s   12
    IL_0245:  box        [System.Runtime]System.Int32
    IL_024a:  newobj     instance void [WindowsBase]System.Windows.PropertyMetadata::.ctor(object)
    IL_024f:  call       class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyProperty::Register(string,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [WindowsBase]System.Windows.PropertyMetadata)
    IL_0254:  stsfld     class [WindowsBase]System.Windows.DependencyProperty EasyWindowsTerminalControl.EasyTerminalControl::FontSizeWhenSettingThemeProperty
    IL_0259:  ret
  } // end of method EasyTerminalControl::.cctor

  .method private hidebysig instance void 
          '<InitializeComponent>b__46_0'(object _,
                                         class [PresentationCore]System.Windows.RoutedEventArgs _) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_0006:  callvirt   instance bool [PresentationCore]System.Windows.UIElement::Focus()
    IL_000b:  pop
    IL_000c:  ret
  } // end of method EasyTerminalControl::'<InitializeComponent>b__46_0'

  .method private hidebysig instance void 
          '<Term_TermReady>b__48_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       68 (0x44)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_0006:  ldarg.0
    IL_0007:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_000c:  callvirt   instance void [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::set_Connection(class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.ITerminalConnection)
    IL_0011:  ldarg.0
    IL_0012:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_0017:  ldarg.0
    IL_0018:  call       instance bool EasyWindowsTerminalControl.EasyTerminalControl::get_Win32InputMode()
    IL_001d:  callvirt   instance void EasyWindowsTerminalControl.TermPTY::Win32DirectInputMode(bool)
    IL_0022:  ldarg.0
    IL_0023:  call       instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    IL_0028:  ldarg.0
    IL_0029:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_002e:  callvirt   instance int32 [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::get_Columns()
    IL_0033:  ldarg.0
    IL_0034:  call       instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    IL_0039:  callvirt   instance int32 [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl::get_Rows()
    IL_003e:  callvirt   instance void EasyWindowsTerminalControl.TermPTY::Resize(int32,
                                                                                  int32)
    IL_0043:  ret
  } // end of method EasyTerminalControl::'<Term_TermReady>b__48_0'

  .property instance valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE
          InputCapture()
  {
    .get instance valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE EasyWindowsTerminalControl.EasyTerminalControl::get_InputCapture()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_InputCapture(valuetype EasyWindowsTerminalControl.EasyTerminalControl/INPUT_CAPTURE)
  } // end of property EasyTerminalControl::InputCapture
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme>
          Theme()
  {
    .custom instance void [System.ComponentModel.Primitives]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 23 57 72 69 74 65 20 6F 6E 6C 79 2C 20 73   // ..#Write only, s
                                                                                                                          65 74 73 20 74 68 65 20 74 65 72 6D 69 6E 61 6C   // ets the terminal
                                                                                                                          20 74 68 65 6D 65 00 00 )                         //  theme..
    .custom instance void [System.ComponentModel.Primitives]System.ComponentModel.CategoryAttribute::.ctor(string) = ( 01 00 06 43 6F 6D 6D 6F 6E 00 00 )                // ...Common..
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme> EasyWindowsTerminalControl.EasyTerminalControl::get_Theme()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_Theme(valuetype [System.Runtime]System.Nullable`1<valuetype [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalTheme>)
  } // end of property EasyTerminalControl::Theme
  .property instance valuetype [System.Runtime]System.Nullable`1<bool>
          IsReadOnly()
  {
    .custom instance void [System.ComponentModel.Primitives]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 80 8A 57 72 69 74 65 20 6F 6E 6C 79 2C 20   // ....Write only, 
                                                                                                                          57 68 65 6E 20 74 72 75 65 20 75 73 65 72 20 63   // When true user c
                                                                                                                          61 6E 6E 6F 74 20 67 69 76 65 20 69 6E 70 75 74   // annot give input
                                                                                                                          20 74 68 72 6F 75 67 68 20 74 68 65 20 54 65 72   //  through the Ter
                                                                                                                          6D 69 6E 61 6C 20 55 49 20 28 63 61 6E 20 73 74   // minal UI (can st
                                                                                                                          69 6C 6C 20 77 72 69 74 65 20 74 6F 20 74 68 65   // ill write to the
                                                                                                                          20 54 65 72 6D 20 66 72 6F 6D 20 63 6F 64 65 20   //  Term from code 
                                                                                                                          62 65 68 69 6E 64 20 75 73 69 6E 67 20 54 65 72   // behind using Ter
                                                                                                                          6D 2E 57 72 69 74 65 54 6F 54 65 72 6D 29 00 00 ) // m.WriteToTerm)..
    .custom instance void [System.ComponentModel.Primitives]System.ComponentModel.CategoryAttribute::.ctor(string) = ( 01 00 06 43 6F 6D 6D 6F 6E 00 00 )                // ...Common..
    .get instance valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::get_IsReadOnly()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_IsReadOnly(valuetype [System.Runtime]System.Nullable`1<bool>)
  } // end of property EasyTerminalControl::IsReadOnly
  .property instance valuetype [System.Runtime]System.Nullable`1<bool>
          IsCursorVisible()
  {
    .custom instance void [System.ComponentModel.Primitives]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 37 57 72 69 74 65 20 6F 6E 6C 79 2C 20 69   // ..7Write only, i
                                                                                                                          66 20 74 68 65 20 74 79 70 65 20 63 75 72 73 6F   // f the type curso
                                                                                                                          72 20 73 68 6F 77 73 20 6F 6E 20 74 68 65 20 54   // r shows on the T
                                                                                                                          65 72 6D 69 6E 61 6C 20 55 49 00 00 )             // erminal UI..
    .custom instance void [System.ComponentModel.Primitives]System.ComponentModel.CategoryAttribute::.ctor(string) = ( 01 00 06 43 6F 6D 6D 6F 6E 00 00 )                // ...Common..
    .get instance valuetype [System.Runtime]System.Nullable`1<bool> EasyWindowsTerminalControl.EasyTerminalControl::get_IsCursorVisible()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_IsCursorVisible(valuetype [System.Runtime]System.Nullable`1<bool>)
  } // end of property EasyTerminalControl::IsCursorVisible
  .property instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl
          Terminal()
  {
    .custom instance void [System.ComponentModel.Primitives]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 46 44 69 72 65 63 74 20 61 63 63 65 73 73   // ..FDirect access
                                                                                                                          20 74 6F 20 74 68 65 20 55 49 20 74 65 72 6D 69   //  to the UI termi
                                                                                                                          6E 61 6C 20 63 6F 6E 74 72 6F 6C 20 69 74 73 65   // nal control itse
                                                                                                                          6C 66 20 74 68 61 74 20 68 61 6E 64 6C 65 73 20   // lf that handles 
                                                                                                                          72 65 6E 64 65 72 69 6E 67 00 00 )                // rendering..
    .get instance class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl EasyWindowsTerminalControl.EasyTerminalControl::get_Terminal()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_Terminal(class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalControl)
  } // end of property EasyTerminalControl::Terminal
  .property instance class EasyWindowsTerminalControl.TermPTY
          ConPTYTerm()
  {
    .custom instance void [System.ComponentModel.Primitives]System.ComponentModel.DescriptionAttribute::.ctor(string) = ( 01 00 5A 54 68 65 20 62 61 63 6B 65 6E 64 20 54   // ..ZThe backend T
                                                                                                                          65 72 6D 50 54 59 20 63 6F 6E 6E 65 63 74 69 6F   // ermPTY connectio
                                                                                                                          6E 20 61 6C 6C 6F 77 73 20 63 68 61 6E 67 69 6E   // n allows changin
                                                                                                                          67 20 74 68 65 20 61 70 70 6C 69 63 61 74 69 6F   // g the applicatio
                                                                                                                          6E 20 74 68 65 20 63 6F 6E 74 72 6F 6C 20 69 73   // n the control is
                                                                                                                          20 63 6F 6E 6E 65 63 74 65 64 20 74 6F 00 00 )    //  connected to..
    .get instance class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.EasyTerminalControl::get_ConPTYTerm()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_ConPTYTerm(class EasyWindowsTerminalControl.TermPTY)
  } // end of property EasyTerminalControl::ConPTYTerm
  .property instance string StartupCommandLine()
  {
    .get instance string EasyWindowsTerminalControl.EasyTerminalControl::get_StartupCommandLine()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_StartupCommandLine(string)
  } // end of property EasyTerminalControl::StartupCommandLine
  .property instance bool LogConPTYOutput()
  {
    .get instance bool EasyWindowsTerminalControl.EasyTerminalControl::get_LogConPTYOutput()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_LogConPTYOutput(bool)
  } // end of property EasyTerminalControl::LogConPTYOutput
  .property instance bool Win32InputMode()
  {
    .get instance bool EasyWindowsTerminalControl.EasyTerminalControl::get_Win32InputMode()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_Win32InputMode(bool)
  } // end of property EasyTerminalControl::Win32InputMode
  .property instance class [PresentationCore]System.Windows.Media.FontFamily
          FontFamilyWhenSettingTheme()
  {
    .get instance class [PresentationCore]System.Windows.Media.FontFamily EasyWindowsTerminalControl.EasyTerminalControl::get_FontFamilyWhenSettingTheme()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_FontFamilyWhenSettingTheme(class [PresentationCore]System.Windows.Media.FontFamily)
  } // end of property EasyTerminalControl::FontFamilyWhenSettingTheme
  .property instance int32 FontSizeWhenSettingTheme()
  {
    .get instance int32 EasyWindowsTerminalControl.EasyTerminalControl::get_FontSizeWhenSettingTheme()
    .set instance void EasyWindowsTerminalControl.EasyTerminalControl::set_FontSizeWhenSettingTheme(int32)
  } // end of property EasyTerminalControl::FontSizeWhenSettingTheme
} // end of class EasyWindowsTerminalControl.EasyTerminalControl

.class public auto ansi beforefieldinit EasyWindowsTerminalControl.ReadDelimitedTermPTY
       extends EasyWindowsTerminalControl.TermPTY
{
  .field family int32 curBufferOffset
  .field family int32 lastDelimEndOffset
  .field family char[] delimiter
  .field family valuetype [System.Runtime]System.TimeSpan delimiterTimeout
  .field family valuetype [System.Runtime]System.DateTime lastDelimiterSeen
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor([opt] int32 READ_BUFFER_SIZE,
                               [opt] bool USE_BINARY_WRITER,
                               [opt] valuetype [System.Runtime]System.ReadOnlySpan`1<char> delimiter,
                               [opt] valuetype [System.Runtime]System.TimeSpan MaxWaitTimeoutForDelimiter) cil managed
  {
    .param [1] = int32(0x00004000)
    .param [2] = bool(false)
    .param [3] = nullref
    .param [4] = nullref
    // Code size       36 (0x24)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.ReadOnlySpan`1<char> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldnull
    IL_0004:  call       instance void EasyWindowsTerminalControl.TermPTY::.ctor(int32,
                                                                                 bool,
                                                                                 class EasyWindowsTerminalControl.Internals.IProcessFactory)
    IL_0009:  ldarg.3
    IL_000a:  ldloca.s   V_0
    IL_000c:  initobj    valuetype [System.Runtime]System.ReadOnlySpan`1<char>
    IL_0012:  ldloc.0
    IL_0013:  call       bool valuetype [System.Runtime]System.ReadOnlySpan`1<char>::op_Inequality(valuetype [System.Runtime]System.ReadOnlySpan`1<!0>,
                                                                                                   valuetype [System.Runtime]System.ReadOnlySpan`1<!0>)
    IL_0018:  brfalse.s  IL_0023

    IL_001a:  ldarg.0
    IL_001b:  ldarg.3
    IL_001c:  ldarg.s    MaxWaitTimeoutForDelimiter
    IL_001e:  call       instance void EasyWindowsTerminalControl.ReadDelimitedTermPTY::SetReadOutputDelimiter(valuetype [System.Runtime]System.ReadOnlySpan`1<char>,
                                                                                                               valuetype [System.Runtime]System.TimeSpan)
    IL_0023:  ret
  } // end of method ReadDelimitedTermPTY::.ctor

  .method family hidebysig virtual instance valuetype [System.Runtime]System.Span`1<char> 
          HandleRead(valuetype EasyWindowsTerminalControl.TermPTY/ReadState& state) cil managed
  {
    // Code size       555 (0x22b)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Span`1<char> V_0,
             valuetype [System.Runtime]System.Span`1<char> V_1,
             int32 V_2,
             valuetype [System.Runtime]System.TimeSpan V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             valuetype [System.Runtime]System.Span`1<char> V_10,
             valuetype [System.Runtime]System.DateTime V_11)
    IL_0000:  call       valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::get_Empty()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::curBufferOffset
    IL_000d:  ldarg.1
    IL_000e:  ldfld      int32 EasyWindowsTerminalControl.TermPTY/ReadState::readChars
    IL_0013:  add
    IL_0014:  stfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::curBufferOffset
    IL_0019:  ldarg.1
    IL_001a:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_001f:  ldarg.0
    IL_0020:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_0025:  ldarg.0
    IL_0026:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::curBufferOffset
    IL_002b:  ldarg.0
    IL_002c:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_0031:  sub
    IL_0032:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32,
                                                                                                                                   int32)
    IL_0037:  stloc.1
    IL_0038:  ldloc.1
    IL_0039:  ldarg.0
    IL_003a:  ldfld      char[] EasyWindowsTerminalControl.ReadDelimitedTermPTY::delimiter
    IL_003f:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<!0> valuetype [System.Runtime]System.ReadOnlySpan`1<char>::op_Implicit(!0[])
    IL_0044:  call       int32 [System.Memory]System.MemoryExtensions::LastIndexOf<char>(valuetype [System.Runtime]System.Span`1<!!0>,
                                                                                         valuetype [System.Runtime]System.ReadOnlySpan`1<!!0>)
    IL_0049:  stloc.2
    IL_004a:  ldloc.2
    IL_004b:  ldc.i4.m1
    IL_004c:  beq.s      IL_0090

    IL_004e:  ldloca.s   V_1
    IL_0050:  ldc.i4.0
    IL_0051:  ldloc.2
    IL_0052:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32,
                                                                                                                                   int32)
    IL_0057:  stloc.0
    IL_0058:  ldarg.0
    IL_0059:  ldarg.0
    IL_005a:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_005f:  ldloc.2
    IL_0060:  ldarg.0
    IL_0061:  ldfld      char[] EasyWindowsTerminalControl.ReadDelimitedTermPTY::delimiter
    IL_0066:  ldlen
    IL_0067:  conv.i4
    IL_0068:  add
    IL_0069:  add
    IL_006a:  stfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_006f:  ldarg.0
    IL_0070:  ldfld      valuetype [System.Runtime]System.TimeSpan EasyWindowsTerminalControl.ReadDelimitedTermPTY::delimiterTimeout
    IL_0075:  ldloca.s   V_3
    IL_0077:  initobj    [System.Runtime]System.TimeSpan
    IL_007d:  ldloc.3
    IL_007e:  call       bool [System.Runtime]System.TimeSpan::op_Inequality(valuetype [System.Runtime]System.TimeSpan,
                                                                             valuetype [System.Runtime]System.TimeSpan)
    IL_0083:  brfalse.s  IL_0090

    IL_0085:  ldarg.0
    IL_0086:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_008b:  stfld      valuetype [System.Runtime]System.DateTime EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimiterSeen
    IL_0090:  ldarg.1
    IL_0091:  ldarg.1
    IL_0092:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_0097:  ldarg.0
    IL_0098:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::curBufferOffset
    IL_009d:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32)
    IL_00a2:  stfld      valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::curBuffer
    IL_00a7:  ldarg.1
    IL_00a8:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::curBuffer
    IL_00ad:  call       instance int32 valuetype [System.Runtime]System.Span`1<char>::get_Length()
    IL_00b2:  brtrue     IL_01b2

    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_00bd:  brtrue.s   IL_00dd

    IL_00bf:  ldarg.1
    IL_00c0:  ldfld      valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_00c5:  stloc.0
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  ldc.i4.0
    IL_00c9:  dup
    IL_00ca:  stloc.s    V_4
    IL_00cc:  stfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_00d1:  ldloc.s    V_4
    IL_00d3:  stfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::curBufferOffset
    IL_00d8:  br         IL_019b

    IL_00dd:  ldarg.1
    IL_00de:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_00e3:  call       instance int32 valuetype [System.Runtime]System.Span`1<char>::get_Length()
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_00ee:  sub
    IL_00ef:  stloc.s    V_5
    IL_00f1:  ldarg.0
    IL_00f2:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_00f7:  ldloc.s    V_5
    IL_00f9:  blt.s      IL_00ff

    IL_00fb:  ldloc.s    V_5
    IL_00fd:  br.s       IL_0105

    IL_00ff:  ldarg.0
    IL_0100:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_0105:  stloc.s    V_6
    IL_0107:  ldarg.0
    IL_0108:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_010d:  stloc.s    V_7
    IL_010f:  br.s       IL_0177

    IL_0111:  ldloc.s    V_7
    IL_0113:  ldarg.0
    IL_0114:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_0119:  sub
    IL_011a:  stloc.s    V_8
    IL_011c:  ldloc.s    V_7
    IL_011e:  ldloc.s    V_6
    IL_0120:  add
    IL_0121:  ldarg.1
    IL_0122:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_0127:  call       instance int32 valuetype [System.Runtime]System.Span`1<char>::get_Length()
    IL_012c:  bgt.s      IL_0132

    IL_012e:  ldloc.s    V_6
    IL_0130:  br.s       IL_0140

    IL_0132:  ldarg.1
    IL_0133:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_0138:  call       instance int32 valuetype [System.Runtime]System.Span`1<char>::get_Length()
    IL_013d:  ldloc.s    V_7
    IL_013f:  sub
    IL_0140:  stloc.s    V_9
    IL_0142:  ldarg.1
    IL_0143:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_0148:  ldloc.s    V_7
    IL_014a:  ldloc.s    V_9
    IL_014c:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32,
                                                                                                                                   int32)
    IL_0151:  stloc.s    V_10
    IL_0153:  ldloca.s   V_10
    IL_0155:  ldarg.1
    IL_0156:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_015b:  ldloc.s    V_8
    IL_015d:  ldloc.s    V_9
    IL_015f:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32,
                                                                                                                                   int32)
    IL_0164:  call       instance void valuetype [System.Runtime]System.Span`1<char>::CopyTo(valuetype [System.Runtime]System.Span`1<!0>)
    IL_0169:  ldloc.s    V_7
    IL_016b:  ldloc.s    V_9
    IL_016d:  add
    IL_016e:  stloc.s    V_7
    IL_0170:  ldloc.s    V_5
    IL_0172:  ldloc.s    V_9
    IL_0174:  sub
    IL_0175:  stloc.s    V_5
    IL_0177:  ldloc.s    V_5
    IL_0179:  ldc.i4.0
    IL_017a:  bgt.s      IL_0111

    IL_017c:  ldarg.0
    IL_017d:  ldarg.1
    IL_017e:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_0183:  call       instance int32 valuetype [System.Runtime]System.Span`1<char>::get_Length()
    IL_0188:  ldarg.0
    IL_0189:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_018e:  sub
    IL_018f:  stfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::curBufferOffset
    IL_0194:  ldarg.0
    IL_0195:  ldc.i4.0
    IL_0196:  stfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_019b:  ldarg.1
    IL_019c:  ldarg.1
    IL_019d:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::curBufferOffset
    IL_01a8:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32)
    IL_01ad:  stfld      valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::curBuffer
    IL_01b2:  ldloca.s   V_0
    IL_01b4:  call       instance bool valuetype [System.Runtime]System.Span`1<char>::get_IsEmpty()
    IL_01b9:  brfalse.s  IL_0229

    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      valuetype [System.Runtime]System.TimeSpan EasyWindowsTerminalControl.ReadDelimitedTermPTY::delimiterTimeout
    IL_01c1:  ldloca.s   V_3
    IL_01c3:  initobj    [System.Runtime]System.TimeSpan
    IL_01c9:  ldloc.3
    IL_01ca:  call       bool [System.Runtime]System.TimeSpan::op_Inequality(valuetype [System.Runtime]System.TimeSpan,
                                                                             valuetype [System.Runtime]System.TimeSpan)
    IL_01cf:  brfalse.s  IL_0229

    IL_01d1:  ldarg.0
    IL_01d2:  ldfld      valuetype [System.Runtime]System.DateTime EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimiterSeen
    IL_01d7:  ldloca.s   V_11
    IL_01d9:  initobj    [System.Runtime]System.DateTime
    IL_01df:  ldloc.s    V_11
    IL_01e1:  call       bool [System.Runtime]System.DateTime::op_Inequality(valuetype [System.Runtime]System.DateTime,
                                                                             valuetype [System.Runtime]System.DateTime)
    IL_01e6:  brfalse.s  IL_0229

    IL_01e8:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_01ed:  ldarg.0
    IL_01ee:  ldfld      valuetype [System.Runtime]System.DateTime EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimiterSeen
    IL_01f3:  call       valuetype [System.Runtime]System.TimeSpan [System.Runtime]System.DateTime::op_Subtraction(valuetype [System.Runtime]System.DateTime,
                                                                                                                   valuetype [System.Runtime]System.DateTime)
    IL_01f8:  ldarg.0
    IL_01f9:  ldfld      valuetype [System.Runtime]System.TimeSpan EasyWindowsTerminalControl.ReadDelimitedTermPTY::delimiterTimeout
    IL_01fe:  call       bool [System.Runtime]System.TimeSpan::op_GreaterThan(valuetype [System.Runtime]System.TimeSpan,
                                                                              valuetype [System.Runtime]System.TimeSpan)
    IL_0203:  brfalse.s  IL_0229

    IL_0205:  ldarg.1
    IL_0206:  ldfld      valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
    IL_020b:  stloc.0
    IL_020c:  ldarg.0
    IL_020d:  ldarg.0
    IL_020e:  ldc.i4.0
    IL_020f:  dup
    IL_0210:  stloc.s    V_4
    IL_0212:  stfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimEndOffset
    IL_0217:  ldloc.s    V_4
    IL_0219:  stfld      int32 EasyWindowsTerminalControl.ReadDelimitedTermPTY::curBufferOffset
    IL_021e:  ldarg.0
    IL_021f:  call       valuetype [System.Runtime]System.DateTime [System.Runtime]System.DateTime::get_Now()
    IL_0224:  stfld      valuetype [System.Runtime]System.DateTime EasyWindowsTerminalControl.ReadDelimitedTermPTY::lastDelimiterSeen
    IL_0229:  ldloc.0
    IL_022a:  ret
  } // end of method ReadDelimitedTermPTY::HandleRead

  .method public hidebysig instance void 
          SetReadOutputDelimiter(valuetype [System.Runtime]System.ReadOnlySpan`1<char> delimiter,
                                 [opt] valuetype [System.Runtime]System.TimeSpan MaxWaitTimeoutForDelimiter) cil managed
  {
    .param [2] = nullref
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarga.s   delimiter
    IL_0003:  call       instance !0[] valuetype [System.Runtime]System.ReadOnlySpan`1<char>::ToArray()
    IL_0008:  stfld      char[] EasyWindowsTerminalControl.ReadDelimitedTermPTY::delimiter
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      valuetype [System.Runtime]System.TimeSpan EasyWindowsTerminalControl.ReadDelimitedTermPTY::delimiterTimeout
    IL_0014:  ret
  } // end of method ReadDelimitedTermPTY::SetReadOutputDelimiter

} // end of class EasyWindowsTerminalControl.ReadDelimitedTermPTY

.class public auto ansi beforefieldinit EasyWindowsTerminalControl.TermPTY
       extends [System.Runtime]System.Object
       implements [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.ITerminalConnection
{
  .class auto ansi nested family beforefieldinit InternalProcessFactory
         extends [System.Runtime]System.Object
         implements EasyWindowsTerminalControl.Internals.IProcessFactory
  {
    .method public hidebysig newslot virtual final 
            instance class EasyWindowsTerminalControl.Internals.IProcess 
            Start(string command,
                  native uint attributes,
                  class EasyWindowsTerminalControl.Internals.PseudoConsole console) cil managed
    {
      // Code size       9 (0x9)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.2
      IL_0002:  ldarg.3
      IL_0003:  call       class EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess EasyWindowsTerminalControl.Internals.ProcessFactory::Start(string,
                                                                                                                                                               native uint,
                                                                                                                                                               class EasyWindowsTerminalControl.Internals.PseudoConsole)
      IL_0008:  ret
    } // end of method InternalProcessFactory::Start

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method InternalProcessFactory::.ctor

  } // end of class InternalProcessFactory

  .class auto ansi sealed nested public InterceptDelegate
         extends [System.Runtime]System.MulticastDelegate
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(object 'object',
                                 native int 'method') runtime managed
    {
    } // end of method InterceptDelegate::.ctor

    .method public hidebysig newslot virtual 
            instance void  Invoke(valuetype [System.Runtime]System.Span`1<char>& str) runtime managed
    {
    } // end of method InterceptDelegate::Invoke

    .method public hidebysig newslot virtual 
            instance class [System.Runtime]System.IAsyncResult 
            BeginInvoke(valuetype [System.Runtime]System.Span`1<char>& str,
                        class [System.Runtime]System.AsyncCallback callback,
                        object 'object') runtime managed
    {
    } // end of method InterceptDelegate::BeginInvoke

    .method public hidebysig newslot virtual 
            instance void  EndInvoke(valuetype [System.Runtime]System.Span`1<char>& str,
                                     class [System.Runtime]System.IAsyncResult result) runtime managed
    {
    } // end of method InterceptDelegate::EndInvoke

  } // end of class InterceptDelegate

  .class sequential ansi sealed nested family beforefieldinit ReadState
         extends [System.Runtime]System.ValueType
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [System.Runtime]System.ObsoleteAttribute::.ctor(string,
                                                                          bool) = ( 01 00 52 54 79 70 65 73 20 77 69 74 68 20 65 6D   // ..RTypes with em
                                                                                    62 65 64 64 65 64 20 72 65 66 65 72 65 6E 63 65   // bedded reference
                                                                                    73 20 61 72 65 20 6E 6F 74 20 73 75 70 70 6F 72   // s are not suppor
                                                                                    74 65 64 20 69 6E 20 74 68 69 73 20 76 65 72 73   // ted in this vers
                                                                                    69 6F 6E 20 6F 66 20 79 6F 75 72 20 63 6F 6D 70   // ion of your comp
                                                                                    69 6C 65 72 2E 01 00 00 )                         // iler....
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerFeatureRequiredAttribute::.ctor(string) = ( 01 00 0A 52 65 66 53 74 72 75 63 74 73 00 00 )    // ...RefStructs..
    .field public valuetype [System.Runtime]System.Span`1<char> entireBuffer
    .field public valuetype [System.Runtime]System.Span`1<char> curBuffer
    .field public int32 readChars
  } // end of class ReadState

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass29_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class EasyWindowsTerminalControl.TermPTY '<>4__this'
    .field public class EasyWindowsTerminalControl.Internals.PseudoConsolePipe inputPipe
    .field public class EasyWindowsTerminalControl.Internals.PseudoConsolePipe outputPipe
    .field public class EasyWindowsTerminalControl.Internals.PseudoConsole pseudoConsole
    .field public class EasyWindowsTerminalControl.Internals.IProcess process
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass29_0'::.ctor

    .method assembly hidebysig instance void 
            '<Start>b__0'() cil managed
    {
      // Code size       68 (0x44)
      .maxstack  5
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::'<>4__this'
      IL_0006:  ldc.i4.5
      IL_0007:  newarr     [System.Runtime]System.IDisposable
      IL_000c:  dup
      IL_000d:  ldc.i4.0
      IL_000e:  ldarg.0
      IL_000f:  ldfld      class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::process
      IL_0014:  stelem.ref
      IL_0015:  dup
      IL_0016:  ldc.i4.1
      IL_0017:  ldarg.0
      IL_0018:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::pseudoConsole
      IL_001d:  stelem.ref
      IL_001e:  dup
      IL_001f:  ldc.i4.2
      IL_0020:  ldarg.0
      IL_0021:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::outputPipe
      IL_0026:  stelem.ref
      IL_0027:  dup
      IL_0028:  ldc.i4.3
      IL_0029:  ldarg.0
      IL_002a:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::inputPipe
      IL_002f:  stelem.ref
      IL_0030:  dup
      IL_0031:  ldc.i4.4
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::'<>4__this'
      IL_0038:  ldfld      class [System.Runtime]System.IO.StreamWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriter
      IL_003d:  stelem.ref
      IL_003e:  call       instance void EasyWindowsTerminalControl.TermPTY::DisposeResources(class [System.Runtime]System.IDisposable[])
      IL_0043:  ret
    } // end of method '<>c__DisplayClass29_0'::'<Start>b__0'

  } // end of class '<>c__DisplayClass29_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass39_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Action 'handler'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass39_0'::.ctor

    .method assembly hidebysig instance valuetype Windows.Win32.Foundation.BOOL 
            '<OnClose>b__0'(uint32 eventType) cil managed
    {
      // Code size       22 (0x16)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldc.i4.2
      IL_0002:  bne.un.s   IL_000f

      IL_0004:  ldarg.0
      IL_0005:  ldfld      class [System.Runtime]System.Action EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass39_0'::'handler'
      IL_000a:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_000f:  ldc.i4.0
      IL_0010:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.Foundation.BOOL::op_Implicit(bool)
      IL_0015:  ret
    } // end of method '<>c__DisplayClass39_0'::'<OnClose>b__0'

  } // end of class '<>c__DisplayClass39_0'

  .field private static bool IsDesignMode
  .field private class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle _consoleInputPipeWriteHandle
  .field private class [System.Runtime]System.IO.StreamWriter _consoleInputWriter
  .field private class [System.Runtime]System.IO.BinaryWriter _consoleInputWriterB
  .field private bool USE_BINARY_WRITER
  .field private class [System.Runtime]System.Text.StringBuilder '<ConsoleOutputLog>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex NewlineReduce
  .field public static class [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex colorStrip
  .field private class [System.Runtime]System.IO.FileStream '<ConsoleOutStream>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.EventHandler TermReady
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> TerminalOutput
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<TermProcIsStarted>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class EasyWindowsTerminalControl.Internals.IProcess '<Process>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class EasyWindowsTerminalControl.Internals.PseudoConsole TheConsole
  .field public class EasyWindowsTerminalControl.TermPTY/InterceptDelegate InterceptOutputToUITerminal
  .field public class EasyWindowsTerminalControl.TermPTY/InterceptDelegate InterceptInputToTermApp
  .field public bool ReadLoopStarted
  .field private int32 READ_BUFFER_SIZE
  .field family bool _ReadOnly
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor([opt] int32 READ_BUFFER_SIZE,
                               [opt] bool USE_BINARY_WRITER,
                               [opt] class EasyWindowsTerminalControl.Internals.IProcessFactory ProcessFactory) cil managed
  {
    .param [1] = int32(0x00004000)
    .param [2] = bool(false)
    .param [3] = nullref
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 EasyWindowsTerminalControl.TermPTY::READ_BUFFER_SIZE
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      bool EasyWindowsTerminalControl.TermPTY::USE_BINARY_WRITER
    IL_0014:  ret
  } // end of method TermPTY::.ctor

  .method public hidebysig specialname instance class [System.Runtime]System.Text.StringBuilder 
          get_ConsoleOutputLog() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Text.StringBuilder EasyWindowsTerminalControl.TermPTY::'<ConsoleOutputLog>k__BackingField'
    IL_0006:  ret
  } // end of method TermPTY::get_ConsoleOutputLog

  .method private hidebysig specialname instance void 
          set_ConsoleOutputLog(class [System.Runtime]System.Text.StringBuilder 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [System.Runtime]System.Text.StringBuilder EasyWindowsTerminalControl.TermPTY::'<ConsoleOutputLog>k__BackingField'
    IL_0007:  ret
  } // end of method TermPTY::set_ConsoleOutputLog

  .method public hidebysig instance string 
          GetConsoleText([opt] bool stripVTCodes) cil managed
  {
    .param [1] = bool(true)
    // Code size       68 (0x44)
    .maxstack  4
    IL_0000:  ldsfld     class [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex EasyWindowsTerminalControl.TermPTY::NewlineReduce
    IL_0005:  ldarg.1
    IL_0006:  brtrue.s   IL_0015

    IL_0008:  ldarg.0
    IL_0009:  call       instance class [System.Runtime]System.Text.StringBuilder EasyWindowsTerminalControl.TermPTY::get_ConsoleOutputLog()
    IL_000e:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0013:  br.s       IL_0025

    IL_0015:  ldarg.0
    IL_0016:  call       instance class [System.Runtime]System.Text.StringBuilder EasyWindowsTerminalControl.TermPTY::get_ConsoleOutputLog()
    IL_001b:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0020:  call       string EasyWindowsTerminalControl.TermPTY::StripColors(string)
    IL_0025:  ldstr      "\r"
    IL_002a:  ldstr      ""
    IL_002f:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0034:  ldstr      "\n\n"
    IL_0039:  callvirt   instance string [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex::Replace(string,
                                                                                                                       string)
    IL_003e:  callvirt   instance string [System.Runtime]System.String::Trim()
    IL_0043:  ret
  } // end of method TermPTY::GetConsoleText

  .method public hidebysig static string 
          StripColors(string str) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldsfld     class [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex EasyWindowsTerminalControl.TermPTY::colorStrip
    IL_0005:  ldarg.0
    IL_0006:  ldstr      ""
    IL_000b:  callvirt   instance string [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex::Replace(string,
                                                                                                                       string)
    IL_0010:  ret
  } // end of method TermPTY::StripColors

  .method public hidebysig specialname instance class [System.Runtime]System.IO.FileStream 
          get_ConsoleOutStream() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.IO.FileStream EasyWindowsTerminalControl.TermPTY::'<ConsoleOutStream>k__BackingField'
    IL_0006:  ret
  } // end of method TermPTY::get_ConsoleOutStream

  .method private hidebysig specialname instance void 
          set_ConsoleOutStream(class [System.Runtime]System.IO.FileStream 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [System.Runtime]System.IO.FileStream EasyWindowsTerminalControl.TermPTY::'<ConsoleOutStream>k__BackingField'
    IL_0007:  ret
  } // end of method TermPTY::set_ConsoleOutStream

  .method public hidebysig specialname instance void 
          add_TermReady(class [System.Runtime]System.EventHandler 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.EventHandler V_0,
             class [System.Runtime]System.EventHandler V_1,
             class [System.Runtime]System.EventHandler V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.EventHandler EasyWindowsTerminalControl.TermPTY::TermReady
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  [System.Runtime]System.EventHandler
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.EventHandler EasyWindowsTerminalControl.TermPTY::TermReady
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.EventHandler>(!!0&,
                                                                                                                                        !!0,
                                                                                                                                        !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TermPTY::add_TermReady

  .method public hidebysig specialname instance void 
          remove_TermReady(class [System.Runtime]System.EventHandler 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.EventHandler V_0,
             class [System.Runtime]System.EventHandler V_1,
             class [System.Runtime]System.EventHandler V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.EventHandler EasyWindowsTerminalControl.TermPTY::TermReady
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  [System.Runtime]System.EventHandler
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.EventHandler EasyWindowsTerminalControl.TermPTY::TermReady
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.EventHandler>(!!0&,
                                                                                                                                        !!0,
                                                                                                                                        !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TermPTY::remove_TermReady

  .method public hidebysig newslot specialname virtual final 
          instance void  add_TerminalOutput(class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> V_0,
             class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> V_1,
             class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> EasyWindowsTerminalControl.TermPTY::TerminalOutput
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> EasyWindowsTerminalControl.TermPTY::TerminalOutput
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs>>(!!0&,
                                                                                                                                                                                                                        !!0,
                                                                                                                                                                                                                        !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TermPTY::add_TerminalOutput

  .method public hidebysig newslot specialname virtual final 
          instance void  remove_TerminalOutput(class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> V_0,
             class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> V_1,
             class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> EasyWindowsTerminalControl.TermPTY::TerminalOutput
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> EasyWindowsTerminalControl.TermPTY::TerminalOutput
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs>>(!!0&,
                                                                                                                                                                                                                        !!0,
                                                                                                                                                                                                                        !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method TermPTY::remove_TerminalOutput

  .method public hidebysig specialname instance bool 
          get_TermProcIsStarted() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool EasyWindowsTerminalControl.TermPTY::'<TermProcIsStarted>k__BackingField'
    IL_0006:  ret
  } // end of method TermPTY::get_TermProcIsStarted

  .method private hidebysig specialname instance void 
          set_TermProcIsStarted(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool EasyWindowsTerminalControl.TermPTY::'<TermProcIsStarted>k__BackingField'
    IL_0007:  ret
  } // end of method TermPTY::set_TermProcIsStarted

  .method public hidebysig instance void 
          Start(string command,
                [opt] int32 consoleWidth,
                [opt] int32 consoleHeight,
                [opt] bool logOutput,
                [opt] class EasyWindowsTerminalControl.Internals.IProcessFactory factory) cil managed
  {
    .param [2] = int32(0x00000050)
    .param [3] = int32(0x0000001E)
    .param [4] = bool(false)
    .param [5] = nullref
    // Code size       470 (0x1d6)
    .maxstack  5
    .locals init (class EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0' V_0,
             class [System.Runtime]System.IO.FileStream V_1)
    IL_0000:  newobj     instance void EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class EasyWindowsTerminalControl.TermPTY EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  call       instance class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY::get_Process()
    IL_0013:  brfalse.s  IL_0020

    IL_0015:  ldstr      "Called Start on ConPTY term after already started"
    IL_001a:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_001f:  throw

    IL_0020:  ldarg.s    factory
    IL_0022:  brtrue.s   IL_002b

    IL_0024:  newobj     instance void EasyWindowsTerminalControl.TermPTY/InternalProcessFactory::.ctor()
    IL_0029:  starg.s    factory
    IL_002b:  ldsfld     bool EasyWindowsTerminalControl.TermPTY::IsDesignMode
    IL_0030:  brfalse.s  IL_0050

    IL_0032:  ldarg.0
    IL_0033:  ldc.i4.1
    IL_0034:  call       instance void EasyWindowsTerminalControl.TermPTY::set_TermProcIsStarted(bool)
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class [System.Runtime]System.EventHandler EasyWindowsTerminalControl.TermPTY::TermReady
    IL_003f:  dup
    IL_0040:  brtrue.s   IL_0044

    IL_0042:  pop
    IL_0043:  ret

    IL_0044:  ldarg.0
    IL_0045:  ldsfld     class [System.Runtime]System.EventArgs [System.Runtime]System.EventArgs::Empty
    IL_004a:  callvirt   instance void [System.Runtime]System.EventHandler::Invoke(object,
                                                                                   class [System.Runtime]System.EventArgs)
    IL_004f:  ret

    IL_0050:  ldarg.s    logOutput
    IL_0052:  brfalse.s  IL_005f

    IL_0054:  ldarg.0
    IL_0055:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_005a:  call       instance void EasyWindowsTerminalControl.TermPTY::set_ConsoleOutputLog(class [System.Runtime]System.Text.StringBuilder)
    IL_005f:  ldloc.0
    IL_0060:  newobj     instance void EasyWindowsTerminalControl.Internals.PseudoConsolePipe::.ctor()
    IL_0065:  stfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::inputPipe
    .try
    {
      IL_006a:  ldloc.0
      IL_006b:  newobj     instance void EasyWindowsTerminalControl.Internals.PseudoConsolePipe::.ctor()
      IL_0070:  stfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::outputPipe
      .try
      {
        IL_0075:  ldloc.0
        IL_0076:  ldloc.0
        IL_0077:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::inputPipe
        IL_007c:  ldfld      class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.Internals.PseudoConsolePipe::ReadSide
        IL_0081:  ldloc.0
        IL_0082:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::outputPipe
        IL_0087:  ldfld      class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.Internals.PseudoConsolePipe::WriteSide
        IL_008c:  ldarg.2
        IL_008d:  ldarg.3
        IL_008e:  call       class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.Internals.PseudoConsole::Create(class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle,
                                                                                                                                                 class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle,
                                                                                                                                                 int32,
                                                                                                                                                 int32)
        IL_0093:  stfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::pseudoConsole
        .try
        {
          IL_0098:  ldloc.0
          IL_0099:  ldarg.s    factory
          IL_009b:  ldarg.1
          IL_009c:  ldc.i4     0x20016
          IL_00a1:  conv.i
          IL_00a2:  ldloc.0
          IL_00a3:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::pseudoConsole
          IL_00a8:  callvirt   instance class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.Internals.IProcessFactory::Start(string,
                                                                                                                                                        native uint,
                                                                                                                                                        class EasyWindowsTerminalControl.Internals.PseudoConsole)
          IL_00ad:  stfld      class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::process
          .try
          {
            IL_00b2:  ldarg.0
            IL_00b3:  ldloc.0
            IL_00b4:  ldfld      class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::process
            IL_00b9:  call       instance void EasyWindowsTerminalControl.TermPTY::set_Process(class EasyWindowsTerminalControl.Internals.IProcess)
            IL_00be:  ldarg.0
            IL_00bf:  ldloc.0
            IL_00c0:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::pseudoConsole
            IL_00c5:  stfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY::TheConsole
            IL_00ca:  ldarg.0
            IL_00cb:  ldloc.0
            IL_00cc:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::outputPipe
            IL_00d1:  ldfld      class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.Internals.PseudoConsolePipe::ReadSide
            IL_00d6:  ldc.i4.1
            IL_00d7:  newobj     instance void [System.Runtime]System.IO.FileStream::.ctor(class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle,
                                                                                           valuetype [System.Runtime]System.IO.FileAccess)
            IL_00dc:  call       instance void EasyWindowsTerminalControl.TermPTY::set_ConsoleOutStream(class [System.Runtime]System.IO.FileStream)
            IL_00e1:  ldarg.0
            IL_00e2:  ldc.i4.1
            IL_00e3:  call       instance void EasyWindowsTerminalControl.TermPTY::set_TermProcIsStarted(bool)
            IL_00e8:  ldarg.0
            IL_00e9:  ldfld      class [System.Runtime]System.EventHandler EasyWindowsTerminalControl.TermPTY::TermReady
            IL_00ee:  dup
            IL_00ef:  brtrue.s   IL_00f4

            IL_00f1:  pop
            IL_00f2:  br.s       IL_00ff

            IL_00f4:  ldarg.0
            IL_00f5:  ldsfld     class [System.Runtime]System.EventArgs [System.Runtime]System.EventArgs::Empty
            IL_00fa:  callvirt   instance void [System.Runtime]System.EventHandler::Invoke(object,
                                                                                           class [System.Runtime]System.EventArgs)
            IL_00ff:  ldarg.0
            IL_0100:  ldloc.0
            IL_0101:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::inputPipe
            IL_0106:  ldfld      class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.Internals.PseudoConsolePipe::WriteSide
            IL_010b:  stfld      class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.TermPTY::_consoleInputPipeWriteHandle
            IL_0110:  ldarg.0
            IL_0111:  ldfld      class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.TermPTY::_consoleInputPipeWriteHandle
            IL_0116:  ldc.i4.2
            IL_0117:  newobj     instance void [System.Runtime]System.IO.FileStream::.ctor(class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle,
                                                                                           valuetype [System.Runtime]System.IO.FileAccess)
            IL_011c:  stloc.1
            IL_011d:  ldarg.0
            IL_011e:  ldfld      bool EasyWindowsTerminalControl.TermPTY::USE_BINARY_WRITER
            IL_0123:  brtrue.s   IL_013a

            IL_0125:  ldarg.0
            IL_0126:  ldloc.1
            IL_0127:  newobj     instance void [System.Runtime]System.IO.StreamWriter::.ctor(class [System.Runtime]System.IO.Stream)
            IL_012c:  dup
            IL_012d:  ldc.i4.1
            IL_012e:  callvirt   instance void [System.Runtime]System.IO.StreamWriter::set_AutoFlush(bool)
            IL_0133:  stfld      class [System.Runtime]System.IO.StreamWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriter
            IL_0138:  br.s       IL_0146

            IL_013a:  ldarg.0
            IL_013b:  ldloc.1
            IL_013c:  newobj     instance void [System.Runtime]System.IO.BinaryWriter::.ctor(class [System.Runtime]System.IO.Stream)
            IL_0141:  stfld      class [System.Runtime]System.IO.BinaryWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriterB
            IL_0146:  ldarg.0
            IL_0147:  callvirt   instance void EasyWindowsTerminalControl.TermPTY::ReadOutputLoop()
            IL_014c:  ldloc.0
            IL_014d:  ldftn      instance void EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::'<Start>b__0'()
            IL_0153:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                                    native int)
            IL_0158:  call       void EasyWindowsTerminalControl.TermPTY::OnClose(class [System.Runtime]System.Action)
            IL_015d:  ldloc.0
            IL_015e:  ldfld      class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::process
            IL_0163:  callvirt   instance void EasyWindowsTerminalControl.Internals.IProcess::WaitForExit()
            IL_0168:  ldarg.0
            IL_0169:  ldstr      "Session Terminated"
            IL_016e:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<char> [System.Runtime]System.String::op_Implicit(string)
            IL_0173:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToUITerminal(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
            IL_0178:  ldarg.0
            IL_0179:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY::TheConsole
            IL_017e:  callvirt   instance void EasyWindowsTerminalControl.Internals.PseudoConsole::Dispose()
            IL_0183:  leave.s    IL_01d5

          }  // end .try
          finally
          {
            IL_0185:  ldloc.0
            IL_0186:  ldfld      class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::process
            IL_018b:  brfalse.s  IL_0198

            IL_018d:  ldloc.0
            IL_018e:  ldfld      class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::process
            IL_0193:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
            IL_0198:  endfinally
          }  // end handler
        }  // end .try
        finally
        {
          IL_0199:  ldloc.0
          IL_019a:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::pseudoConsole
          IL_019f:  brfalse.s  IL_01ac

          IL_01a1:  ldloc.0
          IL_01a2:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::pseudoConsole
          IL_01a7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_01ac:  endfinally
        }  // end handler
      }  // end .try
      finally
      {
        IL_01ad:  ldloc.0
        IL_01ae:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::outputPipe
        IL_01b3:  brfalse.s  IL_01c0

        IL_01b5:  ldloc.0
        IL_01b6:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::outputPipe
        IL_01bb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_01c0:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_01c1:  ldloc.0
      IL_01c2:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::inputPipe
      IL_01c7:  brfalse.s  IL_01d4

      IL_01c9:  ldloc.0
      IL_01ca:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsolePipe EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass29_0'::inputPipe
      IL_01cf:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01d4:  endfinally
    }  // end handler
    IL_01d5:  ret
  } // end of method TermPTY::Start

  .method public hidebysig specialname instance class EasyWindowsTerminalControl.Internals.IProcess 
          get_Process() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY::'<Process>k__BackingField'
    IL_0006:  ret
  } // end of method TermPTY::get_Process

  .method family hidebysig specialname instance void 
          set_Process(class EasyWindowsTerminalControl.Internals.IProcess 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY::'<Process>k__BackingField'
    IL_0007:  ret
  } // end of method TermPTY::set_Process

  .method public hidebysig instance void 
          WriteToTerm(valuetype [System.Runtime]System.ReadOnlySpan`1<char> input) cil managed
  {
    // Code size       105 (0x69)
    .maxstack  3
    IL_0000:  ldsfld     bool EasyWindowsTerminalControl.TermPTY::IsDesignMode
    IL_0005:  brfalse.s  IL_0008

    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY::TheConsole
    IL_000e:  callvirt   instance bool EasyWindowsTerminalControl.Internals.PseudoConsole::get_IsDisposed()
    IL_0013:  brfalse.s  IL_0016

    IL_0015:  ret

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Runtime]System.IO.StreamWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriter
    IL_001c:  brtrue.s   IL_0031

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [System.Runtime]System.IO.BinaryWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriterB
    IL_0024:  brtrue.s   IL_0031

    IL_0026:  ldstr      "There is no writer attached to a pseudoconsole. Ha"
    + "ve you called Start on this instance yet\?"
    IL_002b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0030:  throw

    IL_0031:  ldarg.0
    IL_0032:  ldfld      bool EasyWindowsTerminalControl.TermPTY::USE_BINARY_WRITER
    IL_0037:  brtrue.s   IL_0046

    IL_0039:  ldarg.0
    IL_003a:  ldfld      class [System.Runtime]System.IO.StreamWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriter
    IL_003f:  ldarg.1
    IL_0040:  callvirt   instance void [System.Runtime]System.IO.TextWriter::Write(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
    IL_0045:  ret

    IL_0046:  ldarg.0
    IL_0047:  call       class [System.Runtime]System.Text.Encoding [System.Runtime]System.Text.Encoding::get_UTF8()
    IL_004c:  ldarga.s   input
    IL_004e:  constrained. valuetype [System.Runtime]System.ReadOnlySpan`1<char>
    IL_0054:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0059:  callvirt   instance uint8[] [System.Runtime]System.Text.Encoding::GetBytes(string)
    IL_005e:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<!0> valuetype [System.Runtime]System.ReadOnlySpan`1<uint8>::op_Implicit(!0[])
    IL_0063:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToTermBinary(valuetype [System.Runtime]System.ReadOnlySpan`1<uint8>)
    IL_0068:  ret
  } // end of method TermPTY::WriteToTerm

  .method public hidebysig instance void 
          WriteToTermBinary(valuetype [System.Runtime]System.ReadOnlySpan`1<uint8> input) cil managed
  {
    // Code size       55 (0x37)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool EasyWindowsTerminalControl.TermPTY::USE_BINARY_WRITER
    IL_0006:  brtrue.s   IL_001f

    IL_0008:  ldarg.0
    IL_0009:  call       class [System.Runtime]System.Text.Encoding [System.Runtime]System.Text.Encoding::get_UTF8()
    IL_000e:  ldarg.1
    IL_000f:  callvirt   instance string [System.Runtime]System.Text.Encoding::GetString(valuetype [System.Runtime]System.ReadOnlySpan`1<uint8>)
    IL_0014:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<char> [System.Runtime]System.String::op_Implicit(string)
    IL_0019:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToTerm(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
    IL_001e:  ret

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [System.Runtime]System.IO.BinaryWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriterB
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance void [System.Runtime]System.IO.BinaryWriter::Write(valuetype [System.Runtime]System.ReadOnlySpan`1<uint8>)
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class [System.Runtime]System.IO.BinaryWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriterB
    IL_0031:  callvirt   instance void [System.Runtime]System.IO.BinaryWriter::Flush()
    IL_0036:  ret
  } // end of method TermPTY::WriteToTermBinary

  .method public hidebysig instance void 
          CloseStdinToApp() cil managed
  {
    // Code size       83 (0x53)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.IO.StreamWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriter
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_000c

    IL_0009:  pop
    IL_000a:  br.s       IL_0011

    IL_000c:  callvirt   instance void [System.Runtime]System.IO.TextWriter::Close()
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [System.Runtime]System.IO.StreamWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriter
    IL_0017:  dup
    IL_0018:  brtrue.s   IL_001d

    IL_001a:  pop
    IL_001b:  br.s       IL_0022

    IL_001d:  call       instance void [System.Runtime]System.IO.TextWriter::Dispose()
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Runtime]System.IO.BinaryWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriterB
    IL_0028:  dup
    IL_0029:  brtrue.s   IL_002e

    IL_002b:  pop
    IL_002c:  br.s       IL_0033

    IL_002e:  callvirt   instance void [System.Runtime]System.IO.BinaryWriter::Close()
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [System.Runtime]System.IO.BinaryWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriterB
    IL_0039:  dup
    IL_003a:  brtrue.s   IL_003f

    IL_003c:  pop
    IL_003d:  br.s       IL_0044

    IL_003f:  call       instance void [System.Runtime]System.IO.BinaryWriter::Dispose()
    IL_0044:  ldarg.0
    IL_0045:  ldnull
    IL_0046:  stfld      class [System.Runtime]System.IO.StreamWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriter
    IL_004b:  ldarg.0
    IL_004c:  ldnull
    IL_004d:  stfld      class [System.Runtime]System.IO.BinaryWriter EasyWindowsTerminalControl.TermPTY::_consoleInputWriterB
    IL_0052:  ret
  } // end of method TermPTY::CloseStdinToApp

  .method public hidebysig instance void 
          StopExternalTermOnly() cil managed
  {
    // Code size       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY::get_Process()
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_000d

    IL_0009:  pop
    IL_000a:  ldc.i4.1
    IL_000b:  br.s       IL_0012

    IL_000d:  callvirt   instance bool EasyWindowsTerminalControl.Internals.IProcess::get_HasExited()
    IL_0012:  brfalse.s  IL_0015

    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  call       instance class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY::get_Process()
    IL_001b:  ldc.i4.0
    IL_001c:  callvirt   instance void EasyWindowsTerminalControl.Internals.IProcess::Kill(bool)
    IL_0021:  ret
  } // end of method TermPTY::StopExternalTermOnly

  .method private hidebysig static void  OnClose(class [System.Runtime]System.Action 'handler') cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  newobj     instance void EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass39_0'::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  stfld      class [System.Runtime]System.Action EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass39_0'::'handler'
    IL_000c:  ldftn      instance valuetype Windows.Win32.Foundation.BOOL EasyWindowsTerminalControl.TermPTY/'<>c__DisplayClass39_0'::'<OnClose>b__0'(uint32)
    IL_0012:  newobj     instance void Windows.Win32.System.Console.PHANDLER_ROUTINE::.ctor(object,
                                                                                            native int)
    IL_0017:  ldc.i4.1
    IL_0018:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.Foundation.BOOL::op_Implicit(bool)
    IL_001d:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::SetConsoleCtrlHandler(class Windows.Win32.System.Console.PHANDLER_ROUTINE,
                                                                                                              valuetype Windows.Win32.Foundation.BOOL)
    IL_0022:  pop
    IL_0023:  ret
  } // end of method TermPTY::OnClose

  .method private hidebysig instance void 
          DisposeResources(class [System.Runtime]System.IDisposable[] disposables) cil managed
  {
    .param [1]
    .custom instance void [System.Runtime]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       25 (0x19)
    .maxstack  2
    .locals init (class [System.Runtime]System.IDisposable[] V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_0012

    IL_0006:  ldloc.0
    IL_0007:  ldloc.1
    IL_0008:  ldelem.ref
    IL_0009:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
    IL_000e:  ldloc.1
    IL_000f:  ldc.i4.1
    IL_0010:  add
    IL_0011:  stloc.1
    IL_0012:  ldloc.1
    IL_0013:  ldloc.0
    IL_0014:  ldlen
    IL_0015:  conv.i4
    IL_0016:  blt.s      IL_0006

    IL_0018:  ret
  } // end of method TermPTY::DisposeResources

  .method public hidebysig newslot virtual final 
          instance void  Start() cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  8
    IL_0000:  ldsfld     bool EasyWindowsTerminalControl.TermPTY::IsDesignMode
    IL_0005:  brfalse.s  IL_0018

    IL_0007:  ldarg.0
    IL_0008:  ldstr      "MyShell DesignMode:> Your command window content h"
    + "ere\r\n"
    IL_000d:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<char> [System.Runtime]System.String::op_Implicit(string)
    IL_0012:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToUITerminal(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
    IL_0017:  ret

    IL_0018:  ldarg.0
    IL_0019:  dup
    IL_001a:  ldvirtftn  instance void EasyWindowsTerminalControl.TermPTY::ReadOutputLoop()
    IL_0020:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0025:  call       class [System.Runtime]System.Threading.Tasks.Task [System.Runtime]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_002a:  pop
    IL_002b:  ret
  } // end of method TermPTY::Start

  .method public hidebysig instance void 
          WriteToUITerminal(valuetype [System.Runtime]System.ReadOnlySpan`1<char> str) cil managed
  {
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> EasyWindowsTerminalControl.TermPTY::TerminalOutput
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_000b

    IL_0009:  pop
    IL_000a:  ret

    IL_000b:  ldarg.0
    IL_000c:  ldarga.s   str
    IL_000e:  constrained. valuetype [System.Runtime]System.ReadOnlySpan`1<char>
    IL_0014:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0019:  newobj     instance void [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs::.ctor(string)
    IL_001e:  callvirt   instance void class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs>::Invoke(object,
                                                                                                                                                                         !0)
    IL_0023:  ret
  } // end of method TermPTY::WriteToUITerminal

  .method public hidebysig instance void 
          Win32DirectInputMode(bool enable) cil managed
  {
    // Code size       41 (0x29)
    .maxstack  2
    .locals init (string V_0,
             string V_1)
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000a

    IL_0003:  ldstr      "l"
    IL_0008:  br.s       IL_000f

    IL_000a:  ldstr      "h"
    IL_000f:  stloc.0
    IL_0010:  ldstr      bytearray (1B 00 5B 00 3F 00 39 00 30 00 30 00 31 00 )       // ..[.?.9.0.0.1.
    IL_0015:  ldloc.0
    IL_0016:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_001b:  stloc.1
    IL_001c:  ldarg.0
    IL_001d:  ldloc.1
    IL_001e:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<char> [System.Runtime]System.String::op_Implicit(string)
    IL_0023:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToUITerminal(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
    IL_0028:  ret
  } // end of method TermPTY::Win32DirectInputMode

  .method family hidebysig newslot virtual 
          instance void  ReadOutputLoop() cil managed
  {
    // Code size       217 (0xd9)
    .maxstack  3
    .locals init (class [System.Runtime]System.IO.StreamReader V_0,
             valuetype EasyWindowsTerminalControl.TermPTY/ReadState V_1,
             valuetype EasyWindowsTerminalControl.TermPTY/ReadState V_2,
             valuetype [System.Runtime]System.Span`1<char> V_3,
             string V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool EasyWindowsTerminalControl.TermPTY::ReadLoopStarted
    IL_0006:  brfalse.s  IL_0009

    IL_0008:  ret

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.1
    IL_000b:  stfld      bool EasyWindowsTerminalControl.TermPTY::ReadLoopStarted
    IL_0010:  ldarg.0
    IL_0011:  call       instance class [System.Runtime]System.IO.FileStream EasyWindowsTerminalControl.TermPTY::get_ConsoleOutStream()
    IL_0016:  newobj     instance void [System.Runtime]System.IO.StreamReader::.ctor(class [System.Runtime]System.IO.Stream)
    IL_001b:  stloc.0
    .try
    {
      IL_001c:  ldloca.s   V_2
      IL_001e:  initobj    EasyWindowsTerminalControl.TermPTY/ReadState
      IL_0024:  ldloca.s   V_2
      IL_0026:  ldarg.0
      IL_0027:  ldfld      int32 EasyWindowsTerminalControl.TermPTY::READ_BUFFER_SIZE
      IL_002c:  newarr     [System.Runtime]System.Char
      IL_0031:  call       valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::op_Implicit(!0[])
      IL_0036:  stfld      valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
      IL_003b:  ldloc.2
      IL_003c:  stloc.1
      IL_003d:  ldloca.s   V_1
      IL_003f:  ldloca.s   V_1
      IL_0041:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::entireBuffer
      IL_0046:  ldc.i4.0
      IL_0047:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32)
      IL_004c:  stfld      valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::curBuffer
      IL_0051:  br.s       IL_00b2

      IL_0053:  ldarg.0
      IL_0054:  ldloca.s   V_1
      IL_0056:  callvirt   instance valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY::HandleRead(valuetype EasyWindowsTerminalControl.TermPTY/ReadState&)
      IL_005b:  stloc.3
      IL_005c:  ldloca.s   V_3
      IL_005e:  call       instance bool valuetype [System.Runtime]System.Span`1<char>::get_IsEmpty()
      IL_0063:  brtrue.s   IL_00b2

      IL_0065:  ldarg.0
      IL_0066:  ldfld      class EasyWindowsTerminalControl.TermPTY/InterceptDelegate EasyWindowsTerminalControl.TermPTY::InterceptOutputToUITerminal
      IL_006b:  dup
      IL_006c:  brtrue.s   IL_0071

      IL_006e:  pop
      IL_006f:  br.s       IL_0078

      IL_0071:  ldloca.s   V_3
      IL_0073:  callvirt   instance void EasyWindowsTerminalControl.TermPTY/InterceptDelegate::Invoke(valuetype [System.Runtime]System.Span`1<char>&)
      IL_0078:  ldloca.s   V_3
      IL_007a:  call       instance int32 valuetype [System.Runtime]System.Span`1<char>::get_Length()
      IL_007f:  ldc.i4.0
      IL_0080:  ble.s      IL_00b2

      IL_0082:  ldloca.s   V_3
      IL_0084:  constrained. valuetype [System.Runtime]System.Span`1<char>
      IL_008a:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_008f:  stloc.s    V_4
      IL_0091:  ldarg.0
      IL_0092:  ldloc.s    V_4
      IL_0094:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<char> [System.Runtime]System.String::op_Implicit(string)
      IL_0099:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToUITerminal(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
      IL_009e:  ldarg.0
      IL_009f:  call       instance class [System.Runtime]System.Text.StringBuilder EasyWindowsTerminalControl.TermPTY::get_ConsoleOutputLog()
      IL_00a4:  dup
      IL_00a5:  brtrue.s   IL_00aa

      IL_00a7:  pop
      IL_00a8:  br.s       IL_00b2

      IL_00aa:  ldloc.s    V_4
      IL_00ac:  call       instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
      IL_00b1:  pop
      IL_00b2:  ldloca.s   V_1
      IL_00b4:  ldloc.0
      IL_00b5:  ldloc.1
      IL_00b6:  ldfld      valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::curBuffer
      IL_00bb:  callvirt   instance int32 [System.Runtime]System.IO.TextReader::Read(valuetype [System.Runtime]System.Span`1<char>)
      IL_00c0:  dup
      IL_00c1:  stloc.s    V_5
      IL_00c3:  stfld      int32 EasyWindowsTerminalControl.TermPTY/ReadState::readChars
      IL_00c8:  ldloc.s    V_5
      IL_00ca:  brtrue.s   IL_0053

      IL_00cc:  leave.s    IL_00d8

    }  // end .try
    finally
    {
      IL_00ce:  ldloc.0
      IL_00cf:  brfalse.s  IL_00d7

      IL_00d1:  ldloc.0
      IL_00d2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d7:  endfinally
    }  // end handler
    IL_00d8:  ret
  } // end of method TermPTY::ReadOutputLoop

  .method family hidebysig newslot virtual 
          instance valuetype [System.Runtime]System.Span`1<char> 
          HandleRead(valuetype EasyWindowsTerminalControl.TermPTY/ReadState& state) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldflda     valuetype [System.Runtime]System.Span`1<char> EasyWindowsTerminalControl.TermPTY/ReadState::curBuffer
    IL_0006:  ldc.i4.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      int32 EasyWindowsTerminalControl.TermPTY/ReadState::readChars
    IL_000d:  call       instance valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::Slice(int32,
                                                                                                                                   int32)
    IL_0012:  ret
  } // end of method TermPTY::HandleRead

  .method public hidebysig instance void 
          SetReadOnly([opt] bool readOnly,
                      [opt] bool updateCursor) cil managed
  {
    .param [1] = bool(true)
    .param [2] = bool(true)
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool EasyWindowsTerminalControl.TermPTY::_ReadOnly
    IL_0007:  ldarg.2
    IL_0008:  brfalse.s  IL_0014

    IL_000a:  ldarg.0
    IL_000b:  ldarg.1
    IL_000c:  ldc.i4.0
    IL_000d:  ceq
    IL_000f:  call       instance void EasyWindowsTerminalControl.TermPTY::SetCursorVisibility(bool)
    IL_0014:  ret
  } // end of method TermPTY::SetReadOnly

  .method private hidebysig newslot virtual final 
          instance void  Microsoft.Terminal.Wpf.ITerminalConnection.WriteInput(string data) cil managed
  {
    .override [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.ITerminalConnection::WriteInput
    // Code size       62 (0x3e)
    .maxstack  2
    .locals init (valuetype [System.Runtime]System.Span`1<char> V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance char[] [System.Runtime]System.String::ToCharArray()
    IL_0006:  call       valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::op_Implicit(!0[])
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class EasyWindowsTerminalControl.TermPTY/InterceptDelegate EasyWindowsTerminalControl.TermPTY::InterceptInputToTermApp
    IL_0012:  dup
    IL_0013:  brtrue.s   IL_0018

    IL_0015:  pop
    IL_0016:  br.s       IL_001f

    IL_0018:  ldloca.s   V_0
    IL_001a:  callvirt   instance void EasyWindowsTerminalControl.TermPTY/InterceptDelegate::Invoke(valuetype [System.Runtime]System.Span`1<char>&)
    IL_001f:  ldloca.s   V_0
    IL_0021:  call       instance int32 valuetype [System.Runtime]System.Span`1<char>::get_Length()
    IL_0026:  ldc.i4.0
    IL_0027:  ble.s      IL_003d

    IL_0029:  ldarg.0
    IL_002a:  ldfld      bool EasyWindowsTerminalControl.TermPTY::_ReadOnly
    IL_002f:  brtrue.s   IL_003d

    IL_0031:  ldarg.0
    IL_0032:  ldloc.0
    IL_0033:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<!0> valuetype [System.Runtime]System.Span`1<char>::op_Implicit(valuetype [System.Runtime]System.Span`1<!0>)
    IL_0038:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToTerm(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
    IL_003d:  ret
  } // end of method TermPTY::Microsoft.Terminal.Wpf.ITerminalConnection.WriteInput

  .method private hidebysig newslot virtual final 
          instance void  Microsoft.Terminal.Wpf.ITerminalConnection.Resize(uint32 row_height,
                                                                           uint32 column_width) cil managed
  {
    .override [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.ITerminalConnection::Resize
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY::TheConsole
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_000b

    IL_0009:  pop
    IL_000a:  ret

    IL_000b:  ldarg.2
    IL_000c:  ldarg.1
    IL_000d:  call       instance void EasyWindowsTerminalControl.Internals.PseudoConsole::Resize(int32,
                                                                                                  int32)
    IL_0012:  ret
  } // end of method TermPTY::Microsoft.Terminal.Wpf.ITerminalConnection.Resize

  .method public hidebysig instance void 
          Resize(int32 column_width,
                 int32 row_height) cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY::TheConsole
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_000b

    IL_0009:  pop
    IL_000a:  ret

    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  call       instance void EasyWindowsTerminalControl.Internals.PseudoConsole::Resize(int32,
                                                                                                  int32)
    IL_0012:  ret
  } // end of method TermPTY::Resize

  .method public hidebysig instance void 
          SetCursorVisibility(bool visible) cil managed
  {
    // Code size       44 (0x2c)
    .maxstack  3
    .locals init (char V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldstr      bytearray (1B 00 5B 00 3F 00 32 00 35 00 )                   // ..[.?.2.5.
    IL_0006:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<char> [System.Runtime]System.String::op_Implicit(string)
    IL_000b:  ldarg.1
    IL_000c:  brtrue.s   IL_0012

    IL_000e:  ldc.i4.s   108
    IL_0010:  br.s       IL_0014

    IL_0012:  ldc.i4.s   104
    IL_0014:  stloc.0
    IL_0015:  ldloca.s   V_0
    IL_0017:  newobj     instance void valuetype [System.Runtime]System.ReadOnlySpan`1<char>::.ctor(!0&)
    IL_001c:  call       string [System.Runtime]System.String::Concat(valuetype [System.Runtime]System.ReadOnlySpan`1<char>,
                                                                      valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
    IL_0021:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<char> [System.Runtime]System.String::op_Implicit(string)
    IL_0026:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToUITerminal(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
    IL_002b:  ret
  } // end of method TermPTY::SetCursorVisibility

  .method public hidebysig instance void 
          ClearUITerminal([opt] bool fullReset) cil managed
  {
    .param [1] = bool(false)
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  brtrue.s   IL_000b

    IL_0004:  ldstr      bytearray (1B 00 5B 00 48 00 1B 00 5B 00 32 00 4A 00 1B 00   // ..[.H...[.2.J...
                                    5B 00 33 00 4A 00 )                               // [.3.J.
    IL_0009:  br.s       IL_0010

    IL_000b:  ldstr      bytearray (1B 00 63 00 1B 00 5D 00 31 00 30 00 34 00 1B 00   // ..c...].1.0.4...
                                    5C 00 )                                           // \.
    IL_0010:  call       valuetype [System.Runtime]System.ReadOnlySpan`1<char> [System.Runtime]System.String::op_Implicit(string)
    IL_0015:  call       instance void EasyWindowsTerminalControl.TermPTY::WriteToUITerminal(valuetype [System.Runtime]System.ReadOnlySpan`1<char>)
    IL_001a:  ret
  } // end of method TermPTY::ClearUITerminal

  .method private hidebysig newslot virtual final 
          instance void  Microsoft.Terminal.Wpf.ITerminalConnection.Close() cil managed
  {
    .override [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.ITerminalConnection::Close
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole EasyWindowsTerminalControl.TermPTY::TheConsole
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_000b

    IL_0009:  pop
    IL_000a:  ret

    IL_000b:  call       instance void EasyWindowsTerminalControl.Internals.PseudoConsole::Dispose()
    IL_0010:  ret
  } // end of method TermPTY::Microsoft.Terminal.Wpf.ITerminalConnection.Close

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       50 (0x32)
    .maxstack  8
    IL_0000:  newobj     instance void [WindowsBase]System.Windows.DependencyObject::.ctor()
    IL_0005:  call       bool [PresentationFramework]System.ComponentModel.DesignerProperties::GetIsInDesignMode(class [WindowsBase]System.Windows.DependencyObject)
    IL_000a:  stsfld     bool EasyWindowsTerminalControl.TermPTY::IsDesignMode
    IL_000f:  ldstr      "\\n\\s*\?\\n\\s*\?[\\s]+"
    IL_0014:  ldc.i4.s   16
    IL_0016:  newobj     instance void [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex::.ctor(string,
                                                                                                                   valuetype [System.Text.RegularExpressions]System.Text.RegularExpressions.RegexOptions)
    IL_001b:  stsfld     class [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex EasyWindowsTerminalControl.TermPTY::NewlineReduce
    IL_0020:  ldstr      "((\\x1B\\[\\\?\?[0-9;]*[a-zA-Z])|\\uFEFF|\\u200B|\\x1B\\]0;"
    + "|[\\a\\b])"
    IL_0025:  ldc.i4.s   12
    IL_0027:  newobj     instance void [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex::.ctor(string,
                                                                                                                   valuetype [System.Text.RegularExpressions]System.Text.RegularExpressions.RegexOptions)
    IL_002c:  stsfld     class [System.Text.RegularExpressions]System.Text.RegularExpressions.Regex EasyWindowsTerminalControl.TermPTY::colorStrip
    IL_0031:  ret
  } // end of method TermPTY::.cctor

  .event [System.Runtime]System.EventHandler TermReady
  {
    .addon instance void EasyWindowsTerminalControl.TermPTY::add_TermReady(class [System.Runtime]System.EventHandler)
    .removeon instance void EasyWindowsTerminalControl.TermPTY::remove_TermReady(class [System.Runtime]System.EventHandler)
  } // end of event TermPTY::TermReady
  .event class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs> TerminalOutput
  {
    .addon instance void EasyWindowsTerminalControl.TermPTY::add_TerminalOutput(class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs>)
    .removeon instance void EasyWindowsTerminalControl.TermPTY::remove_TerminalOutput(class [System.Runtime]System.EventHandler`1<class [Microsoft.Terminal.Wpf]Microsoft.Terminal.Wpf.TerminalOutputEventArgs>)
  } // end of event TermPTY::TerminalOutput
  .property instance class [System.Runtime]System.Text.StringBuilder
          ConsoleOutputLog()
  {
    .get instance class [System.Runtime]System.Text.StringBuilder EasyWindowsTerminalControl.TermPTY::get_ConsoleOutputLog()
    .set instance void EasyWindowsTerminalControl.TermPTY::set_ConsoleOutputLog(class [System.Runtime]System.Text.StringBuilder)
  } // end of property TermPTY::ConsoleOutputLog
  .property instance class [System.Runtime]System.IO.FileStream
          ConsoleOutStream()
  {
    .get instance class [System.Runtime]System.IO.FileStream EasyWindowsTerminalControl.TermPTY::get_ConsoleOutStream()
    .set instance void EasyWindowsTerminalControl.TermPTY::set_ConsoleOutStream(class [System.Runtime]System.IO.FileStream)
  } // end of property TermPTY::ConsoleOutStream
  .property instance bool TermProcIsStarted()
  {
    .get instance bool EasyWindowsTerminalControl.TermPTY::get_TermProcIsStarted()
    .set instance void EasyWindowsTerminalControl.TermPTY::set_TermProcIsStarted(bool)
  } // end of property TermPTY::TermProcIsStarted
  .property instance class EasyWindowsTerminalControl.Internals.IProcess
          Process()
  {
    .get instance class EasyWindowsTerminalControl.Internals.IProcess EasyWindowsTerminalControl.TermPTY::get_Process()
    .set instance void EasyWindowsTerminalControl.TermPTY::set_Process(class EasyWindowsTerminalControl.Internals.IProcess)
  } // end of property TermPTY::Process
} // end of class EasyWindowsTerminalControl.TermPTY

.class private auto ansi beforefieldinit EasyWindowsTerminalControl.Internals.DepPropHelper`1<([PresentationFramework]System.Windows.Controls.UserControl) CONTROL_TYPE>
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass1_0`1'<([PresentationFramework]System.Windows.Controls.UserControl) CONTROL_TYPE,PROP_TYPE>
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Runtime]System.Reflection.PropertyInfo prop
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass1_0`1'::.ctor

    .method assembly hidebysig instance object 
            '<GenerateWriteOnlyProperty>b__0'(class [WindowsBase]System.Windows.DependencyObject target,
                                              object 'value') cil managed
    {
      // Code size       19 (0x13)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Runtime]System.Reflection.PropertyInfo class EasyWindowsTerminalControl.Internals.DepPropHelper`1/'<>c__DisplayClass1_0`1'<!CONTROL_TYPE,!PROP_TYPE>::prop
      IL_0006:  callvirt   instance class [System.Runtime]System.Reflection.MethodInfo [System.Runtime]System.Reflection.PropertyInfo::get_SetMethod()
      IL_000b:  ldarg.1
      IL_000c:  ldarg.2
      IL_000d:  call       object class EasyWindowsTerminalControl.Internals.DepPropHelper`1<!CONTROL_TYPE>::CoerceReadOnlyHandle(class [System.Runtime]System.Reflection.MethodInfo,
                                                                                                                                  class [WindowsBase]System.Windows.DependencyObject,
                                                                                                                                  object)
      IL_0012:  ret
    } // end of method '<>c__DisplayClass1_0`1'::'<GenerateWriteOnlyProperty>b__0'

  } // end of class '<>c__DisplayClass1_0`1'

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldstr      "Should not be instanced"
    IL_000b:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_0010:  throw
  } // end of method DepPropHelper`1::.ctor

  .method public hidebysig static class [WindowsBase]System.Windows.DependencyProperty 
          GenerateWriteOnlyProperty<PROP_TYPE>(class [System.Linq.Expressions]System.Linq.Expressions.Expression`1<class [System.Runtime]System.Func`2<!CONTROL_TYPE,!!PROP_TYPE>> PropToSet) cil managed
  {
    // Code size       146 (0x92)
    .maxstack  6
    .locals init (class EasyWindowsTerminalControl.Internals.DepPropHelper`1/'<>c__DisplayClass1_0`1'<!CONTROL_TYPE,!!PROP_TYPE> V_0,
             class [System.Linq.Expressions]System.Linq.Expressions.MemberExpression V_1)
    IL_0000:  newobj     instance void class EasyWindowsTerminalControl.Internals.DepPropHelper`1/'<>c__DisplayClass1_0`1'<!CONTROL_TYPE,!!PROP_TYPE>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance class [System.Linq.Expressions]System.Linq.Expressions.Expression [System.Linq.Expressions]System.Linq.Expressions.LambdaExpression::get_Body()
    IL_000c:  isinst     [System.Linq.Expressions]System.Linq.Expressions.MemberExpression
    IL_0011:  stloc.1
    IL_0012:  ldloc.1
    IL_0013:  brtrue.s   IL_0020

    IL_0015:  ldstr      "PropToSet"
    IL_001a:  newobj     instance void [System.Runtime]System.ArgumentException::.ctor(string)
    IL_001f:  throw

    IL_0020:  ldloc.1
    IL_0021:  callvirt   instance class [System.Runtime]System.Reflection.MemberInfo [System.Linq.Expressions]System.Linq.Expressions.MemberExpression::get_Member()
    IL_0026:  callvirt   instance string [System.Runtime]System.Reflection.MemberInfo::get_Name()
    IL_002b:  ldloc.0
    IL_002c:  ldtoken    !CONTROL_TYPE
    IL_0031:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0036:  ldloc.1
    IL_0037:  callvirt   instance class [System.Runtime]System.Reflection.MemberInfo [System.Linq.Expressions]System.Linq.Expressions.MemberExpression::get_Member()
    IL_003c:  callvirt   instance string [System.Runtime]System.Reflection.MemberInfo::get_Name()
    IL_0041:  ldc.i4.s   20
    IL_0043:  call       instance class [System.Runtime]System.Reflection.PropertyInfo [System.Runtime]System.Type::GetProperty(string,
                                                                                                                                valuetype [System.Runtime]System.Reflection.BindingFlags)
    IL_0048:  stfld      class [System.Runtime]System.Reflection.PropertyInfo class EasyWindowsTerminalControl.Internals.DepPropHelper`1/'<>c__DisplayClass1_0`1'<!CONTROL_TYPE,!!PROP_TYPE>::prop
    IL_004d:  ldloc.0
    IL_004e:  ldfld      class [System.Runtime]System.Reflection.PropertyInfo class EasyWindowsTerminalControl.Internals.DepPropHelper`1/'<>c__DisplayClass1_0`1'<!CONTROL_TYPE,!!PROP_TYPE>::prop
    IL_0053:  ldnull
    IL_0054:  call       bool [System.Runtime]System.Reflection.PropertyInfo::op_Equality(class [System.Runtime]System.Reflection.PropertyInfo,
                                                                                          class [System.Runtime]System.Reflection.PropertyInfo)
    IL_0059:  brfalse.s  IL_0066

    IL_005b:  ldstr      "PropToSet"
    IL_0060:  newobj     instance void [System.Runtime]System.ArgumentException::.ctor(string)
    IL_0065:  throw

    IL_0066:  ldtoken    !!PROP_TYPE
    IL_006b:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0070:  ldtoken    !CONTROL_TYPE
    IL_0075:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_007a:  ldnull
    IL_007b:  ldloc.0
    IL_007c:  ldftn      instance object class EasyWindowsTerminalControl.Internals.DepPropHelper`1/'<>c__DisplayClass1_0`1'<!CONTROL_TYPE,!!PROP_TYPE>::'<GenerateWriteOnlyProperty>b__0'(class [WindowsBase]System.Windows.DependencyObject,
                                                                                                                                                                                           object)
    IL_0082:  newobj     instance void [WindowsBase]System.Windows.CoerceValueCallback::.ctor(object,
                                                                                              native int)
    IL_0087:  newobj     instance void [PresentationFramework]System.Windows.FrameworkPropertyMetadata::.ctor(class [WindowsBase]System.Windows.PropertyChangedCallback,
                                                                                                              class [WindowsBase]System.Windows.CoerceValueCallback)
    IL_008c:  call       class [WindowsBase]System.Windows.DependencyProperty [WindowsBase]System.Windows.DependencyProperty::Register(string,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [System.Runtime]System.Type,
                                                                                                                                       class [WindowsBase]System.Windows.PropertyMetadata)
    IL_0091:  ret
  } // end of method DepPropHelper`1::GenerateWriteOnlyProperty

  .method private hidebysig static object 
          CoerceReadOnlyHandle(class [System.Runtime]System.Reflection.MethodInfo SetMethod,
                               class [WindowsBase]System.Windows.DependencyObject target,
                               object 'value') cil managed
  {
    // Code size       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.1
    IL_0003:  newarr     [System.Runtime]System.Object
    IL_0008:  dup
    IL_0009:  ldc.i4.0
    IL_000a:  ldarg.2
    IL_000b:  stelem.ref
    IL_000c:  callvirt   instance object [System.Runtime]System.Reflection.MethodBase::Invoke(object,
                                                                                              object[])
    IL_0011:  pop
    IL_0012:  ldnull
    IL_0013:  ret
  } // end of method DepPropHelper`1::CoerceReadOnlyHandle

} // end of class EasyWindowsTerminalControl.Internals.DepPropHelper`1

.class private auto ansi sealed beforefieldinit EasyWindowsTerminalControl.Internals.Process
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .field private initonly valuetype Windows.Win32.System.Threading.STARTUPINFOEXW '<StartupInfo>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private initonly valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION '<ProcessInfo>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool disposedValue
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype Windows.Win32.System.Threading.STARTUPINFOEXW startupInfo,
                               valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION processInfo) cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      valuetype Windows.Win32.System.Threading.STARTUPINFOEXW EasyWindowsTerminalControl.Internals.Process::'<StartupInfo>k__BackingField'
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.Process::'<ProcessInfo>k__BackingField'
    IL_0014:  ret
  } // end of method Process::.ctor

  .method public hidebysig specialname instance valuetype Windows.Win32.System.Threading.STARTUPINFOEXW 
          get_StartupInfo() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Windows.Win32.System.Threading.STARTUPINFOEXW EasyWindowsTerminalControl.Internals.Process::'<StartupInfo>k__BackingField'
    IL_0006:  ret
  } // end of method Process::get_StartupInfo

  .method public hidebysig specialname instance valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION 
          get_ProcessInfo() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.Process::'<ProcessInfo>k__BackingField'
    IL_0006:  ret
  } // end of method Process::get_ProcessInfo

  .method private hidebysig instance void 
          Dispose(bool disposing) cil managed
  {
    // Code size       144 (0x90)
    .maxstack  2
    .locals init (valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool EasyWindowsTerminalControl.Internals.Process::disposedValue
    IL_0006:  brtrue     IL_008f

    IL_000b:  ldarg.1
    IL_000c:  pop
    IL_000d:  ldarg.0
    IL_000e:  call       instance valuetype Windows.Win32.System.Threading.STARTUPINFOEXW EasyWindowsTerminalControl.Internals.Process::get_StartupInfo()
    IL_0013:  ldfld      valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST Windows.Win32.System.Threading.STARTUPINFOEXW::lpAttributeList
    IL_0018:  ldloca.s   V_0
    IL_001a:  initobj    Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST
    IL_0020:  ldloc.0
    IL_0021:  call       bool Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::op_Inequality(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST,
                                                                                                         valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST)
    IL_0026:  brfalse.s  IL_0038

    IL_0028:  ldarg.0
    IL_0029:  call       instance valuetype Windows.Win32.System.Threading.STARTUPINFOEXW EasyWindowsTerminalControl.Internals.Process::get_StartupInfo()
    IL_002e:  ldfld      valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST Windows.Win32.System.Threading.STARTUPINFOEXW::lpAttributeList
    IL_0033:  call       void Windows.Win32.PInvoke::DeleteProcThreadAttributeList(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST)
    IL_0038:  ldarg.0
    IL_0039:  call       instance valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.Process::get_ProcessInfo()
    IL_003e:  ldfld      valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.System.Threading.PROCESS_INFORMATION::hProcess
    IL_0043:  call       native int Windows.Win32.Foundation.HANDLE::op_Implicit(valuetype Windows.Win32.Foundation.HANDLE)
    IL_0048:  ldsfld     native int [System.Runtime]System.IntPtr::Zero
    IL_004d:  beq.s      IL_0060

    IL_004f:  ldarg.0
    IL_0050:  call       instance valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.Process::get_ProcessInfo()
    IL_0055:  ldfld      valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.System.Threading.PROCESS_INFORMATION::hProcess
    IL_005a:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::CloseHandle(valuetype Windows.Win32.Foundation.HANDLE)
    IL_005f:  pop
    IL_0060:  ldarg.0
    IL_0061:  call       instance valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.Process::get_ProcessInfo()
    IL_0066:  ldfld      valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.System.Threading.PROCESS_INFORMATION::hThread
    IL_006b:  call       native int Windows.Win32.Foundation.HANDLE::op_Implicit(valuetype Windows.Win32.Foundation.HANDLE)
    IL_0070:  ldsfld     native int [System.Runtime]System.IntPtr::Zero
    IL_0075:  beq.s      IL_0088

    IL_0077:  ldarg.0
    IL_0078:  call       instance valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.Process::get_ProcessInfo()
    IL_007d:  ldfld      valuetype Windows.Win32.Foundation.HANDLE Windows.Win32.System.Threading.PROCESS_INFORMATION::hThread
    IL_0082:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::CloseHandle(valuetype Windows.Win32.Foundation.HANDLE)
    IL_0087:  pop
    IL_0088:  ldarg.0
    IL_0089:  ldc.i4.1
    IL_008a:  stfld      bool EasyWindowsTerminalControl.Internals.Process::disposedValue
    IL_008f:  ret
  } // end of method Process::Dispose

  .method family hidebysig virtual instance void 
          Finalize() cil managed
  {
    .override [System.Runtime]System.Object::Finalize
    // Code size       17 (0x11)
    .maxstack  2
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.0
      IL_0002:  call       instance void EasyWindowsTerminalControl.Internals.Process::Dispose(bool)
      IL_0007:  leave.s    IL_0010

    }  // end .try
    finally
    {
      IL_0009:  ldarg.0
      IL_000a:  call       instance void [System.Runtime]System.Object::Finalize()
      IL_000f:  endfinally
    }  // end handler
    IL_0010:  ret
  } // end of method Process::Finalize

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void EasyWindowsTerminalControl.Internals.Process::Dispose(bool)
    IL_0007:  ldarg.0
    IL_0008:  call       void [System.Runtime]System.GC::SuppressFinalize(object)
    IL_000d:  ret
  } // end of method Process::Dispose

  .property instance valuetype Windows.Win32.System.Threading.STARTUPINFOEXW
          StartupInfo()
  {
    .get instance valuetype Windows.Win32.System.Threading.STARTUPINFOEXW EasyWindowsTerminalControl.Internals.Process::get_StartupInfo()
  } // end of property Process::StartupInfo
  .property instance valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION
          ProcessInfo()
  {
    .get instance valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.Process::get_ProcessInfo()
  } // end of property Process::ProcessInfo
} // end of class EasyWindowsTerminalControl.Internals.Process

.class interface public abstract auto ansi beforefieldinit EasyWindowsTerminalControl.Internals.IProcess
       implements [System.Runtime]System.IDisposable
{
  .method public hidebysig newslot abstract virtual 
          instance void  WaitForExit() cil managed
  {
  } // end of method IProcess::WaitForExit

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_HasExited() cil managed
  {
  } // end of method IProcess::get_HasExited

  .method public hidebysig newslot abstract virtual 
          instance void  Kill([opt] bool EntireProcessTree) cil managed
  {
    .param [1] = bool(false)
  } // end of method IProcess::Kill

  .property instance bool HasExited()
  {
    .get instance bool EasyWindowsTerminalControl.Internals.IProcess::get_HasExited()
  } // end of property IProcess::HasExited
} // end of class EasyWindowsTerminalControl.Internals.IProcess

.class interface public abstract auto ansi beforefieldinit EasyWindowsTerminalControl.Internals.IProcessFactory
{
  .method public hidebysig newslot abstract virtual 
          instance class EasyWindowsTerminalControl.Internals.IProcess 
          Start(string command,
                native uint attributes,
                class EasyWindowsTerminalControl.Internals.PseudoConsole console) cil managed
  {
  } // end of method IProcessFactory::Start

} // end of class EasyWindowsTerminalControl.Internals.IProcessFactory

.class public abstract auto ansi sealed beforefieldinit EasyWindowsTerminalControl.Internals.ProcessFactory
       extends [System.Runtime]System.Object
{
  .class auto ansi nested public beforefieldinit WrappedProcess
         extends [System.Runtime]System.Object
         implements [System.Runtime]System.IDisposable,
                    EasyWindowsTerminalControl.Internals.IProcess
  {
    .field assembly class EasyWindowsTerminalControl.Internals.Process _process
    .field private class [System.Diagnostics.Process]System.Diagnostics.Process _Process
    .field private bool IsDisposed
    .method assembly hidebysig specialname rtspecialname 
            instance void  .ctor(class EasyWindowsTerminalControl.Internals.Process process) cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      class EasyWindowsTerminalControl.Internals.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::_process
      IL_000d:  ret
    } // end of method WrappedProcess::.ctor

    .method public hidebysig specialname 
            instance int32  get_Pid() cil managed
    {
      // Code size       17 (0x11)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class EasyWindowsTerminalControl.Internals.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::_process
      IL_0006:  callvirt   instance valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.Process::get_ProcessInfo()
      IL_000b:  ldfld      uint32 Windows.Win32.System.Threading.PROCESS_INFORMATION::dwProcessId
      IL_0010:  ret
    } // end of method WrappedProcess::get_Pid

    .method public hidebysig specialname 
            instance class [System.Diagnostics.Process]System.Diagnostics.Process 
            get_Process() cil managed
    {
      // Code size       31 (0x1f)
      .maxstack  3
      .locals init (class [System.Diagnostics.Process]System.Diagnostics.Process V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Diagnostics.Process]System.Diagnostics.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::_Process
      IL_0006:  dup
      IL_0007:  brtrue.s   IL_001e

      IL_0009:  pop
      IL_000a:  ldarg.0
      IL_000b:  ldarg.0
      IL_000c:  call       instance int32 EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::get_Pid()
      IL_0011:  call       class [System.Diagnostics.Process]System.Diagnostics.Process [System.Diagnostics.Process]System.Diagnostics.Process::GetProcessById(int32)
      IL_0016:  dup
      IL_0017:  stloc.0
      IL_0018:  stfld      class [System.Diagnostics.Process]System.Diagnostics.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::_Process
      IL_001d:  ldloc.0
      IL_001e:  ret
    } // end of method WrappedProcess::get_Process

    .method public hidebysig newslot specialname virtual final 
            instance bool  get_HasExited() cil managed
    {
      // Code size       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Diagnostics.Process]System.Diagnostics.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::get_Process()
      IL_0006:  callvirt   instance bool [System.Diagnostics.Process]System.Diagnostics.Process::get_HasExited()
      IL_000b:  ret
    } // end of method WrappedProcess::get_HasExited

    .method public hidebysig newslot virtual final 
            instance void  WaitForExit() cil managed
    {
      // Code size       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Diagnostics.Process]System.Diagnostics.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::get_Process()
      IL_0006:  callvirt   instance void [System.Diagnostics.Process]System.Diagnostics.Process::WaitForExit()
      IL_000b:  ret
    } // end of method WrappedProcess::WaitForExit

    .method public hidebysig newslot virtual final 
            instance void  Kill([opt] bool EntireProcessTree) cil managed
    {
      .param [1] = bool(false)
      // Code size       13 (0xd)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Diagnostics.Process]System.Diagnostics.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::get_Process()
      IL_0006:  ldarg.1
      IL_0007:  callvirt   instance void [System.Diagnostics.Process]System.Diagnostics.Process::Kill(bool)
      IL_000c:  ret
    } // end of method WrappedProcess::Kill

    .method family hidebysig newslot virtual 
            instance void  Dispose(bool disposing) cil managed
    {
      // Code size       30 (0x1e)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      bool EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::IsDisposed
      IL_0006:  brtrue.s   IL_001d

      IL_0008:  ldarg.1
      IL_0009:  brfalse.s  IL_0016

      IL_000b:  ldarg.0
      IL_000c:  ldfld      class EasyWindowsTerminalControl.Internals.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::_process
      IL_0011:  callvirt   instance void EasyWindowsTerminalControl.Internals.Process::Dispose()
      IL_0016:  ldarg.0
      IL_0017:  ldc.i4.1
      IL_0018:  stfld      bool EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::IsDisposed
      IL_001d:  ret
    } // end of method WrappedProcess::Dispose

    .method public hidebysig newslot virtual final 
            instance void  Dispose() cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.1
      IL_0002:  callvirt   instance void EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::Dispose(bool)
      IL_0007:  ldarg.0
      IL_0008:  call       void [System.Runtime]System.GC::SuppressFinalize(object)
      IL_000d:  ret
    } // end of method WrappedProcess::Dispose

    .property instance int32 Pid()
    {
      .get instance int32 EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::get_Pid()
    } // end of property WrappedProcess::Pid
    .property instance class [System.Diagnostics.Process]System.Diagnostics.Process
            Process()
    {
      .get instance class [System.Diagnostics.Process]System.Diagnostics.Process EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::get_Process()
    } // end of property WrappedProcess::Process
    .property instance bool HasExited()
    {
      .get instance bool EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::get_HasExited()
    } // end of property WrappedProcess::HasExited
  } // end of class WrappedProcess

  .method public hidebysig static class EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess 
          Start(string command,
                native uint attributes,
                class EasyWindowsTerminalControl.Internals.PseudoConsole console) cil managed
  {
    // Code size       35 (0x23)
    .maxstack  2
    .locals init (valuetype Windows.Win32.System.Threading.STARTUPINFOEXW V_0,
             valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION V_1)
    IL_0000:  ldarg.2
    IL_0001:  callvirt   instance class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle EasyWindowsTerminalControl.Internals.PseudoConsole::get_Handle()
    IL_0006:  ldarg.1
    IL_0007:  call       valuetype Windows.Win32.System.Threading.STARTUPINFOEXW EasyWindowsTerminalControl.Internals.ProcessFactory::ConfigureProcessThread(class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle,
                                                                                                                                                             native uint)
    IL_000c:  stloc.0
    IL_000d:  ldloca.s   V_0
    IL_000f:  ldarg.0
    IL_0010:  call       valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION EasyWindowsTerminalControl.Internals.ProcessFactory::RunProcess(valuetype Windows.Win32.System.Threading.STARTUPINFOEXW&,
                                                                                                                                                      string)
    IL_0015:  stloc.1
    IL_0016:  ldloc.0
    IL_0017:  ldloc.1
    IL_0018:  newobj     instance void EasyWindowsTerminalControl.Internals.Process::.ctor(valuetype Windows.Win32.System.Threading.STARTUPINFOEXW,
                                                                                           valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION)
    IL_001d:  newobj     instance void EasyWindowsTerminalControl.Internals.ProcessFactory/WrappedProcess::.ctor(class EasyWindowsTerminalControl.Internals.Process)
    IL_0022:  ret
  } // end of method ProcessFactory::Start

  .method private hidebysig static valuetype Windows.Win32.System.Threading.STARTUPINFOEXW 
          ConfigureProcessThread(class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle hPC,
                                 native uint attributes) cil managed
  {
    // Code size       185 (0xb9)
    .maxstack  7
    .locals init (native uint V_0,
             valuetype Windows.Win32.System.Threading.STARTUPINFOEXW V_1,
             valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  conv.i
    IL_0002:  stloc.0
    IL_0003:  ldloca.s   V_2
    IL_0005:  initobj    Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST
    IL_000b:  ldloc.2
    IL_000c:  ldc.i4.1
    IL_000d:  ldc.i4.0
    IL_000e:  ldloca.s   V_0
    IL_0010:  conv.u
    IL_0011:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::InitializeProcThreadAttributeList(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST,
                                                                                                                          uint32,
                                                                                                                          uint32,
                                                                                                                          native uint*)
    IL_0016:  call       bool Windows.Win32.Foundation.BOOL::op_Implicit(valuetype Windows.Win32.Foundation.BOOL)
    IL_001b:  brtrue.s   IL_0020

    IL_001d:  ldloc.0
    IL_001e:  brtrue.s   IL_0030

    IL_0020:  call       int32 [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::GetLastWin32Error()
    IL_0025:  ldstr      "Could not calculate the number of bytes for the at"
    + "tribute list."
    IL_002a:  newobj     instance void [Microsoft.Win32.Primitives]System.ComponentModel.Win32Exception::.ctor(int32,
                                                                                                               string)
    IL_002f:  throw

    IL_0030:  ldloca.s   V_1
    IL_0032:  initobj    Windows.Win32.System.Threading.STARTUPINFOEXW
    IL_0038:  ldloca.s   V_1
    IL_003a:  ldflda     valuetype Windows.Win32.System.Threading.STARTUPINFOW Windows.Win32.System.Threading.STARTUPINFOEXW::StartupInfo
    IL_003f:  call       int32 [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::SizeOf<valuetype Windows.Win32.System.Threading.STARTUPINFOEXW>()
    IL_0044:  stfld      uint32 Windows.Win32.System.Threading.STARTUPINFOW::cb
    IL_0049:  ldloca.s   V_1
    IL_004b:  ldloc.0
    IL_004c:  conv.i4
    IL_004d:  call       native int [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::AllocHGlobal(int32)
    IL_0052:  newobj     instance void Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST::.ctor(void*)
    IL_0057:  stfld      valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST Windows.Win32.System.Threading.STARTUPINFOEXW::lpAttributeList
    IL_005c:  ldloc.1
    IL_005d:  ldfld      valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST Windows.Win32.System.Threading.STARTUPINFOEXW::lpAttributeList
    IL_0062:  ldc.i4.1
    IL_0063:  ldc.i4.0
    IL_0064:  ldloca.s   V_0
    IL_0066:  conv.u
    IL_0067:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::InitializeProcThreadAttributeList(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST,
                                                                                                                          uint32,
                                                                                                                          uint32,
                                                                                                                          native uint*)
    IL_006c:  call       bool Windows.Win32.Foundation.BOOL::op_Implicit(valuetype Windows.Win32.Foundation.BOOL)
    IL_0071:  brtrue.s   IL_0083

    IL_0073:  call       int32 [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::GetLastWin32Error()
    IL_0078:  ldstr      "Could not set up attribute list."
    IL_007d:  newobj     instance void [Microsoft.Win32.Primitives]System.ComponentModel.Win32Exception::.ctor(int32,
                                                                                                               string)
    IL_0082:  throw

    IL_0083:  ldloc.1
    IL_0084:  ldfld      valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST Windows.Win32.System.Threading.STARTUPINFOEXW::lpAttributeList
    IL_0089:  ldc.i4.0
    IL_008a:  ldarg.1
    IL_008b:  ldarg.0
    IL_008c:  callvirt   instance native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousGetHandle()
    IL_0091:  call       int32 [System.Runtime]System.IntPtr::get_Size()
    IL_0096:  conv.i
    IL_0097:  ldc.i4.0
    IL_0098:  conv.u
    IL_0099:  ldc.i4.0
    IL_009a:  conv.u
    IL_009b:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::UpdateProcThreadAttribute(valuetype Windows.Win32.System.Threading.LPPROC_THREAD_ATTRIBUTE_LIST,
                                                                                                                  uint32,
                                                                                                                  native uint,
                                                                                                                  void*,
                                                                                                                  native uint,
                                                                                                                  void*,
                                                                                                                  native uint*)
    IL_00a0:  call       bool Windows.Win32.Foundation.BOOL::op_Implicit(valuetype Windows.Win32.Foundation.BOOL)
    IL_00a5:  brtrue.s   IL_00b7

    IL_00a7:  call       int32 [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::GetLastWin32Error()
    IL_00ac:  ldstr      "Could not set pseudoconsole thread attribute."
    IL_00b1:  newobj     instance void [Microsoft.Win32.Primitives]System.ComponentModel.Win32Exception::.ctor(int32,
                                                                                                               string)
    IL_00b6:  throw

    IL_00b7:  ldloc.1
    IL_00b8:  ret
  } // end of method ProcessFactory::ConfigureProcessThread

  .method private hidebysig static valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION 
          RunProcess(valuetype Windows.Win32.System.Threading.STARTUPINFOEXW& sInfoEx,
                     string commandLine) cil managed
  {
    // Code size       143 (0x8f)
    .maxstack  10
    .locals init (uint32 V_0,
             valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES V_1,
             valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES V_2,
             valuetype Windows.Win32.System.Threading.STARTUPINFOEXW V_3,
             valuetype [System.Runtime]System.Span`1<char> V_4,
             valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION V_5,
             valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES V_6)
    IL_0000:  call       int32 [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::SizeOf<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>()
    IL_0005:  stloc.0
    IL_0006:  ldloca.s   V_6
    IL_0008:  initobj    Windows.Win32.Security.SECURITY_ATTRIBUTES
    IL_000e:  ldloca.s   V_6
    IL_0010:  ldloc.0
    IL_0011:  stfld      uint32 Windows.Win32.Security.SECURITY_ATTRIBUTES::nLength
    IL_0016:  ldloc.s    V_6
    IL_0018:  stloc.1
    IL_0019:  ldloca.s   V_6
    IL_001b:  initobj    Windows.Win32.Security.SECURITY_ATTRIBUTES
    IL_0021:  ldloca.s   V_6
    IL_0023:  ldloc.0
    IL_0024:  stfld      uint32 Windows.Win32.Security.SECURITY_ATTRIBUTES::nLength
    IL_0029:  ldloc.s    V_6
    IL_002b:  stloc.2
    IL_002c:  ldarg.0
    IL_002d:  ldobj      Windows.Win32.System.Threading.STARTUPINFOEXW
    IL_0032:  stloc.3
    IL_0033:  ldarg.1
    IL_0034:  ldstr      bytearray (00 00 ) 
    IL_0039:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_003e:  callvirt   instance char[] [System.Runtime]System.String::ToCharArray()
    IL_0043:  call       valuetype [System.Runtime]System.Span`1<!0> valuetype [System.Runtime]System.Span`1<char>::op_Implicit(!0[])
    IL_0048:  stloc.s    V_4
    IL_004a:  ldnull
    IL_004b:  ldloca.s   V_4
    IL_004d:  ldloc.1
    IL_004e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>::.ctor(!0)
    IL_0053:  ldloc.2
    IL_0054:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>::.ctor(!0)
    IL_0059:  ldc.i4.0
    IL_005a:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.Foundation.BOOL::op_Implicit(bool)
    IL_005f:  ldc.i4     0x80000
    IL_0064:  ldc.i4.0
    IL_0065:  conv.u
    IL_0066:  ldnull
    IL_0067:  ldloca.s   V_3
    IL_0069:  ldflda     valuetype Windows.Win32.System.Threading.STARTUPINFOW Windows.Win32.System.Threading.STARTUPINFOEXW::StartupInfo
    IL_006e:  ldloca.s   V_5
    IL_0070:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::CreateProcess(string,
                                                                                                      valuetype [System.Runtime]System.Span`1<char>&,
                                                                                                      valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>,
                                                                                                      valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>,
                                                                                                      valuetype Windows.Win32.Foundation.BOOL,
                                                                                                      valuetype Windows.Win32.System.Threading.PROCESS_CREATION_FLAGS,
                                                                                                      void*,
                                                                                                      string,
                                                                                                      valuetype Windows.Win32.System.Threading.STARTUPINFOW&,
                                                                                                      valuetype Windows.Win32.System.Threading.PROCESS_INFORMATION&)
    IL_0075:  call       bool Windows.Win32.Foundation.BOOL::op_Implicit(valuetype Windows.Win32.Foundation.BOOL)
    IL_007a:  brtrue.s   IL_008c

    IL_007c:  call       int32 [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::GetLastWin32Error()
    IL_0081:  ldstr      "Could not create process."
    IL_0086:  newobj     instance void [Microsoft.Win32.Primitives]System.ComponentModel.Win32Exception::.ctor(int32,
                                                                                                               string)
    IL_008b:  throw

    IL_008c:  ldloc.s    V_5
    IL_008e:  ret
  } // end of method ProcessFactory::RunProcess

} // end of class EasyWindowsTerminalControl.Internals.ProcessFactory

.class public auto ansi beforefieldinit EasyWindowsTerminalControl.Internals.PseudoConsole
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .class auto ansi nested assembly beforefieldinit ConPtyClosePseudoConsoleSafeHandle
         extends Windows.Win32.ClosePseudoConsoleSafeHandle
  {
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(native int preexistingHandle,
                                 [opt] bool ownsHandle) cil managed
    {
      .param [2] = bool(true)
      // Code size       9 (0x9)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  ldarg.2
      IL_0003:  call       instance void Windows.Win32.ClosePseudoConsoleSafeHandle::.ctor(native int,
                                                                                           bool)
      IL_0008:  ret
    } // end of method ConPtyClosePseudoConsoleSafeHandle::.ctor

    .method family hidebysig virtual instance bool 
            ReleaseHandle() cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::handle
      IL_0006:  call       int32 EasyWindowsTerminalControl.Internals.PseudoConsoleApi::ClosePseudoConsole(native int)
      IL_000b:  pop
      IL_000c:  ldc.i4.1
      IL_000d:  ret
    } // end of method ConPtyClosePseudoConsoleSafeHandle::ReleaseHandle

  } // end of class ConPtyClosePseudoConsoleSafeHandle

  .field private bool disposed
  .field private initonly class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle '<Handle>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance bool 
          get_IsDisposed() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool EasyWindowsTerminalControl.Internals.PseudoConsole::disposed
    IL_0006:  ret
  } // end of method PseudoConsole::get_IsDisposed

  .method assembly hidebysig specialname 
          instance class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle 
          get_Handle() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle EasyWindowsTerminalControl.Internals.PseudoConsole::'<Handle>k__BackingField'
    IL_0006:  ret
  } // end of method PseudoConsole::get_Handle

  .method public hidebysig specialname instance native int 
          get_GetDangerousHandle() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle EasyWindowsTerminalControl.Internals.PseudoConsole::get_Handle()
    IL_0006:  callvirt   instance native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousGetHandle()
    IL_000b:  ret
  } // end of method PseudoConsole::get_GetDangerousHandle

  .method private hidebysig specialname rtspecialname 
          instance void  .ctor(class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle handle) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle EasyWindowsTerminalControl.Internals.PseudoConsole::'<Handle>k__BackingField'
    IL_000d:  ret
  } // end of method PseudoConsole::.ctor

  .method public hidebysig instance void 
          Resize(int32 width,
                 int32 height) cil managed
  {
    // Code size       45 (0x2d)
    .maxstack  3
    .locals init (valuetype Windows.Win32.System.Console.COORD V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle EasyWindowsTerminalControl.Internals.PseudoConsole::get_Handle()
    IL_0006:  callvirt   instance native int [System.Runtime]System.Runtime.InteropServices.SafeHandle::DangerousGetHandle()
    IL_000b:  ldloca.s   V_0
    IL_000d:  initobj    Windows.Win32.System.Console.COORD
    IL_0013:  ldloca.s   V_0
    IL_0015:  ldarg.1
    IL_0016:  conv.i2
    IL_0017:  stfld      int16 Windows.Win32.System.Console.COORD::X
    IL_001c:  ldloca.s   V_0
    IL_001e:  ldarg.2
    IL_001f:  conv.i2
    IL_0020:  stfld      int16 Windows.Win32.System.Console.COORD::Y
    IL_0025:  ldloc.0
    IL_0026:  call       int32 EasyWindowsTerminalControl.Internals.PseudoConsoleApi::ResizePseudoConsole(native int,
                                                                                                          valuetype Windows.Win32.System.Console.COORD)
    IL_002b:  pop
    IL_002c:  ret
  } // end of method PseudoConsole::Resize

  .method public hidebysig static class EasyWindowsTerminalControl.Internals.PseudoConsole 
          Create(class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle inputReadSide,
                 class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle outputWriteSide,
                 int32 width,
                 int32 height) cil managed
  {
    // Code size       75 (0x4b)
    .maxstack  5
    .locals init (int32 V_0,
             native int V_1,
             valuetype Windows.Win32.System.Console.COORD V_2)
    IL_0000:  ldarg.2
    IL_0001:  brfalse.s  IL_0006

    IL_0003:  ldarg.3
    IL_0004:  brtrue.s   IL_000e

    IL_0006:  ldc.i4.s   80
    IL_0008:  starg.s    width
    IL_000a:  ldc.i4.s   30
    IL_000c:  starg.s    height
    IL_000e:  ldloca.s   V_2
    IL_0010:  initobj    Windows.Win32.System.Console.COORD
    IL_0016:  ldloca.s   V_2
    IL_0018:  ldarg.2
    IL_0019:  conv.i2
    IL_001a:  stfld      int16 Windows.Win32.System.Console.COORD::X
    IL_001f:  ldloca.s   V_2
    IL_0021:  ldarg.3
    IL_0022:  conv.i2
    IL_0023:  stfld      int16 Windows.Win32.System.Console.COORD::Y
    IL_0028:  ldloc.2
    IL_0029:  ldarg.0
    IL_002a:  ldarg.1
    IL_002b:  ldc.i4.0
    IL_002c:  ldloca.s   V_1
    IL_002e:  call       int32 EasyWindowsTerminalControl.Internals.PseudoConsoleApi::CreatePseudoConsole(valuetype Windows.Win32.System.Console.COORD,
                                                                                                          class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle,
                                                                                                          class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle,
                                                                                                          uint32,
                                                                                                          native int&)
    IL_0033:  stloc.0
    IL_0034:  ldloc.0
    IL_0035:  brfalse.s  IL_003e

    IL_0037:  ldloc.0
    IL_0038:  newobj     instance void [Microsoft.Win32.Primitives]System.ComponentModel.Win32Exception::.ctor(int32)
    IL_003d:  throw

    IL_003e:  ldloc.1
    IL_003f:  ldc.i4.1
    IL_0040:  newobj     instance void EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle::.ctor(native int,
                                                                                                                                    bool)
    IL_0045:  newobj     instance void EasyWindowsTerminalControl.Internals.PseudoConsole::.ctor(class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle)
    IL_004a:  ret
  } // end of method PseudoConsole::Create

  .method private hidebysig instance void 
          Dispose(bool disposing) cil managed
  {
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool EasyWindowsTerminalControl.Internals.PseudoConsole::disposed
    IL_0006:  brtrue.s   IL_001d

    IL_0008:  ldarg.1
    IL_0009:  brfalse.s  IL_0016

    IL_000b:  ldarg.0
    IL_000c:  call       instance class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle EasyWindowsTerminalControl.Internals.PseudoConsole::get_Handle()
    IL_0011:  callvirt   instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::Dispose()
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  stfld      bool EasyWindowsTerminalControl.Internals.PseudoConsole::disposed
    IL_001d:  ret
  } // end of method PseudoConsole::Dispose

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void EasyWindowsTerminalControl.Internals.PseudoConsole::Dispose(bool)
    IL_0007:  ldarg.0
    IL_0008:  call       void [System.Runtime]System.GC::SuppressFinalize(object)
    IL_000d:  ret
  } // end of method PseudoConsole::Dispose

  .property instance bool IsDisposed()
  {
    .get instance bool EasyWindowsTerminalControl.Internals.PseudoConsole::get_IsDisposed()
  } // end of property PseudoConsole::IsDisposed
  .property instance class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle
          Handle()
  {
    .get instance class EasyWindowsTerminalControl.Internals.PseudoConsole/ConPtyClosePseudoConsoleSafeHandle EasyWindowsTerminalControl.Internals.PseudoConsole::get_Handle()
  } // end of property PseudoConsole::Handle
  .property instance native int GetDangerousHandle()
  {
    .get instance native int EasyWindowsTerminalControl.Internals.PseudoConsole::get_GetDangerousHandle()
  } // end of property PseudoConsole::GetDangerousHandle
} // end of class EasyWindowsTerminalControl.Internals.PseudoConsole

.class public abstract auto ansi sealed beforefieldinit EasyWindowsTerminalControl.Internals.PseudoConsoleApi
       extends [System.Runtime]System.Object
{
  .method assembly hidebysig static pinvokeimpl("conpty.dll" lasterr winapi) 
          int32  CreatePseudoConsole(valuetype Windows.Win32.System.Console.COORD size,
                                     class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle hInput,
                                     class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle hOutput,
                                     uint32 dwFlags,
                                     [out] native int& phPC) cil managed preservesig
  {
  }
  .method assembly hidebysig static pinvokeimpl("conpty.dll" lasterr winapi) 
          int32  ClosePseudoConsole(native int hPC) cil managed preservesig
  {
  }
  .method assembly hidebysig static pinvokeimpl("conpty.dll" lasterr winapi) 
          int32  ResizePseudoConsole(native int hPC,
                                     valuetype Windows.Win32.System.Console.COORD size) cil managed preservesig
  {
  }
} // end of class EasyWindowsTerminalControl.Internals.PseudoConsoleApi

.class public auto ansi beforefieldinit EasyWindowsTerminalControl.Internals.PseudoConsolePipe
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .field public initonly class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle ReadSide
  .field public initonly class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle WriteSide
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       57 (0x39)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldflda     class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.Internals.PseudoConsolePipe::ReadSide
    IL_000c:  ldarg.0
    IL_000d:  ldflda     class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.Internals.PseudoConsolePipe::WriteSide
    IL_0012:  ldloca.s   V_0
    IL_0014:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.0
    IL_001c:  call       valuetype Windows.Win32.Foundation.BOOL Windows.Win32.PInvoke::CreatePipe(class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle&,
                                                                                                   class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle&,
                                                                                                   valuetype [System.Runtime]System.Nullable`1<valuetype Windows.Win32.Security.SECURITY_ATTRIBUTES>,
                                                                                                   uint32)
    IL_0021:  call       bool Windows.Win32.Foundation.BOOL::op_Implicit(valuetype Windows.Win32.Foundation.BOOL)
    IL_0026:  brtrue.s   IL_0038

    IL_0028:  call       int32 [System.Runtime.InteropServices]System.Runtime.InteropServices.Marshal::GetLastWin32Error()
    IL_002d:  ldstr      "failed to create pipe"
    IL_0032:  newobj     instance void [Microsoft.Win32.Primitives]System.ComponentModel.Win32Exception::.ctor(int32,
                                                                                                               string)
    IL_0037:  throw

    IL_0038:  ret
  } // end of method PseudoConsolePipe::.ctor

  .method private hidebysig instance void 
          Dispose(bool disposing) cil managed
  {
    // Code size       37 (0x25)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brfalse.s  IL_0024

    IL_0003:  ldarg.0
    IL_0004:  ldfld      class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.Internals.PseudoConsolePipe::ReadSide
    IL_0009:  dup
    IL_000a:  brtrue.s   IL_000f

    IL_000c:  pop
    IL_000d:  br.s       IL_0014

    IL_000f:  call       instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::Dispose()
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Runtime]Microsoft.Win32.SafeHandles.SafeFileHandle EasyWindowsTerminalControl.Internals.PseudoConsolePipe::WriteSide
    IL_001a:  dup
    IL_001b:  brtrue.s   IL_001f

    IL_001d:  pop
    IL_001e:  ret

    IL_001f:  call       instance void [System.Runtime]System.Runtime.InteropServices.SafeHandle::Dispose()
    IL_0024:  ret
  } // end of method PseudoConsolePipe::Dispose

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       instance void EasyWindowsTerminalControl.Internals.PseudoConsolePipe::Dispose(bool)
    IL_0007:  ldarg.0
    IL_0008:  call       void [System.Runtime]System.GC::SuppressFinalize(object)
    IL_000d:  ret
  } // end of method PseudoConsolePipe::Dispose

} // end of class EasyWindowsTerminalControl.Internals.PseudoConsolePipe


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file termpty.res
