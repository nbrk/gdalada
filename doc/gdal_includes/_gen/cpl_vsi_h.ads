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
