pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with gdal_h;
with cpl_error_h;
with cpl_progress_h;
with gdal_alg_h;
limited with cpl_minixml_h;
with Interfaces.C.Strings;
with cpl_port_h;

package gdalwarper_h is

   subtype GDALResampleAlg is unsigned;
   GRA_NearestNeighbour : constant GDALResampleAlg := 0;
   GRA_Bilinear : constant GDALResampleAlg := 1;
   GRA_Cubic : constant GDALResampleAlg := 2;
   GRA_CubicSpline : constant GDALResampleAlg := 3;
   GRA_Lanczos : constant GDALResampleAlg := 4;
   GRA_Average : constant GDALResampleAlg := 5;
   GRA_Mode : constant GDALResampleAlg := 6;
   GRA_Max : constant GDALResampleAlg := 8;
   GRA_Min : constant GDALResampleAlg := 9;
   GRA_Med : constant GDALResampleAlg := 10;
   GRA_Q1 : constant GDALResampleAlg := 11;
   GRA_Q3 : constant GDALResampleAlg := 12;
   GRA_Sum : constant GDALResampleAlg := 13;
   GRA_RMS : constant GDALResampleAlg := 14;
   GRA_LAST_VALUE : constant GDALResampleAlg := 14;  -- ../gdalwarper.h:69

   subtype GWKAverageOrModeAlg is unsigned;
   GWKAOM_Average : constant GWKAverageOrModeAlg := 1;
   GWKAOM_Fmode : constant GWKAverageOrModeAlg := 2;
   GWKAOM_Imode : constant GWKAverageOrModeAlg := 3;
   GWKAOM_Max : constant GWKAverageOrModeAlg := 4;
   GWKAOM_Min : constant GWKAverageOrModeAlg := 5;
   GWKAOM_Quant : constant GWKAverageOrModeAlg := 6;
   GWKAOM_Sum : constant GWKAverageOrModeAlg := 7;
   GWKAOM_RMS : constant GWKAverageOrModeAlg := 8;  -- ../gdalwarper.h:81

   type GDALMaskFunc is access function
        (arg1 : System.Address;
         arg2 : int;
         arg3 : gdal_h.GDALDataType;
         arg4 : int;
         arg5 : int;
         arg6 : int;
         arg7 : int;
         arg8 : System.Address;
         arg9 : int;
         arg10 : System.Address) return int
   with Convention => C;  -- ../gdalwarper.h:85

   function GDALWarpNoDataMasker
     (pMaskFuncArg : System.Address;
      nBandCount : int;
      eType : gdal_h.GDALDataType;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      papabyImageData : System.Address;
      bMaskIsFloat : int;
      pValidityMask : System.Address;
      pbOutAllValid : access int) return cpl_error_h.CPLErr  -- ../gdalwarper.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpNoDataMasker";

   function GDALWarpDstAlphaMasker
     (pMaskFuncArg : System.Address;
      nBandCount : int;
      eType : gdal_h.GDALDataType;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      arg8 : System.Address;
      bMaskIsFloat : int;
      pValidityMask : System.Address) return cpl_error_h.CPLErr  -- ../gdalwarper.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpDstAlphaMasker";

   function GDALWarpSrcAlphaMasker
     (pMaskFuncArg : System.Address;
      nBandCount : int;
      eType : gdal_h.GDALDataType;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      arg8 : System.Address;
      bMaskIsFloat : int;
      pValidityMask : System.Address;
      pbOutAllOpaque : access int) return cpl_error_h.CPLErr  -- ../gdalwarper.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpSrcAlphaMasker";

   function GDALWarpSrcMaskMasker
     (pMaskFuncArg : System.Address;
      nBandCount : int;
      eType : gdal_h.GDALDataType;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      arg8 : System.Address;
      bMaskIsFloat : int;
      pValidityMask : System.Address) return cpl_error_h.CPLErr  -- ../gdalwarper.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpSrcMaskMasker";

   function GDALWarpCutlineMasker
     (pMaskFuncArg : System.Address;
      nBandCount : int;
      eType : gdal_h.GDALDataType;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      arg8 : System.Address;
      bMaskIsFloat : int;
      pValidityMask : System.Address) return cpl_error_h.CPLErr  -- ../gdalwarper.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpCutlineMasker";

   type GDALWarpOptions is record
      papszWarpOptions : System.Address;  -- ../gdalwarper.h:129
      dfWarpMemoryLimit : aliased double;  -- ../gdalwarper.h:132
      eResampleAlg : aliased GDALResampleAlg;  -- ../gdalwarper.h:135
      eWorkingDataType : aliased gdal_h.GDALDataType;  -- ../gdalwarper.h:139
      hSrcDS : gdal_h.GDALDatasetH;  -- ../gdalwarper.h:142
      hDstDS : gdal_h.GDALDatasetH;  -- ../gdalwarper.h:145
      nBandCount : aliased int;  -- ../gdalwarper.h:148
      panSrcBands : access int;  -- ../gdalwarper.h:151
      panDstBands : access int;  -- ../gdalwarper.h:154
      nSrcAlphaBand : aliased int;  -- ../gdalwarper.h:157
      nDstAlphaBand : aliased int;  -- ../gdalwarper.h:160
      padfSrcNoDataReal : access double;  -- ../gdalwarper.h:163
      padfSrcNoDataImag : access double;  -- ../gdalwarper.h:167
      padfDstNoDataReal : access double;  -- ../gdalwarper.h:170
      padfDstNoDataImag : access double;  -- ../gdalwarper.h:174
      pfnProgress : cpl_progress_h.GDALProgressFunc;  -- ../gdalwarper.h:178
      pProgressArg : System.Address;  -- ../gdalwarper.h:181
      pfnTransformer : gdal_alg_h.GDALTransformerFunc;  -- ../gdalwarper.h:184
      pTransformerArg : System.Address;  -- ../gdalwarper.h:187
      papfnSrcPerBandValidityMaskFunc : System.Address;  -- ../gdalwarper.h:190
      papSrcPerBandValidityMaskFuncArg : System.Address;  -- ../gdalwarper.h:192
      pfnSrcValidityMaskFunc : GDALMaskFunc;  -- ../gdalwarper.h:195
      pSrcValidityMaskFuncArg : System.Address;  -- ../gdalwarper.h:197
      pfnSrcDensityMaskFunc : GDALMaskFunc;  -- ../gdalwarper.h:200
      pSrcDensityMaskFuncArg : System.Address;  -- ../gdalwarper.h:202
      pfnDstDensityMaskFunc : GDALMaskFunc;  -- ../gdalwarper.h:205
      pDstDensityMaskFuncArg : System.Address;  -- ../gdalwarper.h:207
      pfnDstValidityMaskFunc : GDALMaskFunc;  -- ../gdalwarper.h:210
      pDstValidityMaskFuncArg : System.Address;  -- ../gdalwarper.h:212
      pfnPreWarpChunkProcessor : access function (arg1 : System.Address; arg2 : System.Address) return cpl_error_h.CPLErr;  -- ../gdalwarper.h:215
      pPreWarpProcessorArg : System.Address;  -- ../gdalwarper.h:217
      pfnPostWarpChunkProcessor : access function (arg1 : System.Address; arg2 : System.Address) return cpl_error_h.CPLErr;  -- ../gdalwarper.h:220
      pPostWarpProcessorArg : System.Address;  -- ../gdalwarper.h:222
      hCutline : System.Address;  -- ../gdalwarper.h:225
      dfCutlineBlendDist : aliased double;  -- ../gdalwarper.h:228
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdalwarper.h:230

   function GDALCreateWarpOptions return access GDALWarpOptions  -- ../gdalwarper.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateWarpOptions";

   procedure GDALDestroyWarpOptions (arg1 : access GDALWarpOptions)  -- ../gdalwarper.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyWarpOptions";

   function GDALCloneWarpOptions (arg1 : access constant GDALWarpOptions) return access GDALWarpOptions  -- ../gdalwarper.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCloneWarpOptions";

   procedure GDALWarpInitDstNoDataReal (arg1 : access GDALWarpOptions; dNoDataReal : double)  -- ../gdalwarper.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpInitDstNoDataReal";

   procedure GDALWarpInitSrcNoDataReal (arg1 : access GDALWarpOptions; dNoDataReal : double)  -- ../gdalwarper.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpInitSrcNoDataReal";

   procedure GDALWarpInitNoDataReal (arg1 : access GDALWarpOptions; dNoDataReal : double)  -- ../gdalwarper.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpInitNoDataReal";

   procedure GDALWarpInitDstNoDataImag (arg1 : access GDALWarpOptions; dNoDataImag : double)  -- ../gdalwarper.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpInitDstNoDataImag";

   procedure GDALWarpInitSrcNoDataImag (arg1 : access GDALWarpOptions; dNoDataImag : double)  -- ../gdalwarper.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpInitSrcNoDataImag";

   procedure GDALWarpResolveWorkingDataType (arg1 : access GDALWarpOptions)  -- ../gdalwarper.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpResolveWorkingDataType";

   procedure GDALWarpInitDefaultBandMapping (arg1 : access GDALWarpOptions; nBandCount : int)  -- ../gdalwarper.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpInitDefaultBandMapping";

   function GDALSerializeWarpOptions (arg1 : access constant GDALWarpOptions) return access cpl_minixml_h.CPLXMLNode  -- ../gdalwarper.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSerializeWarpOptions";

   function GDALDeserializeWarpOptions (arg1 : access cpl_minixml_h.CPLXMLNode) return access GDALWarpOptions  -- ../gdalwarper.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDeserializeWarpOptions";

   function GDALReprojectImage
     (hSrcDS : gdal_h.GDALDatasetH;
      pszSrcWKT : Interfaces.C.Strings.chars_ptr;
      hDstDS : gdal_h.GDALDatasetH;
      pszDstWKT : Interfaces.C.Strings.chars_ptr;
      eResampleAlg : GDALResampleAlg;
      dfWarpMemoryLimit : double;
      dfMaxError : double;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address;
      psOptions : access GDALWarpOptions) return cpl_error_h.CPLErr  -- ../gdalwarper.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReprojectImage";

   function GDALCreateAndReprojectImage
     (hSrcDS : gdal_h.GDALDatasetH;
      pszSrcWKT : Interfaces.C.Strings.chars_ptr;
      pszDstFilename : Interfaces.C.Strings.chars_ptr;
      pszDstWKT : Interfaces.C.Strings.chars_ptr;
      hDstDriver : gdal_h.GDALDriverH;
      papszCreateOptions : System.Address;
      eResampleAlg : GDALResampleAlg;
      dfWarpMemoryLimit : double;
      dfMaxError : double;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address;
      psOptions : access GDALWarpOptions) return cpl_error_h.CPLErr  -- ../gdalwarper.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateAndReprojectImage";

   function GDALAutoCreateWarpedVRT
     (hSrcDS : gdal_h.GDALDatasetH;
      pszSrcWKT : Interfaces.C.Strings.chars_ptr;
      pszDstWKT : Interfaces.C.Strings.chars_ptr;
      eResampleAlg : GDALResampleAlg;
      dfMaxError : double;
      psOptions : access constant GDALWarpOptions) return gdal_h.GDALDatasetH  -- ../gdalwarper.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAutoCreateWarpedVRT";

   function GDALAutoCreateWarpedVRTEx
     (hSrcDS : gdal_h.GDALDatasetH;
      pszSrcWKT : Interfaces.C.Strings.chars_ptr;
      pszDstWKT : Interfaces.C.Strings.chars_ptr;
      eResampleAlg : GDALResampleAlg;
      dfMaxError : double;
      psOptions : access constant GDALWarpOptions;
      papszTransformerOptions : cpl_port_h.CSLConstList) return gdal_h.GDALDatasetH  -- ../gdalwarper.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAutoCreateWarpedVRTEx";

   function GDALCreateWarpedVRT
     (hSrcDS : gdal_h.GDALDatasetH;
      nPixels : int;
      nLines : int;
      padfGeoTransform : access double;
      psOptions : access GDALWarpOptions) return gdal_h.GDALDatasetH  -- ../gdalwarper.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateWarpedVRT";

   function GDALInitializeWarpedVRT (hDS : gdal_h.GDALDatasetH; psWO : access GDALWarpOptions) return cpl_error_h.CPLErr  -- ../gdalwarper.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "GDALInitializeWarpedVRT";

   type GDALWarpOperationH is new System.Address;  -- ../gdalwarper.h:549

   function GDALCreateWarpOperation (arg1 : access constant GDALWarpOptions) return GDALWarpOperationH  -- ../gdalwarper.h:551
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateWarpOperation";

   procedure GDALDestroyWarpOperation (arg1 : GDALWarpOperationH)  -- ../gdalwarper.h:552
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyWarpOperation";

   function GDALChunkAndWarpImage
     (arg1 : GDALWarpOperationH;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int) return cpl_error_h.CPLErr  -- ../gdalwarper.h:553
   with Import => True, 
        Convention => C, 
        External_Name => "GDALChunkAndWarpImage";

   function GDALChunkAndWarpMulti
     (arg1 : GDALWarpOperationH;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int) return cpl_error_h.CPLErr  -- ../gdalwarper.h:554
   with Import => True, 
        Convention => C, 
        External_Name => "GDALChunkAndWarpMulti";

   function GDALWarpRegion
     (arg1 : GDALWarpOperationH;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : int;
      arg7 : int;
      arg8 : int;
      arg9 : int) return cpl_error_h.CPLErr  -- ../gdalwarper.h:555
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpRegion";

   function GDALWarpRegionToBuffer
     (arg1 : GDALWarpOperationH;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : System.Address;
      arg7 : gdal_h.GDALDataType;
      arg8 : int;
      arg9 : int;
      arg10 : int;
      arg11 : int) return cpl_error_h.CPLErr  -- ../gdalwarper.h:557
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWarpRegionToBuffer";

   function GWKGetFilterRadius (eResampleAlg : GDALResampleAlg) return int  -- ../gdalwarper.h:566
   with Import => True, 
        Convention => C, 
        External_Name => "GWKGetFilterRadius";

   type FilterFuncType is access function (arg1 : double) return double
   with Convention => C;  -- ../gdalwarper.h:568

   function GWKGetFilterFunc (eResampleAlg : GDALResampleAlg) return FilterFuncType  -- ../gdalwarper.h:569
   with Import => True, 
        Convention => C, 
        External_Name => "GWKGetFilterFunc";

   type FilterFunc4ValuesType is access function (arg1 : access double) return double
   with Convention => C;  -- ../gdalwarper.h:572

   function GWKGetFilterFunc4Values (eResampleAlg : GDALResampleAlg) return FilterFunc4ValuesType  -- ../gdalwarper.h:573
   with Import => True, 
        Convention => C, 
        External_Name => "GWKGetFilterFunc4Values";

end gdalwarper_h;
