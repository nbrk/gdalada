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
