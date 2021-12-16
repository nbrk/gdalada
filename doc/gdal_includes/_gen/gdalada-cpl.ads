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
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with cpl_port_h;

package cpl_error_h is

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

   type CPLErr is 
     (CE_None,
      CE_Debug,
      CE_Warning,
      CE_Failure,
      CE_Fatal)
   with Convention => C;  -- ../cpl_error.h:59

   subtype CPLErrorNum is int;  -- ../cpl_error.h:94

   procedure CPLError
     (eErrClass : CPLErr;
      err_no : CPLErrorNum;
      fmt : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- ../cpl_error.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "CPLError";

   procedure CPLErrorV
     (arg1 : CPLErr;
      arg2 : CPLErrorNum;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access System.Address)  -- ../cpl_error.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "CPLErrorV";

   procedure CPLEmergencyError (arg1 : Interfaces.C.Strings.chars_ptr)  -- ../cpl_error.h:143
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

   function CPLGetLastErrorMsg return Interfaces.C.Strings.chars_ptr  -- ../cpl_error.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetLastErrorMsg";

   function CPLGetErrorCounter return cpl_port_h.GUInt32  -- ../cpl_error.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetErrorCounter";

   function CPLGetErrorHandlerUserData return System.Address  -- ../cpl_error.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetErrorHandlerUserData";

   procedure CPLErrorSetState
     (eErrClass : CPLErr;
      err_no : CPLErrorNum;
      pszMsg : Interfaces.C.Strings.chars_ptr)  -- ../cpl_error.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "CPLErrorSetState";

   procedure CPLCleanupErrorMutex  -- ../cpl_error.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCleanupErrorMutex";

   type CPLErrorHandler is access procedure
        (arg1 : CPLErr;
         arg2 : CPLErrorNum;
         arg3 : Interfaces.C.Strings.chars_ptr)
   with Convention => C;  -- ../cpl_error.h:156

   procedure CPLLoggingErrorHandler
     (arg1 : CPLErr;
      arg2 : CPLErrorNum;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- ../cpl_error.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "CPLLoggingErrorHandler";

   procedure CPLDefaultErrorHandler
     (arg1 : CPLErr;
      arg2 : CPLErrorNum;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- ../cpl_error.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDefaultErrorHandler";

   procedure CPLQuietErrorHandler
     (arg1 : CPLErr;
      arg2 : CPLErrorNum;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- ../cpl_error.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "CPLQuietErrorHandler";

   procedure CPLTurnFailureIntoWarning (bOn : int)  -- ../cpl_error.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "CPLTurnFailureIntoWarning";

   function CPLSetErrorHandler (arg1 : CPLErrorHandler) return CPLErrorHandler  -- ../cpl_error.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetErrorHandler";

   function CPLSetErrorHandlerEx (arg1 : CPLErrorHandler; arg2 : System.Address) return CPLErrorHandler  -- ../cpl_error.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetErrorHandlerEx";

   procedure CPLPushErrorHandler (arg1 : CPLErrorHandler)  -- ../cpl_error.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPushErrorHandler";

   procedure CPLPushErrorHandlerEx (arg1 : CPLErrorHandler; arg2 : System.Address)  -- ../cpl_error.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPushErrorHandlerEx";

   procedure CPLSetCurrentErrorHandlerCatchDebug (bCatchDebug : int)  -- ../cpl_error.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetCurrentErrorHandlerCatchDebug";

   procedure CPLPopErrorHandler  -- ../cpl_error.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "CPLPopErrorHandler";

   procedure CPLDebug (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- ../cpl_error.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDebug";

   --  skipped func _CPLAssert

end cpl_error_h;
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package cpl_minixml_h is

   type CPLXMLNodeType is 
     (CXT_Element,
      CXT_Text,
      CXT_Attribute,
      CXT_Comment,
      CXT_Literal)
   with Convention => C;  -- ../cpl_minixml.h:51

   type CPLXMLNode;
   type CPLXMLNode is record
      eType : aliased CPLXMLNodeType;  -- ../cpl_minixml.h:77
      pszValue : Interfaces.C.Strings.chars_ptr;  -- ../cpl_minixml.h:100
      psNext : access CPLXMLNode;  -- ../cpl_minixml.h:109
      psChild : access CPLXMLNode;  -- ../cpl_minixml.h:121
   end record
   with Convention => C_Pass_By_Copy;  -- ../cpl_minixml.h:69

   function CPLParseXMLString (arg1 : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "CPLParseXMLString";

   procedure CPLDestroyXMLNode (arg1 : access CPLXMLNode)  -- ../cpl_minixml.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDestroyXMLNode";

   function CPLGetXMLNode (poRoot : access CPLXMLNode; pszPath : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetXMLNode";

   function CPLSearchXMLNode (poRoot : access CPLXMLNode; pszTarget : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSearchXMLNode";

   function CPLGetXMLValue
     (poRoot : access constant CPLXMLNode;
      pszPath : Interfaces.C.Strings.chars_ptr;
      pszDefault : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_minixml.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetXMLValue";

   function CPLCreateXMLNode
     (poParent : access CPLXMLNode;
      eType : CPLXMLNodeType;
      pszText : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateXMLNode";

   function CPLSerializeXMLTree (psNode : access constant CPLXMLNode) return Interfaces.C.Strings.chars_ptr  -- ../cpl_minixml.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSerializeXMLTree";

   procedure CPLAddXMLChild (psParent : access CPLXMLNode; psChild : access CPLXMLNode)  -- ../cpl_minixml.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAddXMLChild";

   function CPLRemoveXMLChild (psParent : access CPLXMLNode; psChild : access CPLXMLNode) return int  -- ../cpl_minixml.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "CPLRemoveXMLChild";

   procedure CPLAddXMLSibling (psOlderSibling : access CPLXMLNode; psNewSibling : access CPLXMLNode)  -- ../cpl_minixml.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAddXMLSibling";

   function CPLCreateXMLElementAndValue
     (psParent : access CPLXMLNode;
      pszName : Interfaces.C.Strings.chars_ptr;
      pszValue : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateXMLElementAndValue";

   procedure CPLAddXMLAttributeAndValue
     (psParent : access CPLXMLNode;
      pszName : Interfaces.C.Strings.chars_ptr;
      pszValue : Interfaces.C.Strings.chars_ptr)  -- ../cpl_minixml.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAddXMLAttributeAndValue";

   function CPLCloneXMLTree (psTree : access constant CPLXMLNode) return access CPLXMLNode  -- ../cpl_minixml.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCloneXMLTree";

   function CPLSetXMLValue
     (psRoot : access CPLXMLNode;
      pszPath : Interfaces.C.Strings.chars_ptr;
      pszValue : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_minixml.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetXMLValue";

   procedure CPLStripXMLNamespace
     (psRoot : access CPLXMLNode;
      pszNameSpace : Interfaces.C.Strings.chars_ptr;
      bRecurse : int)  -- ../cpl_minixml.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "CPLStripXMLNamespace";

   procedure CPLCleanXMLElementName (arg1 : Interfaces.C.Strings.chars_ptr)  -- ../cpl_minixml.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCleanXMLElementName";

   function CPLParseXMLFile (pszFilename : Interfaces.C.Strings.chars_ptr) return access CPLXMLNode  -- ../cpl_minixml.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "CPLParseXMLFile";

   function CPLSerializeXMLTreeToFile (psTree : access constant CPLXMLNode; pszFilename : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_minixml.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSerializeXMLTreeToFile";

end cpl_minixml_h;
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with Interfaces.C.Strings;
with cpl_port_h;

package cpl_multiproc_h is

   --  unsupported macro: CPLMutex void
   --  unsupported macro: CPLCond void
   --  unsupported macro: CPLJoinableThread void
   CPL_MUTEX_RECURSIVE : constant := 0;  --  ../cpl_multiproc.h:73
   CPL_MUTEX_ADAPTIVE : constant := 1;  --  ../cpl_multiproc.h:74
   CPL_MUTEX_REGULAR : constant := 2;  --  ../cpl_multiproc.h:75

   CTLS_RLBUFFERINFO : constant := 1;  --  ../cpl_multiproc.h:212
   CTLS_WIN32_COND : constant := 2;  --  ../cpl_multiproc.h:213
   CTLS_CSVTABLEPTR : constant := 3;  --  ../cpl_multiproc.h:214
   CTLS_CSVDEFAULTFILENAME : constant := 4;  --  ../cpl_multiproc.h:215
   CTLS_ERRORCONTEXT : constant := 5;  --  ../cpl_multiproc.h:216
   CTLS_VSICURL_CACHEDCONNECTION : constant := 6;  --  ../cpl_multiproc.h:217
   CTLS_PATHBUF : constant := 7;  --  ../cpl_multiproc.h:218
   CTLS_ABSTRACTARCHIVE_SPLIT : constant := 8;  --  ../cpl_multiproc.h:219
   CTLS_GDALOPEN_ANTIRECURSION : constant := 9;  --  ../cpl_multiproc.h:220
   CTLS_CPLSPRINTF : constant := 10;  --  ../cpl_multiproc.h:221
   CTLS_RESPONSIBLEPID : constant := 11;  --  ../cpl_multiproc.h:222
   CTLS_VERSIONINFO : constant := 12;  --  ../cpl_multiproc.h:223
   CTLS_VERSIONINFO_LICENCE : constant := 13;  --  ../cpl_multiproc.h:224
   CTLS_CONFIGOPTIONS : constant := 14;  --  ../cpl_multiproc.h:225
   CTLS_FINDFILE : constant := 15;  --  ../cpl_multiproc.h:226
   CTLS_VSIERRORCONTEXT : constant := 16;  --  ../cpl_multiproc.h:227
   CTLS_ERRORHANDLERACTIVEDATA : constant := 17;  --  ../cpl_multiproc.h:228
   CTLS_PROJCONTEXTHOLDER : constant := 18;  --  ../cpl_multiproc.h:229
   CTLS_GDALDEFAULTOVR_ANTIREC : constant := 19;  --  ../cpl_multiproc.h:230
   CTLS_HTTPFETCHCALLBACK : constant := 20;  --  ../cpl_multiproc.h:231

   CTLS_MAX : constant := 32;  --  ../cpl_multiproc.h:233

   type CPLThreadFunc is access procedure (arg1 : System.Address)
   with Convention => C;  -- ../cpl_multiproc.h:57

   function CPLLockFile (pszPath : Interfaces.C.Strings.chars_ptr; dfWaitInSeconds : double) return System.Address  -- ../cpl_multiproc.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "CPLLockFile";

   procedure CPLUnlockFile (hLock : System.Address)  -- ../cpl_multiproc.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "CPLUnlockFile";

   function CPLCreateMutex return System.Address  -- ../cpl_multiproc.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateMutex";

   function CPLCreateMutexEx (nOptions : int) return System.Address  -- ../cpl_multiproc.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateMutexEx";

   function CPLCreateOrAcquireMutex (arg1 : System.Address; dfWaitInSeconds : double) return int  -- ../cpl_multiproc.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateOrAcquireMutex";

   function CPLCreateOrAcquireMutexEx
     (arg1 : System.Address;
      dfWaitInSeconds : double;
      nOptions : int) return int  -- ../cpl_multiproc.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateOrAcquireMutexEx";

   function CPLAcquireMutex (hMutex : System.Address; dfWaitInSeconds : double) return int  -- ../cpl_multiproc.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAcquireMutex";

   procedure CPLReleaseMutex (hMutex : System.Address)  -- ../cpl_multiproc.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "CPLReleaseMutex";

   procedure CPLDestroyMutex (hMutex : System.Address)  -- ../cpl_multiproc.h:83
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

   procedure CPLCondWait (hCond : System.Address; hMutex : System.Address)  -- ../cpl_multiproc.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCondWait";

   type CPLCondTimedWaitReason is 
     (COND_TIMED_WAIT_COND,
      COND_TIMED_WAIT_TIME_OUT,
      COND_TIMED_WAIT_OTHER)
   with Convention => C;  -- ../cpl_multiproc.h:93

   function CPLCondTimedWait
     (hCond : System.Address;
      hMutex : System.Address;
      dfWaitInSeconds : double) return CPLCondTimedWaitReason  -- ../cpl_multiproc.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCondTimedWait";

   procedure CPLCondSignal (hCond : System.Address)  -- ../cpl_multiproc.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCondSignal";

   procedure CPLCondBroadcast (hCond : System.Address)  -- ../cpl_multiproc.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCondBroadcast";

   procedure CPLDestroyCond (hCond : System.Address)  -- ../cpl_multiproc.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDestroyCond";

   function CPLGetPID return cpl_port_h.GIntBig  -- ../cpl_multiproc.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetPID";

   function CPLGetCurrentProcessID return int  -- ../cpl_multiproc.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetCurrentProcessID";

   function CPLCreateThread (pfnMain : CPLThreadFunc; pArg : System.Address) return int  -- ../cpl_multiproc.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateThread";

   function CPLCreateJoinableThread (pfnMain : CPLThreadFunc; pArg : System.Address) return System.Address  -- ../cpl_multiproc.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateJoinableThread";

   procedure CPLJoinThread (hJoinableThread : System.Address)  -- ../cpl_multiproc.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "CPLJoinThread";

   procedure CPLSleep (dfWaitInSeconds : double)  -- ../cpl_multiproc.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSleep";

   function CPLGetThreadingModel return Interfaces.C.Strings.chars_ptr  -- ../cpl_multiproc.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetThreadingModel";

   function CPLGetNumCPUs return int  -- ../cpl_multiproc.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetNumCPUs";

   type u_CPLLock is null record;   -- incomplete struct

   subtype CPLLock is u_CPLLock;  -- ../cpl_multiproc.h:111

   type CPLLockType is 
     (LOCK_RECURSIVE_MUTEX,
      LOCK_ADAPTIVE_MUTEX,
      LOCK_SPIN)
   with Convention => C;  -- ../cpl_multiproc.h:121

   function CPLCreateLock (eType : CPLLockType) return access CPLLock  -- ../cpl_multiproc.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateLock";

   function CPLCreateOrAcquireLock (arg1 : System.Address; eType : CPLLockType) return int  -- ../cpl_multiproc.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCreateOrAcquireLock";

   function CPLAcquireLock (arg1 : access CPLLock) return int  -- ../cpl_multiproc.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "CPLAcquireLock";

   procedure CPLReleaseLock (arg1 : access CPLLock)  -- ../cpl_multiproc.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "CPLReleaseLock";

   procedure CPLDestroyLock (arg1 : access CPLLock)  -- ../cpl_multiproc.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "CPLDestroyLock";

   procedure CPLLockSetDebugPerf (arg1 : access CPLLock; bEnableIn : int)  -- ../cpl_multiproc.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "CPLLockSetDebugPerf";

   function CPLGetTLS (nIndex : int) return System.Address  -- ../cpl_multiproc.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetTLS";

   function CPLGetTLSEx (nIndex : int; pbMemoryErrorOccurred : access int) return System.Address  -- ../cpl_multiproc.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetTLSEx";

   procedure CPLSetTLS
     (nIndex : int;
      pData : System.Address;
      bFreeOnExit : int)  -- ../cpl_multiproc.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetTLS";

   type CPLTLSFreeFunc is access procedure (arg1 : System.Address)
   with Convention => C;  -- ../cpl_multiproc.h:242

   procedure CPLSetTLSWithFreeFunc
     (nIndex : int;
      pData : System.Address;
      pfnFree : CPLTLSFreeFunc)  -- ../cpl_multiproc.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetTLSWithFreeFunc";

   procedure CPLSetTLSWithFreeFuncEx
     (nIndex : int;
      pData : System.Address;
      pfnFree : CPLTLSFreeFunc;
      pbMemoryErrorOccurred : access int)  -- ../cpl_multiproc.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "CPLSetTLSWithFreeFuncEx";

   procedure CPLCleanupTLS  -- ../cpl_multiproc.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "CPLCleanupTLS";

end cpl_multiproc_h;
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with System;

package cpl_port_h is

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

   CPL_IS_LSB : constant := 1;  --  ../cpl_port.h:676
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

   FALSE : constant := 0;  --  ../cpl_port.h:1165

   TRUE : constant := 1;  --  ../cpl_port.h:1169
   --  unsupported macro: EMULATED_BOOL bool
   --  unsupported macro: VOLATILE_BOOL volatile bool
   --  unsupported macro: CPL_NULLPTR NULL

   subtype GInt32 is int;  -- ../cpl_port.h:205

   subtype GUInt32 is unsigned;  -- ../cpl_port.h:207

   subtype GInt16 is short;  -- ../cpl_port.h:211

   subtype GUInt16 is unsigned_short;  -- ../cpl_port.h:213

   subtype GByte is unsigned_char;  -- ../cpl_port.h:215

   subtype GBool is int;  -- ../cpl_port.h:223

   subtype GIntBig is Long_Long_Integer;  -- ../cpl_port.h:248

   subtype GUIntBig is Extensions.unsigned_long_long;  -- ../cpl_port.h:251

   subtype GInt64 is GIntBig;  -- ../cpl_port.h:267

   subtype GUInt64 is GUIntBig;  -- ../cpl_port.h:269

   subtype GPtrDiff_t is GIntBig;  -- ../cpl_port.h:286

   type CSLConstList is new System.Address;  -- ../cpl_port.h:1216

end cpl_port_h;
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;

package cpl_progress_h is

   type GDALProgressFunc is access function
        (arg1 : double;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : System.Address) return int
   with Convention => C;  -- ../cpl_progress.h:37

   function GDALDummyProgress
     (arg1 : double;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address) return int  -- ../cpl_progress.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDummyProgress";

   function GDALTermProgress
     (arg1 : double;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address) return int  -- ../cpl_progress.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTermProgress";

   function GDALScaledProgress
     (arg1 : double;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address) return int  -- ../cpl_progress.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "GDALScaledProgress";

   function GDALCreateScaledProgress
     (arg1 : double;
      arg2 : double;
      arg3 : GDALProgressFunc;
      arg4 : System.Address) return System.Address  -- ../cpl_progress.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateScaledProgress";

   procedure GDALDestroyScaledProgress (arg1 : System.Address)  -- ../cpl_progress.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyScaledProgress";

end cpl_progress_h;
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with System;
with cpl_vsi_h;

package cpl_virtualmem_h is

   type CPLVirtualMem is null record;   -- incomplete struct

   type CPLVirtualMemCachePageCbk is access procedure
        (arg1 : access CPLVirtualMem;
         arg2 : stddef_h.size_t;
         arg3 : System.Address;
         arg4 : stddef_h.size_t;
         arg5 : System.Address)
   with Convention => C;  -- ../cpl_virtualmem.h:74

   type CPLVirtualMemUnCachePageCbk is access procedure
        (arg1 : access CPLVirtualMem;
         arg2 : stddef_h.size_t;
         arg3 : System.Address;
         arg4 : stddef_h.size_t;
         arg5 : System.Address)
   with Convention => C;  -- ../cpl_virtualmem.h:90

   type CPLVirtualMemFreeUserData is access procedure (arg1 : System.Address)
   with Convention => C;  -- ../cpl_virtualmem.h:99

   type CPLVirtualMemAccessMode is 
     (VIRTUALMEM_READONLY,
      VIRTUALMEM_READONLY_ENFORCED,
      VIRTUALMEM_READWRITE)
   with Convention => C;  -- ../cpl_virtualmem.h:113

   function CPLGetPageSize return stddef_h.size_t  -- ../cpl_virtualmem.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetPageSize";

   function CPLVirtualMemNew
     (nSize : stddef_h.size_t;
      nCacheSize : stddef_h.size_t;
      nPageSizeHint : stddef_h.size_t;
      bSingleThreadUsage : int;
      eAccessMode : CPLVirtualMemAccessMode;
      pfnCachePage : CPLVirtualMemCachePageCbk;
      pfnUnCachePage : CPLVirtualMemUnCachePageCbk;
      pfnFreeUserData : CPLVirtualMemFreeUserData;
      pCbkUserData : System.Address) return access CPLVirtualMem  -- ../cpl_virtualmem.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemNew";

   function CPLIsVirtualMemFileMapAvailable return int  -- ../cpl_virtualmem.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "CPLIsVirtualMemFileMapAvailable";

   function CPLVirtualMemFileMapNew
     (fp : access cpl_vsi_h.VSILFILE;
      nOffset : cpl_vsi_h.vsi_l_offset;
      nLength : cpl_vsi_h.vsi_l_offset;
      eAccessMode : CPLVirtualMemAccessMode;
      pfnFreeUserData : CPLVirtualMemFreeUserData;
      pCbkUserData : System.Address) return access CPLVirtualMem  -- ../cpl_virtualmem.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemFileMapNew";

   function CPLVirtualMemDerivedNew
     (pVMemBase : access CPLVirtualMem;
      nOffset : cpl_vsi_h.vsi_l_offset;
      nSize : cpl_vsi_h.vsi_l_offset;
      pfnFreeUserData : CPLVirtualMemFreeUserData;
      pCbkUserData : System.Address) return access CPLVirtualMem  -- ../cpl_virtualmem.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemDerivedNew";

   procedure CPLVirtualMemFree (ctxt : access CPLVirtualMem)  -- ../cpl_virtualmem.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemFree";

   function CPLVirtualMemGetAddr (ctxt : access CPLVirtualMem) return System.Address  -- ../cpl_virtualmem.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemGetAddr";

   function CPLVirtualMemGetSize (ctxt : access CPLVirtualMem) return stddef_h.size_t  -- ../cpl_virtualmem.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemGetSize";

   function CPLVirtualMemIsFileMapping (ctxt : access CPLVirtualMem) return int  -- ../cpl_virtualmem.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemIsFileMapping";

   function CPLVirtualMemGetAccessMode (ctxt : access CPLVirtualMem) return CPLVirtualMemAccessMode  -- ../cpl_virtualmem.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemGetAccessMode";

   function CPLVirtualMemGetPageSize (ctxt : access CPLVirtualMem) return stddef_h.size_t  -- ../cpl_virtualmem.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemGetPageSize";

   function CPLVirtualMemIsAccessThreadSafe (ctxt : access CPLVirtualMem) return int  -- ../cpl_virtualmem.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemIsAccessThreadSafe";

   procedure CPLVirtualMemDeclareThread (ctxt : access CPLVirtualMem)  -- ../cpl_virtualmem.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemDeclareThread";

   procedure CPLVirtualMemUnDeclareThread (ctxt : access CPLVirtualMem)  -- ../cpl_virtualmem.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemUnDeclareThread";

   procedure CPLVirtualMemPin
     (ctxt : access CPLVirtualMem;
      pAddr : System.Address;
      nSize : stddef_h.size_t;
      bWriteOp : int)  -- ../cpl_virtualmem.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemPin";

   procedure CPLVirtualMemManagerTerminate  -- ../cpl_virtualmem.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "CPLVirtualMemManagerTerminate";

end cpl_virtualmem_h;
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with x86_64_linux_gnu_bits_types_FILE_h;
with System;
with stddef_h;
with x86_64_linux_gnu_bits_stat_h;
with cpl_port_h;
with cpl_progress_h;
with x86_64_linux_gnu_bits_types_time_t_h;
limited with x86_64_linux_gnu_bits_types_struct_tm_h;

package cpl_vsi_h is

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

   VSI_STAT_SIZE_FLAG : constant := 16#4#;  --  ../cpl_vsi.h:208

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

   function VSIFOpen (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return access x86_64_linux_gnu_bits_types_FILE_h.FILE  -- ../cpl_vsi.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFOpen";

   function VSIFClose (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return int  -- ../cpl_vsi.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFClose";

   function VSIFSeek
     (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE;
      arg2 : long;
      arg3 : int) return int  -- ../cpl_vsi.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFSeek";

   function VSIFTell (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return long  -- ../cpl_vsi.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFTell";

   procedure VSIRewind (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE)  -- ../cpl_vsi.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "VSIRewind";

   procedure VSIFFlush (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE)  -- ../cpl_vsi.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFFlush";

   function VSIFRead
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t;
      arg4 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return stddef_h.size_t  -- ../cpl_vsi.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFRead";

   function VSIFWrite
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t;
      arg4 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return stddef_h.size_t  -- ../cpl_vsi.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFWrite";

   function VSIFGets
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFGets";

   function VSIFPuts (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return int  -- ../cpl_vsi.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFPuts";

   function VSIFPrintf (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- ../cpl_vsi.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFPrintf";

   function VSIFGetc (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return int  -- ../cpl_vsi.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFGetc";

   function VSIFPutc (arg1 : int; arg2 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return int  -- ../cpl_vsi.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFPutc";

   function VSIUngetc (arg1 : int; arg2 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return int  -- ../cpl_vsi.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "VSIUngetc";

   function VSIFEof (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return int  -- ../cpl_vsi.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFEof";

   subtype VSIStatBuf is x86_64_linux_gnu_bits_stat_h.stat;  -- ../cpl_vsi.h:110

   function VSIStat (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access VSIStatBuf) return int  -- ../cpl_vsi.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "VSIStat";

   subtype vsi_l_offset is cpl_port_h.GUIntBig;  -- ../cpl_vsi.h:140

   subtype VSILFILE is x86_64_linux_gnu_bits_types_FILE_h.FILE;  -- ../cpl_vsi.h:156

   function VSIFOpenL (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return access VSILFILE  -- ../cpl_vsi.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFOpenL";

   function VSIFOpenExL
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return access VSILFILE  -- ../cpl_vsi.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFOpenExL";

   function VSIFOpenEx2L
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : cpl_port_h.CSLConstList) return access VSILFILE  -- ../cpl_vsi.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFOpenEx2L";

   function VSIFCloseL (arg1 : access VSILFILE) return int  -- ../cpl_vsi.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFCloseL";

   function VSIFSeekL
     (arg1 : access VSILFILE;
      arg2 : vsi_l_offset;
      arg3 : int) return int  -- ../cpl_vsi.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFSeekL";

   function VSIFTellL (arg1 : access VSILFILE) return vsi_l_offset  -- ../cpl_vsi.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFTellL";

   procedure VSIRewindL (arg1 : access VSILFILE)  -- ../cpl_vsi.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "VSIRewindL";

   function VSIFReadL
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t;
      arg4 : access VSILFILE) return stddef_h.size_t  -- ../cpl_vsi.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFReadL";

   function VSIFReadMultiRangeL
     (nRanges : int;
      ppData : System.Address;
      panOffsets : access vsi_l_offset;
      panSizes : access stddef_h.size_t;
      arg5 : access VSILFILE) return int  -- ../cpl_vsi.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFReadMultiRangeL";

   function VSIFWriteL
     (arg1 : System.Address;
      arg2 : stddef_h.size_t;
      arg3 : stddef_h.size_t;
      arg4 : access VSILFILE) return stddef_h.size_t  -- ../cpl_vsi.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFWriteL";

   function VSIFEofL (arg1 : access VSILFILE) return int  -- ../cpl_vsi.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFEofL";

   function VSIFTruncateL (arg1 : access VSILFILE; arg2 : vsi_l_offset) return int  -- ../cpl_vsi.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFTruncateL";

   function VSIFFlushL (arg1 : access VSILFILE) return int  -- ../cpl_vsi.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFFlushL";

   function VSIFPrintfL (arg1 : access VSILFILE; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return int  -- ../cpl_vsi.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFPrintfL";

   function VSIFPutcL (arg1 : int; arg2 : access VSILFILE) return int  -- ../cpl_vsi.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFPutcL";

   type VSIRangeStatus is 
     (VSI_RANGE_STATUS_UNKNOWN,
      VSI_RANGE_STATUS_DATA,
      VSI_RANGE_STATUS_HOLE)
   with Convention => C;  -- ../cpl_vsi.h:181

   function VSIFGetRangeStatusL
     (fp : access VSILFILE;
      nStart : vsi_l_offset;
      nLength : vsi_l_offset) return VSIRangeStatus  -- ../cpl_vsi.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFGetRangeStatusL";

   function VSIIngestFile
     (fp : access VSILFILE;
      pszFilename : Interfaces.C.Strings.chars_ptr;
      ppabyRet : System.Address;
      pnSize : access vsi_l_offset;
      nMaxSize : cpl_port_h.GIntBig) return int  -- ../cpl_vsi.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "VSIIngestFile";

   function VSIOverwriteFile (fpTarget : access VSILFILE; pszSourceFilename : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_vsi.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "VSIOverwriteFile";

   type stat64 is null record;   -- incomplete struct

   subtype VSIStatBufL is stat64;  -- ../cpl_vsi.h:195

   function VSIStatL (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access VSIStatBufL) return int  -- ../cpl_vsi.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "VSIStatL";

   function VSIStatExL
     (pszFilename : Interfaces.C.Strings.chars_ptr;
      psStatBuf : access VSIStatBufL;
      nFlags : int) return int  -- ../cpl_vsi.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "VSIStatExL";

   function VSIIsCaseSensitiveFS (pszFilename : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_vsi.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "VSIIsCaseSensitiveFS";

   function VSISupportsSparseFiles (pszPath : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_vsi.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "VSISupportsSparseFiles";

   function VSIHasOptimizedReadMultiRange (pszPath : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_vsi.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "VSIHasOptimizedReadMultiRange";

   function VSIGetActualURL (pszFilename : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGetActualURL";

   function VSIGetSignedURL (pszFilename : Interfaces.C.Strings.chars_ptr; papszOptions : cpl_port_h.CSLConstList) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGetSignedURL";

   function VSIGetFileSystemOptions (pszFilename : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGetFileSystemOptions";

   function VSIGetFileSystemsPrefixes return System.Address  -- ../cpl_vsi.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGetFileSystemsPrefixes";

   function VSIFGetNativeFileDescriptorL (arg1 : access VSILFILE) return System.Address  -- ../cpl_vsi.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFGetNativeFileDescriptorL";

   function VSIGetFileMetadata
     (pszFilename : Interfaces.C.Strings.chars_ptr;
      pszDomain : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return System.Address  -- ../cpl_vsi.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGetFileMetadata";

   function VSISetFileMetadata
     (pszFilename : Interfaces.C.Strings.chars_ptr;
      papszMetadata : cpl_port_h.CSLConstList;
      pszDomain : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return int  -- ../cpl_vsi.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "VSISetFileMetadata";

   function VSICalloc (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address  -- ../cpl_vsi.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "VSICalloc";

   function VSIMalloc (arg1 : stddef_h.size_t) return System.Address  -- ../cpl_vsi.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMalloc";

   procedure VSIFree (arg1 : System.Address)  -- ../cpl_vsi.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFree";

   function VSIRealloc (arg1 : System.Address; arg2 : stddef_h.size_t) return System.Address  -- ../cpl_vsi.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "VSIRealloc";

   function VSIStrdup (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "VSIStrdup";

   function VSIMallocAligned (nAlignment : stddef_h.size_t; nSize : stddef_h.size_t) return System.Address  -- ../cpl_vsi.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMallocAligned";

   function VSIMallocAlignedAuto (nSize : stddef_h.size_t) return System.Address  -- ../cpl_vsi.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMallocAlignedAuto";

   procedure VSIFreeAligned (ptr : System.Address)  -- ../cpl_vsi.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFreeAligned";

   function VSIMallocAlignedAutoVerbose
     (nSize : stddef_h.size_t;
      pszFile : Interfaces.C.Strings.chars_ptr;
      nLine : int) return System.Address  -- ../cpl_vsi.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMallocAlignedAutoVerbose";

   function VSIMalloc2 (nSize1 : stddef_h.size_t; nSize2 : stddef_h.size_t) return System.Address  -- ../cpl_vsi.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMalloc2";

   function VSIMalloc3
     (nSize1 : stddef_h.size_t;
      nSize2 : stddef_h.size_t;
      nSize3 : stddef_h.size_t) return System.Address  -- ../cpl_vsi.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMalloc3";

   function VSIMallocVerbose
     (nSize : stddef_h.size_t;
      pszFile : Interfaces.C.Strings.chars_ptr;
      nLine : int) return System.Address  -- ../cpl_vsi.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMallocVerbose";

   function VSIMalloc2Verbose
     (nSize1 : stddef_h.size_t;
      nSize2 : stddef_h.size_t;
      pszFile : Interfaces.C.Strings.chars_ptr;
      nLine : int) return System.Address  -- ../cpl_vsi.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMalloc2Verbose";

   function VSIMalloc3Verbose
     (nSize1 : stddef_h.size_t;
      nSize2 : stddef_h.size_t;
      nSize3 : stddef_h.size_t;
      pszFile : Interfaces.C.Strings.chars_ptr;
      nLine : int) return System.Address  -- ../cpl_vsi.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMalloc3Verbose";

   function VSICallocVerbose
     (nCount : stddef_h.size_t;
      nSize : stddef_h.size_t;
      pszFile : Interfaces.C.Strings.chars_ptr;
      nLine : int) return System.Address  -- ../cpl_vsi.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "VSICallocVerbose";

   function VSIReallocVerbose
     (pOldPtr : System.Address;
      nNewSize : stddef_h.size_t;
      pszFile : Interfaces.C.Strings.chars_ptr;
      nLine : int) return System.Address  -- ../cpl_vsi.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "VSIReallocVerbose";

   function VSIStrdupVerbose
     (pszStr : Interfaces.C.Strings.chars_ptr;
      pszFile : Interfaces.C.Strings.chars_ptr;
      nLine : int) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "VSIStrdupVerbose";

   function CPLGetPhysicalRAM return cpl_port_h.GIntBig  -- ../cpl_vsi.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetPhysicalRAM";

   function CPLGetUsablePhysicalRAM return cpl_port_h.GIntBig  -- ../cpl_vsi.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "CPLGetUsablePhysicalRAM";

   function VSIReadDir (arg1 : Interfaces.C.Strings.chars_ptr) return System.Address  -- ../cpl_vsi.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "VSIReadDir";

   function VSIReadDirRecursive (pszPath : Interfaces.C.Strings.chars_ptr) return System.Address  -- ../cpl_vsi.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "VSIReadDirRecursive";

   function VSIReadDirEx (pszPath : Interfaces.C.Strings.chars_ptr; nMaxFiles : int) return System.Address  -- ../cpl_vsi.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "VSIReadDirEx";

   function VSISiblingFiles (pszPath : Interfaces.C.Strings.chars_ptr) return System.Address  -- ../cpl_vsi.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "VSISiblingFiles";

   type VSIDIR is null record;   -- incomplete struct

   function VSIOpenDir
     (pszPath : Interfaces.C.Strings.chars_ptr;
      nRecurseDepth : int;
      papszOptions : System.Address) return access VSIDIR  -- ../cpl_vsi.h:321
   with Import => True, 
        Convention => C, 
        External_Name => "VSIOpenDir";

   type VSIDIREntry;
   type VSIDIREntry is record
      pszName : Interfaces.C.Strings.chars_ptr;  -- ../cpl_vsi.h:333
      nMode : aliased int;  -- ../cpl_vsi.h:335
      nSize : aliased vsi_l_offset;  -- ../cpl_vsi.h:337
      nMTime : aliased cpl_port_h.GIntBig;  -- ../cpl_vsi.h:339
      bModeKnown : aliased char;  -- ../cpl_vsi.h:341
      bSizeKnown : aliased char;  -- ../cpl_vsi.h:343
      bMTimeKnown : aliased char;  -- ../cpl_vsi.h:345
      papszExtra : System.Address;  -- ../cpl_vsi.h:347
   end record
   with Convention => C_Pass_By_Copy;  -- ../cpl_vsi.h:330

   function VSIGetNextDirEntry (dir : access VSIDIR) return access constant VSIDIREntry  -- ../cpl_vsi.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGetNextDirEntry";

   procedure VSICloseDir (dir : access VSIDIR)  -- ../cpl_vsi.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "VSICloseDir";

   function VSIMkdir (pszPathname : Interfaces.C.Strings.chars_ptr; mode : long) return int  -- ../cpl_vsi.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMkdir";

   function VSIMkdirRecursive (pszPathname : Interfaces.C.Strings.chars_ptr; mode : long) return int  -- ../cpl_vsi.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "VSIMkdirRecursive";

   function VSIRmdir (pszDirname : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_vsi.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "VSIRmdir";

   function VSIRmdirRecursive (pszDirname : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_vsi.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "VSIRmdirRecursive";

   function VSIUnlink (pszFilename : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_vsi.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "VSIUnlink";

   function VSIUnlinkBatch (papszFiles : cpl_port_h.CSLConstList) return access int  -- ../cpl_vsi.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "VSIUnlinkBatch";

   function VSIRename (oldpath : Interfaces.C.Strings.chars_ptr; newpath : Interfaces.C.Strings.chars_ptr) return int  -- ../cpl_vsi.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "VSIRename";

   function VSISync
     (pszSource : Interfaces.C.Strings.chars_ptr;
      pszTarget : Interfaces.C.Strings.chars_ptr;
      papszOptions : System.Address;
      pProgressFunc : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address;
      ppapszOutputs : System.Address) return int  -- ../cpl_vsi.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "VSISync";

   function VSIStrerror (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "VSIStrerror";

   function VSIGetDiskFreeSpace (pszDirname : Interfaces.C.Strings.chars_ptr) return cpl_port_h.GIntBig  -- ../cpl_vsi.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGetDiskFreeSpace";

   procedure VSINetworkStatsReset  -- ../cpl_vsi.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "VSINetworkStatsReset";

   function VSINetworkStatsGetAsSerializedJSON (papszOptions : System.Address) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:379
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

   procedure VSICurlPartialClearCache (pszFilenamePrefix : Interfaces.C.Strings.chars_ptr)  -- ../cpl_vsi.h:391
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

   procedure VSISetCryptKey (pabyKey : access cpl_port_h.GByte; nKeySize : int)  -- ../cpl_vsi.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "VSISetCryptKey";

   procedure VSICleanupFileManager  -- ../cpl_vsi.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "VSICleanupFileManager";

   function VSIFileFromMemBuffer
     (pszFilename : Interfaces.C.Strings.chars_ptr;
      pabyData : access cpl_port_h.GByte;
      nDataLength : vsi_l_offset;
      bTakeOwnership : int) return access VSILFILE  -- ../cpl_vsi.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFileFromMemBuffer";

   function VSIGetMemFileBuffer
     (pszFilename : Interfaces.C.Strings.chars_ptr;
      pnDataLength : access vsi_l_offset;
      bUnlinkAndSeize : int) return access cpl_port_h.GByte  -- ../cpl_vsi.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGetMemFileBuffer";

   type VSIWriteFunction is access function
        (arg1 : System.Address;
         arg2 : stddef_h.size_t;
         arg3 : stddef_h.size_t;
         arg4 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return stddef_h.size_t
   with Convention => C;  -- ../cpl_vsi.h:427

   procedure VSIStdoutSetRedirection (pFct : VSIWriteFunction; stream : access x86_64_linux_gnu_bits_types_FILE_h.FILE)  -- ../cpl_vsi.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "VSIStdoutSetRedirection";

   type VSIFilesystemPluginStatCallback is access function
        (arg1 : System.Address;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : access VSIStatBufL;
         arg4 : int) return int
   with Convention => C;  -- ../cpl_vsi.h:434

   type VSIFilesystemPluginUnlinkCallback is access function (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return int
   with Convention => C;  -- ../cpl_vsi.h:439

   type VSIFilesystemPluginRenameCallback is access function
        (arg1 : System.Address;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr) return int
   with Convention => C;  -- ../cpl_vsi.h:444

   type VSIFilesystemPluginMkdirCallback is access function
        (arg1 : System.Address;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : long) return int
   with Convention => C;  -- ../cpl_vsi.h:449

   type VSIFilesystemPluginRmdirCallback is access function (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return int
   with Convention => C;  -- ../cpl_vsi.h:454

   type VSIFilesystemPluginReadDirCallback is access function
        (arg1 : System.Address;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : int) return System.Address
   with Convention => C;  -- ../cpl_vsi.h:459

   type VSIFilesystemPluginSiblingFilesCallback is access function (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return System.Address
   with Convention => C;  -- ../cpl_vsi.h:468

   type VSIFilesystemPluginOpenCallback is access function
        (arg1 : System.Address;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr) return System.Address
   with Convention => C;  -- ../cpl_vsi.h:474

   type VSIFilesystemPluginTellCallback is access function (arg1 : System.Address) return vsi_l_offset
   with Convention => C;  -- ../cpl_vsi.h:479

   type VSIFilesystemPluginSeekCallback is access function
        (arg1 : System.Address;
         arg2 : vsi_l_offset;
         arg3 : int) return int
   with Convention => C;  -- ../cpl_vsi.h:484

   type VSIFilesystemPluginReadCallback is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : stddef_h.size_t;
         arg4 : stddef_h.size_t) return stddef_h.size_t
   with Convention => C;  -- ../cpl_vsi.h:490

   type VSIFilesystemPluginReadMultiRangeCallback is access function
        (arg1 : System.Address;
         arg2 : int;
         arg3 : System.Address;
         arg4 : access vsi_l_offset;
         arg5 : access stddef_h.size_t) return int
   with Convention => C;  -- ../cpl_vsi.h:495

   type VSIFilesystemPluginGetRangeStatusCallback is access function
        (arg1 : System.Address;
         arg2 : vsi_l_offset;
         arg3 : vsi_l_offset) return VSIRangeStatus
   with Convention => C;  -- ../cpl_vsi.h:501

   type VSIFilesystemPluginEofCallback is access function (arg1 : System.Address) return int
   with Convention => C;  -- ../cpl_vsi.h:506

   type VSIFilesystemPluginWriteCallback is access function
        (arg1 : System.Address;
         arg2 : System.Address;
         arg3 : stddef_h.size_t;
         arg4 : stddef_h.size_t) return stddef_h.size_t
   with Convention => C;  -- ../cpl_vsi.h:511

   type VSIFilesystemPluginFlushCallback is access function (arg1 : System.Address) return int
   with Convention => C;  -- ../cpl_vsi.h:516

   type VSIFilesystemPluginTruncateCallback is access function (arg1 : System.Address; arg2 : vsi_l_offset) return int
   with Convention => C;  -- ../cpl_vsi.h:520

   type VSIFilesystemPluginCloseCallback is access function (arg1 : System.Address) return int
   with Convention => C;  -- ../cpl_vsi.h:525

   type VSIFilesystemPluginCallbacksStruct is record
      pUserData : System.Address;  -- ../cpl_vsi.h:538
      stat : VSIFilesystemPluginStatCallback;  -- ../cpl_vsi.h:539
      unlink : VSIFilesystemPluginUnlinkCallback;  -- ../cpl_vsi.h:540
      rename : VSIFilesystemPluginRenameCallback;  -- ../cpl_vsi.h:541
      mkdir : VSIFilesystemPluginMkdirCallback;  -- ../cpl_vsi.h:542
      rmdir : VSIFilesystemPluginRmdirCallback;  -- ../cpl_vsi.h:543
      read_dir : VSIFilesystemPluginReadDirCallback;  -- ../cpl_vsi.h:544
      open : VSIFilesystemPluginOpenCallback;  -- ../cpl_vsi.h:545
      tell : VSIFilesystemPluginTellCallback;  -- ../cpl_vsi.h:546
      seek : VSIFilesystemPluginSeekCallback;  -- ../cpl_vsi.h:547
      read : VSIFilesystemPluginReadCallback;  -- ../cpl_vsi.h:548
      read_multi_range : VSIFilesystemPluginReadMultiRangeCallback;  -- ../cpl_vsi.h:549
      get_range_status : VSIFilesystemPluginGetRangeStatusCallback;  -- ../cpl_vsi.h:550
      eof : VSIFilesystemPluginEofCallback;  -- ../cpl_vsi.h:551
      write : VSIFilesystemPluginWriteCallback;  -- ../cpl_vsi.h:552
      flush : VSIFilesystemPluginFlushCallback;  -- ../cpl_vsi.h:553
      truncate : VSIFilesystemPluginTruncateCallback;  -- ../cpl_vsi.h:554
      close : VSIFilesystemPluginCloseCallback;  -- ../cpl_vsi.h:555
      nBufferSize : aliased stddef_h.size_t;  -- ../cpl_vsi.h:556
      nCacheSize : aliased stddef_h.size_t;  -- ../cpl_vsi.h:557
      sibling_files : VSIFilesystemPluginSiblingFilesCallback;  -- ../cpl_vsi.h:558
   end record
   with Convention => C_Pass_By_Copy;  -- ../cpl_vsi.h:564

   function VSIAllocFilesystemPluginCallbacksStruct return access VSIFilesystemPluginCallbacksStruct  -- ../cpl_vsi.h:570
   with Import => True, 
        Convention => C, 
        External_Name => "VSIAllocFilesystemPluginCallbacksStruct";

   procedure VSIFreeFilesystemPluginCallbacksStruct (poCb : access VSIFilesystemPluginCallbacksStruct)  -- ../cpl_vsi.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "VSIFreeFilesystemPluginCallbacksStruct";

   function VSIInstallPluginHandler (pszPrefix : Interfaces.C.Strings.chars_ptr; poCb : access constant VSIFilesystemPluginCallbacksStruct) return int  -- ../cpl_vsi.h:584
   with Import => True, 
        Convention => C, 
        External_Name => "VSIInstallPluginHandler";

   function VSITime (arg1 : access unsigned_long) return unsigned_long  -- ../cpl_vsi.h:591
   with Import => True, 
        Convention => C, 
        External_Name => "VSITime";

   function VSICTime (arg1 : unsigned_long) return Interfaces.C.Strings.chars_ptr  -- ../cpl_vsi.h:592
   with Import => True, 
        Convention => C, 
        External_Name => "VSICTime";

   function VSIGMTime (pnTime : access x86_64_linux_gnu_bits_types_time_t_h.time_t; poBrokenTime : access x86_64_linux_gnu_bits_types_struct_tm_h.tm) return access x86_64_linux_gnu_bits_types_struct_tm_h.tm  -- ../cpl_vsi.h:593
   with Import => True, 
        Convention => C, 
        External_Name => "VSIGMTime";

   function VSILocalTime (pnTime : access x86_64_linux_gnu_bits_types_time_t_h.time_t; poBrokenTime : access x86_64_linux_gnu_bits_types_struct_tm_h.tm) return access x86_64_linux_gnu_bits_types_struct_tm_h.tm  -- ../cpl_vsi.h:595
   with Import => True, 
        Convention => C, 
        External_Name => "VSILocalTime";

end cpl_vsi_h;
