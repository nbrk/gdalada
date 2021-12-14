pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

package Gdalada.CPL is
   
   subtype GInt32 is Int;  -- ../cpl_port.h:205

   subtype GUInt32 is Unsigned;  -- ../cpl_port.h:207

   subtype GInt16 is Short;  -- ../cpl_port.h:211

   subtype GUInt16 is Unsigned_Short;  -- ../cpl_port.h:213

   subtype GByte is Unsigned_Char;  -- ../cpl_port.h:215

   subtype GBool is Int;  -- ../cpl_port.h:223

   subtype GIntBig is Long_Long_Integer;  -- ../cpl_port.h:248

   subtype GUIntBig is Unsigned_Long_Long;  -- ../cpl_port.h:251

   subtype GInt64 is GIntBig;  -- ../cpl_port.h:267

   subtype GUInt64 is GUIntBig;  -- ../cpl_port.h:269

   subtype GPtrDiff_T is GIntBig;  -- ../cpl_port.h:286

   type Stat64 is null record;   -- incomplete struct

   type GDALProgressFunc is access function
     (Arg1 : Double;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : System.Address) return Int
     with Convention => C;  -- ../cpl_progress.h:37

   type CPLErr is 
     (CE_None,
      CE_Debug,
      CE_Warning,
      CE_Failure,
      CE_Fatal)
     with Convention => C;  -- ../cpl_error.h:59

   subtype CPLErrorNum is Int;  -- ../cpl_error.h:94
                                
   subtype Vsi_L_Offset is GUIntBig;  -- ../cpl_vsi.h:140
   
   type VSIDIR is null record;   -- incomplete struct
   type VSIDIREntry;
   type VSIDIREntry is record
      PszName     : Interfaces.C.Strings.Chars_Ptr;  -- ../cpl_vsi.h:333
      NMode       : aliased Int;  -- ../cpl_vsi.h:335
      NSize       : aliased Vsi_L_Offset;  -- ../cpl_vsi.h:337
      NMTime      : aliased GIntBig;  -- ../cpl_vsi.h:339
      BModeKnown  : aliased Char;  -- ../cpl_vsi.h:341
      BSizeKnown  : aliased Char;  -- ../cpl_vsi.h:343
      BMTimeKnown : aliased Char;  -- ../cpl_vsi.h:345
      PapszExtra  : System.Address;  -- ../cpl_vsi.h:347
   end record
     with Convention => C_Pass_By_Copy;  -- ../cpl_vsi.h:330
   
   type VSIWriteFunction is access function
     (Arg1 : System.Address;
      Arg2 : Size_T;
      Arg3 : Size_T;
      Arg4 : Interfaces.C_Streams.FILEs) return Size_T
     with Convention => C;  -- ../cpl_vsi.h:427
   
   --  subtype VSIStatBuf is X86_64_Linux_Gnu_Bits_Stat_H.Stat;  -- ../cpl_vsi.h:110
   type VSIStatBuf is null record; -- FIXME
                                   
   subtype VSIStatBufL is Stat64; 
   
   type VSIFilesystemPluginStatCallback is access function
     (Arg1 : System.Address;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : access VSIStatBufL;
      Arg4 : Int) return Int
     with Convention => C;  -- ../cpl_vsi.h:434

                                      
   type VSIFilesystemPluginUnlinkCallback is access function (Arg1 : System.Address; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int
     with Convention => C;  -- ../cpl_vsi.h:439

   type VSIFilesystemPluginRenameCallback is access function
     (Arg1 : System.Address;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr) return Int
     with Convention => C;  -- ../cpl_vsi.h:444

   type VSIFilesystemPluginMkdirCallback is access function
     (Arg1 : System.Address;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Long) return Int
     with Convention => C;  -- ../cpl_vsi.h:449

   type VSIFilesystemPluginRmdirCallback is access function (Arg1 : System.Address; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int
     with Convention => C;  -- ../cpl_vsi.h:454

   type VSIFilesystemPluginReadDirCallback is access function
     (Arg1 : System.Address;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int) return System.Address
     with Convention => C;  -- ../cpl_vsi.h:459

   type VSIFilesystemPluginSiblingFilesCallback is access function (Arg1 : System.Address; Arg2 : Interfaces.C.Strings.Chars_Ptr) return System.Address
     with Convention => C;  -- ../cpl_vsi.h:468

   type VSIFilesystemPluginOpenCallback is access function
     (Arg1 : System.Address;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr) return System.Address
     with Convention => C;  -- ../cpl_vsi.h:474
                            

   type VSIFilesystemPluginTellCallback is access function (Arg1 : System.Address) return Vsi_L_Offset
     with Convention => C;  -- ../cpl_vsi.h:479

   type VSIFilesystemPluginSeekCallback is access function
     (Arg1 : System.Address;
      Arg2 : Vsi_L_Offset;
      Arg3 : Int) return Int
     with Convention => C;  -- ../cpl_vsi.h:484

   type VSIFilesystemPluginReadCallback is access function
     (Arg1 : System.Address;
      Arg2 : System.Address;
      Arg3 : Size_T;
      Arg4 : Size_T) return Size_T
     with Convention => C;  -- ../cpl_vsi.h:490

   type VSIFilesystemPluginReadMultiRangeCallback is access function
     (Arg1 : System.Address;
      Arg2 : Int;
      Arg3 : System.Address;
      Arg4 : access Vsi_L_Offset;
      Arg5 : access Size_T) return Int
     with Convention => C;  -- ../cpl_vsi.h:495

   type VSIRangeStatus is 
     (VSI_RANGE_STATUS_UNKNOWN,
      VSI_RANGE_STATUS_DATA,
      VSI_RANGE_STATUS_HOLE)
     with Convention => C;  -- ../cpl_vsi.h:181
   
   type VSIFilesystemPluginGetRangeStatusCallback is access function
     (Arg1 : System.Address;
      Arg2 : Vsi_L_Offset;
      Arg3 : Vsi_L_Offset) return VSIRangeStatus
     with Convention => C;  -- ../cpl_vsi.h:501

   type VSIFilesystemPluginEofCallback is access function (Arg1 : System.Address) return Int
     with Convention => C;  -- ../cpl_vsi.h:506

   type VSIFilesystemPluginWriteCallback is access function
     (Arg1 : System.Address;
      Arg2 : System.Address;
      Arg3 : Size_T;
      Arg4 : Size_T) return Size_T
     with Convention => C;  -- ../cpl_vsi.h:511

   type VSIFilesystemPluginFlushCallback is access function (Arg1 : System.Address) return Int
     with Convention => C;  -- ../cpl_vsi.h:516

   type VSIFilesystemPluginTruncateCallback is access function (Arg1 : System.Address; Arg2 : Vsi_L_Offset) return Int
     with Convention => C;  -- ../cpl_vsi.h:520

   type VSIFilesystemPluginCloseCallback is access function (Arg1 : System.Address) return Int
     with Convention => C;  -- ../cpl_vsi.h:525

   type VSIFilesystemPluginCallbacksStruct is record
      PUserData        : System.Address;  -- ../cpl_vsi.h:538
      Stat             : VSIFilesystemPluginStatCallback;  -- ../cpl_vsi.h:539
      Unlink           : VSIFilesystemPluginUnlinkCallback;  -- ../cpl_vsi.h:540
      Rename           : VSIFilesystemPluginRenameCallback;  -- ../cpl_vsi.h:541
      Mkdir            : VSIFilesystemPluginMkdirCallback;  -- ../cpl_vsi.h:542
      Rmdir            : VSIFilesystemPluginRmdirCallback;  -- ../cpl_vsi.h:543
      Read_Dir         : VSIFilesystemPluginReadDirCallback;  -- ../cpl_vsi.h:544
      Open             : VSIFilesystemPluginOpenCallback;  -- ../cpl_vsi.h:545
      Tell             : VSIFilesystemPluginTellCallback;  -- ../cpl_vsi.h:546
      Seek             : VSIFilesystemPluginSeekCallback;  -- ../cpl_vsi.h:547
      Read             : VSIFilesystemPluginReadCallback;  -- ../cpl_vsi.h:548
      Read_Multi_Range : VSIFilesystemPluginReadMultiRangeCallback;  -- ../cpl_vsi.h:549
      Get_Range_Status : VSIFilesystemPluginGetRangeStatusCallback;  -- ../cpl_vsi.h:550
      Eof              : VSIFilesystemPluginEofCallback;  -- ../cpl_vsi.h:551
      Write            : VSIFilesystemPluginWriteCallback;  -- ../cpl_vsi.h:552
      Flush            : VSIFilesystemPluginFlushCallback;  -- ../cpl_vsi.h:553
      Truncate         : VSIFilesystemPluginTruncateCallback;  -- ../cpl_vsi.h:554
      Close            : VSIFilesystemPluginCloseCallback;  -- ../cpl_vsi.h:555
      NBufferSize      : aliased Size_T;  -- ../cpl_vsi.h:556
      NCacheSize       : aliased Size_T;  -- ../cpl_vsi.h:557
      Sibling_Files    : VSIFilesystemPluginSiblingFilesCallback;  -- ../cpl_vsi.h:558
   end record
     with Convention => C_Pass_By_Copy;  -- ../cpl_vsi.h:564
                                         
   subtype VSILFILE is Interfaces.C_Streams.FILEs;  -- ../cpl_vsi.h:156
                                                    
   Subtype CSLConstList is System.Address;  -- ../cpl_port.h:1216
                                             
   type CPLFileFinder is access function (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr
     with Convention => C;  -- ../cpl_conv.h:183
   
   type CPLSharedFileInfo is record
      Fp          : Interfaces.C_Streams.FILEs;  -- ../cpl_conv.h:207
      NRefCount   : aliased Int;  -- ../cpl_conv.h:208
      BLarge      : aliased Int;  -- ../cpl_conv.h:209
      PszFilename : Interfaces.C.Strings.Chars_Ptr;  -- ../cpl_conv.h:210
      PszAccess   : Interfaces.C.Strings.Chars_Ptr;  -- ../cpl_conv.h:211
   end record
     with Convention => C_Pass_By_Copy;  -- ../cpl_conv.h:212
                                         
   type CPLErrorHandler is access procedure
     (Arg1 : CPLErr;
      Arg2 : CPLErrorNum;
      Arg3 : Interfaces.C.Strings.Chars_Ptr)
     with Convention => C;  -- ../cpl_error.h:156

   type CPLThreadFunc is access procedure (Arg1 : System.Address)
     with Convention => C;  -- ../cpl_multiproc.h:57
                            
   type CPLXMLNodeType is 
     (CXT_Element,
      CXT_Text,
      CXT_Attribute,
      CXT_Comment,
      CXT_Literal)
     with Convention => C;  -- ../cpl_minixml.h:51

   type CPLXMLNode;
   type CPLXMLNode is record
      EType    : aliased CPLXMLNodeType;  -- ../cpl_minixml.h:77
      PszValue : Interfaces.C.Strings.Chars_Ptr;  -- ../cpl_minixml.h:100
      PsNext   : access CPLXMLNode;  -- ../cpl_minixml.h:109
      PsChild  : access CPLXMLNode;  -- ../cpl_minixml.h:121
   end record
     with Convention => C_Pass_By_Copy;  -- ../cpl_minixml.h:69
   

   type CPLCondTimedWaitReason is 
     (COND_TIMED_WAIT_COND,
      COND_TIMED_WAIT_TIME_OUT,
      COND_TIMED_WAIT_OTHER)
     with Convention => C;  -- ../cpl_multiproc.h:93
                            
   type U_CPLLock is null record;   -- incomplete struct

   subtype CPLLock is U_CPLLock;  -- ../cpl_multiproc.h:111

   type CPLLockType is 
     (LOCK_RECURSIVE_MUTEX,
      LOCK_ADAPTIVE_MUTEX,
      LOCK_SPIN)
     with Convention => C;  -- ../cpl_multiproc.h:121
   
   type CPLTLSFreeFunc is access procedure (Arg1 : System.Address)
     with Convention => C;  -- ../cpl_multiproc.h:242
   
   type CPLVirtualMem is null record;   -- incomplete struct

   type CPLVirtualMemCachePageCbk is access procedure
     (Arg1 : access CPLVirtualMem;
      Arg2 : Size_T;
      Arg3 : System.Address;
      Arg4 : Size_T;
      Arg5 : System.Address)
     with Convention => C;  -- ../cpl_virtualmem.h:74

   type CPLVirtualMemUnCachePageCbk is access procedure
     (Arg1 : access CPLVirtualMem;
      Arg2 : Size_T;
      Arg3 : System.Address;
      Arg4 : Size_T;
      Arg5 : System.Address)
     with Convention => C;  -- ../cpl_virtualmem.h:90

   type CPLVirtualMemFreeUserData is access procedure (Arg1 : System.Address)
     with Convention => C;  -- ../cpl_virtualmem.h:99

   type CPLVirtualMemAccessMode is 
     (VIRTUALMEM_READONLY,
      VIRTUALMEM_READONLY_ENFORCED,
      VIRTUALMEM_READWRITE)
     with Convention => C;  -- ../cpl_virtualmem.h:113
   
   --  unsupported macro: CPLFree VSIFree
   procedure CPLVerifyConfiguration  -- ../cpl_conv.h:52
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVerifyConfiguration";

   function CPLGetConfigOption (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:56
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetConfigOption";

   function CPLGetThreadLocalConfigOption (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:58
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetThreadLocalConfigOption";

   procedure CPLSetConfigOption (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_conv.h:59
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetConfigOption";

   procedure CPLSetThreadLocalConfigOption (PszKey : Interfaces.C.Strings.Chars_Ptr; PszValue : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_conv.h:60
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetThreadLocalConfigOption";

   procedure CPLFreeConfig  -- ../cpl_conv.h:63
     with Import => True, 
     Convention => C, 
     External_Name => "CPLFreeConfig";

   function CPLGetConfigOptions return System.Address  -- ../cpl_conv.h:65
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetConfigOptions";

   procedure CPLSetConfigOptions (PapszConfigOptions : System.Address)  -- ../cpl_conv.h:66
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetConfigOptions";

   function CPLGetThreadLocalConfigOptions return System.Address  -- ../cpl_conv.h:67
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetThreadLocalConfigOptions";

   procedure CPLSetThreadLocalConfigOptions (PapszConfigOptions : System.Address)  -- ../cpl_conv.h:68
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetThreadLocalConfigOptions";

   procedure CPLLoadConfigOptionsFromFile (PszFilename : Interfaces.C.Strings.Chars_Ptr; BOverrideEnvVars : Int)  -- ../cpl_conv.h:69
     with Import => True, 
     Convention => C, 
     External_Name => "CPLLoadConfigOptionsFromFile";

   procedure CPLLoadConfigOptionsFromPredefinedFiles  -- ../cpl_conv.h:70
     with Import => True, 
     Convention => C, 
     External_Name => "CPLLoadConfigOptionsFromPredefinedFiles";

   function CPLMalloc (Arg1 : Size_T) return System.Address  -- ../cpl_conv.h:76
     with Import => True, 
     Convention => C, 
     External_Name => "CPLMalloc";

   function CPLCalloc (Arg1 : Size_T; Arg2 : Size_T) return System.Address  -- ../cpl_conv.h:77
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCalloc";

   function CPLRealloc (Arg1 : System.Address; Arg2 : Size_T) return System.Address  -- ../cpl_conv.h:78
     with Import => True, 
     Convention => C, 
     External_Name => "CPLRealloc";

   function CPLStrdup (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:79
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStrdup";

   function CPLStrlwr (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:80
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStrlwr";

   function CPLFGets
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Int;
      Arg3 : Interfaces.C_Streams.FILEs) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:88
     with Import => True, 
     Convention => C, 
     External_Name => "CPLFGets";

   function CPLReadLine (Arg1 : Interfaces.C_Streams.FILEs) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:89
     with Import => True, 
     Convention => C, 
     External_Name => "CPLReadLine";

                                                    
   function CPLReadLineL (Arg1 : VSILFILE) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:90
     with Import => True, 
     Convention => C, 
     External_Name => "CPLReadLineL";

                                             
   function CPLReadLine2L
     (Arg1 : VSILFILE;
      Arg2 : Int;
      Arg3 : CSLConstList) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:91
     with Import => True, 
     Convention => C, 
     External_Name => "CPLReadLine2L";

   function CPLReadLine3L
     (Arg1 : VSILFILE;
      Arg2 : Int;
      Arg3 : access Int;
      Arg4 : CSLConstList) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:92
     with Import => True, 
     Convention => C, 
     External_Name => "CPLReadLine3L";

   function CPLAtof (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Double  -- ../cpl_conv.h:98
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAtof";

   function CPLAtofDelim (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Char) return Double  -- ../cpl_conv.h:99
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAtofDelim";

   function CPLStrtod (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : System.Address) return Double  -- ../cpl_conv.h:100
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStrtod";

   function CPLStrtodDelim
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : System.Address;
      Arg3 : Char) return Double  -- ../cpl_conv.h:101
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStrtodDelim";

   function CPLStrtof (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : System.Address) return Float  -- ../cpl_conv.h:102
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStrtof";

   function CPLStrtofDelim
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : System.Address;
      Arg3 : Char) return Float  -- ../cpl_conv.h:103
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStrtofDelim";

   function CPLAtofM (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Double  -- ../cpl_conv.h:109
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAtofM";

   function CPLScanString
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:114
     with Import => True, 
     Convention => C, 
     External_Name => "CPLScanString";

   function CPLScanDouble (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Int) return Double  -- ../cpl_conv.h:115
     with Import => True, 
     Convention => C, 
     External_Name => "CPLScanDouble";

   function CPLScanLong (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Int) return Long  -- ../cpl_conv.h:116
     with Import => True, 
     Convention => C, 
     External_Name => "CPLScanLong";

   function CPLScanULong (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Int) return Unsigned_Long  -- ../cpl_conv.h:117
     with Import => True, 
     Convention => C, 
     External_Name => "CPLScanULong";

   function CPLScanUIntBig (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Int) return GUIntBig  -- ../cpl_conv.h:118
     with Import => True, 
     Convention => C, 
     External_Name => "CPLScanUIntBig";

   function CPLAtoGIntBig (PszString : Interfaces.C.Strings.Chars_Ptr) return GIntBig  -- ../cpl_conv.h:119
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAtoGIntBig";

   function CPLAtoGIntBigEx
     (PszString  : Interfaces.C.Strings.Chars_Ptr;
      BWarn      : Int;
      PbOverflow : access Int) return GIntBig  -- ../cpl_conv.h:120
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAtoGIntBigEx";

   function CPLScanPointer (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Int) return System.Address  -- ../cpl_conv.h:121
     with Import => True, 
     Convention => C, 
     External_Name => "CPLScanPointer";

   function CPLPrintString
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int) return Int  -- ../cpl_conv.h:126
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPrintString";

   function CPLPrintStringFill
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int) return Int  -- ../cpl_conv.h:127
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPrintStringFill";

   function CPLPrintInt32
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : GInt32;
      Arg3 : Int) return Int  -- ../cpl_conv.h:128
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPrintInt32";

   function CPLPrintUIntBig
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : GUIntBig;
      Arg3 : Int) return Int  -- ../cpl_conv.h:129
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPrintUIntBig";

   function CPLPrintDouble
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Double;
      Arg4 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_conv.h:130
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPrintDouble";

   --  function CPLPrintTime
   --    (Arg1 : Interfaces.C.Strings.Chars_Ptr;
   --     Arg2 : Int;
   --     Arg3 : Interfaces.C.Strings.Chars_Ptr;
   --     Arg4 : access constant X86_64_Linux_Gnu_Bits_Types_Struct_Tm_H.Tm;
   --     Arg5 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_conv.h:131
   --    with Import => True,
   --    Convention => C,
   --    External_Name => "CPLPrintTime";

   function CPLPrintPointer
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : System.Address;
      Arg3 : Int) return Int  -- ../cpl_conv.h:133
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPrintPointer";

   function CPLGetSymbol (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr) return System.Address  -- ../cpl_conv.h:139
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetSymbol";

   function CPLGetExecPath (PszPathBuf : Interfaces.C.Strings.Chars_Ptr; NMaxLength : Int) return Int  -- ../cpl_conv.h:144
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetExecPath";

   function CPLGetPath (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:149
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetPath";

   function CPLGetDirname (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:150
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetDirname";

   function CPLGetFilename (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:151
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetFilename";

   function CPLGetBasename (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:152
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetBasename";

   function CPLGetExtension (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:153
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetExtension";

   function CPLGetCurrentDir return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:154
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetCurrentDir";

   function CPLFormFilename
     (PszPath      : Interfaces.C.Strings.Chars_Ptr;
      PszBasename  : Interfaces.C.Strings.Chars_Ptr;
      PszExtension : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:155
     with Import => True, 
     Convention => C, 
     External_Name => "CPLFormFilename";

   function CPLFormCIFilename
     (PszPath      : Interfaces.C.Strings.Chars_Ptr;
      PszBasename  : Interfaces.C.Strings.Chars_Ptr;
      PszExtension : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:158
     with Import => True, 
     Convention => C, 
     External_Name => "CPLFormCIFilename";

   function CPLResetExtension (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:161
     with Import => True, 
     Convention => C, 
     External_Name => "CPLResetExtension";

   function CPLProjectRelativeFilename (PszProjectDir : Interfaces.C.Strings.Chars_Ptr; PszSecondaryFilename : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:162
     with Import => True, 
     Convention => C, 
     External_Name => "CPLProjectRelativeFilename";

   function CPLIsFilenameRelative (PszFilename : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_conv.h:164
     with Import => True, 
     Convention => C, 
     External_Name => "CPLIsFilenameRelative";

   function CPLExtractRelativePath
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : access Int) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:165
     with Import => True, 
     Convention => C, 
     External_Name => "CPLExtractRelativePath";

   function CPLCleanTrailingSlash (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:166
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCleanTrailingSlash";

   function CPLCorrespondingPaths
     (PszOldFilename : Interfaces.C.Strings.Chars_Ptr;
      PszNewFilename : Interfaces.C.Strings.Chars_Ptr;
      PapszFileList  : System.Address) return System.Address  -- ../cpl_conv.h:167
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCorrespondingPaths";

   function CPLCheckForFile (PszFilename : Interfaces.C.Strings.Chars_Ptr; PapszSiblingList : System.Address) return Int  -- ../cpl_conv.h:170
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCheckForFile";

   function CPLGenerateTempFilename (PszStem : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:172
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGenerateTempFilename";

   function CPLExpandTilde (PszFilename : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:173
     with Import => True, 
     Convention => C, 
     External_Name => "CPLExpandTilde";

   function CPLGetHomeDir return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:174
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetHomeDir";

   function CPLLaunderForFilename (PszName : Interfaces.C.Strings.Chars_Ptr; PszOutputPath : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:175
     with Import => True, 
     Convention => C, 
     External_Name => "CPLLaunderForFilename";


   function CPLFindFile (PszClass : Interfaces.C.Strings.Chars_Ptr; PszBasename : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:185
     with Import => True, 
     Convention => C, 
     External_Name => "CPLFindFile";

   function CPLDefaultFindFile (PszClass : Interfaces.C.Strings.Chars_Ptr; PszBasename : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:187
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDefaultFindFile";

   procedure CPLPushFileFinder (PfnFinder : CPLFileFinder)  -- ../cpl_conv.h:189
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPushFileFinder";

   function CPLPopFileFinder return CPLFileFinder  -- ../cpl_conv.h:190
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPopFileFinder";

   procedure CPLPushFinderLocation (Arg1 : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_conv.h:191
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPushFinderLocation";

   procedure CPLPopFinderLocation  -- ../cpl_conv.h:192
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPopFinderLocation";

   procedure CPLFinderClean  -- ../cpl_conv.h:193
     with Import => True, 
     Convention => C, 
     External_Name => "CPLFinderClean";

   function CPLStat (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : access VSIStatBuf) return Int  -- ../cpl_conv.h:198
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStat";

   function CPLOpenShared
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int) return Interfaces.C_Streams.FILEs  -- ../cpl_conv.h:214
     with Import => True, 
     Convention => C, 
     External_Name => "CPLOpenShared";

   procedure CPLCloseShared (Arg1 : Interfaces.C_Streams.FILEs)  -- ../cpl_conv.h:215
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCloseShared";

   function CPLGetSharedList (Arg1 : access Int) return access CPLSharedFileInfo  -- ../cpl_conv.h:216
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetSharedList";

   procedure CPLDumpSharedList (Arg1 : Interfaces.C_Streams.FILEs)  -- ../cpl_conv.h:217
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDumpSharedList";

   procedure CPLCleanupSharedFileMutex  -- ../cpl_conv.h:219
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCleanupSharedFileMutex";

   function CPLDMSToDec (C_Is : Interfaces.C.Strings.Chars_Ptr) return Double  -- ../cpl_conv.h:225
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDMSToDec";

   function CPLDecToDMS
     (DfAngle    : Double;
      PszAxis    : Interfaces.C.Strings.Chars_Ptr;
      NPrecision : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:226
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDecToDMS";

   function CPLPackedDMSToDec (Arg1 : Double) return Double  -- ../cpl_conv.h:228
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPackedDMSToDec";

   function CPLDecToPackedDMS (DfDec : Double) return Double  -- ../cpl_conv.h:229
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDecToPackedDMS";

   procedure CPLStringToComplex
     (PszString : Interfaces.C.Strings.Chars_Ptr;
      PdfReal   : access Double;
      PdfImag   : access Double)  -- ../cpl_conv.h:231
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStringToComplex";

   function CPLUnlinkTree (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_conv.h:237
     with Import => True, 
     Convention => C, 
     External_Name => "CPLUnlinkTree";

   function CPLCopyFile (PszNewPath : Interfaces.C.Strings.Chars_Ptr; PszOldPath : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_conv.h:238
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCopyFile";

   function CPLCopyTree (PszNewPath : Interfaces.C.Strings.Chars_Ptr; PszOldPath : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_conv.h:239
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCopyTree";

   function CPLMoveFile (PszNewPath : Interfaces.C.Strings.Chars_Ptr; PszOldPath : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_conv.h:240
     with Import => True, 
     Convention => C, 
     External_Name => "CPLMoveFile";

   function CPLSymlink
     (PszOldPath   : Interfaces.C.Strings.Chars_Ptr;
      PszNewPath   : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions : CSLConstList) return Int  -- ../cpl_conv.h:241
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSymlink";

   function CPLCreateZip (PszZipFilename : Interfaces.C.Strings.Chars_Ptr; PapszOptions : System.Address) return System.Address  -- ../cpl_conv.h:250
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateZip";

   function CPLCreateFileInZip
     (HZip         : System.Address;
      PszFilename  : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions : System.Address) return CPLErr  -- ../cpl_conv.h:251
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateFileInZip";

   function CPLWriteFileInZip
     (HZip        : System.Address;
      PBuffer     : System.Address;
      NBufferSize : Int) return CPLErr  -- ../cpl_conv.h:253
     with Import => True, 
     Convention => C, 
     External_Name => "CPLWriteFileInZip";

   function CPLCloseFileInZip (HZip : System.Address) return CPLErr  -- ../cpl_conv.h:254
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCloseFileInZip";

   function CPLCloseZip (HZip : System.Address) return CPLErr  -- ../cpl_conv.h:255
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCloseZip";

   function CPLZLibDeflate
     (Ptr                : System.Address;
      NBytes             : Size_T;
      NLevel             : Int;
      Outptr             : System.Address;
      NOutAvailableBytes : Size_T;
      PnOutBytes         : access Size_T) return System.Address  -- ../cpl_conv.h:261
     with Import => True, 
     Convention => C, 
     External_Name => "CPLZLibDeflate";

   function CPLZLibInflate
     (Ptr                : System.Address;
      NBytes             : Size_T;
      Outptr             : System.Address;
      NOutAvailableBytes : Size_T;
      PnOutBytes         : access Size_T) return System.Address  -- ../cpl_conv.h:264
     with Import => True, 
     Convention => C, 
     External_Name => "CPLZLibInflate";

   function CPLValidateXML
     (PszXMLFilename : Interfaces.C.Strings.Chars_Ptr;
      PszXSDFilename : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions   : CSLConstList) return Int  -- ../cpl_conv.h:271
     with Import => True, 
     Convention => C, 
     External_Name => "CPLValidateXML";

   function CPLsetlocale (Category : Int; Locale : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_conv.h:278
     with Import => True, 
     Convention => C, 
     External_Name => "CPLsetlocale";

   procedure CPLCleanupSetlocaleMutex  -- ../cpl_conv.h:280
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCleanupSetlocaleMutex";

   function CPLIsPowerOfTwo (I : Unsigned) return Int  -- ../cpl_conv.h:288
     with Import => True, 
     Convention => C, 
     External_Name => "CPLIsPowerOfTwo";

   CPLE_None : constant := 0;  --  ../cpl_error.h:97

   CPLE_AppDefined : constant := 1;  --  ../cpl_error.h:99

   CPLE_OutOfMemory : constant := 2;  --  ../cpl_error.h:101

   CPLE_FileIO : constant := 3;  --  ../cpl_error.h:103

   CPLE_OpenFailed : constant := 4;  --  ../cpl_error.h:105

   CPLE_IllegalArg : constant := 5;  --  ../cpl_error.h:107

   CPLE_NotSupported : constant := 6;  --  ../cpl_error.h:109

   CPLE_AssertionFailed : constant := 7;  --  ../cpl_error.h:111

   CPLE_NoWriteAccess : constant := 8;  --  ../cpl_error.h:113

   CPLE_UserInterrupt : constant := 9;  --  ../cpl_error.h:115

   CPLE_ObjectNull : constant := 10;  --  ../cpl_error.h:117

   CPLE_HttpResponse : constant := 11;  --  ../cpl_error.h:123

   CPLE_AWSBucketNotFound : constant := 12;  --  ../cpl_error.h:125

   CPLE_AWSObjectNotFound : constant := 13;  --  ../cpl_error.h:127

   CPLE_AWSAccessDenied : constant := 14;  --  ../cpl_error.h:129

   CPLE_AWSInvalidCredentials : constant := 15;  --  ../cpl_error.h:131

   CPLE_AWSSignatureDoesNotMatch : constant := 16;  --  ../cpl_error.h:133

   CPLE_AWSError : constant := 17;  --  ../cpl_error.h:135
   --  arg-macro: function CPLAssertAlwaysEval (expr)
   --    return void)(expr;
   --  unsupported macro: VALIDATE_POINTER_ERR CE_Failure
   --  unsupported macro: VALIDATE_POINTER0(ptr,func) do { if( CPL_NULLPTR == ptr ) { CPLErr const ret = VALIDATE_POINTER_ERR; CPLError( ret, CPLE_ObjectNull, "Pointer \'%s\' is NULL in \'%s\'.\n", #ptr, (func)); return; }} while(0)
   --  unsupported macro: VALIDATE_POINTER1(ptr,func,rc) do { if( CPL_NULLPTR == ptr ) { CPLErr const ret = VALIDATE_POINTER_ERR; CPLError( ret, CPLE_ObjectNull, "Pointer \'%s\' is NULL in \'%s\'.\n", #ptr, (func)); return (rc); }} while(0)

   procedure CPLError
     (EErrClass : CPLErr;
      Err_No    : CPLErrorNum;
      Fmt       : Interfaces.C.Strings.Chars_Ptr  -- , ...
     )  -- ../cpl_error.h:141
       with Import => True, 
       Convention => C, 
       External_Name => "CPLError";

   procedure CPLErrorV
     (Arg1 : CPLErr;
      Arg2 : CPLErrorNum;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : access System.Address)  -- ../cpl_error.h:142
     with Import => True, 
     Convention => C, 
     External_Name => "CPLErrorV";

   procedure CPLEmergencyError (Arg1 : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_error.h:143
     with Import => True, 
     Convention => C, 
     External_Name => "CPLEmergencyError";

   procedure CPLErrorReset  -- ../cpl_error.h:144
     with Import => True, 
     Convention => C, 
     External_Name => "CPLErrorReset";

   function CPLGetLastErrorNo return CPLErrorNum  -- ../cpl_error.h:145
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetLastErrorNo";

   function CPLGetLastErrorType return CPLErr  -- ../cpl_error.h:146
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetLastErrorType";

   function CPLGetLastErrorMsg return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_error.h:147
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetLastErrorMsg";

   function CPLGetErrorCounter return GUInt32  -- ../cpl_error.h:148
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetErrorCounter";

   function CPLGetErrorHandlerUserData return System.Address  -- ../cpl_error.h:149
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetErrorHandlerUserData";

   procedure CPLErrorSetState
     (EErrClass : CPLErr;
      Err_No    : CPLErrorNum;
      PszMsg    : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_error.h:150
     with Import => True, 
     Convention => C, 
     External_Name => "CPLErrorSetState";

   procedure CPLCleanupErrorMutex  -- ../cpl_error.h:152
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCleanupErrorMutex";

   procedure CPLLoggingErrorHandler
     (Arg1 : CPLErr;
      Arg2 : CPLErrorNum;
      Arg3 : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_error.h:158
     with Import => True, 
     Convention => C, 
     External_Name => "CPLLoggingErrorHandler";

   procedure CPLDefaultErrorHandler
     (Arg1 : CPLErr;
      Arg2 : CPLErrorNum;
      Arg3 : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_error.h:159
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDefaultErrorHandler";

   procedure CPLQuietErrorHandler
     (Arg1 : CPLErr;
      Arg2 : CPLErrorNum;
      Arg3 : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_error.h:160
     with Import => True, 
     Convention => C, 
     External_Name => "CPLQuietErrorHandler";

   procedure CPLTurnFailureIntoWarning (BOn : Int)  -- ../cpl_error.h:161
     with Import => True, 
     Convention => C, 
     External_Name => "CPLTurnFailureIntoWarning";

   function CPLSetErrorHandler (Arg1 : CPLErrorHandler) return CPLErrorHandler  -- ../cpl_error.h:163
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetErrorHandler";

   function CPLSetErrorHandlerEx (Arg1 : CPLErrorHandler; Arg2 : System.Address) return CPLErrorHandler  -- ../cpl_error.h:164
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetErrorHandlerEx";

   procedure CPLPushErrorHandler (Arg1 : CPLErrorHandler)  -- ../cpl_error.h:165
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPushErrorHandler";

   procedure CPLPushErrorHandlerEx (Arg1 : CPLErrorHandler; Arg2 : System.Address)  -- ../cpl_error.h:166
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPushErrorHandlerEx";

   procedure CPLSetCurrentErrorHandlerCatchDebug (BCatchDebug : Int)  -- ../cpl_error.h:167
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetCurrentErrorHandlerCatchDebug";

   procedure CPLPopErrorHandler  -- ../cpl_error.h:168
     with Import => True, 
     Convention => C, 
     External_Name => "CPLPopErrorHandler";

   procedure CPLDebug (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr  -- , ...
                      )  -- ../cpl_error.h:173
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDebug";

   --  skipped func _CPLAssert



   function CPLParseXMLString (Arg1 : Interfaces.C.Strings.Chars_Ptr) return access CPLXMLNode  -- ../cpl_minixml.h:124
     with Import => True, 
     Convention => C, 
     External_Name => "CPLParseXMLString";

   procedure CPLDestroyXMLNode (Arg1 : access CPLXMLNode)  -- ../cpl_minixml.h:125
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDestroyXMLNode";

   function CPLGetXMLNode (PoRoot : access CPLXMLNode; PszPath : Interfaces.C.Strings.Chars_Ptr) return access CPLXMLNode  -- ../cpl_minixml.h:126
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetXMLNode";

   function CPLSearchXMLNode (PoRoot : access CPLXMLNode; PszTarget : Interfaces.C.Strings.Chars_Ptr) return access CPLXMLNode  -- ../cpl_minixml.h:140
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSearchXMLNode";

   function CPLGetXMLValue
     (PoRoot     : access constant CPLXMLNode;
      PszPath    : Interfaces.C.Strings.Chars_Ptr;
      PszDefault : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_minixml.h:154
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetXMLValue";

   function CPLCreateXMLNode
     (PoParent : access CPLXMLNode;
      EType    : CPLXMLNodeType;
      PszText  : Interfaces.C.Strings.Chars_Ptr) return access CPLXMLNode  -- ../cpl_minixml.h:157
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateXMLNode";

   function CPLSerializeXMLTree (PsNode : access constant CPLXMLNode) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_minixml.h:160
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSerializeXMLTree";

   procedure CPLAddXMLChild (PsParent : access CPLXMLNode; PsChild : access CPLXMLNode)  -- ../cpl_minixml.h:161
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAddXMLChild";

   function CPLRemoveXMLChild (PsParent : access CPLXMLNode; PsChild : access CPLXMLNode) return Int  -- ../cpl_minixml.h:163
     with Import => True, 
     Convention => C, 
     External_Name => "CPLRemoveXMLChild";

   procedure CPLAddXMLSibling (PsOlderSibling : access CPLXMLNode; PsNewSibling : access CPLXMLNode)  -- ../cpl_minixml.h:165
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAddXMLSibling";

   function CPLCreateXMLElementAndValue
     (PsParent : access CPLXMLNode;
      PszName  : Interfaces.C.Strings.Chars_Ptr;
      PszValue : Interfaces.C.Strings.Chars_Ptr) return access CPLXMLNode  -- ../cpl_minixml.h:167
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateXMLElementAndValue";

   procedure CPLAddXMLAttributeAndValue
     (PsParent : access CPLXMLNode;
      PszName  : Interfaces.C.Strings.Chars_Ptr;
      PszValue : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_minixml.h:170
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAddXMLAttributeAndValue";

   function CPLCloneXMLTree (PsTree : access constant CPLXMLNode) return access CPLXMLNode  -- ../cpl_minixml.h:173
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCloneXMLTree";

   function CPLSetXMLValue
     (PsRoot   : access CPLXMLNode;
      PszPath  : Interfaces.C.Strings.Chars_Ptr;
      PszValue : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_minixml.h:174
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetXMLValue";

   procedure CPLStripXMLNamespace
     (PsRoot       : access CPLXMLNode;
      PszNameSpace : Interfaces.C.Strings.Chars_Ptr;
      BRecurse     : Int)  -- ../cpl_minixml.h:176
     with Import => True, 
     Convention => C, 
     External_Name => "CPLStripXMLNamespace";

   procedure CPLCleanXMLElementName (Arg1 : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_minixml.h:179
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCleanXMLElementName";

   function CPLParseXMLFile (PszFilename : Interfaces.C.Strings.Chars_Ptr) return access CPLXMLNode  -- ../cpl_minixml.h:181
     with Import => True, 
     Convention => C, 
     External_Name => "CPLParseXMLFile";

   function CPLSerializeXMLTreeToFile (PsTree : access constant CPLXMLNode; PszFilename : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_minixml.h:182
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSerializeXMLTreeToFile";


   --  unsupported macro: CPLMutex void
   --  unsupported macro: CPLCond void
   --  unsupported macro: CPLJoinableThread void
   CPL_MUTEX_RECURSIVE : constant := 0;  --  ../cpl_multiproc.h:73
   CPL_MUTEX_ADAPTIVE  : constant := 1;  --  ../cpl_multiproc.h:74
   CPL_MUTEX_REGULAR   : constant := 2;  --  ../cpl_multiproc.h:75

   CTLS_RLBUFFERINFO   : constant := 1;  --  ../cpl_multiproc.h:212
   CTLS_WIN32_COND     : constant := 2;  --  ../cpl_multiproc.h:213
   CTLS_CSVTABLEPTR    : constant := 3;  --  ../cpl_multiproc.h:214
   CTLS_CSVDEFAULTFILENAME : constant := 4;  --  ../cpl_multiproc.h:215
   CTLS_ERRORCONTEXT   : constant := 5;  --  ../cpl_multiproc.h:216
   CTLS_VSICURL_CACHEDCONNECTION : constant := 6;  --  ../cpl_multiproc.h:217
   CTLS_PATHBUF        : constant := 7;  --  ../cpl_multiproc.h:218
   CTLS_ABSTRACTARCHIVE_SPLIT : constant := 8;  --  ../cpl_multiproc.h:219
   CTLS_GDALOPEN_ANTIRECURSION : constant := 9;  --  ../cpl_multiproc.h:220
   CTLS_CPLSPRINTF     : constant := 10;  --  ../cpl_multiproc.h:221
   CTLS_RESPONSIBLEPID : constant := 11;  --  ../cpl_multiproc.h:222
   CTLS_VERSIONINFO    : constant := 12;  --  ../cpl_multiproc.h:223
   CTLS_VERSIONINFO_LICENCE : constant := 13;  --  ../cpl_multiproc.h:224
   CTLS_CONFIGOPTIONS  : constant := 14;  --  ../cpl_multiproc.h:225
   CTLS_FINDFILE       : constant := 15;  --  ../cpl_multiproc.h:226
   CTLS_VSIERRORCONTEXT : constant := 16;  --  ../cpl_multiproc.h:227
   CTLS_ERRORHANDLERACTIVEDATA : constant := 17;  --  ../cpl_multiproc.h:228
   CTLS_PROJCONTEXTHOLDER : constant := 18;  --  ../cpl_multiproc.h:229
   CTLS_GDALDEFAULTOVR_ANTIREC : constant := 19;  --  ../cpl_multiproc.h:230
   CTLS_HTTPFETCHCALLBACK : constant := 20;  --  ../cpl_multiproc.h:231

   CTLS_MAX            : constant := 32;  --  ../cpl_multiproc.h:233

   function CPLLockFile (PszPath : Interfaces.C.Strings.Chars_Ptr; DfWaitInSeconds : Double) return System.Address  -- ../cpl_multiproc.h:59
     with Import => True, 
     Convention => C, 
     External_Name => "CPLLockFile";

   procedure CPLUnlockFile (HLock : System.Address)  -- ../cpl_multiproc.h:60
     with Import => True, 
     Convention => C, 
     External_Name => "CPLUnlockFile";

   function CPLCreateMutex return System.Address  -- ../cpl_multiproc.h:77
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateMutex";

   function CPLCreateMutexEx (NOptions : Int) return System.Address  -- ../cpl_multiproc.h:78
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateMutexEx";

   function CPLCreateOrAcquireMutex (Arg1 : System.Address; DfWaitInSeconds : Double) return Int  -- ../cpl_multiproc.h:79
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateOrAcquireMutex";

   function CPLCreateOrAcquireMutexEx
     (Arg1            : System.Address;
      DfWaitInSeconds : Double;
      NOptions        : Int) return Int  -- ../cpl_multiproc.h:80
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateOrAcquireMutexEx";

   function CPLAcquireMutex (HMutex : System.Address; DfWaitInSeconds : Double) return Int  -- ../cpl_multiproc.h:81
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAcquireMutex";

   procedure CPLReleaseMutex (HMutex : System.Address)  -- ../cpl_multiproc.h:82
     with Import => True, 
     Convention => C, 
     External_Name => "CPLReleaseMutex";

   procedure CPLDestroyMutex (HMutex : System.Address)  -- ../cpl_multiproc.h:83
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDestroyMutex";

   procedure CPLCleanupMasterMutex  -- ../cpl_multiproc.h:84
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCleanupMasterMutex";

   function CPLCreateCond return System.Address  -- ../cpl_multiproc.h:86
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateCond";

   procedure CPLCondWait (HCond : System.Address; HMutex : System.Address)  -- ../cpl_multiproc.h:87
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCondWait";


   function CPLCondTimedWait
     (HCond           : System.Address;
      HMutex          : System.Address;
      DfWaitInSeconds : Double) return CPLCondTimedWaitReason  -- ../cpl_multiproc.h:94
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCondTimedWait";

   procedure CPLCondSignal (HCond : System.Address)  -- ../cpl_multiproc.h:95
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCondSignal";

   procedure CPLCondBroadcast (HCond : System.Address)  -- ../cpl_multiproc.h:96
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCondBroadcast";

   procedure CPLDestroyCond (HCond : System.Address)  -- ../cpl_multiproc.h:97
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDestroyCond";

   function CPLGetPID return GIntBig  -- ../cpl_multiproc.h:100
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetPID";

   function CPLGetCurrentProcessID return Int  -- ../cpl_multiproc.h:101
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetCurrentProcessID";

   function CPLCreateThread (PfnMain : CPLThreadFunc; PArg : System.Address) return Int  -- ../cpl_multiproc.h:102
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateThread";

   function CPLCreateJoinableThread (PfnMain : CPLThreadFunc; PArg : System.Address) return System.Address  -- ../cpl_multiproc.h:103
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateJoinableThread";

   procedure CPLJoinThread (HJoinableThread : System.Address)  -- ../cpl_multiproc.h:104
     with Import => True, 
     Convention => C, 
     External_Name => "CPLJoinThread";

   procedure CPLSleep (DfWaitInSeconds : Double)  -- ../cpl_multiproc.h:105
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSleep";

   function CPLGetThreadingModel return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_multiproc.h:107
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetThreadingModel";

   function CPLGetNumCPUs return Int  -- ../cpl_multiproc.h:109
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetNumCPUs";

 
   function CPLCreateLock (EType : CPLLockType) return access CPLLock  -- ../cpl_multiproc.h:123
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateLock";

   function CPLCreateOrAcquireLock (Arg1 : System.Address; EType : CPLLockType) return Int  -- ../cpl_multiproc.h:124
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCreateOrAcquireLock";

   function CPLAcquireLock (Arg1 : access CPLLock) return Int  -- ../cpl_multiproc.h:125
     with Import => True, 
     Convention => C, 
     External_Name => "CPLAcquireLock";

   procedure CPLReleaseLock (Arg1 : access CPLLock)  -- ../cpl_multiproc.h:126
     with Import => True, 
     Convention => C, 
     External_Name => "CPLReleaseLock";

   procedure CPLDestroyLock (Arg1 : access CPLLock)  -- ../cpl_multiproc.h:127
     with Import => True, 
     Convention => C, 
     External_Name => "CPLDestroyLock";

   procedure CPLLockSetDebugPerf (Arg1 : access CPLLock; BEnableIn : Int)  -- ../cpl_multiproc.h:128
     with Import => True, 
     Convention => C, 
     External_Name => "CPLLockSetDebugPerf";

   function CPLGetTLS (NIndex : Int) return System.Address  -- ../cpl_multiproc.h:236
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetTLS";

   function CPLGetTLSEx (NIndex : Int; PbMemoryErrorOccurred : access Int) return System.Address  -- ../cpl_multiproc.h:237
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetTLSEx";

   procedure CPLSetTLS
     (NIndex      : Int;
      PData       : System.Address;
      BFreeOnExit : Int)  -- ../cpl_multiproc.h:238
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetTLS";

  
   procedure CPLSetTLSWithFreeFunc
     (NIndex  : Int;
      PData   : System.Address;
      PfnFree : CPLTLSFreeFunc)  -- ../cpl_multiproc.h:243
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetTLSWithFreeFunc";

   procedure CPLSetTLSWithFreeFuncEx
     (NIndex                : Int;
      PData                 : System.Address;
      PfnFree               : CPLTLSFreeFunc;
      PbMemoryErrorOccurred : access Int)  -- ../cpl_multiproc.h:244
     with Import => True, 
     Convention => C, 
     External_Name => "CPLSetTLSWithFreeFuncEx";

   procedure CPLCleanupTLS  -- ../cpl_multiproc.h:246
     with Import => True, 
     Convention => C, 
     External_Name => "CPLCleanupTLS";

   --  arg-macro: function CPL_STATIC_CAST (type, expr)
   --    return (type)(expr);
   --  arg-macro: function CPL_REINTERPRET_CAST (type, expr)
   --    return (type)(expr);
   --  unsupported macro: GINTBIG_MIN (CPL_STATIC_CAST(GIntBig, 0x80000000) << 32)
   --  unsupported macro: GINTBIG_MAX ((CPL_STATIC_CAST(GIntBig, 0x7FFFFFFF) << 32) | 0xFFFFFFFFU)
   --  unsupported macro: GUINTBIG_MAX ((CPL_STATIC_CAST(GUIntBig, 0xFFFFFFFFU) << 32) | 0xFFFFFFFFU)
   CPL_HAS_GINT64 : constant := 1;  --  ../cpl_port.h:261
   --  unsupported macro: GINT64_MIN GINTBIG_MIN
   --  unsupported macro: GINT64_MAX GINTBIG_MAX
   --  unsupported macro: GUINT64_MAX GUINTBIG_MAX

   CPL_FRMT_GB_WITHOUT_PREFIX : aliased constant String := "ll" & ASCII.NUL;  --  ../cpl_port.h:310
   --  unsupported macro: CPL_FRMT_GIB "%" CPL_FRMT_GB_WITHOUT_PREFIX "d"
   --  unsupported macro: CPL_FRMT_GUIB "%" CPL_FRMT_GB_WITHOUT_PREFIX "u"
   --  arg-macro: procedure GUINTBIG_TO_DOUBLE (x)
   --    CPL_STATIC_CAST(double, x)
   --  arg-macro: function CPL_INT64_FITS_ON_INT32 (x)
   --    return CPL_STATIC_CAST(GIntBig, CPL_STATIC_CAST(int, x)) = (x);
   --  unsupported macro: CPL_DLL __attribute__ ((visibility("default")))
   --  unsupported macro: CPL_INTERNAL __attribute__((visibility("hidden")))
   --  unsupported macro: CPL_UNSTABLE_API CPL_DLL
   --  arg-macro: function MIN (a, b)
   --    return ((a)<(b)) ? (a) : (b);
   --  arg-macro: function MAX (a, b)
   --    return ((a)>(b)) ? (a) : (b);
   --  arg-macro: function ABS (x)
   --    return ((x)<0) ? (-1*(x)) : (x);
   --  arg-macro: function CPLIsEqual (x, y)
   --    return fabs((x) - (y)) < 0.0000000000001;
   --  arg-macro: function STRCASECMP (a, b)
   --    return strcasecmp(a,b);
   --  arg-macro: function STRNCASECMP (a, b, n)
   --    return strncasecmp(a,b,n);
   --  arg-macro: function EQUALN (a, b, n)
   --    return STRNCASECMP(a,b,n)=0;
   --  arg-macro: function EQUAL (a, b)
   --    return STRCASECMP(a,b)=0;
   --  arg-macro: function STARTS_WITH (a, b)
   --    return strncmp(a,b,strlen(b)) = 0;
   --  arg-macro: procedure STARTS_WITH_CI (a, b)
   --    EQUALN(a,b,strlen(b))
   --  arg-macro: procedure CPLIsNan (x)
   --    __builtin_isnan(x)
   --  arg-macro: procedure CPLIsInf (x)
   --    __builtin_isinf(x)
   --  arg-macro: procedure CPLIsFinite (x)
   --    __builtin_isfinite(x)

   CPL_IS_LSB     : constant := 1;  --  ../cpl_port.h:676
   --  arg-macro: procedure CPL_SWAP16 (x)
   --    CPL_STATIC_CAST(GUInt16, (CPL_STATIC_CAST(GUInt16, x) << 8) or (CPL_STATIC_CAST(GUInt16, x) >> 8) )
   --  arg-macro: procedure CPL_SWAP32 (x)
   --    CPL_STATIC_CAST(GUInt32, __builtin_bswap32(CPL_STATIC_CAST(GUInt32, x)))
   --  arg-macro: procedure CPL_SWAP64 (x)
   --    CPL_STATIC_CAST(GUInt64, __builtin_bswap64(CPL_STATIC_CAST(GUInt64, x)))
   --  arg-macro: procedure CPL_SWAP16PTR (x)
   --    do { GByte byTemp, *_pabyDataT := CPL_REINTERPRET_CAST(GByte*, x); CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 2); byTemp := _pabyDataT(0); _pabyDataT(0) := _pabyDataT(1); _pabyDataT(1) := byTemp; } while(0)
   --  arg-macro: procedure CPL_SWAP32PTR (x)
   --    do { GUInt32 _n32; void* _lx := x; memcpy(and_n32, _lx, 4); CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 4); _n32 := CPL_SWAP32(_n32); memcpy(_lx, and_n32, 4); } while(0)
   --  arg-macro: procedure CPL_SWAP64PTR (x)
   --    do { GUInt64 _n64; void* _lx := x; memcpy(and_n64, _lx, 8); CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 8); _n64 := CPL_SWAP64(_n64); memcpy(_lx, and_n64, 8); } while(0)
   --  arg-macro: procedure CPL_SWAPDOUBLE (p)
   --    CPL_SWAP64PTR(p)
   --  arg-macro: function CPL_LSBWORD16 (x)
   --    return x;
   --  arg-macro: procedure CPL_MSBWORD16 (x)
   --    CPL_SWAP16(x)
   --  arg-macro: function CPL_LSBWORD32 (x)
   --    return x;
   --  arg-macro: procedure CPL_MSBWORD32 (x)
   --    CPL_SWAP32(x)
   --  arg-macro: procedure CPL_LSBPTR16 (x)
   --    CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 2)
   --  arg-macro: procedure CPL_MSBPTR16 (x)
   --    CPL_SWAP16PTR(x)
   --  arg-macro: procedure CPL_LSBPTR32 (x)
   --    CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 4)
   --  arg-macro: procedure CPL_MSBPTR32 (x)
   --    CPL_SWAP32PTR(x)
   --  arg-macro: procedure CPL_LSBPTR64 (x)
   --    CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 8)
   --  arg-macro: procedure CPL_MSBPTR64 (x)
   --    CPL_SWAP64PTR(x)
   --  arg-macro: function CPL_LSBINT16PTR (x)
   --    return (*CPL_REINTERPRET_CAST(const GByte*, x)) or (*((CPL_REINTERPRET_CAST(const GByte*, x))+1) << 8);
   --  arg-macro: function CPL_LSBINT32PTR (x)
   --    return (*CPL_REINTERPRET_CAST(const GByte*, x)) or (*((CPL_REINTERPRET_CAST(const GByte*, x))+1) << 8) or (*((CPL_REINTERPRET_CAST(const GByte*, x))+2) << 16) or (*((CPL_REINTERPRET_CAST(const GByte*, x))+3) << 24);
   --  arg-macro: procedure CPL_LSBSINT16PTR (x)
   --    CPL_STATIC_CAST(GInt16,CPL_LSBINT16PTR(x))
   --  arg-macro: procedure CPL_LSBUINT16PTR (x)
   --    CPL_STATIC_CAST(GUInt16, CPL_LSBINT16PTR(x))
   --  arg-macro: procedure CPL_LSBSINT32PTR (x)
   --    CPL_STATIC_CAST(GInt32, CPL_LSBINT32PTR(x))
   --  arg-macro: procedure CPL_LSBUINT32PTR (x)
   --    CPL_STATIC_CAST(GUInt32, CPL_LSBINT32PTR(x))
   --  arg-macro: function UNREFERENCED_PARAM (param)
   --    return (void)param;
   --  arg-macro: procedure CPL_CVSID (string)
   --    static const char cpl_cvsid() __attribute__((used)) := string;
   --  unsupported macro: CPL_NULL_TERMINATED __attribute__((__sentinel__))
   --  arg-macro: procedure CPL_PRINT_FUNC_FORMAT (format_idx, arg_idx)
   --    __attribute__((__format__ (__printf__, format_idx, arg_idx)))
   --  arg-macro: procedure CPL_SCAN_FUNC_FORMAT (format_idx, arg_idx)
   --    __attribute__((__format__ (__scanf__, format_idx, arg_idx)))
   --  arg-macro: procedure CPL_FORMAT_STRING (arg)
   --    arg
   --  arg-macro: procedure CPL_SCANF_FORMAT_STRING (arg)
   --    arg
   --  unsupported macro: CPL_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
   --  unsupported macro: CPL_UNUSED __attribute((__unused__))
   --  unsupported macro: CPL_NO_RETURN __attribute__((noreturn))
   --  unsupported macro: CPL_RETURNS_NONNULL __attribute__((returns_nonnull))
   --  unsupported macro: CPL_RESTRICT __restrict__
   --  arg-macro: procedure CPL_WARN_DEPRECATED (x)
   --    __attribute__ ((deprecated))
   --  unsupported macro: CPL_FALLTHROUGH [[clang::fallthrough]];

   --  FALSE          : constant := 0;  --  ../cpl_port.h:1165

   --  TRUE           : constant := 1;  --  ../cpl_port.h:1169
   --  unsupported macro: EMULATED_BOOL bool
   --  unsupported macro: VOLATILE_BOOL volatile bool
   --  unsupported macro: CPL_NULLPTR NULL

   function GDALDummyProgress
     (Arg1 : Double;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : System.Address) return Int  -- ../cpl_progress.h:39
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDummyProgress";

   function GDALTermProgress
     (Arg1 : Double;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : System.Address) return Int  -- ../cpl_progress.h:40
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTermProgress";

   function GDALScaledProgress
     (Arg1 : Double;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : System.Address) return Int  -- ../cpl_progress.h:41
     with Import => True, 
     Convention => C, 
     External_Name => "GDALScaledProgress";

   function GDALCreateScaledProgress
     (Arg1 : Double;
      Arg2 : Double;
      Arg3 : GDALProgressFunc;
      Arg4 : System.Address) return System.Address  -- ../cpl_progress.h:42
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateScaledProgress";

   procedure GDALDestroyScaledProgress (Arg1 : System.Address)  -- ../cpl_progress.h:44
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyScaledProgress";

 

   function CPLGetPageSize return Size_T  -- ../cpl_virtualmem.h:121
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetPageSize";

   function CPLVirtualMemNew
     (NSize              : Size_T;
      NCacheSize         : Size_T;
      NPageSizeHint      : Size_T;
      BSingleThreadUsage : Int;
      EAccessMode        : CPLVirtualMemAccessMode;
      PfnCachePage       : CPLVirtualMemCachePageCbk;
      PfnUnCachePage     : CPLVirtualMemUnCachePageCbk;
      PfnFreeUserData    : CPLVirtualMemFreeUserData;
      PCbkUserData       : System.Address) return access CPLVirtualMem  -- ../cpl_virtualmem.h:167
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemNew";

   function CPLIsVirtualMemFileMapAvailable return Int  -- ../cpl_virtualmem.h:182
     with Import => True, 
     Convention => C, 
     External_Name => "CPLIsVirtualMemFileMapAvailable";

   function CPLVirtualMemFileMapNew
     (Fp              : VSILFILE;
      NOffset         : Vsi_L_Offset;
      NLength         : Vsi_L_Offset;
      EAccessMode     : CPLVirtualMemAccessMode;
      PfnFreeUserData : CPLVirtualMemFreeUserData;
      PCbkUserData    : System.Address) return access CPLVirtualMem  -- ../cpl_virtualmem.h:210
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemFileMapNew";

   function CPLVirtualMemDerivedNew
     (PVMemBase       : access CPLVirtualMem;
      NOffset         : Vsi_L_Offset;
      NSize           : Vsi_L_Offset;
      PfnFreeUserData : CPLVirtualMemFreeUserData;
      PCbkUserData    : System.Address) return access CPLVirtualMem  -- ../cpl_virtualmem.h:236
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemDerivedNew";

   procedure CPLVirtualMemFree (Ctxt : access CPLVirtualMem)  -- ../cpl_virtualmem.h:253
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemFree";

   function CPLVirtualMemGetAddr (Ctxt : access CPLVirtualMem) return System.Address  -- ../cpl_virtualmem.h:270
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemGetAddr";

   function CPLVirtualMemGetSize (Ctxt : access CPLVirtualMem) return Size_T  -- ../cpl_virtualmem.h:279
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemGetSize";

   function CPLVirtualMemIsFileMapping (Ctxt : access CPLVirtualMem) return Int  -- ../cpl_virtualmem.h:288
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemIsFileMapping";

   function CPLVirtualMemGetAccessMode (Ctxt : access CPLVirtualMem) return CPLVirtualMemAccessMode  -- ../cpl_virtualmem.h:297
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemGetAccessMode";

   function CPLVirtualMemGetPageSize (Ctxt : access CPLVirtualMem) return Size_T  -- ../cpl_virtualmem.h:309
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemGetPageSize";

   function CPLVirtualMemIsAccessThreadSafe (Ctxt : access CPLVirtualMem) return Int  -- ../cpl_virtualmem.h:328
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemIsAccessThreadSafe";

   procedure CPLVirtualMemDeclareThread (Ctxt : access CPLVirtualMem)  -- ../cpl_virtualmem.h:342
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemDeclareThread";

   procedure CPLVirtualMemUnDeclareThread (Ctxt : access CPLVirtualMem)  -- ../cpl_virtualmem.h:356
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemUnDeclareThread";

   procedure CPLVirtualMemPin
     (Ctxt     : access CPLVirtualMem;
      PAddr    : System.Address;
      NSize    : Size_T;
      BWriteOp : Int)  -- ../cpl_virtualmem.h:375
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemPin";

   procedure CPLVirtualMemManagerTerminate  -- ../cpl_virtualmem.h:385
     with Import => True, 
     Convention => C, 
     External_Name => "CPLVirtualMemManagerTerminate";

   --  arg-macro: procedure VSI_ISLNK (x)
   --    S_ISLNK(x)
   --  arg-macro: procedure VSI_ISREG (x)
   --    S_ISREG(x)
   --  arg-macro: procedure VSI_ISDIR (x)
   --    S_ISDIR(x)
   --  arg-macro: procedure VSI_ISCHR (x)
   --    S_ISCHR(x)
   --  arg-macro: procedure VSI_ISBLK (x)
   --    S_ISBLK(x)
   --  unsupported macro: VSI_L_OFFSET_MAX GUINTBIG_MAX
   VSI_STAT_EXISTS_FLAG : constant := 16#1#;  --  ../cpl_vsi.h:204

   VSI_STAT_NATURE_FLAG : constant := 16#2#;  --  ../cpl_vsi.h:206

   VSI_STAT_SIZE_FLAG   : constant := 16#4#;  --  ../cpl_vsi.h:208

   VSI_STAT_SET_ERROR_FLAG : constant := 16#8#;  --  ../cpl_vsi.h:210
   --  arg-macro: procedure VSI_MALLOC_ALIGNED_AUTO_VERBOSE (size)
   --    VSIMallocAlignedAutoVerbose(size,__FILE__,__LINE__)
   --  arg-macro: procedure VSI_MALLOC_VERBOSE (size)
   --    VSIMallocVerbose(size,__FILE__,__LINE__)
   --  arg-macro: procedure VSI_MALLOC2_VERBOSE (nSize1, nSize2)
   --    VSIMalloc2Verbose(nSize1,nSize2,__FILE__,__LINE__)
   --  arg-macro: procedure VSI_MALLOC3_VERBOSE (nSize1, nSize2, nSize3)
   --    VSIMalloc3Verbose(nSize1,nSize2,nSize3,__FILE__,__LINE__)
   --  arg-macro: procedure VSI_CALLOC_VERBOSE (nCount, nSize)
   --    VSICallocVerbose(nCount,nSize,__FILE__,__LINE__)
   --  arg-macro: procedure VSI_REALLOC_VERBOSE (pOldPtr, nNewSize)
   --    VSIReallocVerbose(pOldPtr,nNewSize,__FILE__,__LINE__)
   --  arg-macro: procedure VSI_STRDUP_VERBOSE (pszStr)
   --    VSIStrdupVerbose(pszStr,__FILE__,__LINE__)
   --  unsupported macro: CPLReadDir VSIReadDir
   --  arg-macro: procedure VSIDebug4 (f, a1, a2, a3, a4)
   --    {}
   --  arg-macro: procedure VSIDebug3 (f, a1, a2, a3)
   --    {}
   --  arg-macro: procedure VSIDebug2 (f, a1, a2)
   --    {}
   --  arg-macro: procedure VSIDebug1 (f, a1)
   --    {}

   function VSIFOpen (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C_Streams.FILEs  -- ../cpl_vsi.h:85
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFOpen";

   function VSIFClose (Arg1 : Interfaces.C_Streams.FILEs) return Int  -- ../cpl_vsi.h:86
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFClose";

   function VSIFSeek
     (Arg1 : Interfaces.C_Streams.FILEs;
      Arg2 : Long;
      Arg3 : Int) return Int  -- ../cpl_vsi.h:87
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFSeek";

   function VSIFTell (Arg1 : Interfaces.C_Streams.FILEs) return Long  -- ../cpl_vsi.h:88
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFTell";

   procedure VSIRewind (Arg1 : Interfaces.C_Streams.FILEs)  -- ../cpl_vsi.h:89
     with Import => True, 
     Convention => C, 
     External_Name => "VSIRewind";

   procedure VSIFFlush (Arg1 : Interfaces.C_Streams.FILEs)  -- ../cpl_vsi.h:90
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFFlush";

   function VSIFRead
     (Arg1 : System.Address;
      Arg2 : Size_T;
      Arg3 : Size_T;
      Arg4 : Interfaces.C_Streams.FILEs) return Size_T  -- ../cpl_vsi.h:92
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFRead";

   function VSIFWrite
     (Arg1 : System.Address;
      Arg2 : Size_T;
      Arg3 : Size_T;
      Arg4 : Interfaces.C_Streams.FILEs) return Size_T  -- ../cpl_vsi.h:93
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFWrite";

   function VSIFGets
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Int;
      Arg3 : Interfaces.C_Streams.FILEs) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:94
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFGets";

   function VSIFPuts (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C_Streams.FILEs) return Int  -- ../cpl_vsi.h:95
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFPuts";

   function VSIFPrintf (Arg1 : Interfaces.C_Streams.FILEs; Arg2 : Interfaces.C.Strings.Chars_Ptr  -- , ...
                       ) return Int  -- ../cpl_vsi.h:96
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFPrintf";

   function VSIFGetc (Arg1 : Interfaces.C_Streams.FILEs) return Int  -- ../cpl_vsi.h:98
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFGetc";

   function VSIFPutc (Arg1 : Int; Arg2 : Interfaces.C_Streams.FILEs) return Int  -- ../cpl_vsi.h:99
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFPutc";

   function VSIUngetc (Arg1 : Int; Arg2 : Interfaces.C_Streams.FILEs) return Int  -- ../cpl_vsi.h:100
     with Import => True, 
     Convention => C, 
     External_Name => "VSIUngetc";

   function VSIFEof (Arg1 : Interfaces.C_Streams.FILEs) return Int  -- ../cpl_vsi.h:101
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFEof";


   function VSIStat (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : access VSIStatBuf) return Int  -- ../cpl_vsi.h:111
     with Import => True, 
     Convention => C, 
     External_Name => "VSIStat";



   function VSIFOpenL (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : Interfaces.C.Strings.Chars_Ptr) return VSILFILE  -- ../cpl_vsi.h:159
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFOpenL";

   function VSIFOpenExL
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int) return VSILFILE  -- ../cpl_vsi.h:160
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFOpenExL";

   function VSIFOpenEx2L
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int;
      Arg4 : CSLConstList) return VSILFILE  -- ../cpl_vsi.h:161
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFOpenEx2L";

   function VSIFCloseL (Arg1 : VSILFILE) return Int  -- ../cpl_vsi.h:162
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFCloseL";

   function VSIFSeekL
     (Arg1 : VSILFILE;
      Arg2 : Vsi_L_Offset;
      Arg3 : Int) return Int  -- ../cpl_vsi.h:163
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFSeekL";

   function VSIFTellL (Arg1 : VSILFILE) return Vsi_L_Offset  -- ../cpl_vsi.h:164
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFTellL";

   procedure VSIRewindL (Arg1 : VSILFILE)  -- ../cpl_vsi.h:165
     with Import => True, 
     Convention => C, 
     External_Name => "VSIRewindL";

   function VSIFReadL
     (Arg1 : System.Address;
      Arg2 : Size_T;
      Arg3 : Size_T;
      Arg4 : VSILFILE) return Size_T  -- ../cpl_vsi.h:166
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFReadL";

   function VSIFReadMultiRangeL
     (NRanges    : Int;
      PpData     : System.Address;
      PanOffsets : access Vsi_L_Offset;
      PanSizes   : access Size_T;
      Arg5       : VSILFILE) return Int  -- ../cpl_vsi.h:167
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFReadMultiRangeL";

   function VSIFWriteL
     (Arg1 : System.Address;
      Arg2 : Size_T;
      Arg3 : Size_T;
      Arg4 : VSILFILE) return Size_T  -- ../cpl_vsi.h:168
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFWriteL";

   function VSIFEofL (Arg1 : VSILFILE) return Int  -- ../cpl_vsi.h:169
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFEofL";

   function VSIFTruncateL (Arg1 : VSILFILE; Arg2 : Vsi_L_Offset) return Int  -- ../cpl_vsi.h:170
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFTruncateL";

   function VSIFFlushL (Arg1 : VSILFILE) return Int  -- ../cpl_vsi.h:171
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFFlushL";

   function VSIFPrintfL (Arg1 : VSILFILE; Arg2 : Interfaces.C.Strings.Chars_Ptr  -- , ...
                        ) return Int  -- ../cpl_vsi.h:172
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFPrintfL";

   function VSIFPutcL (Arg1 : Int; Arg2 : VSILFILE) return Int  -- ../cpl_vsi.h:173
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFPutcL";



   function VSIFGetRangeStatusL
     (Fp      : VSILFILE;
      NStart  : Vsi_L_Offset;
      NLength : Vsi_L_Offset) return VSIRangeStatus  -- ../cpl_vsi.h:183
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFGetRangeStatusL";

   function VSIIngestFile
     (Fp          : VSILFILE;
      PszFilename : Interfaces.C.Strings.Chars_Ptr;
      PpabyRet    : System.Address;
      PnSize      : access Vsi_L_Offset;
      NMaxSize    : GIntBig) return Int  -- ../cpl_vsi.h:185
     with Import => True, 
     Convention => C, 
     External_Name => "VSIIngestFile";

   function VSIOverwriteFile (FpTarget : VSILFILE; PszSourceFilename : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_vsi.h:191
     with Import => True, 
     Convention => C, 
     External_Name => "VSIOverwriteFile";



   function VSIStatL (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : access VSIStatBufL) return Int  -- ../cpl_vsi.h:201
     with Import => True, 
     Convention => C, 
     External_Name => "VSIStatL";

   function VSIStatExL
     (PszFilename : Interfaces.C.Strings.Chars_Ptr;
      PsStatBuf   : access VSIStatBufL;
      NFlags      : Int) return Int  -- ../cpl_vsi.h:212
     with Import => True, 
     Convention => C, 
     External_Name => "VSIStatExL";

   function VSIIsCaseSensitiveFS (PszFilename : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_vsi.h:214
     with Import => True, 
     Convention => C, 
     External_Name => "VSIIsCaseSensitiveFS";

   function VSISupportsSparseFiles (PszPath : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_vsi.h:216
     with Import => True, 
     Convention => C, 
     External_Name => "VSISupportsSparseFiles";

   function VSIHasOptimizedReadMultiRange (PszPath : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_vsi.h:218
     with Import => True, 
     Convention => C, 
     External_Name => "VSIHasOptimizedReadMultiRange";

   function VSIGetActualURL (PszFilename : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:220
     with Import => True, 
     Convention => C, 
     External_Name => "VSIGetActualURL";

   function VSIGetSignedURL (PszFilename : Interfaces.C.Strings.Chars_Ptr; PapszOptions : CSLConstList) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:222
     with Import => True, 
     Convention => C, 
     External_Name => "VSIGetSignedURL";

   function VSIGetFileSystemOptions (PszFilename : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:224
     with Import => True, 
     Convention => C, 
     External_Name => "VSIGetFileSystemOptions";

   function VSIGetFileSystemsPrefixes return System.Address  -- ../cpl_vsi.h:226
     with Import => True, 
     Convention => C, 
     External_Name => "VSIGetFileSystemsPrefixes";

   function VSIFGetNativeFileDescriptorL (Arg1 : VSILFILE) return System.Address  -- ../cpl_vsi.h:228
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFGetNativeFileDescriptorL";

   function VSIGetFileMetadata
     (PszFilename  : Interfaces.C.Strings.Chars_Ptr;
      PszDomain    : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions : CSLConstList) return System.Address  -- ../cpl_vsi.h:230
     with Import => True, 
     Convention => C, 
     External_Name => "VSIGetFileMetadata";

   function VSISetFileMetadata
     (PszFilename   : Interfaces.C.Strings.Chars_Ptr;
      PapszMetadata : CSLConstList;
      PszDomain     : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions  : CSLConstList) return Int  -- ../cpl_vsi.h:233
     with Import => True, 
     Convention => C, 
     External_Name => "VSISetFileMetadata";

   function VSICalloc (Arg1 : Size_T; Arg2 : Size_T) return System.Address  -- ../cpl_vsi.h:242
     with Import => True, 
     Convention => C, 
     External_Name => "VSICalloc";

   function VSIMalloc (Arg1 : Size_T) return System.Address  -- ../cpl_vsi.h:243
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMalloc";

   procedure VSIFree (Arg1 : System.Address)  -- ../cpl_vsi.h:244
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFree";

   function VSIRealloc (Arg1 : System.Address; Arg2 : Size_T) return System.Address  -- ../cpl_vsi.h:245
     with Import => True, 
     Convention => C, 
     External_Name => "VSIRealloc";

   function VSIStrdup (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:246
     with Import => True, 
     Convention => C, 
     External_Name => "VSIStrdup";

   function VSIMallocAligned (NAlignment : Size_T; NSize : Size_T) return System.Address  -- ../cpl_vsi.h:248
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMallocAligned";

   function VSIMallocAlignedAuto (NSize : Size_T) return System.Address  -- ../cpl_vsi.h:249
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMallocAlignedAuto";

   procedure VSIFreeAligned (Ptr : System.Address)  -- ../cpl_vsi.h:250
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFreeAligned";

   function VSIMallocAlignedAutoVerbose
     (NSize   : Size_T;
      PszFile : Interfaces.C.Strings.Chars_Ptr;
      NLine   : Int) return System.Address  -- ../cpl_vsi.h:252
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMallocAlignedAutoVerbose";

   function VSIMalloc2 (NSize1 : Size_T; NSize2 : Size_T) return System.Address  -- ../cpl_vsi.h:263
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMalloc2";

   function VSIMalloc3
     (NSize1 : Size_T;
      NSize2 : Size_T;
      NSize3 : Size_T) return System.Address  -- ../cpl_vsi.h:272
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMalloc3";

   function VSIMallocVerbose
     (NSize   : Size_T;
      PszFile : Interfaces.C.Strings.Chars_Ptr;
      NLine   : Int) return System.Address  -- ../cpl_vsi.h:275
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMallocVerbose";

   function VSIMalloc2Verbose
     (NSize1  : Size_T;
      NSize2  : Size_T;
      PszFile : Interfaces.C.Strings.Chars_Ptr;
      NLine   : Int) return System.Address  -- ../cpl_vsi.h:280
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMalloc2Verbose";

   function VSIMalloc3Verbose
     (NSize1  : Size_T;
      NSize2  : Size_T;
      NSize3  : Size_T;
      PszFile : Interfaces.C.Strings.Chars_Ptr;
      NLine   : Int) return System.Address  -- ../cpl_vsi.h:285
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMalloc3Verbose";

   function VSICallocVerbose
     (NCount  : Size_T;
      NSize   : Size_T;
      PszFile : Interfaces.C.Strings.Chars_Ptr;
      NLine   : Int) return System.Address  -- ../cpl_vsi.h:290
     with Import => True, 
     Convention => C, 
     External_Name => "VSICallocVerbose";

   function VSIReallocVerbose
     (POldPtr  : System.Address;
      NNewSize : Size_T;
      PszFile  : Interfaces.C.Strings.Chars_Ptr;
      NLine    : Int) return System.Address  -- ../cpl_vsi.h:295
     with Import => True, 
     Convention => C, 
     External_Name => "VSIReallocVerbose";

   function VSIStrdupVerbose
     (PszStr  : Interfaces.C.Strings.Chars_Ptr;
      PszFile : Interfaces.C.Strings.Chars_Ptr;
      NLine   : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:300
     with Import => True, 
     Convention => C, 
     External_Name => "VSIStrdupVerbose";

   function CPLGetPhysicalRAM return GIntBig  -- ../cpl_vsi.h:304
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetPhysicalRAM";

   function CPLGetUsablePhysicalRAM return GIntBig  -- ../cpl_vsi.h:305
     with Import => True, 
     Convention => C, 
     External_Name => "CPLGetUsablePhysicalRAM";

   function VSIReadDir (Arg1 : Interfaces.C.Strings.Chars_Ptr) return System.Address  -- ../cpl_vsi.h:313
     with Import => True, 
     Convention => C, 
     External_Name => "VSIReadDir";

   function VSIReadDirRecursive (PszPath : Interfaces.C.Strings.Chars_Ptr) return System.Address  -- ../cpl_vsi.h:314
     with Import => True, 
     Convention => C, 
     External_Name => "VSIReadDirRecursive";

   function VSIReadDirEx (PszPath : Interfaces.C.Strings.Chars_Ptr; NMaxFiles : Int) return System.Address  -- ../cpl_vsi.h:315
     with Import => True, 
     Convention => C, 
     External_Name => "VSIReadDirEx";

   function VSISiblingFiles (PszPath : Interfaces.C.Strings.Chars_Ptr) return System.Address  -- ../cpl_vsi.h:316
     with Import => True, 
     Convention => C, 
     External_Name => "VSISiblingFiles";

 

   function VSIOpenDir
     (PszPath       : Interfaces.C.Strings.Chars_Ptr;
      NRecurseDepth : Int;
      PapszOptions  : System.Address) return access VSIDIR  -- ../cpl_vsi.h:321
     with Import => True, 
     Convention => C, 
     External_Name => "VSIOpenDir";
 

   function VSIGetNextDirEntry (Dir : access VSIDIR) return access constant VSIDIREntry  -- ../cpl_vsi.h:359
     with Import => True, 
     Convention => C, 
     External_Name => "VSIGetNextDirEntry";

   procedure VSICloseDir (Dir : access VSIDIR)  -- ../cpl_vsi.h:360
     with Import => True, 
     Convention => C, 
     External_Name => "VSICloseDir";

   function VSIMkdir (PszPathname : Interfaces.C.Strings.Chars_Ptr; Mode : Long) return Int  -- ../cpl_vsi.h:362
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMkdir";

   function VSIMkdirRecursive (PszPathname : Interfaces.C.Strings.Chars_Ptr; Mode : Long) return Int  -- ../cpl_vsi.h:363
     with Import => True, 
     Convention => C, 
     External_Name => "VSIMkdirRecursive";

   function VSIRmdir (PszDirname : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_vsi.h:364
     with Import => True, 
     Convention => C, 
     External_Name => "VSIRmdir";

   function VSIRmdirRecursive (PszDirname : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_vsi.h:365
     with Import => True, 
     Convention => C, 
     External_Name => "VSIRmdirRecursive";

   function VSIUnlink (PszFilename : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_vsi.h:366
     with Import => True, 
     Convention => C, 
     External_Name => "VSIUnlink";

   function VSIUnlinkBatch (PapszFiles : CSLConstList) return access Int  -- ../cpl_vsi.h:367
     with Import => True, 
     Convention => C, 
     External_Name => "VSIUnlinkBatch";

   function VSIRename (Oldpath : Interfaces.C.Strings.Chars_Ptr; Newpath : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../cpl_vsi.h:368
     with Import => True, 
     Convention => C, 
     External_Name => "VSIRename";

   function VSISync
     (PszSource     : Interfaces.C.Strings.Chars_Ptr;
      PszTarget     : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions  : System.Address;
      PProgressFunc : GDALProgressFunc;
      PProgressData : System.Address;
      PpapszOutputs : System.Address) return Int  -- ../cpl_vsi.h:369
     with Import => True, 
     Convention => C, 
     External_Name => "VSISync";

   function VSIStrerror (Arg1 : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:375
     with Import => True, 
     Convention => C, 
     External_Name => "VSIStrerror";

   function VSIGetDiskFreeSpace (PszDirname : Interfaces.C.Strings.Chars_Ptr) return GIntBig  -- ../cpl_vsi.h:376
     with Import => True, 
     Convention => C, 
     External_Name => "VSIGetDiskFreeSpace";

   procedure VSINetworkStatsReset  -- ../cpl_vsi.h:378
     with Import => True, 
     Convention => C, 
     External_Name => "VSINetworkStatsReset";

   function VSINetworkStatsGetAsSerializedJSON (PapszOptions : System.Address) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:379
     with Import => True, 
     Convention => C, 
     External_Name => "VSINetworkStatsGetAsSerializedJSON";

   procedure VSIInstallMemFileHandler  -- ../cpl_vsi.h:384
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallMemFileHandler";

   procedure VSIInstallLargeFileHandler  -- ../cpl_vsi.h:386
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallLargeFileHandler";

   procedure VSIInstallSubFileHandler  -- ../cpl_vsi.h:388
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallSubFileHandler";

   procedure VSIInstallCurlFileHandler  -- ../cpl_vsi.h:389
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallCurlFileHandler";

   procedure VSICurlClearCache  -- ../cpl_vsi.h:390
     with Import => True, 
     Convention => C, 
     External_Name => "VSICurlClearCache";

   procedure VSICurlPartialClearCache (PszFilenamePrefix : Interfaces.C.Strings.Chars_Ptr)  -- ../cpl_vsi.h:391
     with Import => True, 
     Convention => C, 
     External_Name => "VSICurlPartialClearCache";

   procedure VSIInstallCurlStreamingFileHandler  -- ../cpl_vsi.h:392
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallCurlStreamingFileHandler";

   procedure VSIInstallS3FileHandler  -- ../cpl_vsi.h:393
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallS3FileHandler";

   procedure VSIInstallS3StreamingFileHandler  -- ../cpl_vsi.h:394
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallS3StreamingFileHandler";

   procedure VSIInstallGSFileHandler  -- ../cpl_vsi.h:395
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallGSFileHandler";

   procedure VSIInstallGSStreamingFileHandler  -- ../cpl_vsi.h:396
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallGSStreamingFileHandler";

   procedure VSIInstallAzureFileHandler  -- ../cpl_vsi.h:397
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallAzureFileHandler";

   procedure VSIInstallAzureStreamingFileHandler  -- ../cpl_vsi.h:398
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallAzureStreamingFileHandler";

   procedure VSIInstallADLSFileHandler  -- ../cpl_vsi.h:399
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallADLSFileHandler";

   procedure VSIInstallOSSFileHandler  -- ../cpl_vsi.h:400
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallOSSFileHandler";

   procedure VSIInstallOSSStreamingFileHandler  -- ../cpl_vsi.h:401
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallOSSStreamingFileHandler";

   procedure VSIInstallSwiftFileHandler  -- ../cpl_vsi.h:402
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallSwiftFileHandler";

   procedure VSIInstallSwiftStreamingFileHandler  -- ../cpl_vsi.h:403
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallSwiftStreamingFileHandler";

   procedure VSIInstallGZipFileHandler  -- ../cpl_vsi.h:404
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallGZipFileHandler";

   procedure VSIInstallZipFileHandler  -- ../cpl_vsi.h:405
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallZipFileHandler";

   procedure VSIInstallStdinHandler  -- ../cpl_vsi.h:406
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallStdinHandler";

   procedure VSIInstallHdfsHandler  -- ../cpl_vsi.h:407
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallHdfsHandler";

   procedure VSIInstallWebHdfsHandler  -- ../cpl_vsi.h:408
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallWebHdfsHandler";

   procedure VSIInstallStdoutHandler  -- ../cpl_vsi.h:409
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallStdoutHandler";

   procedure VSIInstallSparseFileHandler  -- ../cpl_vsi.h:410
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallSparseFileHandler";

   procedure VSIInstallTarFileHandler  -- ../cpl_vsi.h:411
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallTarFileHandler";

   procedure VSIInstallCryptFileHandler  -- ../cpl_vsi.h:412
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallCryptFileHandler";

   procedure VSISetCryptKey (PabyKey : access GByte; NKeySize : Int)  -- ../cpl_vsi.h:413
     with Import => True, 
     Convention => C, 
     External_Name => "VSISetCryptKey";

   procedure VSICleanupFileManager  -- ../cpl_vsi.h:415
     with Import => True, 
     Convention => C, 
     External_Name => "VSICleanupFileManager";

   function VSIFileFromMemBuffer
     (PszFilename    : Interfaces.C.Strings.Chars_Ptr;
      PabyData       : access GByte;
      NDataLength    : Vsi_L_Offset;
      BTakeOwnership : Int) return VSILFILE  -- ../cpl_vsi.h:418
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFileFromMemBuffer";

   function VSIGetMemFileBuffer
     (PszFilename     : Interfaces.C.Strings.Chars_Ptr;
      PnDataLength    : access Vsi_L_Offset;
      BUnlinkAndSeize : Int) return access GByte  -- ../cpl_vsi.h:422
     with Import => True, 
     Convention => C, 
     External_Name => "VSIGetMemFileBuffer";

 
   procedure VSIStdoutSetRedirection (PFct : VSIWriteFunction; Stream : Interfaces.C_Streams.FILEs)  -- ../cpl_vsi.h:428
     with Import => True, 
     Convention => C, 
     External_Name => "VSIStdoutSetRedirection";


   function VSIAllocFilesystemPluginCallbacksStruct return access VSIFilesystemPluginCallbacksStruct  -- ../cpl_vsi.h:570
     with Import => True, 
     Convention => C, 
     External_Name => "VSIAllocFilesystemPluginCallbacksStruct";

   procedure VSIFreeFilesystemPluginCallbacksStruct (PoCb : access VSIFilesystemPluginCallbacksStruct)  -- ../cpl_vsi.h:576
     with Import => True, 
     Convention => C, 
     External_Name => "VSIFreeFilesystemPluginCallbacksStruct";

   function VSIInstallPluginHandler (PszPrefix : Interfaces.C.Strings.Chars_Ptr; PoCb : access constant VSIFilesystemPluginCallbacksStruct) return Int  -- ../cpl_vsi.h:584
     with Import => True, 
     Convention => C, 
     External_Name => "VSIInstallPluginHandler";

   function VSITime (Arg1 : access Unsigned_Long) return Unsigned_Long  -- ../cpl_vsi.h:591
     with Import => True, 
     Convention => C, 
     External_Name => "VSITime";

   function VSICTime (Arg1 : Unsigned_Long) return Interfaces.C.Strings.Chars_Ptr  -- ../cpl_vsi.h:592
     with Import => True, 
     Convention => C, 
     External_Name => "VSICTime";

   --  function VSIGMTime (PnTime : access X86_64_Linux_Gnu_Bits_Types_Time_T_H.Time_T; PoBrokenTime : access X86_64_Linux_Gnu_Bits_Types_Struct_Tm_H.Tm) return access X86_64_Linux_Gnu_Bits_Types_Struct_Tm_H.Tm  -- ../cpl_vsi.h:593
   --    with Import => True,
   --    Convention => C,
   --    External_Name => "VSIGMTime";
   --  
   --  function VSILocalTime (PnTime : access X86_64_Linux_Gnu_Bits_Types_Time_T_H.Time_T; PoBrokenTime : access X86_64_Linux_Gnu_Bits_Types_Struct_Tm_H.Tm) return access X86_64_Linux_Gnu_Bits_Types_Struct_Tm_H.Tm  -- ../cpl_vsi.h:595
   --    with Import => True,
   --    Convention => C,
   --    External_Name => "VSILocalTime";

end Gdalada.CPL;
