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
