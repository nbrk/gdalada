pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Gdalada.CPL; use Gdalada.CPL;
with Gdalada.GDAL; use Gdalada.GDAL;
with Gdalada.OGR; use Gdalada.OGR;

package Gdalada.GDAL_Alg is

   GDAL_GTI2_SIGNATURE : aliased constant String := "GTI2" & ASCII.NUL;  --  ../gdal_alg.h:119
   --  unsupported macro: RPCInfoToMD RPCInfoV2ToMD
   --  unsupported macro: GDALCreateRPCTransformer GDALCreateRPCTransformerV2

   function GDALComputeMedianCutPCT
     (HRed            : GDALRasterBandH;
      HGreen          : GDALRasterBandH;
      HBlue           : GDALRasterBandH;
      PfnIncludePixel : access function
        (Arg1 : Int;
         Arg2 : Int;
         Arg3 : System.Address) return Int;
      NColors         : Int;
      HColorTable     : GDALColorTableH;
      PfnProgress     : GDALProgressFunc;
      PProgressArg    : System.Address) return Int  -- ../gdal_alg.h:48
     with Import => True, 
     Convention => C, 
     External_Name => "GDALComputeMedianCutPCT";

   function GDALDitherRGB2PCT
     (HRed         : GDALRasterBandH;
      HGreen       : GDALRasterBandH;
      HBlue        : GDALRasterBandH;
      HTarget      : GDALRasterBandH;
      HColorTable  : GDALColorTableH;
      PfnProgress  : GDALProgressFunc;
      PProgressArg : System.Address) return Int  -- ../gdal_alg.h:57
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDitherRGB2PCT";

   function GDALChecksumImage
     (HBand  : GDALRasterBandH;
      NXOff  : Int;
      NYOff  : Int;
      NXSize : Int;
      NYSize : Int) return Int  -- ../gdal_alg.h:65
     with Import => True, 
     Convention => C, 
     External_Name => "GDALChecksumImage";

   function GDALComputeProximity
     (HSrcBand       : GDALRasterBandH;
      HProximityBand : GDALRasterBandH;
      PapszOptions   : System.Address;
      PfnProgress    : GDALProgressFunc;
      PProgressArg   : System.Address) return CPLErr  -- ../gdal_alg.h:69
     with Import => True, 
     Convention => C, 
     External_Name => "GDALComputeProximity";

   function GDALFillNodata
     (HTargetBand          : GDALRasterBandH;
      HMaskBand            : GDALRasterBandH;
      DfMaxSearchDist      : Double;
      BDeprecatedOption    : Int;
      NSmoothingIterations : Int;
      PapszOptions         : System.Address;
      PfnProgress          : GDALProgressFunc;
      PProgressArg         : System.Address) return CPLErr  -- ../gdal_alg.h:76
     with Import => True, 
     Convention => C, 
     External_Name => "GDALFillNodata";

   function GDALPolygonize
     (HSrcBand     : GDALRasterBandH;
      HMaskBand    : GDALRasterBandH;
      HOutLayer    : OGRLayerH;
      IPixValField : Int;
      PapszOptions : System.Address;
      PfnProgress  : GDALProgressFunc;
      PProgressArg : System.Address) return CPLErr  -- ../gdal_alg.h:86
     with Import => True, 
     Convention => C, 
     External_Name => "GDALPolygonize";

   function GDALFPolygonize
     (HSrcBand     : GDALRasterBandH;
      HMaskBand    : GDALRasterBandH;
      HOutLayer    : OGRLayerH;
      IPixValField : Int;
      PapszOptions : System.Address;
      PfnProgress  : GDALProgressFunc;
      PProgressArg : System.Address) return CPLErr  -- ../gdal_alg.h:94
     with Import => True, 
     Convention => C, 
     External_Name => "GDALFPolygonize";

   function GDALSieveFilter
     (HSrcBand       : GDALRasterBandH;
      HMaskBand      : GDALRasterBandH;
      HDstBand       : GDALRasterBandH;
      NSizeThreshold : Int;
      NConnectedness : Int;
      PapszOptions   : System.Address;
      PfnProgress    : GDALProgressFunc;
      PProgressArg   : System.Address) return CPLErr  -- ../gdal_alg.h:102
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSieveFilter";

   type GDALTransformerFunc is access function
     (Arg1 : System.Address;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : access Double;
      Arg5 : access Double;
      Arg6 : access Double;
      Arg7 : access Int) return Int
     with Convention => C;  -- ../gdal_alg.h:114

   type GDALTransformerInfo_Array6942 is array (0 .. 3) of aliased GByte;
   type GDALTransformerInfo is record
      AbySignature     : aliased GDALTransformerInfo_Array6942;  -- ../gdal_alg.h:122
      PszClassName     : Interfaces.C.Strings.Chars_Ptr;  -- ../gdal_alg.h:123
      PfnTransform     : GDALTransformerFunc;  -- ../gdal_alg.h:124
      PfnCleanup       : access procedure (Arg1 : System.Address);  -- ../gdal_alg.h:125
      PfnSerialize     : access function (Arg1 : System.Address) return access CPLXMLNode;  -- ../gdal_alg.h:126
      PfnCreateSimilar : access function
        (Arg1 : System.Address;
         Arg2             : Double;
         Arg3             : Double) return System.Address;  -- ../gdal_alg.h:127
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:128

   procedure GDALDestroyTransformer (PTransformerArg : System.Address)  -- ../gdal_alg.h:132
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyTransformer";

   function GDALUseTransformer
     (PTransformerArg : System.Address;
      BDstToSrc       : Int;
      NPointCount     : Int;
      X               : access Double;
      Y               : access Double;
      Z               : access Double;
      PanSuccess      : access Int) return Int  -- ../gdal_alg.h:133
     with Import => True, 
     Convention => C, 
     External_Name => "GDALUseTransformer";

   function GDALCreateSimilarTransformer
     (PsTransformerArg : System.Address;
      DfSrcRatioX      : Double;
      DfSrcRatioY      : Double) return System.Address  -- ../gdal_alg.h:137
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateSimilarTransformer";

   function GDALCreateGenImgProjTransformer
     (HSrcDS              : GDALDatasetH;
      PszSrcWKT           : Interfaces.C.Strings.Chars_Ptr;
      HDstDS              : GDALDatasetH;
      PszDstWKT           : Interfaces.C.Strings.Chars_Ptr;
      BGCPUseOK           : Int;
      DfGCPErrorThreshold : Double;
      NOrder              : Int) return System.Address  -- ../gdal_alg.h:145
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateGenImgProjTransformer";

   function GDALCreateGenImgProjTransformer2
     (HSrcDS       : GDALDatasetH;
      HDstDS       : GDALDatasetH;
      PapszOptions : System.Address) return System.Address  -- ../gdal_alg.h:150
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateGenImgProjTransformer2";

   function GDALCreateGenImgProjTransformer3
     (PszSrcWKT           : Interfaces.C.Strings.Chars_Ptr;
      PadfSrcGeoTransform : access Double;
      PszDstWKT           : Interfaces.C.Strings.Chars_Ptr;
      PadfDstGeoTransform : access Double) return System.Address  -- ../gdal_alg.h:153
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateGenImgProjTransformer3";

   function GDALCreateGenImgProjTransformer4
     (HSrcSRS             : OGRSpatialReferenceH;
      PadfSrcGeoTransform : access Double;
      HDstSRS             : OGRSpatialReferenceH;
      PadfDstGeoTransform : access Double;
      PapszOptions        : System.Address) return System.Address  -- ../gdal_alg.h:159
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateGenImgProjTransformer4";

   procedure GDALSetGenImgProjTransformerDstGeoTransform (Arg1 : System.Address; Arg2 : access Double)  -- ../gdal_alg.h:165
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetGenImgProjTransformerDstGeoTransform";

   procedure GDALDestroyGenImgProjTransformer (Arg1 : System.Address)  -- ../gdal_alg.h:167
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyGenImgProjTransformer";

   function GDALGenImgProjTransform
     (PTransformArg : System.Address;
      BDstToSrc     : Int;
      NPointCount   : Int;
      X             : access Double;
      Y             : access Double;
      Z             : access Double;
      PanSuccess    : access Int) return Int  -- ../gdal_alg.h:168
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGenImgProjTransform";

   procedure GDALSetTransformerDstGeoTransform (Arg1 : System.Address; Arg2 : access Double)  -- ../gdal_alg.h:172
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetTransformerDstGeoTransform";

   procedure GDALGetTransformerDstGeoTransform (Arg1 : System.Address; Arg2 : access Double)  -- ../gdal_alg.h:173
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetTransformerDstGeoTransform";

   function GDALCreateReprojectionTransformer (PszSrcWKT : Interfaces.C.Strings.Chars_Ptr; PszDstWKT : Interfaces.C.Strings.Chars_Ptr) return System.Address  -- ../gdal_alg.h:177
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateReprojectionTransformer";

   function GDALCreateReprojectionTransformerEx
     (HSrcSRS      : OGRSpatialReferenceH;
      HDstSRS      : OGRSpatialReferenceH;
      PapszOptions : System.Address) return System.Address  -- ../gdal_alg.h:180
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateReprojectionTransformerEx";

   procedure GDALDestroyReprojectionTransformer (Arg1 : System.Address)  -- ../gdal_alg.h:184
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyReprojectionTransformer";

   function GDALReprojectionTransform
     (PTransformArg : System.Address;
      BDstToSrc     : Int;
      NPointCount   : Int;
      X             : access Double;
      Y             : access Double;
      Z             : access Double;
      PanSuccess    : access Int) return Int  -- ../gdal_alg.h:185
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReprojectionTransform";

   function GDALCreateGCPTransformer
     (NGCPCount  : Int;
      PasGCPList : access constant GDAL_GCP;
      NReqOrder  : Int;
      BReversed  : Int) return System.Address  -- ../gdal_alg.h:191
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateGCPTransformer";

   function GDALCreateGCPRefineTransformer
     (NGCPCount   : Int;
      PasGCPList  : access constant GDAL_GCP;
      NReqOrder   : Int;
      BReversed   : Int;
      Tolerance   : Double;
      MinimumGcps : Int) return System.Address  -- ../gdal_alg.h:196
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateGCPRefineTransformer";

   procedure GDALDestroyGCPTransformer (PTransformArg : System.Address)  -- ../gdal_alg.h:199
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyGCPTransformer";

   function GDALGCPTransform
     (PTransformArg : System.Address;
      BDstToSrc     : Int;
      NPointCount   : Int;
      X             : access Double;
      Y             : access Double;
      Z             : access Double;
      PanSuccess    : access Int) return Int  -- ../gdal_alg.h:200
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGCPTransform";

   function GDALCreateTPSTransformer
     (NGCPCount  : Int;
      PasGCPList : access constant GDAL_GCP;
      BReversed  : Int) return System.Address  -- ../gdal_alg.h:207
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateTPSTransformer";

   procedure GDALDestroyTPSTransformer (PTransformArg : System.Address)  -- ../gdal_alg.h:209
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyTPSTransformer";

   function GDALTPSTransform
     (PTransformArg : System.Address;
      BDstToSrc     : Int;
      NPointCount   : Int;
      X             : access Double;
      Y             : access Double;
      Z             : access Double;
      PanSuccess    : access Int) return Int  -- ../gdal_alg.h:210
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTPSTransform";

   function RPCInfoV1ToMD (PsRPCInfo : access GDALRPCInfoV1) return System.Address  -- ../gdal_alg.h:220
     with Import => True, 
     Convention => C, 
     External_Name => "RPCInfoV1ToMD";

   function RPCInfoV2ToMD (PsRPCInfo : access GDALRPCInfoV2) return System.Address  -- ../gdal_alg.h:221
     with Import => True, 
     Convention => C, 
     External_Name => "RPCInfoV2ToMD";

   function GDALCreateRPCTransformerV1
     (PsRPC             : access GDALRPCInfoV1;
      BReversed         : Int;
      DfPixErrThreshold : Double;
      PapszOptions      : System.Address) return System.Address  -- ../gdal_alg.h:234
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateRPCTransformerV1";

   function GDALCreateRPCTransformerV2
     (PsRPC             : access constant GDALRPCInfoV2;
      BReversed         : Int;
      DfPixErrThreshold : Double;
      PapszOptions      : System.Address) return System.Address  -- ../gdal_alg.h:240
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateRPCTransformerV2";

   procedure GDALDestroyRPCTransformer (PTransformArg : System.Address)  -- ../gdal_alg.h:244
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyRPCTransformer";

   function GDALRPCTransform
     (PTransformArg : System.Address;
      BDstToSrc     : Int;
      NPointCount   : Int;
      X             : access Double;
      Y             : access Double;
      Z             : access Double;
      PanSuccess    : access Int) return Int  -- ../gdal_alg.h:245
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRPCTransform";

   function GDALCreateGeoLocTransformer
     (HBaseDS              : GDALDatasetH;
      PapszGeolocationInfo : System.Address;
      BReversed            : Int) return System.Address  -- ../gdal_alg.h:252
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateGeoLocTransformer";

   procedure GDALDestroyGeoLocTransformer (PTransformArg : System.Address)  -- ../gdal_alg.h:255
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyGeoLocTransformer";

   function GDALGeoLocTransform
     (PTransformArg : System.Address;
      BDstToSrc     : Int;
      NPointCount   : Int;
      X             : access Double;
      Y             : access Double;
      Z             : access Double;
      PanSuccess    : access Int) return Int  -- ../gdal_alg.h:256
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGeoLocTransform";

   function GDALCreateApproxTransformer
     (PfnRawTransformer  : GDALTransformerFunc;
      PRawTransformerArg : System.Address;
      DfMaxError         : Double) return System.Address  -- ../gdal_alg.h:262
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateApproxTransformer";

   procedure GDALApproxTransformerOwnsSubtransformer (PCBData : System.Address; BOwnFlag : Int)  -- ../gdal_alg.h:264
     with Import => True, 
     Convention => C, 
     External_Name => "GDALApproxTransformerOwnsSubtransformer";

   procedure GDALDestroyApproxTransformer (PApproxArg : System.Address)  -- ../gdal_alg.h:266
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyApproxTransformer";

   function GDALApproxTransform
     (PTransformArg : System.Address;
      BDstToSrc     : Int;
      NPointCount   : Int;
      X             : access Double;
      Y             : access Double;
      Z             : access Double;
      PanSuccess    : access Int) return Int  -- ../gdal_alg.h:267
     with Import => True, 
     Convention => C, 
     External_Name => "GDALApproxTransform";

   function GDALSimpleImageWarp
     (HSrcDS           : GDALDatasetH;
      HDstDS           : GDALDatasetH;
      NBandCount       : Int;
      PanBandList      : access Int;
      PfnTransform     : GDALTransformerFunc;
      PTransformArg    : System.Address;
      PfnProgress      : GDALProgressFunc;
      PProgressArg     : System.Address;
      PapszWarpOptions : System.Address) return Int  -- ../gdal_alg.h:272
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSimpleImageWarp";

   function GDALSuggestedWarpOutput
     (HSrcDS              : GDALDatasetH;
      PfnTransformer      : GDALTransformerFunc;
      PTransformArg       : System.Address;
      PadfGeoTransformOut : access Double;
      PnPixels            : access Int;
      PnLines             : access Int) return CPLErr  -- ../gdal_alg.h:282
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSuggestedWarpOutput";

   function GDALSuggestedWarpOutput2
     (HSrcDS              : GDALDatasetH;
      PfnTransformer      : GDALTransformerFunc;
      PTransformArg       : System.Address;
      PadfGeoTransformOut : access Double;
      PnPixels            : access Int;
      PnLines             : access Int;
      PadfExtents         : access Double;
      NOptions            : Int) return CPLErr  -- ../gdal_alg.h:288
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSuggestedWarpOutput2";

   function GDALSerializeTransformer (PfnFunc : GDALTransformerFunc; PTransformArg : System.Address) return access CPLXMLNode  -- ../gdal_alg.h:298
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSerializeTransformer";

   function GDALDeserializeTransformer
     (PsTree         : access CPLXMLNode;
      PpfnFunc       : System.Address;
      PpTransformArg : System.Address) return CPLErr  -- ../gdal_alg.h:299
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDeserializeTransformer";

   function GDALTransformGeolocations
     (HXBand         : GDALRasterBandH;
      HYBand         : GDALRasterBandH;
      HZBand         : GDALRasterBandH;
      PfnTransformer : GDALTransformerFunc;
      PTransformArg  : System.Address;
      PfnProgress    : GDALProgressFunc;
      PProgressArg   : System.Address;
      PapszOptions   : System.Address) return CPLErr  -- ../gdal_alg.h:305
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTransformGeolocations";

   type GDALContourWriter is access function
     (Arg1 : Double;
      Arg2 : Int;
      Arg3 : access Double;
      Arg4 : access Double;
      Arg5 : System.Address) return CPLErr
     with Convention => C;  -- ../gdal_alg.h:319

   Subtype GDALContourGeneratorH is System.Address;  -- ../gdal_alg.h:323

   function GDAL_CG_Create
     (NWidth            : Int;
      NHeight           : Int;
      BNoDataSet        : Int;
      DfNoDataValue     : Double;
      DfContourInterval : Double;
      DfContourBase     : Double;
      PfnWriter         : GDALContourWriter;
      PCBData           : System.Address) return GDALContourGeneratorH  -- ../gdal_alg.h:326
     with Import => True, 
     Convention => C, 
     External_Name => "GDAL_CG_Create";

   function GDAL_CG_FeedLine (HCG : GDALContourGeneratorH; PadfScanline : access Double) return CPLErr  -- ../gdal_alg.h:330
     with Import => True, 
     Convention => C, 
     External_Name => "GDAL_CG_FeedLine";

   procedure GDAL_CG_Destroy (HCG : GDALContourGeneratorH)  -- ../gdal_alg.h:332
     with Import => True, 
     Convention => C, 
     External_Name => "GDAL_CG_Destroy";

   type OGRContourWriterInfo_Array7009 is array (0 .. 5) of aliased Double;
   type OGRContourWriterInfo is record
      HLayer          : System.Address;  -- ../gdal_alg.h:337
      AdfGeoTransform : aliased OGRContourWriterInfo_Array7009;  -- ../gdal_alg.h:339
      NElevField      : aliased Int;  -- ../gdal_alg.h:341
      NElevFieldMin   : aliased Int;  -- ../gdal_alg.h:342
      NElevFieldMax   : aliased Int;  -- ../gdal_alg.h:343
      NIDField        : aliased Int;  -- ../gdal_alg.h:344
      NNextID         : aliased Int;  -- ../gdal_alg.h:345
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:346

   function OGRContourWriter
     (Arg1  : Double;
      Arg2  : Int;
      Arg3  : access Double;
      Arg4  : access Double;
      PInfo : System.Address) return CPLErr  -- ../gdal_alg.h:349
     with Import => True, 
     Convention => C, 
     External_Name => "OGRContourWriter";

   function GDALContourGenerate
     (HBand             : GDALRasterBandH;
      DfContourInterval : Double;
      DfContourBase     : Double;
      NFixedLevelCount  : Int;
      PadfFixedLevels   : access Double;
      BUseNoData        : Int;
      DfNoDataValue     : Double;
      HLayer            : System.Address;
      IIDField          : Int;
      IElevField        : Int;
      PfnProgress       : GDALProgressFunc;
      PProgressArg      : System.Address) return CPLErr  -- ../gdal_alg.h:353
     with Import => True, 
     Convention => C, 
     External_Name => "GDALContourGenerate";

   function GDALContourGenerateEx
     (HBand        : GDALRasterBandH;
      HLayer       : System.Address;
      Options      : CSLConstList;
      PfnProgress  : GDALProgressFunc;
      PProgressArg : System.Address) return CPLErr  -- ../gdal_alg.h:361
     with Import => True, 
     Convention => C, 
     External_Name => "GDALContourGenerateEx";

   subtype GDALViewshedMode is Unsigned;
   GVM_Diagonal : constant GDALViewshedMode := 1;
   GVM_Edge     : constant GDALViewshedMode := 2;
   GVM_Max      : constant GDALViewshedMode := 3;
   GVM_Min      : constant GDALViewshedMode := 4;  -- ../gdal_alg.h:375

   subtype GDALViewshedOutputType is Unsigned;
   GVOT_NORMAL  : constant GDALViewshedOutputType := 1;
   GVOT_MIN_TARGET_HEIGHT_FROM_DEM : constant GDALViewshedOutputType := 2;
   GVOT_MIN_TARGET_HEIGHT_FROM_GROUND : constant GDALViewshedOutputType := 3;  -- ../gdal_alg.h:382

   function GDALViewshedGenerate
     (HBand                : GDALRasterBandH;
      PszDriverName        : Interfaces.C.Strings.Chars_Ptr;
      PszTargetRasterName  : Interfaces.C.Strings.Chars_Ptr;
      PapszCreationOptions : CSLConstList;
      DfObserverX          : Double;
      DfObserverY          : Double;
      DfObserverHeight     : Double;
      DfTargetHeight       : Double;
      DfVisibleVal         : Double;
      DfInvisibleVal       : Double;
      DfOutOfRangeVal      : Double;
      DfNoDataVal          : Double;
      DfCurvCoeff          : Double;
      EMode                : GDALViewshedMode;
      DfMaxDistance        : Double;
      PfnProgress          : GDALProgressFunc;
      PProgressArg         : System.Address;
      HeightMode           : GDALViewshedOutputType;
      PapszExtraOptions    : CSLConstList) return GDALDatasetH  -- ../gdal_alg.h:385
     with Import => True, 
     Convention => C, 
     External_Name => "GDALViewshedGenerate";

   function GDALRasterizeGeometries
     (HDS               : GDALDatasetH;
      NBandCount        : Int;
      PanBandList       : access Int;
      NGeomCount        : Int;
      PahGeometries     : System.Address;
      PfnTransformer    : GDALTransformerFunc;
      PTransformArg     : System.Address;
      PadfGeomBurnValue : access Double;
      PapszOptions      : System.Address;
      PfnProgress       : GDALProgressFunc;
      PProgressArg      : System.Address) return CPLErr  -- ../gdal_alg.h:401
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterizeGeometries";

   function GDALRasterizeLayers
     (HDS                 : GDALDatasetH;
      NBandCount          : Int;
      PanBandList         : access Int;
      NLayerCount         : Int;
      PahLayers           : System.Address;
      PfnTransformer      : GDALTransformerFunc;
      PTransformArg       : System.Address;
      PadfLayerBurnValues : access Double;
      PapszOptions        : System.Address;
      PfnProgress         : GDALProgressFunc;
      PProgressArg        : System.Address) return CPLErr  -- ../gdal_alg.h:411
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterizeLayers";

   function GDALRasterizeLayersBuf
     (PData               : System.Address;
      NBufXSize           : Int;
      NBufYSize           : Int;
      EBufType            : GDALDataType;
      NPixelSpace         : Int;
      NLineSpace          : Int;
      NLayerCount         : Int;
      PahLayers           : System.Address;
      PszDstProjection    : Interfaces.C.Strings.Chars_Ptr;
      PadfDstGeoTransform : access Double;
      PfnTransformer      : GDALTransformerFunc;
      PTransformArg       : System.Address;
      DfBurnValue         : Double;
      PapszOptions        : System.Address;
      PfnProgress         : GDALProgressFunc;
      PProgressArg        : System.Address) return CPLErr  -- ../gdal_alg.h:422
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterizeLayersBuf";

   subtype GDALGridAlgorithm is Unsigned;
   GGA_InverseDistanceToAPower                : constant GDALGridAlgorithm := 1;
   GGA_MovingAverage                          : constant GDALGridAlgorithm := 2;
   GGA_NearestNeighbor                        : constant GDALGridAlgorithm := 3;
   GGA_MetricMinimum                          : constant GDALGridAlgorithm := 4;
   GGA_MetricMaximum                          : constant GDALGridAlgorithm := 5;
   GGA_MetricRange                            : constant GDALGridAlgorithm := 6;
   GGA_MetricCount                            : constant GDALGridAlgorithm := 7;
   GGA_MetricAverageDistance                  : constant GDALGridAlgorithm := 8;
   GGA_MetricAverageDistancePts               : constant GDALGridAlgorithm := 9;
   GGA_Linear                                 : constant GDALGridAlgorithm := 10;
   GGA_InverseDistanceToAPowerNearestNeighbor : constant GDALGridAlgorithm := 11;  -- ../gdal_alg.h:452

   type GDALGridInverseDistanceToAPowerOptions is record
      DfPower           : aliased Double;  -- ../gdal_alg.h:458
      DfSmoothing       : aliased Double;  -- ../gdal_alg.h:460
      DfAnisotropyRatio : aliased Double;  -- ../gdal_alg.h:462
      DfAnisotropyAngle : aliased Double;  -- ../gdal_alg.h:464
      DfRadius1         : aliased Double;  -- ../gdal_alg.h:466
      DfRadius2         : aliased Double;  -- ../gdal_alg.h:468
      DfAngle           : aliased Double;  -- ../gdal_alg.h:473
      NMaxPoints        : aliased GUInt32;  -- ../gdal_alg.h:480
      NMinPoints        : aliased GUInt32;  -- ../gdal_alg.h:486
      DfNoDataValue     : aliased Double;  -- ../gdal_alg.h:488
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:489

   type GDALGridInverseDistanceToAPowerNearestNeighborOptions is record
      DfPower       : aliased Double;  -- ../gdal_alg.h:495
      DfRadius      : aliased Double;  -- ../gdal_alg.h:497
      DfSmoothing   : aliased Double;  -- ../gdal_alg.h:499
      NMaxPoints    : aliased GUInt32;  -- ../gdal_alg.h:507
      NMinPoints    : aliased GUInt32;  -- ../gdal_alg.h:513
      DfNoDataValue : aliased Double;  -- ../gdal_alg.h:515
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:516

   type GDALGridMovingAverageOptions is record
      DfRadius1     : aliased Double;  -- ../gdal_alg.h:522
      DfRadius2     : aliased Double;  -- ../gdal_alg.h:524
      DfAngle       : aliased Double;  -- ../gdal_alg.h:529
      NMinPoints    : aliased GUInt32;  -- ../gdal_alg.h:535
      DfNoDataValue : aliased Double;  -- ../gdal_alg.h:537
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:538

   type GDALGridNearestNeighborOptions is record
      DfRadius1     : aliased Double;  -- ../gdal_alg.h:544
      DfRadius2     : aliased Double;  -- ../gdal_alg.h:546
      DfAngle       : aliased Double;  -- ../gdal_alg.h:551
      DfNoDataValue : aliased Double;  -- ../gdal_alg.h:553
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:554

   type GDALGridDataMetricsOptions is record
      DfRadius1     : aliased Double;  -- ../gdal_alg.h:560
      DfRadius2     : aliased Double;  -- ../gdal_alg.h:562
      DfAngle       : aliased Double;  -- ../gdal_alg.h:567
      NMinPoints    : aliased GUInt32;  -- ../gdal_alg.h:573
      DfNoDataValue : aliased Double;  -- ../gdal_alg.h:575
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:576

   type GDALGridLinearOptions is record
      DfRadius      : aliased Double;  -- ../gdal_alg.h:586
      DfNoDataValue : aliased Double;  -- ../gdal_alg.h:588
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:589

   function GDALGridCreate
     (Arg1  : GDALGridAlgorithm;
      Arg2  : System.Address;
      Arg3  : GUInt32;
      Arg4  : access Double;
      Arg5  : access Double;
      Arg6  : access Double;
      Arg7  : Double;
      Arg8  : Double;
      Arg9  : Double;
      Arg10 : Double;
      Arg11 : GUInt32;
      Arg12 : GUInt32;
      Arg13 : GDALDataType;
      Arg14 : System.Address;
      Arg15 : GDALProgressFunc;
      Arg16 : System.Address) return CPLErr  -- ../gdal_alg.h:592
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGridCreate";

   type GDALGridContext is null record;   -- incomplete struct

   function GDALGridContextCreate
     (EAlgorithm                      : GDALGridAlgorithm;
      PoOptions                       : System.Address;
      NPoints                         : GUInt32;
      PadfX                           : access Double;
      PadfY                           : access Double;
      PadfZ                           : access Double;
      BCallerWillKeepPointArraysAlive : Int) return access GDALGridContext  -- ../gdal_alg.h:602
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGridContextCreate";

   procedure GDALGridContextFree (PsContext : access GDALGridContext)  -- ../gdal_alg.h:607
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGridContextFree";

   function GDALGridContextProcess
     (PsContext    : access GDALGridContext;
      DfXMin       : Double;
      DfXMax       : Double;
      DfYMin       : Double;
      DfYMax       : Double;
      NXSize       : GUInt32;
      NYSize       : GUInt32;
      EType        : GDALDataType;
      PData        : System.Address;
      PfnProgress  : GDALProgressFunc;
      PProgressArg : System.Address) return CPLErr  -- ../gdal_alg.h:609
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGridContextProcess";

   function GDALComputeMatchingPoints
     (HFirstImage  : GDALDatasetH;
      HSecondImage : GDALDatasetH;
      PapszOptions : System.Address;
      PnGCPCount   : access Int) return access GDAL_GCP  -- ../gdal_alg.h:615
     with Import => True, 
     Convention => C, 
     External_Name => "GDALComputeMatchingPoints";

   type GDALTriFacet_Array7054 is array (0 .. 2) of aliased Int;
   type GDALTriFacet is record
      AnVertexIdx   : aliased GDALTriFacet_Array7054;  -- ../gdal_alg.h:627
      AnNeighborIdx : aliased GDALTriFacet_Array7054;  -- ../gdal_alg.h:628
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:631

   type GDALTriBarycentricCoefficients is record
      DfMul1X : aliased Double;  -- ../gdal_alg.h:642
      DfMul1Y : aliased Double;  -- ../gdal_alg.h:643
      DfMul2X : aliased Double;  -- ../gdal_alg.h:644
      DfMul2Y : aliased Double;  -- ../gdal_alg.h:645
      DfCstX  : aliased Double;  -- ../gdal_alg.h:646
      DfCstY  : aliased Double;  -- ../gdal_alg.h:647
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:648

   type GDALTriangulation is record
      NFacets              : aliased Int;  -- ../gdal_alg.h:653
      PasFacets            : access GDALTriFacet;  -- ../gdal_alg.h:654
      PasFacetCoefficients : access GDALTriBarycentricCoefficients;  -- ../gdal_alg.h:655
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:656

   function GDALHasTriangulation return Int  -- ../gdal_alg.h:658
     with Import => True, 
     Convention => C, 
     External_Name => "GDALHasTriangulation";

   function GDALTriangulationCreateDelaunay
     (NPoints : Int;
      PadfX   : access Double;
      PadfY   : access Double) return access GDALTriangulation  -- ../gdal_alg.h:660
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTriangulationCreateDelaunay";

   function GDALTriangulationComputeBarycentricCoefficients
     (PsDT  : access GDALTriangulation;
      PadfX : access Double;
      PadfY : access Double) return Int  -- ../gdal_alg.h:663
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTriangulationComputeBarycentricCoefficients";

   function GDALTriangulationComputeBarycentricCoordinates
     (PsDT      : access constant GDALTriangulation;
      NFacetIdx : Int;
      DfX       : Double;
      DfY       : Double;
      PdfL1     : access Double;
      PdfL2     : access Double;
      PdfL3     : access Double) return Int  -- ../gdal_alg.h:667
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTriangulationComputeBarycentricCoordinates";

   function GDALTriangulationFindFacetBruteForce
     (PsDT              : access constant GDALTriangulation;
      DfX               : Double;
      DfY               : Double;
      PanOutputFacetIdx : access Int) return Int  -- ../gdal_alg.h:675
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTriangulationFindFacetBruteForce";

   function GDALTriangulationFindFacetDirected
     (PsDT              : access constant GDALTriangulation;
      NFacetIdx         : Int;
      DfX               : Double;
      DfY               : Double;
      PanOutputFacetIdx : access Int) return Int  -- ../gdal_alg.h:679
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTriangulationFindFacetDirected";

   procedure GDALTriangulationFree (PsDT : access GDALTriangulation)  -- ../gdal_alg.h:684
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTriangulationFree";

   procedure GDALTriangulationTerminate  -- ../gdal_alg.h:688
     with Import => True, 
     Convention => C, 
     External_Name => "GDALTriangulationTerminate";

   function GDALOpenVerticalShiftGrid (PszProj4Geoidgrids : Interfaces.C.Strings.Chars_Ptr; PbError : access Int) return GDALDatasetH  -- ../gdal_alg.h:691
     with Import => True, 
     Convention => C, 
     External_Name => "GDALOpenVerticalShiftGrid";

   function GDALApplyVerticalShiftGrid
     (HSrcDataset      : GDALDatasetH;
      HGridDataset     : GDALDatasetH;
      BInverse         : Int;
      DfSrcUnitToMeter : Double;
      DfDstUnitToMeter : Double;
      PapszOptions     : System.Address) return GDALDatasetH  -- ../gdal_alg.h:695
     with Import => True, 
     Convention => C, 
     External_Name => "GDALApplyVerticalShiftGrid";

end Gdalada.GDAL_Alg;
