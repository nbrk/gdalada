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
