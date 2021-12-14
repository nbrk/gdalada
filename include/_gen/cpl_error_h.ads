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
