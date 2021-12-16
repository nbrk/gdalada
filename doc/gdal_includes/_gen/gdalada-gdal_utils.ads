pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with gdal_h;
with Interfaces.C.Strings;
with cpl_progress_h;

package gdal_utils_h is

   type GDALInfoOptions is null record;   -- incomplete struct

   type GDALInfoOptionsForBinary is null record;   -- incomplete struct

   function GDALInfoOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALInfoOptionsForBinary) return access GDALInfoOptions  -- ../gdal_utils.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "GDALInfoOptionsNew";

   procedure GDALInfoOptionsFree (psOptions : access GDALInfoOptions)  -- ../gdal_utils.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "GDALInfoOptionsFree";

   function GDALInfo (hDataset : gdal_h.GDALDatasetH; psOptions : access constant GDALInfoOptions) return Interfaces.C.Strings.chars_ptr  -- ../gdal_utils.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "GDALInfo";

   type GDALTranslateOptions is null record;   -- incomplete struct

   type GDALTranslateOptionsForBinary is null record;   -- incomplete struct

   function GDALTranslateOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALTranslateOptionsForBinary) return access GDALTranslateOptions  -- ../gdal_utils.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTranslateOptionsNew";

   procedure GDALTranslateOptionsFree (psOptions : access GDALTranslateOptions)  -- ../gdal_utils.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTranslateOptionsFree";

   procedure GDALTranslateOptionsSetProgress
     (psOptions : access GDALTranslateOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTranslateOptionsSetProgress";

   function GDALTranslate
     (pszDestFilename : Interfaces.C.Strings.chars_ptr;
      hSrcDataset : gdal_h.GDALDatasetH;
      psOptions : access constant GDALTranslateOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTranslate";

   type GDALWarpAppOptions is null record;   -- incomplete struct

   type GDALWarpAppOptionsForBinary is null record;   -- incomplete struct

   function GDALWarpAppOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALWarpAppOptionsForBinary) return access GDALWarpAppOptions  -- ../gdal_utils.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpAppOptionsNew";

   procedure GDALWarpAppOptionsFree (psOptions : access GDALWarpAppOptions)  -- ../gdal_utils.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpAppOptionsFree";

   procedure GDALWarpAppOptionsSetProgress
     (psOptions : access GDALWarpAppOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpAppOptionsSetProgress";

   procedure GDALWarpAppOptionsSetQuiet (psOptions : access GDALWarpAppOptions; bQuiet : int)  -- ../gdal_utils.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpAppOptionsSetQuiet";

   procedure GDALWarpAppOptionsSetWarpOption
     (psOptions : access GDALWarpAppOptions;
      pszKey : Interfaces.C.Strings.chars_ptr;
      pszValue : Interfaces.C.Strings.chars_ptr)  -- ../gdal_utils.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpAppOptionsSetWarpOption";

   function GDALWarp
     (pszDest : Interfaces.C.Strings.chars_ptr;
      hDstDS : gdal_h.GDALDatasetH;
      nSrcCount : int;
      pahSrcDS : System.Address;
      psOptions : access constant GDALWarpAppOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarp";

   type GDALVectorTranslateOptions is null record;   -- incomplete struct

   type GDALVectorTranslateOptionsForBinary is null record;   -- incomplete struct

   function GDALVectorTranslateOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALVectorTranslateOptionsForBinary) return access GDALVectorTranslateOptions  -- ../gdal_utils.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "GDALVectorTranslateOptionsNew";

   procedure GDALVectorTranslateOptionsFree (psOptions : access GDALVectorTranslateOptions)  -- ../gdal_utils.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "GDALVectorTranslateOptionsFree";

   procedure GDALVectorTranslateOptionsSetProgress
     (psOptions : access GDALVectorTranslateOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "GDALVectorTranslateOptionsSetProgress";

   function GDALVectorTranslate
     (pszDest : Interfaces.C.Strings.chars_ptr;
      hDstDS : gdal_h.GDALDatasetH;
      nSrcCount : int;
      pahSrcDS : System.Address;
      psOptions : access constant GDALVectorTranslateOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "GDALVectorTranslate";

   type GDALDEMProcessingOptions is null record;   -- incomplete struct

   type GDALDEMProcessingOptionsForBinary is null record;   -- incomplete struct

   function GDALDEMProcessingOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALDEMProcessingOptionsForBinary) return access GDALDEMProcessingOptions  -- ../gdal_utils.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDEMProcessingOptionsNew";

   procedure GDALDEMProcessingOptionsFree (psOptions : access GDALDEMProcessingOptions)  -- ../gdal_utils.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDEMProcessingOptionsFree";

   procedure GDALDEMProcessingOptionsSetProgress
     (psOptions : access GDALDEMProcessingOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDEMProcessingOptionsSetProgress";

   function GDALDEMProcessing
     (pszDestFilename : Interfaces.C.Strings.chars_ptr;
      hSrcDataset : gdal_h.GDALDatasetH;
      pszProcessing : Interfaces.C.Strings.chars_ptr;
      pszColorFilename : Interfaces.C.Strings.chars_ptr;
      psOptions : access constant GDALDEMProcessingOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDEMProcessing";

   type GDALNearblackOptions is null record;   -- incomplete struct

   type GDALNearblackOptionsForBinary is null record;   -- incomplete struct

   function GDALNearblackOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALNearblackOptionsForBinary) return access GDALNearblackOptions  -- ../gdal_utils.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "GDALNearblackOptionsNew";

   procedure GDALNearblackOptionsFree (psOptions : access GDALNearblackOptions)  -- ../gdal_utils.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "GDALNearblackOptionsFree";

   procedure GDALNearblackOptionsSetProgress
     (psOptions : access GDALNearblackOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "GDALNearblackOptionsSetProgress";

   function GDALNearblack
     (pszDest : Interfaces.C.Strings.chars_ptr;
      hDstDS : gdal_h.GDALDatasetH;
      hSrcDS : gdal_h.GDALDatasetH;
      psOptions : access constant GDALNearblackOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "GDALNearblack";

   type GDALGridOptions is null record;   -- incomplete struct

   type GDALGridOptionsForBinary is null record;   -- incomplete struct

   function GDALGridOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALGridOptionsForBinary) return access GDALGridOptions  -- ../gdal_utils.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGridOptionsNew";

   procedure GDALGridOptionsFree (psOptions : access GDALGridOptions)  -- ../gdal_utils.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGridOptionsFree";

   procedure GDALGridOptionsSetProgress
     (psOptions : access GDALGridOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGridOptionsSetProgress";

   function GDALGrid
     (pszDest : Interfaces.C.Strings.chars_ptr;
      hSrcDS : gdal_h.GDALDatasetH;
      psOptions : access constant GDALGridOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGrid";

   type GDALRasterizeOptions is null record;   -- incomplete struct

   type GDALRasterizeOptionsForBinary is null record;   -- incomplete struct

   function GDALRasterizeOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALRasterizeOptionsForBinary) return access GDALRasterizeOptions  -- ../gdal_utils.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterizeOptionsNew";

   procedure GDALRasterizeOptionsFree (psOptions : access GDALRasterizeOptions)  -- ../gdal_utils.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterizeOptionsFree";

   procedure GDALRasterizeOptionsSetProgress
     (psOptions : access GDALRasterizeOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterizeOptionsSetProgress";

   function GDALRasterize
     (pszDest : Interfaces.C.Strings.chars_ptr;
      hDstDS : gdal_h.GDALDatasetH;
      hSrcDS : gdal_h.GDALDatasetH;
      psOptions : access constant GDALRasterizeOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterize";

   type GDALBuildVRTOptions is null record;   -- incomplete struct

   type GDALBuildVRTOptionsForBinary is null record;   -- incomplete struct

   function GDALBuildVRTOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALBuildVRTOptionsForBinary) return access GDALBuildVRTOptions  -- ../gdal_utils.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "GDALBuildVRTOptionsNew";

   procedure GDALBuildVRTOptionsFree (psOptions : access GDALBuildVRTOptions)  -- ../gdal_utils.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "GDALBuildVRTOptionsFree";

   procedure GDALBuildVRTOptionsSetProgress
     (psOptions : access GDALBuildVRTOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "GDALBuildVRTOptionsSetProgress";

   function GDALBuildVRT
     (pszDest : Interfaces.C.Strings.chars_ptr;
      nSrcCount : int;
      pahSrcDS : System.Address;
      papszSrcDSNames : System.Address;
      psOptions : access constant GDALBuildVRTOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "GDALBuildVRT";

   type GDALMultiDimInfoOptions is null record;   -- incomplete struct

   type GDALMultiDimInfoOptionsForBinary is null record;   -- incomplete struct

   function GDALMultiDimInfoOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALMultiDimInfoOptionsForBinary) return access GDALMultiDimInfoOptions  -- ../gdal_utils.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMultiDimInfoOptionsNew";

   procedure GDALMultiDimInfoOptionsFree (psOptions : access GDALMultiDimInfoOptions)  -- ../gdal_utils.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMultiDimInfoOptionsFree";

   function GDALMultiDimInfo (hDataset : gdal_h.GDALDatasetH; psOptions : access constant GDALMultiDimInfoOptions) return Interfaces.C.Strings.chars_ptr  -- ../gdal_utils.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMultiDimInfo";

   type GDALMultiDimTranslateOptions is null record;   -- incomplete struct

   type GDALMultiDimTranslateOptionsForBinary is null record;   -- incomplete struct

   function GDALMultiDimTranslateOptionsNew (papszArgv : System.Address; psOptionsForBinary : access GDALMultiDimTranslateOptionsForBinary) return access GDALMultiDimTranslateOptions  -- ../gdal_utils.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMultiDimTranslateOptionsNew";

   procedure GDALMultiDimTranslateOptionsFree (psOptions : access GDALMultiDimTranslateOptions)  -- ../gdal_utils.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMultiDimTranslateOptionsFree";

   procedure GDALMultiDimTranslateOptionsSetProgress
     (psOptions : access GDALMultiDimTranslateOptions;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address)  -- ../gdal_utils.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMultiDimTranslateOptionsSetProgress";

   function GDALMultiDimTranslate
     (pszDest : Interfaces.C.Strings.chars_ptr;
      hDstDataset : gdal_h.GDALDatasetH;
      nSrcCount : int;
      pahSrcDS : System.Address;
      psOptions : access constant GDALMultiDimTranslateOptions;
      pbUsageError : access int) return gdal_h.GDALDatasetH  -- ../gdal_utils.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMultiDimTranslate";

end gdal_utils_h;
