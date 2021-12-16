pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with stddef_h;
with System;
with Interfaces.C.Strings;
with cpl_port_h;

package ogr_core_h is

   OGRERR_NONE : constant := 0;  --  ../ogr_core.h:320
   OGRERR_NOT_ENOUGH_DATA : constant := 1;  --  ../ogr_core.h:321
   OGRERR_NOT_ENOUGH_MEMORY : constant := 2;  --  ../ogr_core.h:322
   OGRERR_UNSUPPORTED_GEOMETRY_TYPE : constant := 3;  --  ../ogr_core.h:323
   OGRERR_UNSUPPORTED_OPERATION : constant := 4;  --  ../ogr_core.h:324
   OGRERR_CORRUPT_DATA : constant := 5;  --  ../ogr_core.h:325
   OGRERR_FAILURE : constant := 6;  --  ../ogr_core.h:326
   OGRERR_UNSUPPORTED_SRS : constant := 7;  --  ../ogr_core.h:327
   OGRERR_INVALID_HANDLE : constant := 8;  --  ../ogr_core.h:328
   OGRERR_NON_EXISTING_FEATURE : constant := 9;  --  ../ogr_core.h:329

   wkb25DBit : constant := 16#80000000#;  --  ../ogr_core.h:470
   --  arg-macro: procedure wkbFlatten (x)
   --    OGR_GT_Flatten((OGRwkbGeometryType)(x))
   --  arg-macro: function wkbHasZ (x)
   --    return OGR_GT_HasZ(x) /= 0;
   --  arg-macro: procedure wkbSetZ (x)
   --    OGR_GT_SetZ(x)
   --  arg-macro: function wkbHasM (x)
   --    return OGR_GT_HasM(x) /= 0;
   --  arg-macro: procedure wkbSetM (x)
   --    OGR_GT_SetM(x)

   ogrZMarker : constant := 16#21125711#;  --  ../ogr_core.h:502
   --  arg-macro: function DB2_V72_FIX_BYTE_ORDER (x)
   --    return (((x) and 16#31#) = (x)) ? ((x) and 16#1#) : (x);
   --  arg-macro: procedure DB2_V72_UNFIX_BYTE_ORDER (x)
   --    CPL_STATIC_CAST(unsigned char, OGRGeometry.bGenerate_DB2_V72_BYTE_ORDER ? ((x) or 16#30#) : (x))

   ALTER_NAME_FLAG : constant := 16#1#;  --  ../ogr_core.h:552

   ALTER_TYPE_FLAG : constant := 16#2#;  --  ../ogr_core.h:557

   ALTER_WIDTH_PRECISION_FLAG : constant := 16#4#;  --  ../ogr_core.h:562

   ALTER_NULLABLE_FLAG : constant := 16#8#;  --  ../ogr_core.h:568

   ALTER_DEFAULT_FLAG : constant := 16#10#;  --  ../ogr_core.h:574

   ALTER_UNIQUE_FLAG : constant := 16#20#;  --  ../ogr_core.h:580

   ALTER_DOMAIN_FLAG : constant := 16#40#;  --  ../ogr_core.h:586
   --  unsupported macro: ALTER_ALL_FLAG (ALTER_NAME_FLAG | ALTER_TYPE_FLAG | ALTER_WIDTH_PRECISION_FLAG | ALTER_NULLABLE_FLAG | ALTER_DEFAULT_FLAG | ALTER_UNIQUE_FLAG | ALTER_DOMAIN_FLAG)

   OGR_F_VAL_NULL : constant := 16#00000001#;  --  ../ogr_core.h:598

   OGR_F_VAL_GEOM_TYPE : constant := 16#00000002#;  --  ../ogr_core.h:604

   OGR_F_VAL_WIDTH : constant := 16#00000004#;  --  ../ogr_core.h:610

   OGR_F_VAL_ALLOW_NULL_WHEN_DEFAULT : constant := 16#00000008#;  --  ../ogr_core.h:619

   OGR_F_VAL_ALLOW_DIFFERENT_GEOM_DIM : constant := 16#00000010#;  --  ../ogr_core.h:627
   --  unsupported macro: OGR_F_VAL_ALL (0x7FFFFFFF & ~OGR_F_VAL_ALLOW_DIFFERENT_GEOM_DIM)

   OGRNullFID : constant := -1;  --  ../ogr_core.h:705
   --  unsupported macro: OGRUnknownType static_cast<OGRFieldType>(-1)

   OGRUnsetMarker : constant := -21121;  --  ../ogr_core.h:720

   OGRNullMarker : constant := -21122;  --  ../ogr_core.h:728

   OLCRandomRead : aliased constant String := "RandomRead" & ASCII.NUL;  --  ../ogr_core.h:807
   OLCSequentialWrite : aliased constant String := "SequentialWrite" & ASCII.NUL;  --  ../ogr_core.h:808
   OLCRandomWrite : aliased constant String := "RandomWrite" & ASCII.NUL;  --  ../ogr_core.h:809
   OLCFastSpatialFilter : aliased constant String := "FastSpatialFilter" & ASCII.NUL;  --  ../ogr_core.h:810
   OLCFastFeatureCount : aliased constant String := "FastFeatureCount" & ASCII.NUL;  --  ../ogr_core.h:811
   OLCFastGetExtent : aliased constant String := "FastGetExtent" & ASCII.NUL;  --  ../ogr_core.h:812
   OLCCreateField : aliased constant String := "CreateField" & ASCII.NUL;  --  ../ogr_core.h:813
   OLCDeleteField : aliased constant String := "DeleteField" & ASCII.NUL;  --  ../ogr_core.h:814
   OLCReorderFields : aliased constant String := "ReorderFields" & ASCII.NUL;  --  ../ogr_core.h:815
   OLCAlterFieldDefn : aliased constant String := "AlterFieldDefn" & ASCII.NUL;  --  ../ogr_core.h:816
   OLCTransactions : aliased constant String := "Transactions" & ASCII.NUL;  --  ../ogr_core.h:817
   OLCDeleteFeature : aliased constant String := "DeleteFeature" & ASCII.NUL;  --  ../ogr_core.h:818
   OLCFastSetNextByIndex : aliased constant String := "FastSetNextByIndex" & ASCII.NUL;  --  ../ogr_core.h:819
   OLCStringsAsUTF8 : aliased constant String := "StringsAsUTF8" & ASCII.NUL;  --  ../ogr_core.h:820
   OLCIgnoreFields : aliased constant String := "IgnoreFields" & ASCII.NUL;  --  ../ogr_core.h:821
   OLCCreateGeomField : aliased constant String := "CreateGeomField" & ASCII.NUL;  --  ../ogr_core.h:822
   OLCCurveGeometries : aliased constant String := "CurveGeometries" & ASCII.NUL;  --  ../ogr_core.h:823
   OLCMeasuredGeometries : aliased constant String := "MeasuredGeometries" & ASCII.NUL;  --  ../ogr_core.h:824

   ODsCCreateLayer : aliased constant String := "CreateLayer" & ASCII.NUL;  --  ../ogr_core.h:826
   ODsCDeleteLayer : aliased constant String := "DeleteLayer" & ASCII.NUL;  --  ../ogr_core.h:827
   ODsCCreateGeomFieldAfterCreateLayer : aliased constant String := "CreateGeomFieldAfterCreateLayer" & ASCII.NUL;  --  ../ogr_core.h:828
   ODsCCurveGeometries : aliased constant String := "CurveGeometries" & ASCII.NUL;  --  ../ogr_core.h:829
   ODsCTransactions : aliased constant String := "Transactions" & ASCII.NUL;  --  ../ogr_core.h:830
   ODsCEmulatedTransactions : aliased constant String := "EmulatedTransactions" & ASCII.NUL;  --  ../ogr_core.h:831
   ODsCMeasuredGeometries : aliased constant String := "MeasuredGeometries" & ASCII.NUL;  --  ../ogr_core.h:832
   ODsCRandomLayerRead : aliased constant String := "RandomLayerRead" & ASCII.NUL;  --  ../ogr_core.h:833

   ODsCRandomLayerWrite : aliased constant String := "RandomLayerWrite " & ASCII.NUL;  --  ../ogr_core.h:835
   ODsCAddFieldDomain : aliased constant String := "AddFieldDomain" & ASCII.NUL;  --  ../ogr_core.h:836

   ODrCCreateDataSource : aliased constant String := "CreateDataSource" & ASCII.NUL;  --  ../ogr_core.h:838
   ODrCDeleteDataSource : aliased constant String := "DeleteDataSource" & ASCII.NUL;  --  ../ogr_core.h:839

   OLMD_FID64 : aliased constant String := "OLMD_FID64" & ASCII.NUL;  --  ../ogr_core.h:848
   --  arg-macro: procedure GDAL_CHECK_VERSION (pszCallingComponentName)
   --    GDALCheckVersion(GDAL_VERSION_MAJOR, GDAL_VERSION_MINOR, pszCallingComponentName)

   type OGREnvelope is record
      MinX : aliased double;  -- ../ogr_core.h:161
      MaxX : aliased double;  -- ../ogr_core.h:162
      MinY : aliased double;  -- ../ogr_core.h:163
      MaxY : aliased double;  -- ../ogr_core.h:164
   end record
   with Convention => C_Pass_By_Copy;  -- ../ogr_core.h:165

   type OGREnvelope3D is record
      MinX : aliased double;  -- ../ogr_core.h:282
      MaxX : aliased double;  -- ../ogr_core.h:283
      MinY : aliased double;  -- ../ogr_core.h:284
      MaxY : aliased double;  -- ../ogr_core.h:285
      MinZ : aliased double;  -- ../ogr_core.h:286
      MaxZ : aliased double;  -- ../ogr_core.h:287
   end record
   with Convention => C_Pass_By_Copy;  -- ../ogr_core.h:288

   function OGRMalloc (arg1 : stddef_h.size_t) return System.Address  -- ../ogr_core.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "OGRMalloc";

   function OGRCalloc (arg1 : stddef_h.size_t; arg2 : stddef_h.size_t) return System.Address  -- ../ogr_core.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "OGRCalloc";

   function OGRRealloc (arg1 : System.Address; arg2 : stddef_h.size_t) return System.Address  -- ../ogr_core.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "OGRRealloc";

   function OGRStrdup (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../ogr_core.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "OGRStrdup";

   procedure OGRFree (arg1 : System.Address)  -- ../ogr_core.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "OGRFree";

   subtype OGRErr is int;  -- ../ogr_core.h:318

   subtype OGRBoolean is int;  -- ../ogr_core.h:334

   subtype OGRwkbGeometryType is unsigned;
   wkbUnknown : constant OGRwkbGeometryType := 0;
   wkbPoint : constant OGRwkbGeometryType := 1;
   wkbLineString : constant OGRwkbGeometryType := 2;
   wkbPolygon : constant OGRwkbGeometryType := 3;
   wkbMultiPoint : constant OGRwkbGeometryType := 4;
   wkbMultiLineString : constant OGRwkbGeometryType := 5;
   wkbMultiPolygon : constant OGRwkbGeometryType := 6;
   wkbGeometryCollection : constant OGRwkbGeometryType := 7;
   wkbCircularString : constant OGRwkbGeometryType := 8;
   wkbCompoundCurve : constant OGRwkbGeometryType := 9;
   wkbCurvePolygon : constant OGRwkbGeometryType := 10;
   wkbMultiCurve : constant OGRwkbGeometryType := 11;
   wkbMultiSurface : constant OGRwkbGeometryType := 12;
   wkbCurve : constant OGRwkbGeometryType := 13;
   wkbSurface : constant OGRwkbGeometryType := 14;
   wkbPolyhedralSurface : constant OGRwkbGeometryType := 15;
   wkbTIN : constant OGRwkbGeometryType := 16;
   wkbTriangle : constant OGRwkbGeometryType := 17;
   wkbNone : constant OGRwkbGeometryType := 100;
   wkbLinearRing : constant OGRwkbGeometryType := 101;
   wkbCircularStringZ : constant OGRwkbGeometryType := 1008;
   wkbCompoundCurveZ : constant OGRwkbGeometryType := 1009;
   wkbCurvePolygonZ : constant OGRwkbGeometryType := 1010;
   wkbMultiCurveZ : constant OGRwkbGeometryType := 1011;
   wkbMultiSurfaceZ : constant OGRwkbGeometryType := 1012;
   wkbCurveZ : constant OGRwkbGeometryType := 1013;
   wkbSurfaceZ : constant OGRwkbGeometryType := 1014;
   wkbPolyhedralSurfaceZ : constant OGRwkbGeometryType := 1015;
   wkbTINZ : constant OGRwkbGeometryType := 1016;
   wkbTriangleZ : constant OGRwkbGeometryType := 1017;
   wkbPointM : constant OGRwkbGeometryType := 2001;
   wkbLineStringM : constant OGRwkbGeometryType := 2002;
   wkbPolygonM : constant OGRwkbGeometryType := 2003;
   wkbMultiPointM : constant OGRwkbGeometryType := 2004;
   wkbMultiLineStringM : constant OGRwkbGeometryType := 2005;
   wkbMultiPolygonM : constant OGRwkbGeometryType := 2006;
   wkbGeometryCollectionM : constant OGRwkbGeometryType := 2007;
   wkbCircularStringM : constant OGRwkbGeometryType := 2008;
   wkbCompoundCurveM : constant OGRwkbGeometryType := 2009;
   wkbCurvePolygonM : constant OGRwkbGeometryType := 2010;
   wkbMultiCurveM : constant OGRwkbGeometryType := 2011;
   wkbMultiSurfaceM : constant OGRwkbGeometryType := 2012;
   wkbCurveM : constant OGRwkbGeometryType := 2013;
   wkbSurfaceM : constant OGRwkbGeometryType := 2014;
   wkbPolyhedralSurfaceM : constant OGRwkbGeometryType := 2015;
   wkbTINM : constant OGRwkbGeometryType := 2016;
   wkbTriangleM : constant OGRwkbGeometryType := 2017;
   wkbPointZM : constant OGRwkbGeometryType := 3001;
   wkbLineStringZM : constant OGRwkbGeometryType := 3002;
   wkbPolygonZM : constant OGRwkbGeometryType := 3003;
   wkbMultiPointZM : constant OGRwkbGeometryType := 3004;
   wkbMultiLineStringZM : constant OGRwkbGeometryType := 3005;
   wkbMultiPolygonZM : constant OGRwkbGeometryType := 3006;
   wkbGeometryCollectionZM : constant OGRwkbGeometryType := 3007;
   wkbCircularStringZM : constant OGRwkbGeometryType := 3008;
   wkbCompoundCurveZM : constant OGRwkbGeometryType := 3009;
   wkbCurvePolygonZM : constant OGRwkbGeometryType := 3010;
   wkbMultiCurveZM : constant OGRwkbGeometryType := 3011;
   wkbMultiSurfaceZM : constant OGRwkbGeometryType := 3012;
   wkbCurveZM : constant OGRwkbGeometryType := 3013;
   wkbSurfaceZM : constant OGRwkbGeometryType := 3014;
   wkbPolyhedralSurfaceZM : constant OGRwkbGeometryType := 3015;
   wkbTINZM : constant OGRwkbGeometryType := 3016;
   wkbTriangleZM : constant OGRwkbGeometryType := 3017;
   wkbPoint25D : constant OGRwkbGeometryType := 2147483649;
   wkbLineString25D : constant OGRwkbGeometryType := 2147483650;
   wkbPolygon25D : constant OGRwkbGeometryType := 2147483651;
   wkbMultiPoint25D : constant OGRwkbGeometryType := 2147483652;
   wkbMultiLineString25D : constant OGRwkbGeometryType := 2147483653;
   wkbMultiPolygon25D : constant OGRwkbGeometryType := 2147483654;
   wkbGeometryCollection25D : constant OGRwkbGeometryType := 2147483655;  -- ../ogr_core.h:445

   type OGRwkbVariant is 
     (wkbVariantOldOgc,
      wkbVariantIso,
      wkbVariantPostGIS1)
   with Convention => C;  -- ../ogr_core.h:466

   function OGRGeometryTypeToName (eType : OGRwkbGeometryType) return Interfaces.C.Strings.chars_ptr  -- ../ogr_core.h:505
   with Import => True, 
        Convention => C, 
        External_Name => "OGRGeometryTypeToName";

   function OGRMergeGeometryTypes (eMain : OGRwkbGeometryType; eExtra : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:506
   with Import => True, 
        Convention => C, 
        External_Name => "OGRMergeGeometryTypes";

   function OGRMergeGeometryTypesEx
     (eMain : OGRwkbGeometryType;
      eExtra : OGRwkbGeometryType;
      bAllowPromotingToCurves : int) return OGRwkbGeometryType  -- ../ogr_core.h:508
   with Import => True, 
        Convention => C, 
        External_Name => "OGRMergeGeometryTypesEx";

   function OGR_GT_Flatten (eType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:511
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_Flatten";

   function OGR_GT_SetZ (eType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:512
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_SetZ";

   function OGR_GT_SetM (eType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:513
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_SetM";

   function OGR_GT_SetModifier
     (eType : OGRwkbGeometryType;
      bSetZ : int;
      bSetM : int) return OGRwkbGeometryType  -- ../ogr_core.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_SetModifier";

   function OGR_GT_HasZ (eType : OGRwkbGeometryType) return int  -- ../ogr_core.h:515
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_HasZ";

   function OGR_GT_HasM (eType : OGRwkbGeometryType) return int  -- ../ogr_core.h:516
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_HasM";

   function OGR_GT_IsSubClassOf (eType : OGRwkbGeometryType; eSuperType : OGRwkbGeometryType) return int  -- ../ogr_core.h:517
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_IsSubClassOf";

   function OGR_GT_IsCurve (arg1 : OGRwkbGeometryType) return int  -- ../ogr_core.h:519
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_IsCurve";

   function OGR_GT_IsSurface (arg1 : OGRwkbGeometryType) return int  -- ../ogr_core.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_IsSurface";

   function OGR_GT_IsNonLinear (arg1 : OGRwkbGeometryType) return int  -- ../ogr_core.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_IsNonLinear";

   function OGR_GT_GetCollection (eType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:522
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_GetCollection";

   function OGR_GT_GetCurve (eType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:523
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_GetCurve";

   function OGR_GT_GetLinear (eType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:524
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GT_GetLinear";

   type OGRwkbByteOrder is 
     (wkbXDR,
      wkbNDR)
   with Convention => C;  -- ../ogr_core.h:531

   subtype OGRFieldType is unsigned;
   OFTInteger : constant OGRFieldType := 0;
   OFTIntegerList : constant OGRFieldType := 1;
   OFTReal : constant OGRFieldType := 2;
   OFTRealList : constant OGRFieldType := 3;
   OFTString : constant OGRFieldType := 4;
   OFTStringList : constant OGRFieldType := 5;
   OFTWideString : constant OGRFieldType := 6;
   OFTWideStringList : constant OGRFieldType := 7;
   OFTBinary : constant OGRFieldType := 8;
   OFTDate : constant OGRFieldType := 9;
   OFTTime : constant OGRFieldType := 10;
   OFTDateTime : constant OGRFieldType := 11;
   OFTInteger64 : constant OGRFieldType := 12;
   OFTInteger64List : constant OGRFieldType := 13;
   OFTMaxType : constant OGRFieldType := 13;  -- ../ogr_core.h:662

   subtype OGRFieldSubType is unsigned;
   OFSTNone : constant OGRFieldSubType := 0;
   OFSTBoolean : constant OGRFieldSubType := 1;
   OFSTInt16 : constant OGRFieldSubType := 2;
   OFSTFloat32 : constant OGRFieldSubType := 3;
   OFSTJSON : constant OGRFieldSubType := 4;
   OFSTUUID : constant OGRFieldSubType := 5;
   OFSTMaxSubType : constant OGRFieldSubType := 5;  -- ../ogr_core.h:691

   type OGRJustification is 
     (OJUndefined,
      OJLeft,
      OJRight)
   with Convention => C;  -- ../ogr_core.h:702

   type OGRField_struct5745 is record
      nCount : aliased int;  -- ../ogr_core.h:746
      paList : access int;  -- ../ogr_core.h:747
   end record
   with Convention => C_Pass_By_Copy;
   type OGRField_struct5746 is record
      nCount : aliased int;  -- ../ogr_core.h:751
      paList : access cpl_port_h.GIntBig;  -- ../ogr_core.h:752
   end record
   with Convention => C_Pass_By_Copy;
   type OGRField_struct5748 is record
      nCount : aliased int;  -- ../ogr_core.h:756
      paList : access double;  -- ../ogr_core.h:757
   end record
   with Convention => C_Pass_By_Copy;
   type OGRField_struct5749 is record
      nCount : aliased int;  -- ../ogr_core.h:761
      paList : System.Address;  -- ../ogr_core.h:762
   end record
   with Convention => C_Pass_By_Copy;
   type OGRField_struct5750 is record
      nCount : aliased int;  -- ../ogr_core.h:766
      paData : access cpl_port_h.GByte;  -- ../ogr_core.h:767
   end record
   with Convention => C_Pass_By_Copy;
   type OGRField_struct5751 is record
      nMarker1 : aliased int;  -- ../ogr_core.h:771
      nMarker2 : aliased int;  -- ../ogr_core.h:772
      nMarker3 : aliased int;  -- ../ogr_core.h:773
   end record
   with Convention => C_Pass_By_Copy;
   type OGRField_struct5752 is record
      Year : aliased cpl_port_h.GInt16;  -- ../ogr_core.h:777
      Month : aliased cpl_port_h.GByte;  -- ../ogr_core.h:778
      Day : aliased cpl_port_h.GByte;  -- ../ogr_core.h:779
      Hour : aliased cpl_port_h.GByte;  -- ../ogr_core.h:780
      Minute : aliased cpl_port_h.GByte;  -- ../ogr_core.h:781
      TZFlag : aliased cpl_port_h.GByte;  -- ../ogr_core.h:782
      Reserved : aliased cpl_port_h.GByte;  -- ../ogr_core.h:784
      Second : aliased float;  -- ../ogr_core.h:785
   end record
   with Convention => C_Pass_By_Copy;
   type OGRField (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            Integer : aliased int;  -- ../ogr_core.h:740
         when 1 =>
            Integer64 : aliased cpl_port_h.GIntBig;  -- ../ogr_core.h:741
         when 2 =>
            Real : aliased double;  -- ../ogr_core.h:742
         when 3 =>
            String : Interfaces.C.Strings.chars_ptr;  -- ../ogr_core.h:743
         when 4 =>
            IntegerList : aliased OGRField_struct5745;  -- ../ogr_core.h:748
         when 5 =>
            Integer64List : aliased OGRField_struct5746;  -- ../ogr_core.h:753
         when 6 =>
            RealList : aliased OGRField_struct5748;  -- ../ogr_core.h:758
         when 7 =>
            StringList : aliased OGRField_struct5749;  -- ../ogr_core.h:763
         when 8 =>
            Binary : aliased OGRField_struct5750;  -- ../ogr_core.h:768
         when 9 =>
            Set : aliased OGRField_struct5751;  -- ../ogr_core.h:774
         when others =>
            Date : aliased OGRField_struct5752;  -- ../ogr_core.h:786
      end case;
   end record
   with Convention => C_Pass_By_Copy,
        Unchecked_Union => True;  -- ../ogr_core.h:788

   function OGRParseDate
     (pszInput : Interfaces.C.Strings.chars_ptr;
      psOutput : access OGRField;
      nOptions : int) return int  -- ../ogr_core.h:801
   with Import => True, 
        Convention => C, 
        External_Name => "OGRParseDate";

   type ogr_style_tool_class_id is 
     (OGRSTCNone,
      OGRSTCPen,
      OGRSTCBrush,
      OGRSTCSymbol,
      OGRSTCLabel,
      OGRSTCVector)
   with Convention => C;  -- ../ogr_core.h:858

   subtype OGRSTClassId is ogr_style_tool_class_id;  -- ../ogr_core.h:866

   type ogr_style_tool_units_id is 
     (OGRSTUGround,
      OGRSTUPixel,
      OGRSTUPoints,
      OGRSTUMM,
      OGRSTUCM,
      OGRSTUInches)
   with Convention => C;  -- ../ogr_core.h:871

   subtype OGRSTUnitId is ogr_style_tool_units_id;  -- ../ogr_core.h:879

   type ogr_style_tool_param_pen_id is 
     (OGRSTPenColor,
      OGRSTPenWidth,
      OGRSTPenPattern,
      OGRSTPenId,
      OGRSTPenPerOffset,
      OGRSTPenCap,
      OGRSTPenJoin,
      OGRSTPenPriority,
      OGRSTPenLast)
   with Convention => C;  -- ../ogr_core.h:884

   subtype OGRSTPenParam is ogr_style_tool_param_pen_id;  -- ../ogr_core.h:897

   type ogr_style_tool_param_brush_id is 
     (OGRSTBrushFColor,
      OGRSTBrushBColor,
      OGRSTBrushId,
      OGRSTBrushAngle,
      OGRSTBrushSize,
      OGRSTBrushDx,
      OGRSTBrushDy,
      OGRSTBrushPriority,
      OGRSTBrushLast)
   with Convention => C;  -- ../ogr_core.h:902

   subtype OGRSTBrushParam is ogr_style_tool_param_brush_id;  -- ../ogr_core.h:916

   type ogr_style_tool_param_symbol_id is 
     (OGRSTSymbolId,
      OGRSTSymbolAngle,
      OGRSTSymbolColor,
      OGRSTSymbolSize,
      OGRSTSymbolDx,
      OGRSTSymbolDy,
      OGRSTSymbolStep,
      OGRSTSymbolPerp,
      OGRSTSymbolOffset,
      OGRSTSymbolPriority,
      OGRSTSymbolFontName,
      OGRSTSymbolOColor,
      OGRSTSymbolLast)
   with Convention => C;  -- ../ogr_core.h:921

   subtype OGRSTSymbolParam is ogr_style_tool_param_symbol_id;  -- ../ogr_core.h:938

   type ogr_style_tool_param_label_id is 
     (OGRSTLabelFontName,
      OGRSTLabelSize,
      OGRSTLabelTextString,
      OGRSTLabelAngle,
      OGRSTLabelFColor,
      OGRSTLabelBColor,
      OGRSTLabelPlacement,
      OGRSTLabelAnchor,
      OGRSTLabelDx,
      OGRSTLabelDy,
      OGRSTLabelPerp,
      OGRSTLabelBold,
      OGRSTLabelItalic,
      OGRSTLabelUnderline,
      OGRSTLabelPriority,
      OGRSTLabelStrikeout,
      OGRSTLabelStretch,
      OGRSTLabelAdjHor,
      OGRSTLabelAdjVert,
      OGRSTLabelHColor,
      OGRSTLabelOColor,
      OGRSTLabelLast)
   with Convention => C;  -- ../ogr_core.h:943

   subtype OGRSTLabelParam is ogr_style_tool_param_label_id;  -- ../ogr_core.h:969

   type OGRCodedValue is record
      pszCode : Interfaces.C.Strings.chars_ptr;  -- ../ogr_core.h:982
      pszValue : Interfaces.C.Strings.chars_ptr;  -- ../ogr_core.h:985
   end record
   with Convention => C_Pass_By_Copy;  -- ../ogr_core.h:986

   type OGRFieldDomainType is 
     (OFDT_CODED,
      OFDT_RANGE,
      OFDT_GLOB)
   with Convention => C;  -- ../ogr_core.h:1000

   type OGRFieldDomainSplitPolicy is 
     (OFDSP_DEFAULT_VALUE,
      OFDSP_DUPLICATE,
      OFDSP_GEOMETRY_RATIO)
   with Convention => C;  -- ../ogr_core.h:1017

   type OGRFieldDomainMergePolicy is 
     (OFDMP_DEFAULT_VALUE,
      OFDMP_SUM,
      OFDMP_GEOMETRY_WEIGHTED)
   with Convention => C;  -- ../ogr_core.h:1034

   function GDALVersionInfo (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../ogr_core.h:1046
   with Import => True, 
        Convention => C, 
        External_Name => "GDALVersionInfo";

   function GDALCheckVersion
     (nVersionMajor : int;
      nVersionMinor : int;
      pszCallingComponentName : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_core.h:1062
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCheckVersion";

end ogr_core_h;
