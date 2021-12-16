pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with gdal_h;
with System;
with cpl_progress_h;
with cpl_error_h;
with ogr_api_h;
with cpl_port_h;
with Interfaces.C.Strings;
limited with cpl_minixml_h;

package gdal_alg_h is

   GDAL_GTI2_SIGNATURE : aliased constant String := "GTI2" & ASCII.NUL;  --  ../gdal_alg.h:119
   --  unsupported macro: RPCInfoToMD RPCInfoV2ToMD
   --  unsupported macro: GDALCreateRPCTransformer GDALCreateRPCTransformerV2

   function GDALComputeMedianCutPCT
     (hRed : gdal_h.GDALRasterBandH;
      hGreen : gdal_h.GDALRasterBandH;
      hBlue : gdal_h.GDALRasterBandH;
      pfnIncludePixel : access function
        (arg1 : int;
         arg2 : int;
         arg3 : System.Address) return int;
      nColors : int;
      hColorTable : gdal_h.GDALColorTableH;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return int  -- ../gdal_alg.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GDALComputeMedianCutPCT";

   function GDALDitherRGB2PCT
     (hRed : gdal_h.GDALRasterBandH;
      hGreen : gdal_h.GDALRasterBandH;
      hBlue : gdal_h.GDALRasterBandH;
      hTarget : gdal_h.GDALRasterBandH;
      hColorTable : gdal_h.GDALColorTableH;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return int  -- ../gdal_alg.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDitherRGB2PCT";

   function GDALChecksumImage
     (hBand : gdal_h.GDALRasterBandH;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int) return int  -- ../gdal_alg.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "GDALChecksumImage";

   function GDALComputeProximity
     (hSrcBand : gdal_h.GDALRasterBandH;
      hProximityBand : gdal_h.GDALRasterBandH;
      papszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "GDALComputeProximity";

   function GDALFillNodata
     (hTargetBand : gdal_h.GDALRasterBandH;
      hMaskBand : gdal_h.GDALRasterBandH;
      dfMaxSearchDist : double;
      bDeprecatedOption : int;
      nSmoothingIterations : int;
      papszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "GDALFillNodata";

   function GDALPolygonize
     (hSrcBand : gdal_h.GDALRasterBandH;
      hMaskBand : gdal_h.GDALRasterBandH;
      hOutLayer : ogr_api_h.OGRLayerH;
      iPixValField : int;
      papszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "GDALPolygonize";

   function GDALFPolygonize
     (hSrcBand : gdal_h.GDALRasterBandH;
      hMaskBand : gdal_h.GDALRasterBandH;
      hOutLayer : ogr_api_h.OGRLayerH;
      iPixValField : int;
      papszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "GDALFPolygonize";

   function GDALSieveFilter
     (hSrcBand : gdal_h.GDALRasterBandH;
      hMaskBand : gdal_h.GDALRasterBandH;
      hDstBand : gdal_h.GDALRasterBandH;
      nSizeThreshold : int;
      nConnectedness : int;
      papszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSieveFilter";

   type GDALTransformerFunc is access function
        (arg1 : System.Address;
         arg2 : int;
         arg3 : int;
         arg4 : access double;
         arg5 : access double;
         arg6 : access double;
         arg7 : access int) return int
   with Convention => C;  -- ../gdal_alg.h:114

   type GDALTransformerInfo_array6942 is array (0 .. 3) of aliased cpl_port_h.GByte;
   type GDALTransformerInfo is record
      abySignature : aliased GDALTransformerInfo_array6942;  -- ../gdal_alg.h:122
      pszClassName : Interfaces.C.Strings.chars_ptr;  -- ../gdal_alg.h:123
      pfnTransform : GDALTransformerFunc;  -- ../gdal_alg.h:124
      pfnCleanup : access procedure (arg1 : System.Address);  -- ../gdal_alg.h:125
      pfnSerialize : access function (arg1 : System.Address) return access cpl_minixml_h.CPLXMLNode;  -- ../gdal_alg.h:126
      pfnCreateSimilar : access function
           (arg1 : System.Address;
            arg2 : double;
            arg3 : double) return System.Address;  -- ../gdal_alg.h:127
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:128

   procedure GDALDestroyTransformer (pTransformerArg : System.Address)  -- ../gdal_alg.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyTransformer";

   function GDALUseTransformer
     (pTransformerArg : System.Address;
      bDstToSrc : int;
      nPointCount : int;
      x : access double;
      y : access double;
      z : access double;
      panSuccess : access int) return int  -- ../gdal_alg.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "GDALUseTransformer";

   function GDALCreateSimilarTransformer
     (psTransformerArg : System.Address;
      dfSrcRatioX : double;
      dfSrcRatioY : double) return System.Address  -- ../gdal_alg.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateSimilarTransformer";

   function GDALCreateGenImgProjTransformer
     (hSrcDS : gdal_h.GDALDatasetH;
      pszSrcWKT : Interfaces.C.Strings.chars_ptr;
      hDstDS : gdal_h.GDALDatasetH;
      pszDstWKT : Interfaces.C.Strings.chars_ptr;
      bGCPUseOK : int;
      dfGCPErrorThreshold : double;
      nOrder : int) return System.Address  -- ../gdal_alg.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateGenImgProjTransformer";

   function GDALCreateGenImgProjTransformer2
     (hSrcDS : gdal_h.GDALDatasetH;
      hDstDS : gdal_h.GDALDatasetH;
      papszOptions : System.Address) return System.Address  -- ../gdal_alg.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateGenImgProjTransformer2";

   function GDALCreateGenImgProjTransformer3
     (pszSrcWKT : Interfaces.C.Strings.chars_ptr;
      padfSrcGeoTransform : access double;
      pszDstWKT : Interfaces.C.Strings.chars_ptr;
      padfDstGeoTransform : access double) return System.Address  -- ../gdal_alg.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateGenImgProjTransformer3";

   function GDALCreateGenImgProjTransformer4
     (hSrcSRS : ogr_api_h.OGRSpatialReferenceH;
      padfSrcGeoTransform : access double;
      hDstSRS : ogr_api_h.OGRSpatialReferenceH;
      padfDstGeoTransform : access double;
      papszOptions : System.Address) return System.Address  -- ../gdal_alg.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateGenImgProjTransformer4";

   procedure GDALSetGenImgProjTransformerDstGeoTransform (arg1 : System.Address; arg2 : access double)  -- ../gdal_alg.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetGenImgProjTransformerDstGeoTransform";

   procedure GDALDestroyGenImgProjTransformer (arg1 : System.Address)  -- ../gdal_alg.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyGenImgProjTransformer";

   function GDALGenImgProjTransform
     (pTransformArg : System.Address;
      bDstToSrc : int;
      nPointCount : int;
      x : access double;
      y : access double;
      z : access double;
      panSuccess : access int) return int  -- ../gdal_alg.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGenImgProjTransform";

   procedure GDALSetTransformerDstGeoTransform (arg1 : System.Address; arg2 : access double)  -- ../gdal_alg.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetTransformerDstGeoTransform";

   procedure GDALGetTransformerDstGeoTransform (arg1 : System.Address; arg2 : access double)  -- ../gdal_alg.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetTransformerDstGeoTransform";

   function GDALCreateReprojectionTransformer (pszSrcWKT : Interfaces.C.Strings.chars_ptr; pszDstWKT : Interfaces.C.Strings.chars_ptr) return System.Address  -- ../gdal_alg.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateReprojectionTransformer";

   function GDALCreateReprojectionTransformerEx
     (hSrcSRS : ogr_api_h.OGRSpatialReferenceH;
      hDstSRS : ogr_api_h.OGRSpatialReferenceH;
      papszOptions : System.Address) return System.Address  -- ../gdal_alg.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateReprojectionTransformerEx";

   procedure GDALDestroyReprojectionTransformer (arg1 : System.Address)  -- ../gdal_alg.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyReprojectionTransformer";

   function GDALReprojectionTransform
     (pTransformArg : System.Address;
      bDstToSrc : int;
      nPointCount : int;
      x : access double;
      y : access double;
      z : access double;
      panSuccess : access int) return int  -- ../gdal_alg.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReprojectionTransform";

   function GDALCreateGCPTransformer
     (nGCPCount : int;
      pasGCPList : access constant gdal_h.GDAL_GCP;
      nReqOrder : int;
      bReversed : int) return System.Address  -- ../gdal_alg.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateGCPTransformer";

   function GDALCreateGCPRefineTransformer
     (nGCPCount : int;
      pasGCPList : access constant gdal_h.GDAL_GCP;
      nReqOrder : int;
      bReversed : int;
      tolerance : double;
      minimumGcps : int) return System.Address  -- ../gdal_alg.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateGCPRefineTransformer";

   procedure GDALDestroyGCPTransformer (pTransformArg : System.Address)  -- ../gdal_alg.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyGCPTransformer";

   function GDALGCPTransform
     (pTransformArg : System.Address;
      bDstToSrc : int;
      nPointCount : int;
      x : access double;
      y : access double;
      z : access double;
      panSuccess : access int) return int  -- ../gdal_alg.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGCPTransform";

   function GDALCreateTPSTransformer
     (nGCPCount : int;
      pasGCPList : access constant gdal_h.GDAL_GCP;
      bReversed : int) return System.Address  -- ../gdal_alg.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateTPSTransformer";

   procedure GDALDestroyTPSTransformer (pTransformArg : System.Address)  -- ../gdal_alg.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyTPSTransformer";

   function GDALTPSTransform
     (pTransformArg : System.Address;
      bDstToSrc : int;
      nPointCount : int;
      x : access double;
      y : access double;
      z : access double;
      panSuccess : access int) return int  -- ../gdal_alg.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTPSTransform";

   function RPCInfoV1ToMD (psRPCInfo : access gdal_h.GDALRPCInfoV1) return System.Address  -- ../gdal_alg.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "RPCInfoV1ToMD";

   function RPCInfoV2ToMD (psRPCInfo : access gdal_h.GDALRPCInfoV2) return System.Address  -- ../gdal_alg.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "RPCInfoV2ToMD";

   function GDALCreateRPCTransformerV1
     (psRPC : access gdal_h.GDALRPCInfoV1;
      bReversed : int;
      dfPixErrThreshold : double;
      papszOptions : System.Address) return System.Address  -- ../gdal_alg.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateRPCTransformerV1";

   function GDALCreateRPCTransformerV2
     (psRPC : access constant gdal_h.GDALRPCInfoV2;
      bReversed : int;
      dfPixErrThreshold : double;
      papszOptions : System.Address) return System.Address  -- ../gdal_alg.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateRPCTransformerV2";

   procedure GDALDestroyRPCTransformer (pTransformArg : System.Address)  -- ../gdal_alg.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyRPCTransformer";

   function GDALRPCTransform
     (pTransformArg : System.Address;
      bDstToSrc : int;
      nPointCount : int;
      x : access double;
      y : access double;
      z : access double;
      panSuccess : access int) return int  -- ../gdal_alg.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRPCTransform";

   function GDALCreateGeoLocTransformer
     (hBaseDS : gdal_h.GDALDatasetH;
      papszGeolocationInfo : System.Address;
      bReversed : int) return System.Address  -- ../gdal_alg.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateGeoLocTransformer";

   procedure GDALDestroyGeoLocTransformer (pTransformArg : System.Address)  -- ../gdal_alg.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyGeoLocTransformer";

   function GDALGeoLocTransform
     (pTransformArg : System.Address;
      bDstToSrc : int;
      nPointCount : int;
      x : access double;
      y : access double;
      z : access double;
      panSuccess : access int) return int  -- ../gdal_alg.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGeoLocTransform";

   function GDALCreateApproxTransformer
     (pfnRawTransformer : GDALTransformerFunc;
      pRawTransformerArg : System.Address;
      dfMaxError : double) return System.Address  -- ../gdal_alg.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateApproxTransformer";

   procedure GDALApproxTransformerOwnsSubtransformer (pCBData : System.Address; bOwnFlag : int)  -- ../gdal_alg.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "GDALApproxTransformerOwnsSubtransformer";

   procedure GDALDestroyApproxTransformer (pApproxArg : System.Address)  -- ../gdal_alg.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyApproxTransformer";

   function GDALApproxTransform
     (pTransformArg : System.Address;
      bDstToSrc : int;
      nPointCount : int;
      x : access double;
      y : access double;
      z : access double;
      panSuccess : access int) return int  -- ../gdal_alg.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "GDALApproxTransform";

   function GDALSimpleImageWarp
     (hSrcDS : gdal_h.GDALDatasetH;
      hDstDS : gdal_h.GDALDatasetH;
      nBandCount : int;
      panBandList : access int;
      pfnTransform : GDALTransformerFunc;
      pTransformArg : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address;
      papszWarpOptions : System.Address) return int  -- ../gdal_alg.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSimpleImageWarp";

   function GDALSuggestedWarpOutput
     (hSrcDS : gdal_h.GDALDatasetH;
      pfnTransformer : GDALTransformerFunc;
      pTransformArg : System.Address;
      padfGeoTransformOut : access double;
      pnPixels : access int;
      pnLines : access int) return cpl_error_h.CPLErr  -- ../gdal_alg.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSuggestedWarpOutput";

   function GDALSuggestedWarpOutput2
     (hSrcDS : gdal_h.GDALDatasetH;
      pfnTransformer : GDALTransformerFunc;
      pTransformArg : System.Address;
      padfGeoTransformOut : access double;
      pnPixels : access int;
      pnLines : access int;
      padfExtents : access double;
      nOptions : int) return cpl_error_h.CPLErr  -- ../gdal_alg.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSuggestedWarpOutput2";

   function GDALSerializeTransformer (pfnFunc : GDALTransformerFunc; pTransformArg : System.Address) return access cpl_minixml_h.CPLXMLNode  -- ../gdal_alg.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSerializeTransformer";

   function GDALDeserializeTransformer
     (psTree : access cpl_minixml_h.CPLXMLNode;
      ppfnFunc : System.Address;
      ppTransformArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDeserializeTransformer";

   function GDALTransformGeolocations
     (hXBand : gdal_h.GDALRasterBandH;
      hYBand : gdal_h.GDALRasterBandH;
      hZBand : gdal_h.GDALRasterBandH;
      pfnTransformer : GDALTransformerFunc;
      pTransformArg : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address;
      papszOptions : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTransformGeolocations";

   type GDALContourWriter is access function
        (arg1 : double;
         arg2 : int;
         arg3 : access double;
         arg4 : access double;
         arg5 : System.Address) return cpl_error_h.CPLErr
   with Convention => C;  -- ../gdal_alg.h:319

   type GDALContourGeneratorH is new System.Address;  -- ../gdal_alg.h:323

   function GDAL_CG_Create
     (nWidth : int;
      nHeight : int;
      bNoDataSet : int;
      dfNoDataValue : double;
      dfContourInterval : double;
      dfContourBase : double;
      pfnWriter : GDALContourWriter;
      pCBData : System.Address) return GDALContourGeneratorH  -- ../gdal_alg.h:326
   with Import => True, 
        Convention => C, 
        External_Name => "GDAL_CG_Create";

   function GDAL_CG_FeedLine (hCG : GDALContourGeneratorH; padfScanline : access double) return cpl_error_h.CPLErr  -- ../gdal_alg.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "GDAL_CG_FeedLine";

   procedure GDAL_CG_Destroy (hCG : GDALContourGeneratorH)  -- ../gdal_alg.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "GDAL_CG_Destroy";

   type OGRContourWriterInfo_array7009 is array (0 .. 5) of aliased double;
   type OGRContourWriterInfo is record
      hLayer : System.Address;  -- ../gdal_alg.h:337
      adfGeoTransform : aliased OGRContourWriterInfo_array7009;  -- ../gdal_alg.h:339
      nElevField : aliased int;  -- ../gdal_alg.h:341
      nElevFieldMin : aliased int;  -- ../gdal_alg.h:342
      nElevFieldMax : aliased int;  -- ../gdal_alg.h:343
      nIDField : aliased int;  -- ../gdal_alg.h:344
      nNextID : aliased int;  -- ../gdal_alg.h:345
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:346

   function OGRContourWriter
     (arg1 : double;
      arg2 : int;
      arg3 : access double;
      arg4 : access double;
      pInfo : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "OGRContourWriter";

   function GDALContourGenerate
     (hBand : gdal_h.GDALRasterBandH;
      dfContourInterval : double;
      dfContourBase : double;
      nFixedLevelCount : int;
      padfFixedLevels : access double;
      bUseNoData : int;
      dfNoDataValue : double;
      hLayer : System.Address;
      iIDField : int;
      iElevField : int;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "GDALContourGenerate";

   function GDALContourGenerateEx
     (hBand : gdal_h.GDALRasterBandH;
      hLayer : System.Address;
      options : cpl_port_h.CSLConstList;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "GDALContourGenerateEx";

   subtype GDALViewshedMode is unsigned;
   GVM_Diagonal : constant GDALViewshedMode := 1;
   GVM_Edge : constant GDALViewshedMode := 2;
   GVM_Max : constant GDALViewshedMode := 3;
   GVM_Min : constant GDALViewshedMode := 4;  -- ../gdal_alg.h:375

   subtype GDALViewshedOutputType is unsigned;
   GVOT_NORMAL : constant GDALViewshedOutputType := 1;
   GVOT_MIN_TARGET_HEIGHT_FROM_DEM : constant GDALViewshedOutputType := 2;
   GVOT_MIN_TARGET_HEIGHT_FROM_GROUND : constant GDALViewshedOutputType := 3;  -- ../gdal_alg.h:382

   function GDALViewshedGenerate
     (hBand : gdal_h.GDALRasterBandH;
      pszDriverName : Interfaces.C.Strings.chars_ptr;
      pszTargetRasterName : Interfaces.C.Strings.chars_ptr;
      papszCreationOptions : cpl_port_h.CSLConstList;
      dfObserverX : double;
      dfObserverY : double;
      dfObserverHeight : double;
      dfTargetHeight : double;
      dfVisibleVal : double;
      dfInvisibleVal : double;
      dfOutOfRangeVal : double;
      dfNoDataVal : double;
      dfCurvCoeff : double;
      eMode : GDALViewshedMode;
      dfMaxDistance : double;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address;
      heightMode : GDALViewshedOutputType;
      papszExtraOptions : cpl_port_h.CSLConstList) return gdal_h.GDALDatasetH  -- ../gdal_alg.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "GDALViewshedGenerate";

   function GDALRasterizeGeometries
     (hDS : gdal_h.GDALDatasetH;
      nBandCount : int;
      panBandList : access int;
      nGeomCount : int;
      pahGeometries : System.Address;
      pfnTransformer : GDALTransformerFunc;
      pTransformArg : System.Address;
      padfGeomBurnValue : access double;
      papszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:401
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterizeGeometries";

   function GDALRasterizeLayers
     (hDS : gdal_h.GDALDatasetH;
      nBandCount : int;
      panBandList : access int;
      nLayerCount : int;
      pahLayers : System.Address;
      pfnTransformer : GDALTransformerFunc;
      pTransformArg : System.Address;
      padfLayerBurnValues : access double;
      papszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterizeLayers";

   function GDALRasterizeLayersBuf
     (pData : System.Address;
      nBufXSize : int;
      nBufYSize : int;
      eBufType : gdal_h.GDALDataType;
      nPixelSpace : int;
      nLineSpace : int;
      nLayerCount : int;
      pahLayers : System.Address;
      pszDstProjection : Interfaces.C.Strings.chars_ptr;
      padfDstGeoTransform : access double;
      pfnTransformer : GDALTransformerFunc;
      pTransformArg : System.Address;
      dfBurnValue : double;
      papszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterizeLayersBuf";

   subtype GDALGridAlgorithm is unsigned;
   GGA_InverseDistanceToAPower : constant GDALGridAlgorithm := 1;
   GGA_MovingAverage : constant GDALGridAlgorithm := 2;
   GGA_NearestNeighbor : constant GDALGridAlgorithm := 3;
   GGA_MetricMinimum : constant GDALGridAlgorithm := 4;
   GGA_MetricMaximum : constant GDALGridAlgorithm := 5;
   GGA_MetricRange : constant GDALGridAlgorithm := 6;
   GGA_MetricCount : constant GDALGridAlgorithm := 7;
   GGA_MetricAverageDistance : constant GDALGridAlgorithm := 8;
   GGA_MetricAverageDistancePts : constant GDALGridAlgorithm := 9;
   GGA_Linear : constant GDALGridAlgorithm := 10;
   GGA_InverseDistanceToAPowerNearestNeighbor : constant GDALGridAlgorithm := 11;  -- ../gdal_alg.h:452

   type GDALGridInverseDistanceToAPowerOptions is record
      dfPower : aliased double;  -- ../gdal_alg.h:458
      dfSmoothing : aliased double;  -- ../gdal_alg.h:460
      dfAnisotropyRatio : aliased double;  -- ../gdal_alg.h:462
      dfAnisotropyAngle : aliased double;  -- ../gdal_alg.h:464
      dfRadius1 : aliased double;  -- ../gdal_alg.h:466
      dfRadius2 : aliased double;  -- ../gdal_alg.h:468
      dfAngle : aliased double;  -- ../gdal_alg.h:473
      nMaxPoints : aliased cpl_port_h.GUInt32;  -- ../gdal_alg.h:480
      nMinPoints : aliased cpl_port_h.GUInt32;  -- ../gdal_alg.h:486
      dfNoDataValue : aliased double;  -- ../gdal_alg.h:488
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:489

   type GDALGridInverseDistanceToAPowerNearestNeighborOptions is record
      dfPower : aliased double;  -- ../gdal_alg.h:495
      dfRadius : aliased double;  -- ../gdal_alg.h:497
      dfSmoothing : aliased double;  -- ../gdal_alg.h:499
      nMaxPoints : aliased cpl_port_h.GUInt32;  -- ../gdal_alg.h:507
      nMinPoints : aliased cpl_port_h.GUInt32;  -- ../gdal_alg.h:513
      dfNoDataValue : aliased double;  -- ../gdal_alg.h:515
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:516

   type GDALGridMovingAverageOptions is record
      dfRadius1 : aliased double;  -- ../gdal_alg.h:522
      dfRadius2 : aliased double;  -- ../gdal_alg.h:524
      dfAngle : aliased double;  -- ../gdal_alg.h:529
      nMinPoints : aliased cpl_port_h.GUInt32;  -- ../gdal_alg.h:535
      dfNoDataValue : aliased double;  -- ../gdal_alg.h:537
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:538

   type GDALGridNearestNeighborOptions is record
      dfRadius1 : aliased double;  -- ../gdal_alg.h:544
      dfRadius2 : aliased double;  -- ../gdal_alg.h:546
      dfAngle : aliased double;  -- ../gdal_alg.h:551
      dfNoDataValue : aliased double;  -- ../gdal_alg.h:553
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:554

   type GDALGridDataMetricsOptions is record
      dfRadius1 : aliased double;  -- ../gdal_alg.h:560
      dfRadius2 : aliased double;  -- ../gdal_alg.h:562
      dfAngle : aliased double;  -- ../gdal_alg.h:567
      nMinPoints : aliased cpl_port_h.GUInt32;  -- ../gdal_alg.h:573
      dfNoDataValue : aliased double;  -- ../gdal_alg.h:575
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:576

   type GDALGridLinearOptions is record
      dfRadius : aliased double;  -- ../gdal_alg.h:586
      dfNoDataValue : aliased double;  -- ../gdal_alg.h:588
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:589

   function GDALGridCreate
     (arg1 : GDALGridAlgorithm;
      arg2 : System.Address;
      arg3 : cpl_port_h.GUInt32;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double;
      arg7 : double;
      arg8 : double;
      arg9 : double;
      arg10 : double;
      arg11 : cpl_port_h.GUInt32;
      arg12 : cpl_port_h.GUInt32;
      arg13 : gdal_h.GDALDataType;
      arg14 : System.Address;
      arg15 : cpl_progress_h.GDALProgressFunc;
      arg16 : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:592
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGridCreate";

   type GDALGridContext is null record;   -- incomplete struct

   function GDALGridContextCreate
     (eAlgorithm : GDALGridAlgorithm;
      poOptions : System.Address;
      nPoints : cpl_port_h.GUInt32;
      padfX : access double;
      padfY : access double;
      padfZ : access double;
      bCallerWillKeepPointArraysAlive : int) return access GDALGridContext  -- ../gdal_alg.h:602
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGridContextCreate";

   procedure GDALGridContextFree (psContext : access GDALGridContext)  -- ../gdal_alg.h:607
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGridContextFree";

   function GDALGridContextProcess
     (psContext : access GDALGridContext;
      dfXMin : double;
      dfXMax : double;
      dfYMin : double;
      dfYMax : double;
      nXSize : cpl_port_h.GUInt32;
      nYSize : cpl_port_h.GUInt32;
      eType : gdal_h.GDALDataType;
      pData : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressArg : System.Address) return cpl_error_h.CPLErr  -- ../gdal_alg.h:609
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGridContextProcess";

   function GDALComputeMatchingPoints
     (hFirstImage : gdal_h.GDALDatasetH;
      hSecondImage : gdal_h.GDALDatasetH;
      papszOptions : System.Address;
      pnGCPCount : access int) return access gdal_h.GDAL_GCP  -- ../gdal_alg.h:615
   with Import => True, 
        Convention => C, 
        External_Name => "GDALComputeMatchingPoints";

   type GDALTriFacet_array7054 is array (0 .. 2) of aliased int;
   type GDALTriFacet is record
      anVertexIdx : aliased GDALTriFacet_array7054;  -- ../gdal_alg.h:627
      anNeighborIdx : aliased GDALTriFacet_array7054;  -- ../gdal_alg.h:628
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:631

   type GDALTriBarycentricCoefficients is record
      dfMul1X : aliased double;  -- ../gdal_alg.h:642
      dfMul1Y : aliased double;  -- ../gdal_alg.h:643
      dfMul2X : aliased double;  -- ../gdal_alg.h:644
      dfMul2Y : aliased double;  -- ../gdal_alg.h:645
      dfCstX : aliased double;  -- ../gdal_alg.h:646
      dfCstY : aliased double;  -- ../gdal_alg.h:647
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:648

   type GDALTriangulation is record
      nFacets : aliased int;  -- ../gdal_alg.h:653
      pasFacets : access GDALTriFacet;  -- ../gdal_alg.h:654
      pasFacetCoefficients : access GDALTriBarycentricCoefficients;  -- ../gdal_alg.h:655
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal_alg.h:656

   function GDALHasTriangulation return int  -- ../gdal_alg.h:658
   with Import => True, 
        Convention => C, 
        External_Name => "GDALHasTriangulation";

   function GDALTriangulationCreateDelaunay
     (nPoints : int;
      padfX : access double;
      padfY : access double) return access GDALTriangulation  -- ../gdal_alg.h:660
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTriangulationCreateDelaunay";

   function GDALTriangulationComputeBarycentricCoefficients
     (psDT : access GDALTriangulation;
      padfX : access double;
      padfY : access double) return int  -- ../gdal_alg.h:663
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTriangulationComputeBarycentricCoefficients";

   function GDALTriangulationComputeBarycentricCoordinates
     (psDT : access constant GDALTriangulation;
      nFacetIdx : int;
      dfX : double;
      dfY : double;
      pdfL1 : access double;
      pdfL2 : access double;
      pdfL3 : access double) return int  -- ../gdal_alg.h:667
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTriangulationComputeBarycentricCoordinates";

   function GDALTriangulationFindFacetBruteForce
     (psDT : access constant GDALTriangulation;
      dfX : double;
      dfY : double;
      panOutputFacetIdx : access int) return int  -- ../gdal_alg.h:675
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTriangulationFindFacetBruteForce";

   function GDALTriangulationFindFacetDirected
     (psDT : access constant GDALTriangulation;
      nFacetIdx : int;
      dfX : double;
      dfY : double;
      panOutputFacetIdx : access int) return int  -- ../gdal_alg.h:679
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTriangulationFindFacetDirected";

   procedure GDALTriangulationFree (psDT : access GDALTriangulation)  -- ../gdal_alg.h:684
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTriangulationFree";

   procedure GDALTriangulationTerminate  -- ../gdal_alg.h:688
   with Import => True, 
        Convention => C, 
        External_Name => "GDALTriangulationTerminate";

   function GDALOpenVerticalShiftGrid (pszProj4Geoidgrids : Interfaces.C.Strings.chars_ptr; pbError : access int) return gdal_h.GDALDatasetH  -- ../gdal_alg.h:691
   with Import => True, 
        Convention => C, 
        External_Name => "GDALOpenVerticalShiftGrid";

   function GDALApplyVerticalShiftGrid
     (hSrcDataset : gdal_h.GDALDatasetH;
      hGridDataset : gdal_h.GDALDatasetH;
      bInverse : int;
      dfSrcUnitToMeter : double;
      dfDstUnitToMeter : double;
      papszOptions : System.Address) return gdal_h.GDALDatasetH  -- ../gdal_alg.h:695
   with Import => True, 
        Convention => C, 
        External_Name => "GDALApplyVerticalShiftGrid";

end gdal_alg_h;
