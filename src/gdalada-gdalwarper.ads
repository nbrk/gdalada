pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Gdalada.CPL; use Gdalada.CPL;
with Gdalada.GDAL; use Gdalada.GDAL;
with Gdalada.GDAL_Alg; use Gdalada.GDAL_Alg;


package Gdalada.Gdalwarper is

   subtype GDALResampleAlg is Unsigned;
   GRA_NearestNeighbour : constant GDALResampleAlg := 0;
   GRA_Bilinear         : constant GDALResampleAlg := 1;
   GRA_Cubic            : constant GDALResampleAlg := 2;
   GRA_CubicSpline      : constant GDALResampleAlg := 3;
   GRA_Lanczos          : constant GDALResampleAlg := 4;
   GRA_Average          : constant GDALResampleAlg := 5;
   GRA_Mode             : constant GDALResampleAlg := 6;
   GRA_Max              : constant GDALResampleAlg := 8;
   GRA_Min              : constant GDALResampleAlg := 9;
   GRA_Med              : constant GDALResampleAlg := 10;
   GRA_Q1               : constant GDALResampleAlg := 11;
   GRA_Q3               : constant GDALResampleAlg := 12;
   GRA_Sum              : constant GDALResampleAlg := 13;
   GRA_RMS              : constant GDALResampleAlg := 14;
   GRA_LAST_VALUE       : constant GDALResampleAlg := 14;  -- ../gdalwarper.h:69

   subtype GWKAverageOrModeAlg is Unsigned;
   GWKAOM_Average       : constant GWKAverageOrModeAlg := 1;
   GWKAOM_Fmode         : constant GWKAverageOrModeAlg := 2;
   GWKAOM_Imode         : constant GWKAverageOrModeAlg := 3;
   GWKAOM_Max           : constant GWKAverageOrModeAlg := 4;
   GWKAOM_Min           : constant GWKAverageOrModeAlg := 5;
   GWKAOM_Quant         : constant GWKAverageOrModeAlg := 6;
   GWKAOM_Sum           : constant GWKAverageOrModeAlg := 7;
   GWKAOM_RMS           : constant GWKAverageOrModeAlg := 8;  -- ../gdalwarper.h:81

   type GDALMaskFunc is access function
     (Arg1  : System.Address;
      Arg2  : Int;
      Arg3  : GDALDataType;
      Arg4  : Int;
      Arg5  : Int;
      Arg6  : Int;
      Arg7  : Int;
      Arg8  : System.Address;
      Arg9  : Int;
      Arg10 : System.Address) return Int
     with Convention => C;  -- ../gdalwarper.h:85

   function GDALWarpNoDataMasker
     (PMaskFuncArg    : System.Address;
      NBandCount      : Int;
      EType           : GDALDataType;
      NXOff           : Int;
      NYOff           : Int;
      NXSize          : Int;
      NYSize          : Int;
      PapabyImageData : System.Address;
      BMaskIsFloat    : Int;
      PValidityMask   : System.Address;
      PbOutAllValid   : access Int) return CPLErr  -- ../gdalwarper.h:93
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpNoDataMasker";

   function GDALWarpDstAlphaMasker
     (PMaskFuncArg  : System.Address;
      NBandCount    : Int;
      EType         : GDALDataType;
      NXOff         : Int;
      NYOff         : Int;
      NXSize        : Int;
      NYSize        : Int;
      Arg8          : System.Address;
      BMaskIsFloat  : Int;
      PValidityMask : System.Address) return CPLErr  -- ../gdalwarper.h:99
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpDstAlphaMasker";

   function GDALWarpSrcAlphaMasker
     (PMaskFuncArg   : System.Address;
      NBandCount     : Int;
      EType          : GDALDataType;
      NXOff          : Int;
      NYOff          : Int;
      NXSize         : Int;
      NYSize         : Int;
      Arg8           : System.Address;
      BMaskIsFloat   : Int;
      PValidityMask  : System.Address;
      PbOutAllOpaque : access Int) return CPLErr  -- ../gdalwarper.h:104
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpSrcAlphaMasker";

   function GDALWarpSrcMaskMasker
     (PMaskFuncArg  : System.Address;
      NBandCount    : Int;
      EType         : GDALDataType;
      NXOff         : Int;
      NYOff         : Int;
      NXSize        : Int;
      NYSize        : Int;
      Arg8          : System.Address;
      BMaskIsFloat  : Int;
      PValidityMask : System.Address) return CPLErr  -- ../gdalwarper.h:110
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpSrcMaskMasker";

   function GDALWarpCutlineMasker
     (PMaskFuncArg  : System.Address;
      NBandCount    : Int;
      EType         : GDALDataType;
      NXOff         : Int;
      NYOff         : Int;
      NXSize        : Int;
      NYSize        : Int;
      Arg8          : System.Address;
      BMaskIsFloat  : Int;
      PValidityMask : System.Address) return CPLErr  -- ../gdalwarper.h:116
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpCutlineMasker";

   type GDALWarpOptions is record
      PapszWarpOptions                 : System.Address;  -- ../gdalwarper.h:129
      DfWarpMemoryLimit                : aliased Double;  -- ../gdalwarper.h:132
      EResampleAlg                     : aliased GDALResampleAlg;  -- ../gdalwarper.h:135
      EWorkingDataType                 : aliased GDALDataType;  -- ../gdalwarper.h:139
      HSrcDS                           : GDALDatasetH;  -- ../gdalwarper.h:142
      HDstDS                           : GDALDatasetH;  -- ../gdalwarper.h:145
      NBandCount                       : aliased Int;  -- ../gdalwarper.h:148
      PanSrcBands                      : access Int;  -- ../gdalwarper.h:151
      PanDstBands                      : access Int;  -- ../gdalwarper.h:154
      NSrcAlphaBand                    : aliased Int;  -- ../gdalwarper.h:157
      NDstAlphaBand                    : aliased Int;  -- ../gdalwarper.h:160
      PadfSrcNoDataReal                : access Double;  -- ../gdalwarper.h:163
      PadfSrcNoDataImag                : access Double;  -- ../gdalwarper.h:167
      PadfDstNoDataReal                : access Double;  -- ../gdalwarper.h:170
      PadfDstNoDataImag                : access Double;  -- ../gdalwarper.h:174
      PfnProgress                      : GDALProgressFunc;  -- ../gdalwarper.h:178
      PProgressArg                     : System.Address;  -- ../gdalwarper.h:181
      PfnTransformer                   : GDALTransformerFunc;  -- ../gdalwarper.h:184
      PTransformerArg                  : System.Address;  -- ../gdalwarper.h:187
      PapfnSrcPerBandValidityMaskFunc  : System.Address;  -- ../gdalwarper.h:190
      PapSrcPerBandValidityMaskFuncArg : System.Address;  -- ../gdalwarper.h:192
      PfnSrcValidityMaskFunc           : GDALMaskFunc;  -- ../gdalwarper.h:195
      PSrcValidityMaskFuncArg          : System.Address;  -- ../gdalwarper.h:197
      PfnSrcDensityMaskFunc            : GDALMaskFunc;  -- ../gdalwarper.h:200
      PSrcDensityMaskFuncArg           : System.Address;  -- ../gdalwarper.h:202
      PfnDstDensityMaskFunc            : GDALMaskFunc;  -- ../gdalwarper.h:205
      PDstDensityMaskFuncArg           : System.Address;  -- ../gdalwarper.h:207
      PfnDstValidityMaskFunc           : GDALMaskFunc;  -- ../gdalwarper.h:210
      PDstValidityMaskFuncArg          : System.Address;  -- ../gdalwarper.h:212
      PfnPreWarpChunkProcessor         : access function (Arg1 : System.Address; Arg2      : System.Address) return CPLErr;  -- ../gdalwarper.h:215
      PPreWarpProcessorArg             : System.Address;  -- ../gdalwarper.h:217
      PfnPostWarpChunkProcessor        : access function (Arg1 : System.Address; Arg2      : System.Address) return CPLErr;  -- ../gdalwarper.h:220
      PPostWarpProcessorArg            : System.Address;  -- ../gdalwarper.h:222
      HCutline                         : System.Address;  -- ../gdalwarper.h:225
      DfCutlineBlendDist               : aliased Double;  -- ../gdalwarper.h:228
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdalwarper.h:230

   function GDALCreateWarpOptions return access GDALWarpOptions  -- ../gdalwarper.h:232
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateWarpOptions";

   procedure GDALDestroyWarpOptions (Arg1 : access GDALWarpOptions)  -- ../gdalwarper.h:233
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyWarpOptions";

   function GDALCloneWarpOptions (Arg1 : access constant GDALWarpOptions) return access GDALWarpOptions  -- ../gdalwarper.h:235
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCloneWarpOptions";

   procedure GDALWarpInitDstNoDataReal (Arg1 : access GDALWarpOptions; DNoDataReal : Double)  -- ../gdalwarper.h:238
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpInitDstNoDataReal";

   procedure GDALWarpInitSrcNoDataReal (Arg1 : access GDALWarpOptions; DNoDataReal : Double)  -- ../gdalwarper.h:241
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpInitSrcNoDataReal";

   procedure GDALWarpInitNoDataReal (Arg1 : access GDALWarpOptions; DNoDataReal : Double)  -- ../gdalwarper.h:244
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpInitNoDataReal";

   procedure GDALWarpInitDstNoDataImag (Arg1 : access GDALWarpOptions; DNoDataImag : Double)  -- ../gdalwarper.h:247
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpInitDstNoDataImag";

   procedure GDALWarpInitSrcNoDataImag (Arg1 : access GDALWarpOptions; DNoDataImag : Double)  -- ../gdalwarper.h:250
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpInitSrcNoDataImag";

   procedure GDALWarpResolveWorkingDataType (Arg1 : access GDALWarpOptions)  -- ../gdalwarper.h:253
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpResolveWorkingDataType";

   procedure GDALWarpInitDefaultBandMapping (Arg1 : access GDALWarpOptions; NBandCount : Int)  -- ../gdalwarper.h:256
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpInitDefaultBandMapping";

   function GDALSerializeWarpOptions (Arg1 : access constant GDALWarpOptions) return access CPLXMLNode  -- ../gdalwarper.h:260
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSerializeWarpOptions";

   function GDALDeserializeWarpOptions (Arg1 : access CPLXMLNode) return access GDALWarpOptions  -- ../gdalwarper.h:262
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDeserializeWarpOptions";

   function GDALReprojectImage
     (HSrcDS            : GDALDatasetH;
      PszSrcWKT         : Interfaces.C.Strings.Chars_Ptr;
      HDstDS            : GDALDatasetH;
      PszDstWKT         : Interfaces.C.Strings.Chars_Ptr;
      EResampleAlg      : GDALResampleAlg;
      DfWarpMemoryLimit : Double;
      DfMaxError        : Double;
      PfnProgress       : GDALProgressFunc;
      PProgressArg      : System.Address;
      PsOptions         : access GDALWarpOptions) return CPLErr  -- ../gdalwarper.h:270
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReprojectImage";

   function GDALCreateAndReprojectImage
     (HSrcDS             : GDALDatasetH;
      PszSrcWKT          : Interfaces.C.Strings.Chars_Ptr;
      PszDstFilename     : Interfaces.C.Strings.Chars_Ptr;
      PszDstWKT          : Interfaces.C.Strings.Chars_Ptr;
      HDstDriver         : GDALDriverH;
      PapszCreateOptions : System.Address;
      EResampleAlg       : GDALResampleAlg;
      DfWarpMemoryLimit  : Double;
      DfMaxError         : Double;
      PfnProgress        : GDALProgressFunc;
      PProgressArg       : System.Address;
      PsOptions          : access GDALWarpOptions) return CPLErr  -- ../gdalwarper.h:278
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateAndReprojectImage";

   function GDALAutoCreateWarpedVRT
     (HSrcDS       : GDALDatasetH;
      PszSrcWKT    : Interfaces.C.Strings.Chars_Ptr;
      PszDstWKT    : Interfaces.C.Strings.Chars_Ptr;
      EResampleAlg : GDALResampleAlg;
      DfMaxError   : Double;
      PsOptions    : access constant GDALWarpOptions) return GDALDatasetH  -- ../gdalwarper.h:291
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAutoCreateWarpedVRT";

   function GDALAutoCreateWarpedVRTEx
     (HSrcDS                  : GDALDatasetH;
      PszSrcWKT               : Interfaces.C.Strings.Chars_Ptr;
      PszDstWKT               : Interfaces.C.Strings.Chars_Ptr;
      EResampleAlg            : GDALResampleAlg;
      DfMaxError              : Double;
      PsOptions               : access constant GDALWarpOptions;
      PapszTransformerOptions : CSLConstList) return GDALDatasetH  -- ../gdalwarper.h:297
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAutoCreateWarpedVRTEx";

   function GDALCreateWarpedVRT
     (HSrcDS           : GDALDatasetH;
      NPixels          : Int;
      NLines           : Int;
      PadfGeoTransform : access Double;
      PsOptions        : access GDALWarpOptions) return GDALDatasetH  -- ../gdalwarper.h:304
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateWarpedVRT";

   function GDALInitializeWarpedVRT (HDS : GDALDatasetH; PsWO : access GDALWarpOptions) return CPLErr  -- ../gdalwarper.h:309
     with Import => True, 
     Convention => C, 
     External_Name => "GDALInitializeWarpedVRT";

   Subtype GDALWarpOperationH is System.Address;  -- ../gdalwarper.h:549

   function GDALCreateWarpOperation (Arg1 : access constant GDALWarpOptions) return GDALWarpOperationH  -- ../gdalwarper.h:551
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateWarpOperation";

   procedure GDALDestroyWarpOperation (Arg1 : GDALWarpOperationH)  -- ../gdalwarper.h:552
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyWarpOperation";

   function GDALChunkAndWarpImage
     (Arg1 : GDALWarpOperationH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Int;
      Arg5 : Int) return CPLErr  -- ../gdalwarper.h:553
     with Import => True, 
     Convention => C, 
     External_Name => "GDALChunkAndWarpImage";

   function GDALChunkAndWarpMulti
     (Arg1 : GDALWarpOperationH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Int;
      Arg5 : Int) return CPLErr  -- ../gdalwarper.h:554
     with Import => True, 
     Convention => C, 
     External_Name => "GDALChunkAndWarpMulti";

   function GDALWarpRegion
     (Arg1 : GDALWarpOperationH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Int;
      Arg5 : Int;
      Arg6 : Int;
      Arg7 : Int;
      Arg8 : Int;
      Arg9 : Int) return CPLErr  -- ../gdalwarper.h:555
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpRegion";

   function GDALWarpRegionToBuffer
     (Arg1  : GDALWarpOperationH;
      Arg2  : Int;
      Arg3  : Int;
      Arg4  : Int;
      Arg5  : Int;
      Arg6  : System.Address;
      Arg7  : GDALDataType;
      Arg8  : Int;
      Arg9  : Int;
      Arg10 : Int;
      Arg11 : Int) return CPLErr  -- ../gdalwarper.h:557
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWarpRegionToBuffer";

   function GWKGetFilterRadius (EResampleAlg : GDALResampleAlg) return Int  -- ../gdalwarper.h:566
     with Import => True, 
     Convention => C, 
     External_Name => "GWKGetFilterRadius";

   type FilterFuncType is access function (Arg1 : Double) return Double
     with Convention => C;  -- ../gdalwarper.h:568

   function GWKGetFilterFunc (EResampleAlg : GDALResampleAlg) return FilterFuncType  -- ../gdalwarper.h:569
     with Import => True, 
     Convention => C, 
     External_Name => "GWKGetFilterFunc";

   type FilterFunc4ValuesType is access function (Arg1 : access Double) return Double
     with Convention => C;  -- ../gdalwarper.h:572

   function GWKGetFilterFunc4Values (EResampleAlg : GDALResampleAlg) return FilterFunc4ValuesType  -- ../gdalwarper.h:573
     with Import => True, 
     Convention => C, 
     External_Name => "GWKGetFilterFunc4Values";

end Gdalada.Gdalwarper;
