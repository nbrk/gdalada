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
pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with ogr_core_h;
with stddef_h;
with Interfaces.C.Strings;
limited with x86_64_linux_gnu_bits_types_FILE_h;
limited with cpl_minixml_h;
with cpl_port_h;
with Interfaces.C.Extensions;
with cpl_progress_h;

package ogr_api_h is

   --  arg-macro: procedure OGR_FOR_EACH_FEATURE_BEGIN (hFeat, hLayer)
   --    { OGRFeatureH hFeat := CPL_NULLPTR; OGR_L_ResetReading(hLayer); while( true) { if( hFeat ) OGR_F_Destroy(hFeat); hFeat := OGR_L_GetNextFeature(hLayer); if( nothFeat ) break;
   --  arg-macro: procedure OGR_FOR_EACH_FEATURE_END (hFeat)
   --    } OGR_F_Destroy(hFeat); }
   type OGRGeometryH is new System.Address;  -- ../ogr_api.h:63

   type OGRSpatialReferenceH is new System.Address;  -- ../ogr_api.h:78

   type OGRCoordinateTransformationH is new System.Address;  -- ../ogr_api.h:80

   type u_CPLXMLNode is null record;   -- incomplete struct

   function OGR_G_CreateFromWkb
     (arg1 : System.Address;
      arg2 : OGRSpatialReferenceH;
      arg3 : System.Address;
      arg4 : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateFromWkb";

   function OGR_G_CreateFromWkbEx
     (arg1 : System.Address;
      arg2 : OGRSpatialReferenceH;
      arg3 : System.Address;
      arg4 : stddef_h.size_t) return ogr_core_h.OGRErr  -- ../ogr_api.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateFromWkbEx";

   function OGR_G_CreateFromWkt
     (arg1 : System.Address;
      arg2 : OGRSpatialReferenceH;
      arg3 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateFromWkt";

   function OGR_G_CreateFromFgf
     (arg1 : System.Address;
      arg2 : OGRSpatialReferenceH;
      arg3 : System.Address;
      arg4 : int;
      arg5 : access int) return ogr_core_h.OGRErr  -- ../ogr_api.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateFromFgf";

   procedure OGR_G_DestroyGeometry (arg1 : OGRGeometryH)  -- ../ogr_api.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_DestroyGeometry";

   function OGR_G_CreateGeometry (arg1 : ogr_core_h.OGRwkbGeometryType) return OGRGeometryH  -- ../ogr_api.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateGeometry";

   function OGR_G_ApproximateArcAngles
     (dfCenterX : double;
      dfCenterY : double;
      dfZ : double;
      dfPrimaryRadius : double;
      dfSecondaryAxis : double;
      dfRotation : double;
      dfStartAngle : double;
      dfEndAngle : double;
      dfMaxAngleStepSizeDegrees : double) return OGRGeometryH  -- ../ogr_api.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ApproximateArcAngles";

   function OGR_G_ForceToPolygon (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ForceToPolygon";

   function OGR_G_ForceToLineString (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ForceToLineString";

   function OGR_G_ForceToMultiPolygon (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ForceToMultiPolygon";

   function OGR_G_ForceToMultiPoint (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ForceToMultiPoint";

   function OGR_G_ForceToMultiLineString (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ForceToMultiLineString";

   function OGR_G_ForceTo
     (hGeom : OGRGeometryH;
      eTargetType : ogr_core_h.OGRwkbGeometryType;
      papszOptions : System.Address) return OGRGeometryH  -- ../ogr_api.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ForceTo";

   function OGR_G_RemoveLowerDimensionSubGeoms (hGeom : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_RemoveLowerDimensionSubGeoms";

   function OGR_G_GetDimension (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetDimension";

   function OGR_G_GetCoordinateDimension (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetCoordinateDimension";

   function OGR_G_CoordinateDimension (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CoordinateDimension";

   procedure OGR_G_SetCoordinateDimension (arg1 : OGRGeometryH; arg2 : int)  -- ../ogr_api.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetCoordinateDimension";

   function OGR_G_Is3D (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Is3D";

   function OGR_G_IsMeasured (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_IsMeasured";

   procedure OGR_G_Set3D (arg1 : OGRGeometryH; arg2 : int)  -- ../ogr_api.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Set3D";

   procedure OGR_G_SetMeasured (arg1 : OGRGeometryH; arg2 : int)  -- ../ogr_api.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetMeasured";

   function OGR_G_Clone (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Clone";

   procedure OGR_G_GetEnvelope (arg1 : OGRGeometryH; arg2 : access ogr_core_h.OGREnvelope)  -- ../ogr_api.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetEnvelope";

   procedure OGR_G_GetEnvelope3D (arg1 : OGRGeometryH; arg2 : access ogr_core_h.OGREnvelope3D)  -- ../ogr_api.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetEnvelope3D";

   function OGR_G_ImportFromWkb
     (arg1 : OGRGeometryH;
      arg2 : System.Address;
      arg3 : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ImportFromWkb";

   function OGR_G_ExportToWkb
     (arg1 : OGRGeometryH;
      arg2 : ogr_core_h.OGRwkbByteOrder;
      arg3 : access unsigned_char) return ogr_core_h.OGRErr  -- ../ogr_api.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToWkb";

   function OGR_G_ExportToIsoWkb
     (arg1 : OGRGeometryH;
      arg2 : ogr_core_h.OGRwkbByteOrder;
      arg3 : access unsigned_char) return ogr_core_h.OGRErr  -- ../ogr_api.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToIsoWkb";

   function OGR_G_WkbSize (hGeom : OGRGeometryH) return int  -- ../ogr_api.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_WkbSize";

   function OGR_G_WkbSizeEx (hGeom : OGRGeometryH) return stddef_h.size_t  -- ../ogr_api.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_WkbSizeEx";

   function OGR_G_ImportFromWkt (arg1 : OGRGeometryH; arg2 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ImportFromWkt";

   function OGR_G_ExportToWkt (arg1 : OGRGeometryH; arg2 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToWkt";

   function OGR_G_ExportToIsoWkt (arg1 : OGRGeometryH; arg2 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToIsoWkt";

   function OGR_G_GetGeometryType (arg1 : OGRGeometryH) return ogr_core_h.OGRwkbGeometryType  -- ../ogr_api.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetGeometryType";

   function OGR_G_GetGeometryName (arg1 : OGRGeometryH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetGeometryName";

   procedure OGR_G_DumpReadable
     (arg1 : OGRGeometryH;
      arg2 : access x86_64_linux_gnu_bits_types_FILE_h.FILE;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_DumpReadable";

   procedure OGR_G_FlattenTo2D (arg1 : OGRGeometryH)  -- ../ogr_api.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_FlattenTo2D";

   procedure OGR_G_CloseRings (arg1 : OGRGeometryH)  -- ../ogr_api.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CloseRings";

   function OGR_G_CreateFromGML (arg1 : Interfaces.C.Strings.chars_ptr) return OGRGeometryH  -- ../ogr_api.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateFromGML";

   function OGR_G_ExportToGML (arg1 : OGRGeometryH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToGML";

   function OGR_G_ExportToGMLEx (arg1 : OGRGeometryH; papszOptions : System.Address) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToGMLEx";

   function OGR_G_CreateFromGMLTree (arg1 : access constant cpl_minixml_h.CPLXMLNode) return OGRGeometryH  -- ../ogr_api.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateFromGMLTree";

   function OGR_G_ExportToGMLTree (arg1 : OGRGeometryH) return access cpl_minixml_h.CPLXMLNode  -- ../ogr_api.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToGMLTree";

   function OGR_G_ExportEnvelopeToGMLTree (arg1 : OGRGeometryH) return access cpl_minixml_h.CPLXMLNode  -- ../ogr_api.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportEnvelopeToGMLTree";

   function OGR_G_ExportToKML (arg1 : OGRGeometryH; pszAltitudeMode : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToKML";

   function OGR_G_ExportToJson (arg1 : OGRGeometryH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToJson";

   function OGR_G_ExportToJsonEx (arg1 : OGRGeometryH; papszOptions : System.Address) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ExportToJsonEx";

   function OGR_G_CreateGeometryFromJson (arg1 : Interfaces.C.Strings.chars_ptr) return OGRGeometryH  -- ../ogr_api.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateGeometryFromJson";

   function OGR_G_CreateGeometryFromEsriJson (arg1 : Interfaces.C.Strings.chars_ptr) return OGRGeometryH  -- ../ogr_api.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_CreateGeometryFromEsriJson";

   procedure OGR_G_AssignSpatialReference (arg1 : OGRGeometryH; arg2 : OGRSpatialReferenceH)  -- ../ogr_api.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_AssignSpatialReference";

   function OGR_G_GetSpatialReference (arg1 : OGRGeometryH) return OGRSpatialReferenceH  -- ../ogr_api.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetSpatialReference";

   function OGR_G_Transform (arg1 : OGRGeometryH; arg2 : OGRCoordinateTransformationH) return ogr_core_h.OGRErr  -- ../ogr_api.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Transform";

   function OGR_G_TransformTo (arg1 : OGRGeometryH; arg2 : OGRSpatialReferenceH) return ogr_core_h.OGRErr  -- ../ogr_api.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_TransformTo";

   type OGRGeomTransformer is null record;   -- incomplete struct

   type OGRGeomTransformerH is access all OGRGeomTransformer;  -- ../ogr_api.h:166

   function OGR_GeomTransformer_Create (arg1 : OGRCoordinateTransformationH; papszOptions : cpl_port_h.CSLConstList) return OGRGeomTransformerH  -- ../ogr_api.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GeomTransformer_Create";

   function OGR_GeomTransformer_Transform (hTransformer : OGRGeomTransformerH; hGeom : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GeomTransformer_Transform";

   procedure OGR_GeomTransformer_Destroy (hTransformer : OGRGeomTransformerH)  -- ../ogr_api.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GeomTransformer_Destroy";

   function OGR_G_Simplify (hThis : OGRGeometryH; tolerance : double) return OGRGeometryH  -- ../ogr_api.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Simplify";

   function OGR_G_SimplifyPreserveTopology (hThis : OGRGeometryH; tolerance : double) return OGRGeometryH  -- ../ogr_api.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SimplifyPreserveTopology";

   function OGR_G_DelaunayTriangulation
     (hThis : OGRGeometryH;
      dfTolerance : double;
      bOnlyEdges : int) return OGRGeometryH  -- ../ogr_api.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_DelaunayTriangulation";

   procedure OGR_G_Segmentize (hGeom : OGRGeometryH; dfMaxLength : double)  -- ../ogr_api.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Segmentize";

   function OGR_G_Intersects (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Intersects";

   function OGR_G_Equals (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Equals";

   function OGR_G_Disjoint (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Disjoint";

   function OGR_G_Touches (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Touches";

   function OGR_G_Crosses (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Crosses";

   function OGR_G_Within (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Within";

   function OGR_G_Contains (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Contains";

   function OGR_G_Overlaps (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Overlaps";

   function OGR_G_Boundary (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Boundary";

   function OGR_G_ConvexHull (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_ConvexHull";

   function OGR_G_Buffer
     (arg1 : OGRGeometryH;
      arg2 : double;
      arg3 : int) return OGRGeometryH  -- ../ogr_api.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Buffer";

   function OGR_G_Intersection (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Intersection";

   function OGR_G_Union (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Union";

   function OGR_G_UnionCascaded (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_UnionCascaded";

   function OGR_G_PointOnSurface (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_PointOnSurface";

   function OGR_G_Difference (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Difference";

   function OGR_G_SymDifference (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SymDifference";

   function OGR_G_Distance (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return double  -- ../ogr_api.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Distance";

   function OGR_G_Distance3D (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return double  -- ../ogr_api.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Distance3D";

   function OGR_G_Length (arg1 : OGRGeometryH) return double  -- ../ogr_api.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Length";

   function OGR_G_Area (arg1 : OGRGeometryH) return double  -- ../ogr_api.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Area";

   function OGR_G_Centroid (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Centroid";

   function OGR_G_Value (arg1 : OGRGeometryH; dfDistance : double) return OGRGeometryH  -- ../ogr_api.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Value";

   procedure OGR_G_Empty (arg1 : OGRGeometryH)  -- ../ogr_api.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Empty";

   function OGR_G_IsEmpty (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_IsEmpty";

   function OGR_G_IsValid (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_IsValid";

   function OGR_G_MakeValid (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_MakeValid";

   function OGR_G_Normalize (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Normalize";

   function OGR_G_IsSimple (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_IsSimple";

   function OGR_G_IsRing (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_IsRing";

   function OGR_G_Polygonize (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Polygonize";

   function OGR_G_Intersect (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Intersect";

   function OGR_G_Equal (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return int  -- ../ogr_api.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_Equal";

   function OGR_G_SymmetricDifference (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SymmetricDifference";

   function OGR_G_GetArea (arg1 : OGRGeometryH) return double  -- ../ogr_api.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetArea";

   function OGR_G_GetBoundary (arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetBoundary";

   function OGR_G_GetPointCount (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetPointCount";

   function OGR_G_GetPoints
     (hGeom : OGRGeometryH;
      pabyX : System.Address;
      nXStride : int;
      pabyY : System.Address;
      nYStride : int;
      pabyZ : System.Address;
      nZStride : int) return int  -- ../ogr_api.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetPoints";

   function OGR_G_GetPointsZM
     (hGeom : OGRGeometryH;
      pabyX : System.Address;
      nXStride : int;
      pabyY : System.Address;
      nYStride : int;
      pabyZ : System.Address;
      nZStride : int;
      pabyM : System.Address;
      nMStride : int) return int  -- ../ogr_api.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetPointsZM";

   function OGR_G_GetX (arg1 : OGRGeometryH; arg2 : int) return double  -- ../ogr_api.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetX";

   function OGR_G_GetY (arg1 : OGRGeometryH; arg2 : int) return double  -- ../ogr_api.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetY";

   function OGR_G_GetZ (arg1 : OGRGeometryH; arg2 : int) return double  -- ../ogr_api.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetZ";

   function OGR_G_GetM (arg1 : OGRGeometryH; arg2 : int) return double  -- ../ogr_api.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetM";

   procedure OGR_G_GetPoint
     (arg1 : OGRGeometryH;
      iPoint : int;
      arg3 : access double;
      arg4 : access double;
      arg5 : access double)  -- ../ogr_api.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetPoint";

   procedure OGR_G_GetPointZM
     (arg1 : OGRGeometryH;
      iPoint : int;
      arg3 : access double;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- ../ogr_api.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetPointZM";

   procedure OGR_G_SetPointCount (hGeom : OGRGeometryH; nNewPointCount : int)  -- ../ogr_api.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetPointCount";

   procedure OGR_G_SetPoint
     (arg1 : OGRGeometryH;
      iPoint : int;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- ../ogr_api.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetPoint";

   procedure OGR_G_SetPoint_2D
     (arg1 : OGRGeometryH;
      iPoint : int;
      arg3 : double;
      arg4 : double)  -- ../ogr_api.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetPoint_2D";

   procedure OGR_G_SetPointM
     (arg1 : OGRGeometryH;
      iPoint : int;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- ../ogr_api.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetPointM";

   procedure OGR_G_SetPointZM
     (arg1 : OGRGeometryH;
      iPoint : int;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double)  -- ../ogr_api.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetPointZM";

   procedure OGR_G_AddPoint
     (arg1 : OGRGeometryH;
      arg2 : double;
      arg3 : double;
      arg4 : double)  -- ../ogr_api.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_AddPoint";

   procedure OGR_G_AddPoint_2D
     (arg1 : OGRGeometryH;
      arg2 : double;
      arg3 : double)  -- ../ogr_api.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_AddPoint_2D";

   procedure OGR_G_AddPointM
     (arg1 : OGRGeometryH;
      arg2 : double;
      arg3 : double;
      arg4 : double)  -- ../ogr_api.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_AddPointM";

   procedure OGR_G_AddPointZM
     (arg1 : OGRGeometryH;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- ../ogr_api.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_AddPointZM";

   procedure OGR_G_SetPoints
     (hGeom : OGRGeometryH;
      nPointsIn : int;
      pabyX : System.Address;
      nXStride : int;
      pabyY : System.Address;
      nYStride : int;
      pabyZ : System.Address;
      nZStride : int)  -- ../ogr_api.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetPoints";

   procedure OGR_G_SetPointsZM
     (hGeom : OGRGeometryH;
      nPointsIn : int;
      pabyX : System.Address;
      nXStride : int;
      pabyY : System.Address;
      nYStride : int;
      pabyZ : System.Address;
      nZStride : int;
      pabyM : System.Address;
      nMStride : int)  -- ../ogr_api.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SetPointsZM";

   procedure OGR_G_SwapXY (hGeom : OGRGeometryH)  -- ../ogr_api.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_SwapXY";

   function OGR_G_GetGeometryCount (arg1 : OGRGeometryH) return int  -- ../ogr_api.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetGeometryCount";

   function OGR_G_GetGeometryRef (arg1 : OGRGeometryH; arg2 : int) return OGRGeometryH  -- ../ogr_api.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetGeometryRef";

   function OGR_G_AddGeometry (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return ogr_core_h.OGRErr  -- ../ogr_api.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_AddGeometry";

   function OGR_G_AddGeometryDirectly (arg1 : OGRGeometryH; arg2 : OGRGeometryH) return ogr_core_h.OGRErr  -- ../ogr_api.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_AddGeometryDirectly";

   function OGR_G_RemoveGeometry
     (arg1 : OGRGeometryH;
      arg2 : int;
      arg3 : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_RemoveGeometry";

   function OGR_G_HasCurveGeometry (arg1 : OGRGeometryH; bLookForNonLinear : int) return int  -- ../ogr_api.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_HasCurveGeometry";

   function OGR_G_GetLinearGeometry
     (hGeom : OGRGeometryH;
      dfMaxAngleStepSizeDegrees : double;
      papszOptions : System.Address) return OGRGeometryH  -- ../ogr_api.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetLinearGeometry";

   function OGR_G_GetCurveGeometry (hGeom : OGRGeometryH; papszOptions : System.Address) return OGRGeometryH  -- ../ogr_api.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_G_GetCurveGeometry";

   function OGRBuildPolygonFromEdges
     (hLinesAsCollection : OGRGeometryH;
      bBestEffort : int;
      bAutoClose : int;
      dfTolerance : double;
      peErr : access ogr_core_h.OGRErr) return OGRGeometryH  -- ../ogr_api.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "OGRBuildPolygonFromEdges";

   function OGRSetGenerate_DB2_V72_BYTE_ORDER (bGenerate_DB2_V72_BYTE_ORDER : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "OGRSetGenerate_DB2_V72_BYTE_ORDER";

   function OGRGetGenerate_DB2_V72_BYTE_ORDER return int  -- ../ogr_api.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "OGRGetGenerate_DB2_V72_BYTE_ORDER";

   procedure OGRSetNonLinearGeometriesEnabledFlag (bFlag : int)  -- ../ogr_api.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "OGRSetNonLinearGeometriesEnabledFlag";

   function OGRGetNonLinearGeometriesEnabledFlag return int  -- ../ogr_api.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "OGRGetNonLinearGeometriesEnabledFlag";

   type u_OGRPreparedGeometry is null record;   -- incomplete struct

   type OGRPreparedGeometryH is access all u_OGRPreparedGeometry;  -- ../ogr_api.h:303

   function OGRHasPreparedGeometrySupport return int  -- ../ogr_api.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "OGRHasPreparedGeometrySupport";

   function OGRCreatePreparedGeometry (hGeom : OGRGeometryH) return OGRPreparedGeometryH  -- ../ogr_api.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "OGRCreatePreparedGeometry";

   procedure OGRDestroyPreparedGeometry (hPreparedGeom : OGRPreparedGeometryH)  -- ../ogr_api.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "OGRDestroyPreparedGeometry";

   function OGRPreparedGeometryIntersects (hPreparedGeom : OGRPreparedGeometryH; hOtherGeom : OGRGeometryH) return int  -- ../ogr_api.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "OGRPreparedGeometryIntersects";

   function OGRPreparedGeometryContains (hPreparedGeom : OGRPreparedGeometryH; hOtherGeom : OGRGeometryH) return int  -- ../ogr_api.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "OGRPreparedGeometryContains";

   type OGRFieldDefnH is new System.Address;  -- ../ogr_api.h:328

   type OGRFeatureDefnH is new System.Address;  -- ../ogr_api.h:330

   type OGRFeatureH is new System.Address;  -- ../ogr_api.h:332

   type OGRStyleTableH is new System.Address;  -- ../ogr_api.h:334

   type OGRGeomFieldDefnHS is null record;   -- incomplete struct

   type OGRGeomFieldDefnH is access all OGRGeomFieldDefnHS;  -- ../ogr_api.h:337

   type OGRFieldDomainHS is null record;   -- incomplete struct

   type OGRFieldDomainH is access all OGRFieldDomainHS;  -- ../ogr_api.h:340

   function OGR_Fld_Create (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : ogr_core_h.OGRFieldType) return OGRFieldDefnH  -- ../ogr_api.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_Create";

   procedure OGR_Fld_Destroy (arg1 : OGRFieldDefnH)  -- ../ogr_api.h:346
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_Destroy";

   procedure OGR_Fld_SetName (arg1 : OGRFieldDefnH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetName";

   function OGR_Fld_GetNameRef (arg1 : OGRFieldDefnH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetNameRef";

   procedure OGR_Fld_SetAlternativeName (arg1 : OGRFieldDefnH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetAlternativeName";

   function OGR_Fld_GetAlternativeNameRef (arg1 : OGRFieldDefnH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetAlternativeNameRef";

   function OGR_Fld_GetType (arg1 : OGRFieldDefnH) return ogr_core_h.OGRFieldType  -- ../ogr_api.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetType";

   procedure OGR_Fld_SetType (arg1 : OGRFieldDefnH; arg2 : ogr_core_h.OGRFieldType)  -- ../ogr_api.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetType";

   function OGR_Fld_GetSubType (arg1 : OGRFieldDefnH) return ogr_core_h.OGRFieldSubType  -- ../ogr_api.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetSubType";

   procedure OGR_Fld_SetSubType (arg1 : OGRFieldDefnH; arg2 : ogr_core_h.OGRFieldSubType)  -- ../ogr_api.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetSubType";

   function OGR_Fld_GetJustify (arg1 : OGRFieldDefnH) return ogr_core_h.OGRJustification  -- ../ogr_api.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetJustify";

   procedure OGR_Fld_SetJustify (arg1 : OGRFieldDefnH; arg2 : ogr_core_h.OGRJustification)  -- ../ogr_api.h:357
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetJustify";

   function OGR_Fld_GetWidth (arg1 : OGRFieldDefnH) return int  -- ../ogr_api.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetWidth";

   procedure OGR_Fld_SetWidth (arg1 : OGRFieldDefnH; arg2 : int)  -- ../ogr_api.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetWidth";

   function OGR_Fld_GetPrecision (arg1 : OGRFieldDefnH) return int  -- ../ogr_api.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetPrecision";

   procedure OGR_Fld_SetPrecision (arg1 : OGRFieldDefnH; arg2 : int)  -- ../ogr_api.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetPrecision";

   procedure OGR_Fld_Set
     (arg1 : OGRFieldDefnH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ogr_core_h.OGRFieldType;
      arg4 : int;
      arg5 : int;
      arg6 : ogr_core_h.OGRJustification)  -- ../ogr_api.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_Set";

   function OGR_Fld_IsIgnored (hDefn : OGRFieldDefnH) return int  -- ../ogr_api.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_IsIgnored";

   procedure OGR_Fld_SetIgnored (hDefn : OGRFieldDefnH; arg2 : int)  -- ../ogr_api.h:365
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetIgnored";

   function OGR_Fld_IsNullable (hDefn : OGRFieldDefnH) return int  -- ../ogr_api.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_IsNullable";

   procedure OGR_Fld_SetNullable (hDefn : OGRFieldDefnH; arg2 : int)  -- ../ogr_api.h:367
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetNullable";

   function OGR_Fld_IsUnique (hDefn : OGRFieldDefnH) return int  -- ../ogr_api.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_IsUnique";

   procedure OGR_Fld_SetUnique (hDefn : OGRFieldDefnH; arg2 : int)  -- ../ogr_api.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetUnique";

   function OGR_Fld_GetDefault (hDefn : OGRFieldDefnH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetDefault";

   procedure OGR_Fld_SetDefault (hDefn : OGRFieldDefnH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetDefault";

   function OGR_Fld_IsDefaultDriverSpecific (hDefn : OGRFieldDefnH) return int  -- ../ogr_api.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_IsDefaultDriverSpecific";

   function OGR_Fld_GetDomainName (hDefn : OGRFieldDefnH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_GetDomainName";

   procedure OGR_Fld_SetDomainName (hDefn : OGRFieldDefnH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:374
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Fld_SetDomainName";

   function OGR_GetFieldTypeName (arg1 : ogr_core_h.OGRFieldType) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GetFieldTypeName";

   function OGR_GetFieldSubTypeName (arg1 : ogr_core_h.OGRFieldSubType) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GetFieldSubTypeName";

   function OGR_AreTypeSubTypeCompatible (eType : ogr_core_h.OGRFieldType; eSubType : ogr_core_h.OGRFieldSubType) return int  -- ../ogr_api.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_AreTypeSubTypeCompatible";

   function OGR_GFld_Create (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : ogr_core_h.OGRwkbGeometryType) return OGRGeomFieldDefnH  -- ../ogr_api.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_Create";

   procedure OGR_GFld_Destroy (arg1 : OGRGeomFieldDefnH)  -- ../ogr_api.h:384
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_Destroy";

   procedure OGR_GFld_SetName (arg1 : OGRGeomFieldDefnH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_SetName";

   function OGR_GFld_GetNameRef (arg1 : OGRGeomFieldDefnH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:387
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_GetNameRef";

   function OGR_GFld_GetType (arg1 : OGRGeomFieldDefnH) return ogr_core_h.OGRwkbGeometryType  -- ../ogr_api.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_GetType";

   procedure OGR_GFld_SetType (arg1 : OGRGeomFieldDefnH; arg2 : ogr_core_h.OGRwkbGeometryType)  -- ../ogr_api.h:390
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_SetType";

   function OGR_GFld_GetSpatialRef (arg1 : OGRGeomFieldDefnH) return OGRSpatialReferenceH  -- ../ogr_api.h:392
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_GetSpatialRef";

   procedure OGR_GFld_SetSpatialRef (arg1 : OGRGeomFieldDefnH; hSRS : OGRSpatialReferenceH)  -- ../ogr_api.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_SetSpatialRef";

   function OGR_GFld_IsNullable (hDefn : OGRGeomFieldDefnH) return int  -- ../ogr_api.h:396
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_IsNullable";

   procedure OGR_GFld_SetNullable (hDefn : OGRGeomFieldDefnH; arg2 : int)  -- ../ogr_api.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_SetNullable";

   function OGR_GFld_IsIgnored (hDefn : OGRGeomFieldDefnH) return int  -- ../ogr_api.h:399
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_IsIgnored";

   procedure OGR_GFld_SetIgnored (hDefn : OGRGeomFieldDefnH; arg2 : int)  -- ../ogr_api.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GFld_SetIgnored";

   function OGR_FD_Create (arg1 : Interfaces.C.Strings.chars_ptr) return OGRFeatureDefnH  -- ../ogr_api.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_Create";

   procedure OGR_FD_Destroy (arg1 : OGRFeatureDefnH)  -- ../ogr_api.h:405
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_Destroy";

   procedure OGR_FD_Release (arg1 : OGRFeatureDefnH)  -- ../ogr_api.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_Release";

   function OGR_FD_GetName (arg1 : OGRFeatureDefnH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetName";

   function OGR_FD_GetFieldCount (arg1 : OGRFeatureDefnH) return int  -- ../ogr_api.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetFieldCount";

   function OGR_FD_GetFieldDefn (arg1 : OGRFeatureDefnH; arg2 : int) return OGRFieldDefnH  -- ../ogr_api.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetFieldDefn";

   function OGR_FD_GetFieldIndex (arg1 : OGRFeatureDefnH; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetFieldIndex";

   procedure OGR_FD_AddFieldDefn (arg1 : OGRFeatureDefnH; arg2 : OGRFieldDefnH)  -- ../ogr_api.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_AddFieldDefn";

   function OGR_FD_DeleteFieldDefn (hDefn : OGRFeatureDefnH; iField : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:412
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_DeleteFieldDefn";

   function OGR_FD_ReorderFieldDefns (hDefn : OGRFeatureDefnH; panMap : access int) return ogr_core_h.OGRErr  -- ../ogr_api.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_ReorderFieldDefns";

   function OGR_FD_GetGeomType (arg1 : OGRFeatureDefnH) return ogr_core_h.OGRwkbGeometryType  -- ../ogr_api.h:414
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetGeomType";

   procedure OGR_FD_SetGeomType (arg1 : OGRFeatureDefnH; arg2 : ogr_core_h.OGRwkbGeometryType)  -- ../ogr_api.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_SetGeomType";

   function OGR_FD_IsGeometryIgnored (arg1 : OGRFeatureDefnH) return int  -- ../ogr_api.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_IsGeometryIgnored";

   procedure OGR_FD_SetGeometryIgnored (arg1 : OGRFeatureDefnH; arg2 : int)  -- ../ogr_api.h:417
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_SetGeometryIgnored";

   function OGR_FD_IsStyleIgnored (arg1 : OGRFeatureDefnH) return int  -- ../ogr_api.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_IsStyleIgnored";

   procedure OGR_FD_SetStyleIgnored (arg1 : OGRFeatureDefnH; arg2 : int)  -- ../ogr_api.h:419
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_SetStyleIgnored";

   function OGR_FD_Reference (arg1 : OGRFeatureDefnH) return int  -- ../ogr_api.h:420
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_Reference";

   function OGR_FD_Dereference (arg1 : OGRFeatureDefnH) return int  -- ../ogr_api.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_Dereference";

   function OGR_FD_GetReferenceCount (arg1 : OGRFeatureDefnH) return int  -- ../ogr_api.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetReferenceCount";

   function OGR_FD_GetGeomFieldCount (hFDefn : OGRFeatureDefnH) return int  -- ../ogr_api.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetGeomFieldCount";

   function OGR_FD_GetGeomFieldDefn (hFDefn : OGRFeatureDefnH; i : int) return OGRGeomFieldDefnH  -- ../ogr_api.h:425
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetGeomFieldDefn";

   function OGR_FD_GetGeomFieldIndex (hFDefn : OGRFeatureDefnH; pszName : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:427
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_GetGeomFieldIndex";

   procedure OGR_FD_AddGeomFieldDefn (hFDefn : OGRFeatureDefnH; hGFldDefn : OGRGeomFieldDefnH)  -- ../ogr_api.h:430
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_AddGeomFieldDefn";

   function OGR_FD_DeleteGeomFieldDefn (hFDefn : OGRFeatureDefnH; iGeomField : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:432
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_DeleteGeomFieldDefn";

   function OGR_FD_IsSame (hFDefn : OGRFeatureDefnH; hOtherFDefn : OGRFeatureDefnH) return int  -- ../ogr_api.h:434
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FD_IsSame";

   function OGR_F_Create (arg1 : OGRFeatureDefnH) return OGRFeatureH  -- ../ogr_api.h:438
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_Create";

   procedure OGR_F_Destroy (arg1 : OGRFeatureH)  -- ../ogr_api.h:439
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_Destroy";

   function OGR_F_GetDefnRef (arg1 : OGRFeatureH) return OGRFeatureDefnH  -- ../ogr_api.h:440
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetDefnRef";

   function OGR_F_SetGeometryDirectly (arg1 : OGRFeatureH; arg2 : OGRGeometryH) return ogr_core_h.OGRErr  -- ../ogr_api.h:442
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetGeometryDirectly";

   function OGR_F_SetGeometry (arg1 : OGRFeatureH; arg2 : OGRGeometryH) return ogr_core_h.OGRErr  -- ../ogr_api.h:443
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetGeometry";

   function OGR_F_GetGeometryRef (arg1 : OGRFeatureH) return OGRGeometryH  -- ../ogr_api.h:444
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetGeometryRef";

   function OGR_F_StealGeometry (arg1 : OGRFeatureH) return OGRGeometryH  -- ../ogr_api.h:445
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_StealGeometry";

   function OGR_F_Clone (arg1 : OGRFeatureH) return OGRFeatureH  -- ../ogr_api.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_Clone";

   function OGR_F_Equal (arg1 : OGRFeatureH; arg2 : OGRFeatureH) return int  -- ../ogr_api.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_Equal";

   function OGR_F_GetFieldCount (arg1 : OGRFeatureH) return int  -- ../ogr_api.h:449
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldCount";

   function OGR_F_GetFieldDefnRef (arg1 : OGRFeatureH; arg2 : int) return OGRFieldDefnH  -- ../ogr_api.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldDefnRef";

   function OGR_F_GetFieldIndex (arg1 : OGRFeatureH; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:451
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldIndex";

   function OGR_F_IsFieldSet (arg1 : OGRFeatureH; arg2 : int) return int  -- ../ogr_api.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_IsFieldSet";

   procedure OGR_F_UnsetField (arg1 : OGRFeatureH; arg2 : int)  -- ../ogr_api.h:454
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_UnsetField";

   function OGR_F_IsFieldNull (arg1 : OGRFeatureH; arg2 : int) return int  -- ../ogr_api.h:456
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_IsFieldNull";

   function OGR_F_IsFieldSetAndNotNull (arg1 : OGRFeatureH; arg2 : int) return int  -- ../ogr_api.h:457
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_IsFieldSetAndNotNull";

   procedure OGR_F_SetFieldNull (arg1 : OGRFeatureH; arg2 : int)  -- ../ogr_api.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldNull";

   function OGR_F_GetRawFieldRef (arg1 : OGRFeatureH; arg2 : int) return access ogr_core_h.OGRField  -- ../ogr_api.h:460
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetRawFieldRef";

   function OGR_RawField_IsUnset (arg1 : access constant ogr_core_h.OGRField) return int  -- ../ogr_api.h:462
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_RawField_IsUnset";

   function OGR_RawField_IsNull (arg1 : access constant ogr_core_h.OGRField) return int  -- ../ogr_api.h:463
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_RawField_IsNull";

   procedure OGR_RawField_SetUnset (arg1 : access ogr_core_h.OGRField)  -- ../ogr_api.h:464
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_RawField_SetUnset";

   procedure OGR_RawField_SetNull (arg1 : access ogr_core_h.OGRField)  -- ../ogr_api.h:465
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_RawField_SetNull";

   function OGR_F_GetFieldAsInteger (arg1 : OGRFeatureH; arg2 : int) return int  -- ../ogr_api.h:467
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsInteger";

   function OGR_F_GetFieldAsInteger64 (arg1 : OGRFeatureH; arg2 : int) return cpl_port_h.GIntBig  -- ../ogr_api.h:468
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsInteger64";

   function OGR_F_GetFieldAsDouble (arg1 : OGRFeatureH; arg2 : int) return double  -- ../ogr_api.h:469
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsDouble";

   function OGR_F_GetFieldAsString (arg1 : OGRFeatureH; arg2 : int) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:470
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsString";

   function OGR_F_GetFieldAsIntegerList
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : access int) return access int  -- ../ogr_api.h:471
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsIntegerList";

   function OGR_F_GetFieldAsInteger64List
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : access int) return access cpl_port_h.GIntBig  -- ../ogr_api.h:472
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsInteger64List";

   function OGR_F_GetFieldAsDoubleList
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : access int) return access double  -- ../ogr_api.h:473
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsDoubleList";

   function OGR_F_GetFieldAsStringList (arg1 : OGRFeatureH; arg2 : int) return System.Address  -- ../ogr_api.h:474
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsStringList";

   function OGR_F_GetFieldAsBinary
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : access int) return access cpl_port_h.GByte  -- ../ogr_api.h:475
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsBinary";

   function OGR_F_GetFieldAsDateTime
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : access int;
      arg4 : access int;
      arg5 : access int;
      arg6 : access int;
      arg7 : access int;
      arg8 : access int;
      arg9 : access int) return int  -- ../ogr_api.h:476
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsDateTime";

   function OGR_F_GetFieldAsDateTimeEx
     (hFeat : OGRFeatureH;
      iField : int;
      pnYear : access int;
      pnMonth : access int;
      pnDay : access int;
      pnHour : access int;
      pnMinute : access int;
      pfSecond : access float;
      pnTZFlag : access int) return int  -- ../ogr_api.h:478
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFieldAsDateTimeEx";

   procedure OGR_F_SetFieldInteger
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : int)  -- ../ogr_api.h:483
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldInteger";

   procedure OGR_F_SetFieldInteger64
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : cpl_port_h.GIntBig)  -- ../ogr_api.h:484
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldInteger64";

   procedure OGR_F_SetFieldDouble
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : double)  -- ../ogr_api.h:485
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldDouble";

   procedure OGR_F_SetFieldString
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:486
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldString";

   procedure OGR_F_SetFieldIntegerList
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : int;
      arg4 : access int)  -- ../ogr_api.h:487
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldIntegerList";

   procedure OGR_F_SetFieldInteger64List
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : int;
      arg4 : access cpl_port_h.GIntBig)  -- ../ogr_api.h:488
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldInteger64List";

   procedure OGR_F_SetFieldDoubleList
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : int;
      arg4 : access double)  -- ../ogr_api.h:489
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldDoubleList";

   procedure OGR_F_SetFieldStringList
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : cpl_port_h.CSLConstList)  -- ../ogr_api.h:490
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldStringList";

   procedure OGR_F_SetFieldRaw
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : access ogr_core_h.OGRField)  -- ../ogr_api.h:491
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldRaw";

   procedure OGR_F_SetFieldBinary
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : int;
      arg4 : System.Address)  -- ../ogr_api.h:492
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldBinary";

   procedure OGR_F_SetFieldDateTime
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : int;
      arg7 : int;
      arg8 : int;
      arg9 : int)  -- ../ogr_api.h:493
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldDateTime";

   procedure OGR_F_SetFieldDateTimeEx
     (arg1 : OGRFeatureH;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : int;
      arg7 : int;
      arg8 : float;
      arg9 : int)  -- ../ogr_api.h:495
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFieldDateTimeEx";

   function OGR_F_GetGeomFieldCount (hFeat : OGRFeatureH) return int  -- ../ogr_api.h:498
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetGeomFieldCount";

   function OGR_F_GetGeomFieldDefnRef (hFeat : OGRFeatureH; iField : int) return OGRGeomFieldDefnH  -- ../ogr_api.h:499
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetGeomFieldDefnRef";

   function OGR_F_GetGeomFieldIndex (hFeat : OGRFeatureH; pszName : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:501
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetGeomFieldIndex";

   function OGR_F_GetGeomFieldRef (hFeat : OGRFeatureH; iField : int) return OGRGeometryH  -- ../ogr_api.h:504
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetGeomFieldRef";

   function OGR_F_SetGeomFieldDirectly
     (hFeat : OGRFeatureH;
      iField : int;
      hGeom : OGRGeometryH) return ogr_core_h.OGRErr  -- ../ogr_api.h:506
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetGeomFieldDirectly";

   function OGR_F_SetGeomField
     (hFeat : OGRFeatureH;
      iField : int;
      hGeom : OGRGeometryH) return ogr_core_h.OGRErr  -- ../ogr_api.h:509
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetGeomField";

   function OGR_F_GetFID (arg1 : OGRFeatureH) return cpl_port_h.GIntBig  -- ../ogr_api.h:512
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetFID";

   function OGR_F_SetFID (arg1 : OGRFeatureH; arg2 : cpl_port_h.GIntBig) return ogr_core_h.OGRErr  -- ../ogr_api.h:513
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFID";

   procedure OGR_F_DumpReadable (arg1 : OGRFeatureH; arg2 : access x86_64_linux_gnu_bits_types_FILE_h.FILE)  -- ../ogr_api.h:514
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_DumpReadable";

   function OGR_F_SetFrom
     (arg1 : OGRFeatureH;
      arg2 : OGRFeatureH;
      arg3 : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:515
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFrom";

   function OGR_F_SetFromWithMap
     (arg1 : OGRFeatureH;
      arg2 : OGRFeatureH;
      arg3 : int;
      arg4 : access int) return ogr_core_h.OGRErr  -- ../ogr_api.h:516
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetFromWithMap";

   function OGR_F_GetStyleString (arg1 : OGRFeatureH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetStyleString";

   procedure OGR_F_SetStyleString (arg1 : OGRFeatureH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:519
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetStyleString";

   procedure OGR_F_SetStyleStringDirectly (arg1 : OGRFeatureH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetStyleStringDirectly";

   function OGR_F_GetStyleTable (arg1 : OGRFeatureH) return OGRStyleTableH  -- ../ogr_api.h:522
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetStyleTable";

   procedure OGR_F_SetStyleTableDirectly (arg1 : OGRFeatureH; arg2 : OGRStyleTableH)  -- ../ogr_api.h:524
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetStyleTableDirectly";

   procedure OGR_F_SetStyleTable (arg1 : OGRFeatureH; arg2 : OGRStyleTableH)  -- ../ogr_api.h:526
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetStyleTable";

   function OGR_F_GetNativeData (arg1 : OGRFeatureH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:528
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetNativeData";

   procedure OGR_F_SetNativeData (arg1 : OGRFeatureH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:529
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetNativeData";

   function OGR_F_GetNativeMediaType (arg1 : OGRFeatureH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:530
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_GetNativeMediaType";

   procedure OGR_F_SetNativeMediaType (arg1 : OGRFeatureH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:531
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_SetNativeMediaType";

   procedure OGR_F_FillUnsetWithDefault
     (hFeat : OGRFeatureH;
      bNotNullableOnly : int;
      papszOptions : System.Address)  -- ../ogr_api.h:533
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_FillUnsetWithDefault";

   function OGR_F_Validate
     (arg1 : OGRFeatureH;
      nValidateFlags : int;
      bEmitError : int) return int  -- ../ogr_api.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_F_Validate";

   procedure OGR_FldDomain_Destroy (arg1 : OGRFieldDomainH)  -- ../ogr_api.h:540
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_Destroy";

   function OGR_FldDomain_GetName (arg1 : OGRFieldDomainH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:541
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_GetName";

   function OGR_FldDomain_GetDescription (arg1 : OGRFieldDomainH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:542
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_GetDescription";

   function OGR_FldDomain_GetDomainType (arg1 : OGRFieldDomainH) return ogr_core_h.OGRFieldDomainType  -- ../ogr_api.h:543
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_GetDomainType";

   function OGR_FldDomain_GetFieldType (arg1 : OGRFieldDomainH) return ogr_core_h.OGRFieldType  -- ../ogr_api.h:544
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_GetFieldType";

   function OGR_FldDomain_GetFieldSubType (arg1 : OGRFieldDomainH) return ogr_core_h.OGRFieldSubType  -- ../ogr_api.h:545
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_GetFieldSubType";

   function OGR_FldDomain_GetSplitPolicy (arg1 : OGRFieldDomainH) return ogr_core_h.OGRFieldDomainSplitPolicy  -- ../ogr_api.h:546
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_GetSplitPolicy";

   procedure OGR_FldDomain_SetSplitPolicy (arg1 : OGRFieldDomainH; arg2 : ogr_core_h.OGRFieldDomainSplitPolicy)  -- ../ogr_api.h:547
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_SetSplitPolicy";

   function OGR_FldDomain_GetMergePolicy (arg1 : OGRFieldDomainH) return ogr_core_h.OGRFieldDomainMergePolicy  -- ../ogr_api.h:548
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_GetMergePolicy";

   procedure OGR_FldDomain_SetMergePolicy (arg1 : OGRFieldDomainH; arg2 : ogr_core_h.OGRFieldDomainMergePolicy)  -- ../ogr_api.h:549
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_FldDomain_SetMergePolicy";

   function OGR_CodedFldDomain_Create
     (pszName : Interfaces.C.Strings.chars_ptr;
      pszDescription : Interfaces.C.Strings.chars_ptr;
      eFieldType : ogr_core_h.OGRFieldType;
      eFieldSubType : ogr_core_h.OGRFieldSubType;
      enumeration : access constant ogr_core_h.OGRCodedValue) return OGRFieldDomainH  -- ../ogr_api.h:551
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_CodedFldDomain_Create";

   function OGR_CodedFldDomain_GetEnumeration (arg1 : OGRFieldDomainH) return access constant ogr_core_h.OGRCodedValue  -- ../ogr_api.h:556
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_CodedFldDomain_GetEnumeration";

   function OGR_RangeFldDomain_Create
     (pszName : Interfaces.C.Strings.chars_ptr;
      pszDescription : Interfaces.C.Strings.chars_ptr;
      eFieldType : ogr_core_h.OGRFieldType;
      eFieldSubType : ogr_core_h.OGRFieldSubType;
      psMin : access constant ogr_core_h.OGRField;
      bMinIsInclusive : Extensions.bool;
      psMax : access constant ogr_core_h.OGRField;
      bMaxIsInclusive : Extensions.bool) return OGRFieldDomainH  -- ../ogr_api.h:558
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_RangeFldDomain_Create";

   function OGR_RangeFldDomain_GetMin (arg1 : OGRFieldDomainH; pbIsInclusiveOut : access Extensions.bool) return access constant ogr_core_h.OGRField  -- ../ogr_api.h:566
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_RangeFldDomain_GetMin";

   function OGR_RangeFldDomain_GetMax (arg1 : OGRFieldDomainH; pbIsInclusiveOut : access Extensions.bool) return access constant ogr_core_h.OGRField  -- ../ogr_api.h:567
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_RangeFldDomain_GetMax";

   function OGR_GlobFldDomain_Create
     (pszName : Interfaces.C.Strings.chars_ptr;
      pszDescription : Interfaces.C.Strings.chars_ptr;
      eFieldType : ogr_core_h.OGRFieldType;
      eFieldSubType : ogr_core_h.OGRFieldSubType;
      pszGlob : Interfaces.C.Strings.chars_ptr) return OGRFieldDomainH  -- ../ogr_api.h:569
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GlobFldDomain_Create";

   function OGR_GlobFldDomain_GetGlob (arg1 : OGRFieldDomainH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_GlobFldDomain_GetGlob";

   type OGRLayerH is new System.Address;  -- ../ogr_api.h:586

   type OGRDataSourceH is new System.Address;  -- ../ogr_api.h:588

   type OGRSFDriverH is new System.Address;  -- ../ogr_api.h:590

   function OGR_L_GetName (arg1 : OGRLayerH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:595
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetName";

   function OGR_L_GetGeomType (arg1 : OGRLayerH) return ogr_core_h.OGRwkbGeometryType  -- ../ogr_api.h:596
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetGeomType";

   function OGR_L_GetSpatialFilter (arg1 : OGRLayerH) return OGRGeometryH  -- ../ogr_api.h:597
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetSpatialFilter";

   procedure OGR_L_SetSpatialFilter (arg1 : OGRLayerH; arg2 : OGRGeometryH)  -- ../ogr_api.h:598
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetSpatialFilter";

   procedure OGR_L_SetSpatialFilterRect
     (arg1 : OGRLayerH;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- ../ogr_api.h:599
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetSpatialFilterRect";

   procedure OGR_L_SetSpatialFilterEx
     (arg1 : OGRLayerH;
      iGeomField : int;
      hGeom : OGRGeometryH)  -- ../ogr_api.h:601
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetSpatialFilterEx";

   procedure OGR_L_SetSpatialFilterRectEx
     (arg1 : OGRLayerH;
      iGeomField : int;
      dfMinX : double;
      dfMinY : double;
      dfMaxX : double;
      dfMaxY : double)  -- ../ogr_api.h:603
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetSpatialFilterRectEx";

   function OGR_L_SetAttributeFilter (arg1 : OGRLayerH; arg2 : Interfaces.C.Strings.chars_ptr) return ogr_core_h.OGRErr  -- ../ogr_api.h:606
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetAttributeFilter";

   procedure OGR_L_ResetReading (arg1 : OGRLayerH)  -- ../ogr_api.h:607
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_ResetReading";

   function OGR_L_GetNextFeature (arg1 : OGRLayerH) return OGRFeatureH  -- ../ogr_api.h:608
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetNextFeature";

   function OGR_L_SetNextByIndex (arg1 : OGRLayerH; arg2 : cpl_port_h.GIntBig) return ogr_core_h.OGRErr  -- ../ogr_api.h:656
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetNextByIndex";

   function OGR_L_GetFeature (arg1 : OGRLayerH; arg2 : cpl_port_h.GIntBig) return OGRFeatureH  -- ../ogr_api.h:657
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetFeature";

   function OGR_L_SetFeature (arg1 : OGRLayerH; arg2 : OGRFeatureH) return ogr_core_h.OGRErr  -- ../ogr_api.h:658
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetFeature";

   function OGR_L_CreateFeature (arg1 : OGRLayerH; arg2 : OGRFeatureH) return ogr_core_h.OGRErr  -- ../ogr_api.h:659
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_CreateFeature";

   function OGR_L_DeleteFeature (arg1 : OGRLayerH; arg2 : cpl_port_h.GIntBig) return ogr_core_h.OGRErr  -- ../ogr_api.h:660
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_DeleteFeature";

   function OGR_L_GetLayerDefn (arg1 : OGRLayerH) return OGRFeatureDefnH  -- ../ogr_api.h:661
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetLayerDefn";

   function OGR_L_GetSpatialRef (arg1 : OGRLayerH) return OGRSpatialReferenceH  -- ../ogr_api.h:662
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetSpatialRef";

   function OGR_L_FindFieldIndex
     (arg1 : OGRLayerH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      bExactMatch : int) return int  -- ../ogr_api.h:663
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_FindFieldIndex";

   function OGR_L_GetFeatureCount (arg1 : OGRLayerH; arg2 : int) return cpl_port_h.GIntBig  -- ../ogr_api.h:664
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetFeatureCount";

   function OGR_L_GetExtent
     (arg1 : OGRLayerH;
      arg2 : access ogr_core_h.OGREnvelope;
      arg3 : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:665
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetExtent";

   function OGR_L_GetExtentEx
     (arg1 : OGRLayerH;
      iGeomField : int;
      psExtent : access ogr_core_h.OGREnvelope;
      bForce : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:666
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetExtentEx";

   function OGR_L_TestCapability (arg1 : OGRLayerH; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:668
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_TestCapability";

   function OGR_L_CreateField
     (arg1 : OGRLayerH;
      arg2 : OGRFieldDefnH;
      arg3 : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:669
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_CreateField";

   function OGR_L_CreateGeomField
     (hLayer : OGRLayerH;
      hFieldDefn : OGRGeomFieldDefnH;
      bForce : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:670
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_CreateGeomField";

   function OGR_L_DeleteField (arg1 : OGRLayerH; iField : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:672
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_DeleteField";

   function OGR_L_ReorderFields (arg1 : OGRLayerH; panMap : access int) return ogr_core_h.OGRErr  -- ../ogr_api.h:673
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_ReorderFields";

   function OGR_L_ReorderField
     (arg1 : OGRLayerH;
      iOldFieldPos : int;
      iNewFieldPos : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:674
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_ReorderField";

   function OGR_L_AlterFieldDefn
     (arg1 : OGRLayerH;
      iField : int;
      hNewFieldDefn : OGRFieldDefnH;
      nFlags : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:675
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_AlterFieldDefn";

   function OGR_L_StartTransaction (arg1 : OGRLayerH) return ogr_core_h.OGRErr  -- ../ogr_api.h:676
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_StartTransaction";

   function OGR_L_CommitTransaction (arg1 : OGRLayerH) return ogr_core_h.OGRErr  -- ../ogr_api.h:677
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_CommitTransaction";

   function OGR_L_RollbackTransaction (arg1 : OGRLayerH) return ogr_core_h.OGRErr  -- ../ogr_api.h:678
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_RollbackTransaction";

   function OGR_L_Reference (arg1 : OGRLayerH) return int  -- ../ogr_api.h:680
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_Reference";

   function OGR_L_Dereference (arg1 : OGRLayerH) return int  -- ../ogr_api.h:681
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_Dereference";

   function OGR_L_GetRefCount (arg1 : OGRLayerH) return int  -- ../ogr_api.h:682
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetRefCount";

   function OGR_L_SyncToDisk (arg1 : OGRLayerH) return ogr_core_h.OGRErr  -- ../ogr_api.h:684
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SyncToDisk";

   function OGR_L_GetFeaturesRead (arg1 : OGRLayerH) return cpl_port_h.GIntBig  -- ../ogr_api.h:686
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetFeaturesRead";

   function OGR_L_GetFIDColumn (arg1 : OGRLayerH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:688
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetFIDColumn";

   function OGR_L_GetGeometryColumn (arg1 : OGRLayerH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:689
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetGeometryColumn";

   function OGR_L_GetStyleTable (arg1 : OGRLayerH) return OGRStyleTableH  -- ../ogr_api.h:691
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_GetStyleTable";

   procedure OGR_L_SetStyleTableDirectly (arg1 : OGRLayerH; arg2 : OGRStyleTableH)  -- ../ogr_api.h:693
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetStyleTableDirectly";

   procedure OGR_L_SetStyleTable (arg1 : OGRLayerH; arg2 : OGRStyleTableH)  -- ../ogr_api.h:695
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetStyleTable";

   function OGR_L_SetIgnoredFields (arg1 : OGRLayerH; arg2 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:696
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SetIgnoredFields";

   function OGR_L_Intersection
     (arg1 : OGRLayerH;
      arg2 : OGRLayerH;
      arg3 : OGRLayerH;
      arg4 : System.Address;
      arg5 : cpl_progress_h.GDALProgressFunc;
      arg6 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:697
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_Intersection";

   function OGR_L_Union
     (arg1 : OGRLayerH;
      arg2 : OGRLayerH;
      arg3 : OGRLayerH;
      arg4 : System.Address;
      arg5 : cpl_progress_h.GDALProgressFunc;
      arg6 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:698
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_Union";

   function OGR_L_SymDifference
     (arg1 : OGRLayerH;
      arg2 : OGRLayerH;
      arg3 : OGRLayerH;
      arg4 : System.Address;
      arg5 : cpl_progress_h.GDALProgressFunc;
      arg6 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:699
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_SymDifference";

   function OGR_L_Identity
     (arg1 : OGRLayerH;
      arg2 : OGRLayerH;
      arg3 : OGRLayerH;
      arg4 : System.Address;
      arg5 : cpl_progress_h.GDALProgressFunc;
      arg6 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:700
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_Identity";

   function OGR_L_Update
     (arg1 : OGRLayerH;
      arg2 : OGRLayerH;
      arg3 : OGRLayerH;
      arg4 : System.Address;
      arg5 : cpl_progress_h.GDALProgressFunc;
      arg6 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:701
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_Update";

   function OGR_L_Clip
     (arg1 : OGRLayerH;
      arg2 : OGRLayerH;
      arg3 : OGRLayerH;
      arg4 : System.Address;
      arg5 : cpl_progress_h.GDALProgressFunc;
      arg6 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:702
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_Clip";

   function OGR_L_Erase
     (arg1 : OGRLayerH;
      arg2 : OGRLayerH;
      arg3 : OGRLayerH;
      arg4 : System.Address;
      arg5 : cpl_progress_h.GDALProgressFunc;
      arg6 : System.Address) return ogr_core_h.OGRErr  -- ../ogr_api.h:703
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_L_Erase";

   procedure OGR_DS_Destroy (arg1 : OGRDataSourceH)  -- ../ogr_api.h:707
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_Destroy";

   function OGR_DS_GetName (arg1 : OGRDataSourceH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:708
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_GetName";

   function OGR_DS_GetLayerCount (arg1 : OGRDataSourceH) return int  -- ../ogr_api.h:709
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_GetLayerCount";

   function OGR_DS_GetLayer (arg1 : OGRDataSourceH; arg2 : int) return OGRLayerH  -- ../ogr_api.h:710
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_GetLayer";

   function OGR_DS_GetLayerByName (arg1 : OGRDataSourceH; arg2 : Interfaces.C.Strings.chars_ptr) return OGRLayerH  -- ../ogr_api.h:711
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_GetLayerByName";

   function OGR_DS_DeleteLayer (arg1 : OGRDataSourceH; arg2 : int) return ogr_core_h.OGRErr  -- ../ogr_api.h:712
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_DeleteLayer";

   function OGR_DS_GetDriver (arg1 : OGRDataSourceH) return OGRSFDriverH  -- ../ogr_api.h:713
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_GetDriver";

   function OGR_DS_CreateLayer
     (arg1 : OGRDataSourceH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : OGRSpatialReferenceH;
      arg4 : ogr_core_h.OGRwkbGeometryType;
      arg5 : System.Address) return OGRLayerH  -- ../ogr_api.h:714
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_CreateLayer";

   function OGR_DS_CopyLayer
     (arg1 : OGRDataSourceH;
      arg2 : OGRLayerH;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : System.Address) return OGRLayerH  -- ../ogr_api.h:717
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_CopyLayer";

   function OGR_DS_TestCapability (arg1 : OGRDataSourceH; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:719
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_TestCapability";

   function OGR_DS_ExecuteSQL
     (arg1 : OGRDataSourceH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : OGRGeometryH;
      arg4 : Interfaces.C.Strings.chars_ptr) return OGRLayerH  -- ../ogr_api.h:720
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_ExecuteSQL";

   procedure OGR_DS_ReleaseResultSet (arg1 : OGRDataSourceH; arg2 : OGRLayerH)  -- ../ogr_api.h:722
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_ReleaseResultSet";

   function OGR_DS_Reference (arg1 : OGRDataSourceH) return int  -- ../ogr_api.h:724
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_Reference";

   function OGR_DS_Dereference (arg1 : OGRDataSourceH) return int  -- ../ogr_api.h:725
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_Dereference";

   function OGR_DS_GetRefCount (arg1 : OGRDataSourceH) return int  -- ../ogr_api.h:726
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_GetRefCount";

   function OGR_DS_GetSummaryRefCount (arg1 : OGRDataSourceH) return int  -- ../ogr_api.h:727
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_GetSummaryRefCount";

   function OGR_DS_SyncToDisk (arg1 : OGRDataSourceH) return ogr_core_h.OGRErr  -- ../ogr_api.h:730
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_SyncToDisk";

   function OGR_DS_GetStyleTable (arg1 : OGRDataSourceH) return OGRStyleTableH  -- ../ogr_api.h:732
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_GetStyleTable";

   procedure OGR_DS_SetStyleTableDirectly (arg1 : OGRDataSourceH; arg2 : OGRStyleTableH)  -- ../ogr_api.h:734
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_SetStyleTableDirectly";

   procedure OGR_DS_SetStyleTable (arg1 : OGRDataSourceH; arg2 : OGRStyleTableH)  -- ../ogr_api.h:736
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_DS_SetStyleTable";

   function OGR_Dr_GetName (arg1 : OGRSFDriverH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:740
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Dr_GetName";

   function OGR_Dr_Open
     (arg1 : OGRSFDriverH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return OGRDataSourceH  -- ../ogr_api.h:741
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Dr_Open";

   function OGR_Dr_TestCapability (arg1 : OGRSFDriverH; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:742
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Dr_TestCapability";

   function OGR_Dr_CreateDataSource
     (arg1 : OGRSFDriverH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address) return OGRDataSourceH  -- ../ogr_api.h:743
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Dr_CreateDataSource";

   function OGR_Dr_CopyDataSource
     (arg1 : OGRSFDriverH;
      arg2 : OGRDataSourceH;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : System.Address) return OGRDataSourceH  -- ../ogr_api.h:745
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Dr_CopyDataSource";

   function OGR_Dr_DeleteDataSource (arg1 : OGRSFDriverH; arg2 : Interfaces.C.Strings.chars_ptr) return ogr_core_h.OGRErr  -- ../ogr_api.h:747
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_Dr_DeleteDataSource";

   function OGROpen
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : System.Address) return OGRDataSourceH  -- ../ogr_api.h:751
   with Import => True, 
        Convention => C, 
        External_Name => "OGROpen";

   function OGROpenShared
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : int;
      arg3 : System.Address) return OGRDataSourceH  -- ../ogr_api.h:752
   with Import => True, 
        Convention => C, 
        External_Name => "OGROpenShared";

   function OGRReleaseDataSource (arg1 : OGRDataSourceH) return ogr_core_h.OGRErr  -- ../ogr_api.h:753
   with Import => True, 
        Convention => C, 
        External_Name => "OGRReleaseDataSource";

   procedure OGRRegisterDriver (arg1 : OGRSFDriverH)  -- ../ogr_api.h:755
   with Import => True, 
        Convention => C, 
        External_Name => "OGRRegisterDriver";

   procedure OGRDeregisterDriver (arg1 : OGRSFDriverH)  -- ../ogr_api.h:756
   with Import => True, 
        Convention => C, 
        External_Name => "OGRDeregisterDriver";

   function OGRGetDriverCount return int  -- ../ogr_api.h:758
   with Import => True, 
        Convention => C, 
        External_Name => "OGRGetDriverCount";

   function OGRGetDriver (arg1 : int) return OGRSFDriverH  -- ../ogr_api.h:759
   with Import => True, 
        Convention => C, 
        External_Name => "OGRGetDriver";

   function OGRGetDriverByName (arg1 : Interfaces.C.Strings.chars_ptr) return OGRSFDriverH  -- ../ogr_api.h:760
   with Import => True, 
        Convention => C, 
        External_Name => "OGRGetDriverByName";

   function OGRGetOpenDSCount return int  -- ../ogr_api.h:762
   with Import => True, 
        Convention => C, 
        External_Name => "OGRGetOpenDSCount";

   function OGRGetOpenDS (iDS : int) return OGRDataSourceH  -- ../ogr_api.h:763
   with Import => True, 
        Convention => C, 
        External_Name => "OGRGetOpenDS";

   procedure OGRRegisterAll  -- ../ogr_api.h:766
   with Import => True, 
        Convention => C, 
        External_Name => "OGRRegisterAll";

   procedure OGRCleanupAll  -- ../ogr_api.h:770
   with Import => True, 
        Convention => C, 
        External_Name => "OGRCleanupAll";

   type OGRStyleMgrH is new System.Address;  -- ../ogr_api.h:781

   type OGRStyleToolH is new System.Address;  -- ../ogr_api.h:783

   function OGR_SM_Create (hStyleTable : OGRStyleTableH) return OGRStyleMgrH  -- ../ogr_api.h:788
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_SM_Create";

   procedure OGR_SM_Destroy (hSM : OGRStyleMgrH)  -- ../ogr_api.h:789
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_SM_Destroy";

   function OGR_SM_InitFromFeature (hSM : OGRStyleMgrH; hFeat : OGRFeatureH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:791
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_SM_InitFromFeature";

   function OGR_SM_InitStyleString (hSM : OGRStyleMgrH; pszStyleString : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:793
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_SM_InitStyleString";

   function OGR_SM_GetPartCount (hSM : OGRStyleMgrH; pszStyleString : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:795
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_SM_GetPartCount";

   function OGR_SM_GetPart
     (hSM : OGRStyleMgrH;
      nPartId : int;
      pszStyleString : Interfaces.C.Strings.chars_ptr) return OGRStyleToolH  -- ../ogr_api.h:797
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_SM_GetPart";

   function OGR_SM_AddPart (hSM : OGRStyleMgrH; hST : OGRStyleToolH) return int  -- ../ogr_api.h:799
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_SM_AddPart";

   function OGR_SM_AddStyle
     (hSM : OGRStyleMgrH;
      pszStyleName : Interfaces.C.Strings.chars_ptr;
      pszStyleString : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:800
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_SM_AddStyle";

   function OGR_ST_Create (eClassId : ogr_core_h.OGRSTClassId) return OGRStyleToolH  -- ../ogr_api.h:805
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_Create";

   procedure OGR_ST_Destroy (hST : OGRStyleToolH)  -- ../ogr_api.h:806
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_Destroy";

   function OGR_ST_GetType (hST : OGRStyleToolH) return ogr_core_h.OGRSTClassId  -- ../ogr_api.h:808
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_GetType";

   function OGR_ST_GetUnit (hST : OGRStyleToolH) return ogr_core_h.OGRSTUnitId  -- ../ogr_api.h:810
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_GetUnit";

   procedure OGR_ST_SetUnit
     (hST : OGRStyleToolH;
      eUnit : ogr_core_h.OGRSTUnitId;
      dfGroundPaperScale : double)  -- ../ogr_api.h:811
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_SetUnit";

   function OGR_ST_GetParamStr
     (hST : OGRStyleToolH;
      eParam : int;
      bValueIsNull : access int) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:814
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_GetParamStr";

   function OGR_ST_GetParamNum
     (hST : OGRStyleToolH;
      eParam : int;
      bValueIsNull : access int) return int  -- ../ogr_api.h:815
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_GetParamNum";

   function OGR_ST_GetParamDbl
     (hST : OGRStyleToolH;
      eParam : int;
      bValueIsNull : access int) return double  -- ../ogr_api.h:816
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_GetParamDbl";

   procedure OGR_ST_SetParamStr
     (hST : OGRStyleToolH;
      eParam : int;
      pszValue : Interfaces.C.Strings.chars_ptr)  -- ../ogr_api.h:817
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_SetParamStr";

   procedure OGR_ST_SetParamNum
     (hST : OGRStyleToolH;
      eParam : int;
      nValue : int)  -- ../ogr_api.h:818
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_SetParamNum";

   procedure OGR_ST_SetParamDbl
     (hST : OGRStyleToolH;
      eParam : int;
      dfValue : double)  -- ../ogr_api.h:819
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_SetParamDbl";

   function OGR_ST_GetStyleString (hST : OGRStyleToolH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:820
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_GetStyleString";

   function OGR_ST_GetRGBFromString
     (hST : OGRStyleToolH;
      pszColor : Interfaces.C.Strings.chars_ptr;
      pnRed : access int;
      pnGreen : access int;
      pnBlue : access int;
      pnAlpha : access int) return int  -- ../ogr_api.h:822
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_ST_GetRGBFromString";

   function OGR_STBL_Create return OGRStyleTableH  -- ../ogr_api.h:828
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_Create";

   procedure OGR_STBL_Destroy (hSTBL : OGRStyleTableH)  -- ../ogr_api.h:829
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_Destroy";

   function OGR_STBL_AddStyle
     (hStyleTable : OGRStyleTableH;
      pszName : Interfaces.C.Strings.chars_ptr;
      pszStyleString : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:830
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_AddStyle";

   function OGR_STBL_SaveStyleTable (hStyleTable : OGRStyleTableH; pszFilename : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:833
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_SaveStyleTable";

   function OGR_STBL_LoadStyleTable (hStyleTable : OGRStyleTableH; pszFilename : Interfaces.C.Strings.chars_ptr) return int  -- ../ogr_api.h:835
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_LoadStyleTable";

   function OGR_STBL_Find (hStyleTable : OGRStyleTableH; pszName : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:837
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_Find";

   procedure OGR_STBL_ResetStyleStringReading (hStyleTable : OGRStyleTableH)  -- ../ogr_api.h:838
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_ResetStyleStringReading";

   function OGR_STBL_GetNextStyle (hStyleTable : OGRStyleTableH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:839
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_GetNextStyle";

   function OGR_STBL_GetLastStyleName (hStyleTable : OGRStyleTableH) return Interfaces.C.Strings.chars_ptr  -- ../ogr_api.h:840
   with Import => True, 
        Convention => C, 
        External_Name => "OGR_STBL_GetLastStyleName";

end ogr_api_h;
