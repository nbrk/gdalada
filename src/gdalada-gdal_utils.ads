pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Gdalada.CPL; use Gdalada.CPL;
with Gdalada.GDAL; use Gdalada.GDAL;

package Gdalada.GDAL_Utils is

   type GDALInfoOptions is null record;   -- incomplete struct

   type GDALInfoOptionsForBinary is null record;   -- incomplete struct

   function GDALInfoOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALInfoOptionsForBinary) return access GDALInfoOptions  -- ../gdal_utils.h:54
     with Import => True, 
     Convention => C, 
     External_Name => "GDALInfoOptionsNew";

   procedure GDALInfoOptionsFree (PsOptions : access GDALInfoOptions)  -- ../gdal_utils.h:56
     with Import => True, 
     Convention => C, 
     External_Name => "GDALInfoOptionsFree";

   function GDALInfo (HDataset : GDALDatasetH; PsOptions : access constant GDALInfoOptions) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal_utils.h:58
     with Import => True, 
     Convention => C, 
     External_Name => "GDALInfo";

   type GDALTranslateOptions is null record;   -- incomplete struct

   type GDALTranslateOptionsForBinary is null record;   -- incomplete struct

   function GDALTranslateOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALTranslateOptionsForBinary) return access GDALTranslateOptions  -- ../gdal_utils.h:66
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTranslateOptionsNew";

   procedure GDALTranslateOptionsFree (PsOptions : access GDALTranslateOptions)  -- ../gdal_utils.h:69
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTranslateOptionsFree";

   procedure GDALTranslateOptionsSetProgress
     (PsOptions     : access GDALTranslateOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:71
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTranslateOptionsSetProgress";

   function GDALTranslate
     (PszDestFilename : Interfaces.C.Strings.Chars_Ptr;
      HSrcDataset     : GDALDatasetH;
      PsOptions       : access constant GDALTranslateOptions;
      PbUsageError    : access Int) return GDALDatasetH  -- ../gdal_utils.h:75
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTranslate";

   type GDALWarpAppOptions is null record;   -- incomplete struct

   type GDALWarpAppOptionsForBinary is null record;   -- incomplete struct

   function GDALWarpAppOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALWarpAppOptionsForBinary) return access GDALWarpAppOptions  -- ../gdal_utils.h:86
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpAppOptionsNew";

   procedure GDALWarpAppOptionsFree (PsOptions : access GDALWarpAppOptions)  -- ../gdal_utils.h:89
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpAppOptionsFree";

   procedure GDALWarpAppOptionsSetProgress
     (PsOptions     : access GDALWarpAppOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:91
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpAppOptionsSetProgress";

   procedure GDALWarpAppOptionsSetQuiet (PsOptions : access GDALWarpAppOptions; BQuiet : Int)  -- ../gdal_utils.h:94
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpAppOptionsSetQuiet";

   procedure GDALWarpAppOptionsSetWarpOption
     (PsOptions : access GDALWarpAppOptions;
      PszKey    : Interfaces.C.Strings.Chars_Ptr;
      PszValue  : Interfaces.C.Strings.Chars_Ptr)  -- ../gdal_utils.h:96
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpAppOptionsSetWarpOption";

   function GDALWarp
     (PszDest      : Interfaces.C.Strings.Chars_Ptr;
      HDstDS       : GDALDatasetH;
      NSrcCount    : Int;
      PahSrcDS     : System.Address;
      PsOptions    : access constant GDALWarpAppOptions;
      PbUsageError : access Int) return GDALDatasetH  -- ../gdal_utils.h:100
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarp";

   type GDALVectorTranslateOptions is null record;   -- incomplete struct

   type GDALVectorTranslateOptionsForBinary is null record;   -- incomplete struct

   function GDALVectorTranslateOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALVectorTranslateOptionsForBinary) return access GDALVectorTranslateOptions  -- ../gdal_utils.h:110
     with Import => True, 
     Convention => C, 
     External_Name => "GDALVectorTranslateOptionsNew";

   procedure GDALVectorTranslateOptionsFree (PsOptions : access GDALVectorTranslateOptions)  -- ../gdal_utils.h:113
     with Import => True, 
     Convention => C, 
     External_Name => "GDALVectorTranslateOptionsFree";

   procedure GDALVectorTranslateOptionsSetProgress
     (PsOptions     : access GDALVectorTranslateOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:115
     with Import => True, 
     Convention => C, 
     External_Name => "GDALVectorTranslateOptionsSetProgress";

   function GDALVectorTranslate
     (PszDest      : Interfaces.C.Strings.Chars_Ptr;
      HDstDS       : GDALDatasetH;
      NSrcCount    : Int;
      PahSrcDS     : System.Address;
      PsOptions    : access constant GDALVectorTranslateOptions;
      PbUsageError : access Int) return GDALDatasetH  -- ../gdal_utils.h:119
     with Import => True, 
     Convention => C, 
     External_Name => "GDALVectorTranslate";

   type GDALDEMProcessingOptions is null record;   -- incomplete struct

   type GDALDEMProcessingOptionsForBinary is null record;   -- incomplete struct

   function GDALDEMProcessingOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALDEMProcessingOptionsForBinary) return access GDALDEMProcessingOptions  -- ../gdal_utils.h:129
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDEMProcessingOptionsNew";

   procedure GDALDEMProcessingOptionsFree (PsOptions : access GDALDEMProcessingOptions)  -- ../gdal_utils.h:132
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDEMProcessingOptionsFree";

   procedure GDALDEMProcessingOptionsSetProgress
     (PsOptions     : access GDALDEMProcessingOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:134
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDEMProcessingOptionsSetProgress";

   function GDALDEMProcessing
     (PszDestFilename  : Interfaces.C.Strings.Chars_Ptr;
      HSrcDataset      : GDALDatasetH;
      PszProcessing    : Interfaces.C.Strings.Chars_Ptr;
      PszColorFilename : Interfaces.C.Strings.Chars_Ptr;
      PsOptions        : access constant GDALDEMProcessingOptions;
      PbUsageError     : access Int) return GDALDatasetH  -- ../gdal_utils.h:138
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDEMProcessing";

   type GDALNearblackOptions is null record;   -- incomplete struct

   type GDALNearblackOptionsForBinary is null record;   -- incomplete struct

   function GDALNearblackOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALNearblackOptionsForBinary) return access GDALNearblackOptions  -- ../gdal_utils.h:151
     with Import => True, 
     Convention => C, 
     External_Name => "GDALNearblackOptionsNew";

   procedure GDALNearblackOptionsFree (PsOptions : access GDALNearblackOptions)  -- ../gdal_utils.h:154
     with Import => True, 
     Convention => C, 
     External_Name => "GDALNearblackOptionsFree";

   procedure GDALNearblackOptionsSetProgress
     (PsOptions     : access GDALNearblackOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:156
     with Import => True, 
     Convention => C, 
     External_Name => "GDALNearblackOptionsSetProgress";

   function GDALNearblack
     (PszDest      : Interfaces.C.Strings.Chars_Ptr;
      HDstDS       : GDALDatasetH;
      HSrcDS       : GDALDatasetH;
      PsOptions    : access constant GDALNearblackOptions;
      PbUsageError : access Int) return GDALDatasetH  -- ../gdal_utils.h:160
     with Import => True, 
     Convention => C, 
     External_Name => "GDALNearblack";

   type GDALGridOptions is null record;   -- incomplete struct

   type GDALGridOptionsForBinary is null record;   -- incomplete struct

   function GDALGridOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALGridOptionsForBinary) return access GDALGridOptions  -- ../gdal_utils.h:170
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGridOptionsNew";

   procedure GDALGridOptionsFree (PsOptions : access GDALGridOptions)  -- ../gdal_utils.h:173
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGridOptionsFree";

   procedure GDALGridOptionsSetProgress
     (PsOptions     : access GDALGridOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:175
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGridOptionsSetProgress";

   function GDALGrid
     (PszDest      : Interfaces.C.Strings.Chars_Ptr;
      HSrcDS       : GDALDatasetH;
      PsOptions    : access constant GDALGridOptions;
      PbUsageError : access Int) return GDALDatasetH  -- ../gdal_utils.h:179
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGrid";

   type GDALRasterizeOptions is null record;   -- incomplete struct

   type GDALRasterizeOptionsForBinary is null record;   -- incomplete struct

   function GDALRasterizeOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALRasterizeOptionsForBinary) return access GDALRasterizeOptions  -- ../gdal_utils.h:189
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterizeOptionsNew";

   procedure GDALRasterizeOptionsFree (PsOptions : access GDALRasterizeOptions)  -- ../gdal_utils.h:192
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterizeOptionsFree";

   procedure GDALRasterizeOptionsSetProgress
     (PsOptions     : access GDALRasterizeOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:194
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterizeOptionsSetProgress";

   function GDALRasterize
     (PszDest      : Interfaces.C.Strings.Chars_Ptr;
      HDstDS       : GDALDatasetH;
      HSrcDS       : GDALDatasetH;
      PsOptions    : access constant GDALRasterizeOptions;
      PbUsageError : access Int) return GDALDatasetH  -- ../gdal_utils.h:198
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterize";

   type GDALBuildVRTOptions is null record;   -- incomplete struct

   type GDALBuildVRTOptionsForBinary is null record;   -- incomplete struct

   function GDALBuildVRTOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALBuildVRTOptionsForBinary) return access GDALBuildVRTOptions  -- ../gdal_utils.h:208
     with Import => True, 
     Convention => C, 
     External_Name => "GDALBuildVRTOptionsNew";

   procedure GDALBuildVRTOptionsFree (PsOptions : access GDALBuildVRTOptions)  -- ../gdal_utils.h:211
     with Import => True, 
     Convention => C, 
     External_Name => "GDALBuildVRTOptionsFree";

   procedure GDALBuildVRTOptionsSetProgress
     (PsOptions     : access GDALBuildVRTOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:213
     with Import => True, 
     Convention => C, 
     External_Name => "GDALBuildVRTOptionsSetProgress";

   function GDALBuildVRT
     (PszDest         : Interfaces.C.Strings.Chars_Ptr;
      NSrcCount       : Int;
      PahSrcDS        : System.Address;
      PapszSrcDSNames : System.Address;
      PsOptions       : access constant GDALBuildVRTOptions;
      PbUsageError    : access Int) return GDALDatasetH  -- ../gdal_utils.h:217
     with Import => True, 
     Convention => C, 
     External_Name => "GDALBuildVRT";

   type GDALMultiDimInfoOptions is null record;   -- incomplete struct

   type GDALMultiDimInfoOptionsForBinary is null record;   -- incomplete struct

   function GDALMultiDimInfoOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALMultiDimInfoOptionsForBinary) return access GDALMultiDimInfoOptions  -- ../gdal_utils.h:228
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMultiDimInfoOptionsNew";

   procedure GDALMultiDimInfoOptionsFree (PsOptions : access GDALMultiDimInfoOptions)  -- ../gdal_utils.h:230
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMultiDimInfoOptionsFree";

   function GDALMultiDimInfo (HDataset : GDALDatasetH; PsOptions : access constant GDALMultiDimInfoOptions) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal_utils.h:232
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMultiDimInfo";

   type GDALMultiDimTranslateOptions is null record;   -- incomplete struct

   type GDALMultiDimTranslateOptionsForBinary is null record;   -- incomplete struct

   function GDALMultiDimTranslateOptionsNew (PapszArgv : System.Address; PsOptionsForBinary : access GDALMultiDimTranslateOptionsForBinary) return access GDALMultiDimTranslateOptions  -- ../gdal_utils.h:241
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMultiDimTranslateOptionsNew";

   procedure GDALMultiDimTranslateOptionsFree (PsOptions : access GDALMultiDimTranslateOptions)  -- ../gdal_utils.h:243
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMultiDimTranslateOptionsFree";

   procedure GDALMultiDimTranslateOptionsSetProgress
     (PsOptions     : access GDALMultiDimTranslateOptions;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address)  -- ../gdal_utils.h:245
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMultiDimTranslateOptionsSetProgress";

   function GDALMultiDimTranslate
     (PszDest      : Interfaces.C.Strings.Chars_Ptr;
      HDstDataset  : GDALDatasetH;
      NSrcCount    : Int;
      PahSrcDS     : System.Address;
      PsOptions    : access constant GDALMultiDimTranslateOptions;
      PbUsageError : access Int) return GDALDatasetH  -- ../gdal_utils.h:249
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMultiDimTranslate";

end Gdalada.GDAL_Utils;
