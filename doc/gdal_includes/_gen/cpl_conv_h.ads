pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with stddef_h;
limited with x86_64_linux_gnu_bits_types_FILE_h;
limited with cpl_vsi_h;
with cpl_port_h;
limited with x86_64_linux_gnu_bits_types_struct_tm_h;
with cpl_error_h;

package cpl_conv_h is

   --  unsupported macro: CPLFree VSIFree
   procedure CPLVerifyConfiguration  -- ../cpl_conv.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVerifyConfiguration";

   function CPLGetConfigOption (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetConfigOption";

   function CPLGetThreadLocalConfigOption (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetThreadLocalConfigOption";

   procedure CPLSetConfigOption (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../cpl_conv.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetConfigOption";

   procedure CPLSetThreadLocalConfigOption (pszKey : Interfaces.C.Strings.chars_ptr; pszValue : Interfaces.C.Strings.chars_ptr)  -- ../cpl_conv.h:60
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

   procedure CPLSetConfigOptions (papszConfigOptions : System.Address)  -- ../cpl_conv.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetConfigOptions";

   function CPLGetThreadLocalConfigOptions return System.Address  -- ../cpl_conv.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetThreadLocalConfigOptions";

   procedure CPLSetThreadLocalConfigOptions (papszConfigOptions : System.Address)  -- ../cpl_conv.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetThreadLocalConfigOptions";

   procedure CPLLoadConfigOptionsFromFile (pszFilename : Interfaces.C.Strings.chars_ptr; bOverrideEnvVars : int)  -- ../cpl_conv.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "CPLLoadConfigOptionsFromFile";

   procedure CPLLoadConfigOptionsFromPredefinedFiles  -- ../cpl_conv.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "CPLLoadConfigOptionsFromPredefinedFiles";

   function CPLMalloc (arg1 : stddef_h.size_t) return System.Address  -- ../cpl_conv.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "CPLMalloc";

   function CPLCalloc (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address  -- ../cpl_conv.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCalloc";

   function CPLRealloc (arg1 : System.Address; arg2 : stddef_h.size_t) return System.Address  -- ../cpl_conv.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "CPLRealloc";

   function CPLStrdup (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStrdup";

   function CPLStrlwr (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStrlwr";

   function CPLFGets
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "CPLFGets";

   function CPLReadLine (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "CPLReadLine";

   function CPLReadLineL (arg1 : access cpl_vsi_h.VSILFILE) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "CPLReadLineL";

   function CPLReadLine2L
     (arg1 : access cpl_vsi_h.VSILFILE;
      arg2 : int;
      arg3 : cpl_port_h.CSLConstList) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "CPLReadLine2L";

   function CPLReadLine3L
     (arg1 : access cpl_vsi_h.VSILFILE;
      arg2 : int;
      arg3 : access int;
      arg4 : cpl_port_h.CSLConstList) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "CPLReadLine3L";

   function CPLAtof (arg1 : Interfaces.C.Strings.chars_ptr) return double  -- ../cpl_conv.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAtof";

   function CPLAtofDelim (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : char) return double  -- ../cpl_conv.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAtofDelim";

   function CPLStrtod (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return double  -- ../cpl_conv.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStrtod";

   function CPLStrtodDelim
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : char) return double  -- ../cpl_conv.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStrtodDelim";

   function CPLStrtof (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return float  -- ../cpl_conv.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStrtof";

   function CPLStrtofDelim
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : char) return float  -- ../cpl_conv.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStrtofDelim";

   function CPLAtofM (arg1 : Interfaces.C.Strings.chars_ptr) return double  -- ../cpl_conv.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAtofM";

   function CPLScanString
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : int;
      arg4 : int) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "CPLScanString";

   function CPLScanDouble (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return double  -- ../cpl_conv.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "CPLScanDouble";

   function CPLScanLong (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return long  -- ../cpl_conv.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "CPLScanLong";

   function CPLScanULong (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return unsigned_long  -- ../cpl_conv.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "CPLScanULong";

   function CPLScanUIntBig (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return cpl_port_h.GUIntBig  -- ../cpl_conv.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "CPLScanUIntBig";

   function CPLAtoGIntBig (pszString : Interfaces.C.Strings.chars_ptr) return cpl_port_h.GIntBig  -- ../cpl_conv.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAtoGIntBig";

   function CPLAtoGIntBigEx
     (pszString : Interfaces.C.Strings.chars_ptr;
      bWarn : int;
      pbOverflow : access int) return cpl_port_h.GIntBig  -- ../cpl_conv.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAtoGIntBigEx";

   function CPLScanPointer (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : int) return System.Address  -- ../cpl_conv.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "CPLScanPointer";

   function CPLPrintString
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int  -- ../cpl_conv.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPrintString";

   function CPLPrintStringFill
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return int  -- ../cpl_conv.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPrintStringFill";

   function CPLPrintInt32
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : cpl_port_h.GInt32;
      arg3 : int) return int  -- ../cpl_conv.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPrintInt32";

   function CPLPrintUIntBig
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : cpl_port_h.GUIntBig;
      arg3 : int) return int  -- ../cpl_conv.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPrintUIntBig";

   function CPLPrintDouble
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : double;
      arg4 : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_conv.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPrintDouble";

   function CPLPrintTime
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access constant x86_64_linux_gnu_bits_types_struct_tm_h.tm;
      arg5 : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_conv.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPrintTime";

   function CPLPrintPointer
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int) return int  -- ../cpl_conv.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPrintPointer";

   function CPLGetSymbol (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return System.Address  -- ../cpl_conv.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetSymbol";

   function CPLGetExecPath (pszPathBuf : Interfaces.C.Strings.chars_ptr; nMaxLength : int) return int  -- ../cpl_conv.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetExecPath";

   function CPLGetPath (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetPath";

   function CPLGetDirname (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetDirname";

   function CPLGetFilename (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetFilename";

   function CPLGetBasename (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetBasename";

   function CPLGetExtension (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetExtension";

   function CPLGetCurrentDir return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetCurrentDir";

   function CPLFormFilename
     (pszPath : Interfaces.C.Strings.chars_ptr;
      pszBasename : Interfaces.C.Strings.chars_ptr;
      pszExtension : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "CPLFormFilename";

   function CPLFormCIFilename
     (pszPath : Interfaces.C.Strings.chars_ptr;
      pszBasename : Interfaces.C.Strings.chars_ptr;
      pszExtension : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "CPLFormCIFilename";

   function CPLResetExtension (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "CPLResetExtension";

   function CPLProjectRelativeFilename (pszProjectDir : Interfaces.C.Strings.chars_ptr; pszSecondaryFilename : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "CPLProjectRelativeFilename";

   function CPLIsFilenameRelative (pszFilename : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_conv.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "CPLIsFilenameRelative";

   function CPLExtractRelativePath
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access int) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "CPLExtractRelativePath";

   function CPLCleanTrailingSlash (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCleanTrailingSlash";

   function CPLCorrespondingPaths
     (pszOldFilename : Interfaces.C.Strings.chars_ptr;
      pszNewFilename : Interfaces.C.Strings.chars_ptr;
      papszFileList : System.Address) return System.Address  -- ../cpl_conv.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCorrespondingPaths";

   function CPLCheckForFile (pszFilename : Interfaces.C.Strings.chars_ptr; papszSiblingList : System.Address) return int  -- ../cpl_conv.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCheckForFile";

   function CPLGenerateTempFilename (pszStem : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGenerateTempFilename";

   function CPLExpandTilde (pszFilename : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "CPLExpandTilde";

   function CPLGetHomeDir return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetHomeDir";

   function CPLLaunderForFilename (pszName : Interfaces.C.Strings.chars_ptr; pszOutputPath : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "CPLLaunderForFilename";

   type CPLFileFinder is access function (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr
   with Convention => C;  -- ../cpl_conv.h:183

   function CPLFindFile (pszClass : Interfaces.C.Strings.chars_ptr; pszBasename : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "CPLFindFile";

   function CPLDefaultFindFile (pszClass : Interfaces.C.Strings.chars_ptr; pszBasename : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDefaultFindFile";

   procedure CPLPushFileFinder (pfnFinder : CPLFileFinder)  -- ../cpl_conv.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPushFileFinder";

   function CPLPopFileFinder return CPLFileFinder  -- ../cpl_conv.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPopFileFinder";

   procedure CPLPushFinderLocation (arg1 : Interfaces.C.Strings.chars_ptr)  -- ../cpl_conv.h:191
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

   function CPLStat (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access cpl_vsi_h.VSIStatBuf) return int  -- ../cpl_conv.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStat";

   type CPLSharedFileInfo is record
      fp : access x86_64_linux_gnu_bits_types_FILE_h.FILE;  -- ../cpl_conv.h:207
      nRefCount : aliased int;  -- ../cpl_conv.h:208
      bLarge : aliased int;  -- ../cpl_conv.h:209
      pszFilename : Interfaces.C.Strings.chars_ptr;  -- ../cpl_conv.h:210
      pszAccess : Interfaces.C.Strings.chars_ptr;  -- ../cpl_conv.h:211
   end record
   with Convention => C_Pass_By_Copy;  -- ../cpl_conv.h:212

   function CPLOpenShared
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return access x86_64_linux_gnu_bits_types_FILE_h.FILE  -- ../cpl_conv.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "CPLOpenShared";

   procedure CPLCloseShared (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE)  -- ../cpl_conv.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCloseShared";

   function CPLGetSharedList (arg1 : access int) return access CPLSharedFileInfo  -- ../cpl_conv.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetSharedList";

   procedure CPLDumpSharedList (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE)  -- ../cpl_conv.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDumpSharedList";

   procedure CPLCleanupSharedFileMutex  -- ../cpl_conv.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCleanupSharedFileMutex";

   function CPLDMSToDec (c_is : Interfaces.C.Strings.chars_ptr) return double  -- ../cpl_conv.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDMSToDec";

   function CPLDecToDMS
     (dfAngle : double;
      pszAxis : Interfaces.C.Strings.chars_ptr;
      nPrecision : int) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDecToDMS";

   function CPLPackedDMSToDec (arg1 : double) return double  -- ../cpl_conv.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPackedDMSToDec";

   function CPLDecToPackedDMS (dfDec : double) return double  -- ../cpl_conv.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDecToPackedDMS";

   procedure CPLStringToComplex
     (pszString : Interfaces.C.Strings.chars_ptr;
      pdfReal : access double;
      pdfImag : access double)  -- ../cpl_conv.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStringToComplex";

   function CPLUnlinkTree (arg1 : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_conv.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "CPLUnlinkTree";

   function CPLCopyFile (pszNewPath : Interfaces.C.Strings.chars_ptr; pszOldPath : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_conv.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCopyFile";

   function CPLCopyTree (pszNewPath : Interfaces.C.Strings.chars_ptr; pszOldPath : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_conv.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCopyTree";

   function CPLMoveFile (pszNewPath : Interfaces.C.Strings.chars_ptr; pszOldPath : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_conv.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "CPLMoveFile";

   function CPLSymlink
     (pszOldPath : Interfaces.C.Strings.chars_ptr;
      pszNewPath : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return int  -- ../cpl_conv.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSymlink";

   function CPLCreateZip (pszZipFilename : Interfaces.C.Strings.chars_ptr; papszOptions : System.Address) return System.Address  -- ../cpl_conv.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateZip";

   function CPLCreateFileInZip
     (hZip : System.Address;
      pszFilename : Interfaces.C.Strings.chars_ptr;
      papszOptions : System.Address) return cpl_error_h.CPLErr  -- ../cpl_conv.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateFileInZip";

   function CPLWriteFileInZip
     (hZip : System.Address;
      pBuffer : System.Address;
      nBufferSize : int) return cpl_error_h.CPLErr  -- ../cpl_conv.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "CPLWriteFileInZip";

   function CPLCloseFileInZip (hZip : System.Address) return cpl_error_h.CPLErr  -- ../cpl_conv.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCloseFileInZip";

   function CPLCloseZip (hZip : System.Address) return cpl_error_h.CPLErr  -- ../cpl_conv.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCloseZip";

   function CPLZLibDeflate
     (ptr : System.Address;
      nBytes : stddef_h.size_t;
      nLevel : int;
      outptr : System.Address;
      nOutAvailableBytes : stddef_h.size_t;
      pnOutBytes : access stddef_h.size_t) return System.Address  -- ../cpl_conv.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "CPLZLibDeflate";

   function CPLZLibInflate
     (ptr : System.Address;
      nBytes : stddef_h.size_t;
      outptr : System.Address;
      nOutAvailableBytes : stddef_h.size_t;
      pnOutBytes : access stddef_h.size_t) return System.Address  -- ../cpl_conv.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "CPLZLibInflate";

   function CPLValidateXML
     (pszXMLFilename : Interfaces.C.Strings.chars_ptr;
      pszXSDFilename : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return int  -- ../cpl_conv.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "CPLValidateXML";

   function CPLsetlocale (category : int; locale : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_conv.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "CPLsetlocale";

   procedure CPLCleanupSetlocaleMutex  -- ../cpl_conv.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCleanupSetlocaleMutex";

   function CPLIsPowerOfTwo (i : unsigned) return int  -- ../cpl_conv.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "CPLIsPowerOfTwo";

end cpl_conv_h;
