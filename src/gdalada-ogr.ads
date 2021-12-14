pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Gdalada.CPL; use Gdalada.CPL;

package Gdalada.OGR is

   OGRERR_NONE                      : constant := 0;  --  ../ogr_core.h:320
   OGRERR_NOT_ENOUGH_DATA           : constant := 1;  --  ../ogr_core.h:321
   OGRERR_NOT_ENOUGH_MEMORY         : constant := 2;  --  ../ogr_core.h:322
   OGRERR_UNSUPPORTED_GEOMETRY_TYPE : constant := 3;  --  ../ogr_core.h:323
   OGRERR_UNSUPPORTED_OPERATION     : constant := 4;  --  ../ogr_core.h:324
   OGRERR_CORRUPT_DATA              : constant := 5;  --  ../ogr_core.h:325
   OGRERR_FAILURE                   : constant := 6;  --  ../ogr_core.h:326
   OGRERR_UNSUPPORTED_SRS           : constant := 7;  --  ../ogr_core.h:327
   OGRERR_INVALID_HANDLE            : constant := 8;  --  ../ogr_core.h:328
   OGRERR_NON_EXISTING_FEATURE      : constant := 9;  --  ../ogr_core.h:329

   Wkb25DBit                        : constant := 16#80000000#;  --  ../ogr_core.h:470
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

   OgrZMarker                       : constant := 16#21125711#;  --  ../ogr_core.h:502
   --  arg-macro: function DB2_V72_FIX_BYTE_ORDER (x)
   --    return (((x) and 16#31#) = (x)) ? ((x) and 16#1#) : (x);
   --  arg-macro: procedure DB2_V72_UNFIX_BYTE_ORDER (x)
   --    CPL_STATIC_CAST(unsigned char, OGRGeometry.bGenerate_DB2_V72_BYTE_ORDER ? ((x) or 16#30#) : (x))

   ALTER_NAME_FLAG                  : constant := 16#1#;  --  ../ogr_core.h:552

   ALTER_TYPE_FLAG                  : constant := 16#2#;  --  ../ogr_core.h:557

   ALTER_WIDTH_PRECISION_FLAG       : constant := 16#4#;  --  ../ogr_core.h:562

   ALTER_NULLABLE_FLAG              : constant := 16#8#;  --  ../ogr_core.h:568

   ALTER_DEFAULT_FLAG               : constant := 16#10#;  --  ../ogr_core.h:574

   ALTER_UNIQUE_FLAG                : constant := 16#20#;  --  ../ogr_core.h:580

   ALTER_DOMAIN_FLAG                : constant := 16#40#;  --  ../ogr_core.h:586
   --  unsupported macro: ALTER_ALL_FLAG (ALTER_NAME_FLAG | ALTER_TYPE_FLAG | ALTER_WIDTH_PRECISION_FLAG | ALTER_NULLABLE_FLAG | ALTER_DEFAULT_FLAG | ALTER_UNIQUE_FLAG | ALTER_DOMAIN_FLAG)

   OGR_F_VAL_NULL                   : constant := 16#00000001#;  --  ../ogr_core.h:598

   OGR_F_VAL_GEOM_TYPE              : constant := 16#00000002#;  --  ../ogr_core.h:604

   OGR_F_VAL_WIDTH                  : constant := 16#00000004#;  --  ../ogr_core.h:610

   OGR_F_VAL_ALLOW_NULL_WHEN_DEFAULT : constant := 16#00000008#;  --  ../ogr_core.h:619

   OGR_F_VAL_ALLOW_DIFFERENT_GEOM_DIM : constant := 16#00000010#;  --  ../ogr_core.h:627
   --  unsupported macro: OGR_F_VAL_ALL (0x7FFFFFFF & ~OGR_F_VAL_ALLOW_DIFFERENT_GEOM_DIM)

   OGRNullFID                       : constant := -1;  --  ../ogr_core.h:705
   --  unsupported macro: OGRUnknownType static_cast<OGRFieldType>(-1)

   OGRUnsetMarker                   : constant := -21121;  --  ../ogr_core.h:720

   OGRNullMarker                    : constant := -21122;  --  ../ogr_core.h:728

   OLCRandomRead                    : aliased constant String := "RandomRead" & ASCII.NUL;  --  ../ogr_core.h:807
   OLCSequentialWrite               : aliased constant String := "SequentialWrite" & ASCII.NUL;  --  ../ogr_core.h:808
   OLCRandomWrite                   : aliased constant String := "RandomWrite" & ASCII.NUL;  --  ../ogr_core.h:809
   OLCFastSpatialFilter             : aliased constant String := "FastSpatialFilter" & ASCII.NUL;  --  ../ogr_core.h:810
   OLCFastFeatureCount              : aliased constant String := "FastFeatureCount" & ASCII.NUL;  --  ../ogr_core.h:811
   OLCFastGetExtent                 : aliased constant String := "FastGetExtent" & ASCII.NUL;  --  ../ogr_core.h:812
   OLCCreateField                   : aliased constant String := "CreateField" & ASCII.NUL;  --  ../ogr_core.h:813
   OLCDeleteField                   : aliased constant String := "DeleteField" & ASCII.NUL;  --  ../ogr_core.h:814
   OLCReorderFields                 : aliased constant String := "ReorderFields" & ASCII.NUL;  --  ../ogr_core.h:815
   OLCAlterFieldDefn                : aliased constant String := "AlterFieldDefn" & ASCII.NUL;  --  ../ogr_core.h:816
   OLCTransactions                  : aliased constant String := "Transactions" & ASCII.NUL;  --  ../ogr_core.h:817
   OLCDeleteFeature                 : aliased constant String := "DeleteFeature" & ASCII.NUL;  --  ../ogr_core.h:818
   OLCFastSetNextByIndex            : aliased constant String := "FastSetNextByIndex" & ASCII.NUL;  --  ../ogr_core.h:819
   OLCStringsAsUTF8                 : aliased constant String := "StringsAsUTF8" & ASCII.NUL;  --  ../ogr_core.h:820
   OLCIgnoreFields                  : aliased constant String := "IgnoreFields" & ASCII.NUL;  --  ../ogr_core.h:821
   OLCCreateGeomField               : aliased constant String := "CreateGeomField" & ASCII.NUL;  --  ../ogr_core.h:822
   OLCCurveGeometries               : aliased constant String := "CurveGeometries" & ASCII.NUL;  --  ../ogr_core.h:823
   OLCMeasuredGeometries            : aliased constant String := "MeasuredGeometries" & ASCII.NUL;  --  ../ogr_core.h:824

   ODsCCreateLayer                  : aliased constant String := "CreateLayer" & ASCII.NUL;  --  ../ogr_core.h:826
   ODsCDeleteLayer                  : aliased constant String := "DeleteLayer" & ASCII.NUL;  --  ../ogr_core.h:827
   ODsCCreateGeomFieldAfterCreateLayer : aliased constant String := "CreateGeomFieldAfterCreateLayer" & ASCII.NUL;  --  ../ogr_core.h:828
   ODsCCurveGeometries              : aliased constant String := "CurveGeometries" & ASCII.NUL;  --  ../ogr_core.h:829
   ODsCTransactions                 : aliased constant String := "Transactions" & ASCII.NUL;  --  ../ogr_core.h:830
   ODsCEmulatedTransactions         : aliased constant String := "EmulatedTransactions" & ASCII.NUL;  --  ../ogr_core.h:831
   ODsCMeasuredGeometries           : aliased constant String := "MeasuredGeometries" & ASCII.NUL;  --  ../ogr_core.h:832
   ODsCRandomLayerRead              : aliased constant String := "RandomLayerRead" & ASCII.NUL;  --  ../ogr_core.h:833

   ODsCRandomLayerWrite             : aliased constant String := "RandomLayerWrite " & ASCII.NUL;  --  ../ogr_core.h:835
   ODsCAddFieldDomain               : aliased constant String := "AddFieldDomain" & ASCII.NUL;  --  ../ogr_core.h:836

   ODrCCreateDataSource             : aliased constant String := "CreateDataSource" & ASCII.NUL;  --  ../ogr_core.h:838
   ODrCDeleteDataSource             : aliased constant String := "DeleteDataSource" & ASCII.NUL;  --  ../ogr_core.h:839

   OLMD_FID64                       : aliased constant String := "OLMD_FID64" & ASCII.NUL;  --  ../ogr_core.h:848
   --  arg-macro: procedure GDAL_CHECK_VERSION (pszCallingComponentName)
   --    GDALCheckVersion(GDAL_VERSION_MAJOR, GDAL_VERSION_MINOR, pszCallingComponentName)

   type OGREnvelope is record
      MinX : aliased Double;  -- ../ogr_core.h:161
      MaxX : aliased Double;  -- ../ogr_core.h:162
      MinY : aliased Double;  -- ../ogr_core.h:163
      MaxY : aliased Double;  -- ../ogr_core.h:164
   end record
     with Convention => C_Pass_By_Copy;  -- ../ogr_core.h:165

   type OGREnvelope3D is record
      MinX : aliased Double;  -- ../ogr_core.h:282
      MaxX : aliased Double;  -- ../ogr_core.h:283
      MinY : aliased Double;  -- ../ogr_core.h:284
      MaxY : aliased Double;  -- ../ogr_core.h:285
      MinZ : aliased Double;  -- ../ogr_core.h:286
      MaxZ : aliased Double;  -- ../ogr_core.h:287
   end record
     with Convention => C_Pass_By_Copy;  -- ../ogr_core.h:288

   function OGRMalloc (Arg1 : Size_T) return System.Address  -- ../ogr_core.h:294
     with Import => True, 
     Convention => C, 
     External_Name => "OGRMalloc";

   function OGRCalloc (Arg1 : Size_T; Arg2 : Size_T) return System.Address  -- ../ogr_core.h:295
     with Import => True, 
     Convention => C, 
     External_Name => "OGRCalloc";

   function OGRRealloc (Arg1 : System.Address; Arg2 : Size_T) return System.Address  -- ../ogr_core.h:296
     with Import => True, 
     Convention => C, 
     External_Name => "OGRRealloc";

   function OGRStrdup (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_core.h:297
     with Import => True, 
     Convention => C, 
     External_Name => "OGRStrdup";

   procedure OGRFree (Arg1 : System.Address)  -- ../ogr_core.h:298
     with Import => True, 
     Convention => C, 
     External_Name => "OGRFree";

   subtype OGRErr is Int;  -- ../ogr_core.h:318

   subtype OGRBoolean is Int;  -- ../ogr_core.h:334

   subtype OGRwkbGeometryType is Unsigned;
   WkbUnknown : constant OGRwkbGeometryType := 0;
   WkbPoint : constant OGRwkbGeometryType := 1;
   WkbLineString : constant OGRwkbGeometryType := 2;
   WkbPolygon : constant OGRwkbGeometryType := 3;
   WkbMultiPoint : constant OGRwkbGeometryType := 4;
   WkbMultiLineString : constant OGRwkbGeometryType := 5;
   WkbMultiPolygon : constant OGRwkbGeometryType := 6;
   WkbGeometryCollection : constant OGRwkbGeometryType := 7;
   WkbCircularString : constant OGRwkbGeometryType := 8;
   WkbCompoundCurve : constant OGRwkbGeometryType := 9;
   WkbCurvePolygon : constant OGRwkbGeometryType := 10;
   WkbMultiCurve : constant OGRwkbGeometryType := 11;
   WkbMultiSurface : constant OGRwkbGeometryType := 12;
   WkbCurve : constant OGRwkbGeometryType := 13;
   WkbSurface : constant OGRwkbGeometryType := 14;
   WkbPolyhedralSurface : constant OGRwkbGeometryType := 15;
   WkbTIN : constant OGRwkbGeometryType := 16;
   WkbTriangle : constant OGRwkbGeometryType := 17;
   WkbNone : constant OGRwkbGeometryType := 100;
   WkbLinearRing : constant OGRwkbGeometryType := 101;
   WkbCircularStringZ : constant OGRwkbGeometryType := 1008;
   WkbCompoundCurveZ : constant OGRwkbGeometryType := 1009;
   WkbCurvePolygonZ : constant OGRwkbGeometryType := 1010;
   WkbMultiCurveZ : constant OGRwkbGeometryType := 1011;
   WkbMultiSurfaceZ : constant OGRwkbGeometryType := 1012;
   WkbCurveZ : constant OGRwkbGeometryType := 1013;
   WkbSurfaceZ : constant OGRwkbGeometryType := 1014;
   WkbPolyhedralSurfaceZ : constant OGRwkbGeometryType := 1015;
   WkbTINZ : constant OGRwkbGeometryType := 1016;
   WkbTriangleZ : constant OGRwkbGeometryType := 1017;
   WkbPointM : constant OGRwkbGeometryType := 2001;
   WkbLineStringM : constant OGRwkbGeometryType := 2002;
   WkbPolygonM : constant OGRwkbGeometryType := 2003;
   WkbMultiPointM : constant OGRwkbGeometryType := 2004;
   WkbMultiLineStringM : constant OGRwkbGeometryType := 2005;
   WkbMultiPolygonM : constant OGRwkbGeometryType := 2006;
   WkbGeometryCollectionM : constant OGRwkbGeometryType := 2007;
   WkbCircularStringM : constant OGRwkbGeometryType := 2008;
   WkbCompoundCurveM : constant OGRwkbGeometryType := 2009;
   WkbCurvePolygonM : constant OGRwkbGeometryType := 2010;
   WkbMultiCurveM : constant OGRwkbGeometryType := 2011;
   WkbMultiSurfaceM : constant OGRwkbGeometryType := 2012;
   WkbCurveM : constant OGRwkbGeometryType := 2013;
   WkbSurfaceM : constant OGRwkbGeometryType := 2014;
   WkbPolyhedralSurfaceM : constant OGRwkbGeometryType := 2015;
   WkbTINM : constant OGRwkbGeometryType := 2016;
   WkbTriangleM : constant OGRwkbGeometryType := 2017;
   WkbPointZM : constant OGRwkbGeometryType := 3001;
   WkbLineStringZM : constant OGRwkbGeometryType := 3002;
   WkbPolygonZM : constant OGRwkbGeometryType := 3003;
   WkbMultiPointZM : constant OGRwkbGeometryType := 3004;
   WkbMultiLineStringZM : constant OGRwkbGeometryType := 3005;
   WkbMultiPolygonZM : constant OGRwkbGeometryType := 3006;
   WkbGeometryCollectionZM : constant OGRwkbGeometryType := 3007;
   WkbCircularStringZM : constant OGRwkbGeometryType := 3008;
   WkbCompoundCurveZM : constant OGRwkbGeometryType := 3009;
   WkbCurvePolygonZM : constant OGRwkbGeometryType := 3010;
   WkbMultiCurveZM : constant OGRwkbGeometryType := 3011;
   WkbMultiSurfaceZM : constant OGRwkbGeometryType := 3012;
   WkbCurveZM : constant OGRwkbGeometryType := 3013;
   WkbSurfaceZM : constant OGRwkbGeometryType := 3014;
   WkbPolyhedralSurfaceZM : constant OGRwkbGeometryType := 3015;
   WkbTINZM : constant OGRwkbGeometryType := 3016;
   WkbTriangleZM : constant OGRwkbGeometryType := 3017;
   WkbPoint25D : constant OGRwkbGeometryType := 2147483649;
   WkbLineString25D : constant OGRwkbGeometryType := 2147483650;
   WkbPolygon25D : constant OGRwkbGeometryType := 2147483651;
   WkbMultiPoint25D : constant OGRwkbGeometryType := 2147483652;
   WkbMultiLineString25D : constant OGRwkbGeometryType := 2147483653;
   WkbMultiPolygon25D : constant OGRwkbGeometryType := 2147483654;
   WkbGeometryCollection25D : constant OGRwkbGeometryType := 2147483655;  -- ../ogr_core.h:445

   type OGRwkbVariant is 
     (WkbVariantOldOgc,
      WkbVariantIso,
      WkbVariantPostGIS1)
     with Convention => C;  -- ../ogr_core.h:466

   function OGRGeometryTypeToName (EType : OGRwkbGeometryType) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_core.h:505
     with Import => True, 
     Convention => C, 
     External_Name => "OGRGeometryTypeToName";

   function OGRMergeGeometryTypes (EMain : OGRwkbGeometryType; EExtra : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:506
     with Import => True, 
     Convention => C, 
     External_Name => "OGRMergeGeometryTypes";

   function OGRMergeGeometryTypesEx
     (EMain                   : OGRwkbGeometryType;
      EExtra                  : OGRwkbGeometryType;
      BAllowPromotingToCurves : Int) return OGRwkbGeometryType  -- ../ogr_core.h:508
     with Import => True, 
     Convention => C, 
     External_Name => "OGRMergeGeometryTypesEx";

   function OGR_GT_Flatten (EType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:511
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_Flatten";

   function OGR_GT_SetZ (EType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:512
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_SetZ";

   function OGR_GT_SetM (EType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:513
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_SetM";

   function OGR_GT_SetModifier
     (EType : OGRwkbGeometryType;
      BSetZ : Int;
      BSetM : Int) return OGRwkbGeometryType  -- ../ogr_core.h:514
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_SetModifier";

   function OGR_GT_HasZ (EType : OGRwkbGeometryType) return Int  -- ../ogr_core.h:515
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_HasZ";

   function OGR_GT_HasM (EType : OGRwkbGeometryType) return Int  -- ../ogr_core.h:516
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_HasM";

   function OGR_GT_IsSubClassOf (EType : OGRwkbGeometryType; ESuperType : OGRwkbGeometryType) return Int  -- ../ogr_core.h:517
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_IsSubClassOf";

   function OGR_GT_IsCurve (Arg1 : OGRwkbGeometryType) return Int  -- ../ogr_core.h:519
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_IsCurve";

   function OGR_GT_IsSurface (Arg1 : OGRwkbGeometryType) return Int  -- ../ogr_core.h:520
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_IsSurface";

   function OGR_GT_IsNonLinear (Arg1 : OGRwkbGeometryType) return Int  -- ../ogr_core.h:521
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_IsNonLinear";

   function OGR_GT_GetCollection (EType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:522
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_GetCollection";

   function OGR_GT_GetCurve (EType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:523
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_GetCurve";

   function OGR_GT_GetLinear (EType : OGRwkbGeometryType) return OGRwkbGeometryType  -- ../ogr_core.h:524
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GT_GetLinear";

   type OGRwkbByteOrder is 
     (WkbXDR,
      WkbNDR)
     with Convention => C;  -- ../ogr_core.h:531

   subtype OGRFieldType is Unsigned;
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

   subtype OGRFieldSubType is Unsigned;
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

   type OGRField_Struct5745 is record
      NCount : aliased Int;  -- ../ogr_core.h:746
      PaList : access Int;  -- ../ogr_core.h:747
   end record
     with Convention => C_Pass_By_Copy;
   type OGRField_Struct5746 is record
      NCount : aliased Int;  -- ../ogr_core.h:751
      PaList : access GIntBig;  -- ../ogr_core.h:752
   end record
     with Convention => C_Pass_By_Copy;
   type OGRField_Struct5748 is record
      NCount : aliased Int;  -- ../ogr_core.h:756
      PaList : access Double;  -- ../ogr_core.h:757
   end record
     with Convention => C_Pass_By_Copy;
   type OGRField_Struct5749 is record
      NCount : aliased Int;  -- ../ogr_core.h:761
      PaList : System.Address;  -- ../ogr_core.h:762
   end record
     with Convention => C_Pass_By_Copy;
   type OGRField_Struct5750 is record
      NCount : aliased Int;  -- ../ogr_core.h:766
      PaData : access GByte;  -- ../ogr_core.h:767
   end record
     with Convention => C_Pass_By_Copy;
   type OGRField_Struct5751 is record
      NMarker1 : aliased Int;  -- ../ogr_core.h:771
      NMarker2 : aliased Int;  -- ../ogr_core.h:772
      NMarker3 : aliased Int;  -- ../ogr_core.h:773
   end record
     with Convention => C_Pass_By_Copy;
   type OGRField_Struct5752 is record
      Year     : aliased GInt16;  -- ../ogr_core.h:777
      Month    : aliased GByte;  -- ../ogr_core.h:778
      Day      : aliased GByte;  -- ../ogr_core.h:779
      Hour     : aliased GByte;  -- ../ogr_core.h:780
      Minute   : aliased GByte;  -- ../ogr_core.h:781
      TZFlag   : aliased GByte;  -- ../ogr_core.h:782
      Reserved : aliased GByte;  -- ../ogr_core.h:784
      Second   : aliased Float;  -- ../ogr_core.h:785
   end record
     with Convention => C_Pass_By_Copy;
   type OGRField (Discr : Unsigned := 0) is record
      case Discr is
         when 0 =>
            Integer       : aliased Int;  -- ../ogr_core.h:740
         when 1 =>
            Integer64     : aliased GIntBig;  -- ../ogr_core.h:741
         when 2 =>
            Real          : aliased Double;  -- ../ogr_core.h:742
         when 3 =>
            String        : Interfaces.C.Strings.Chars_Ptr;  -- ../ogr_core.h:743
         when 4 =>
            IntegerList   : aliased OGRField_Struct5745;  -- ../ogr_core.h:748
         when 5 =>
            Integer64List : aliased OGRField_Struct5746;  -- ../ogr_core.h:753
         when 6 =>
            RealList      : aliased OGRField_Struct5748;  -- ../ogr_core.h:758
         when 7 =>
            StringList    : aliased OGRField_Struct5749;  -- ../ogr_core.h:763
         when 8 =>
            Binary        : aliased OGRField_Struct5750;  -- ../ogr_core.h:768
         when 9 =>
            Set           : aliased OGRField_Struct5751;  -- ../ogr_core.h:774
         when others =>
            Date          : aliased OGRField_Struct5752;  -- ../ogr_core.h:786
      end case;
   end record
     with Convention => C_Pass_By_Copy,
     Unchecked_Union => True;  -- ../ogr_core.h:788

   function OGRParseDate
     (PszInput : Interfaces.C.Strings.Chars_Ptr;
      PsOutput : access OGRField;
      NOptions : Int) return Int  -- ../ogr_core.h:801
     with Import => True, 
     Convention => C, 
     External_Name => "OGRParseDate";

   type Ogr_Style_Tool_Class_Id is 
     (OGRSTCNone,
      OGRSTCPen,
      OGRSTCBrush,
      OGRSTCSymbol,
      OGRSTCLabel,
      OGRSTCVector)
     with Convention => C;  -- ../ogr_core.h:858

   subtype OGRSTClassId is Ogr_Style_Tool_Class_Id;  -- ../ogr_core.h:866

   type Ogr_Style_Tool_Units_Id is 
     (OGRSTUGround,
      OGRSTUPixel,
      OGRSTUPoints,
      OGRSTUMM,
      OGRSTUCM,
      OGRSTUInches)
     with Convention => C;  -- ../ogr_core.h:871

   subtype OGRSTUnitId is Ogr_Style_Tool_Units_Id;  -- ../ogr_core.h:879

   type Ogr_Style_Tool_Param_Pen_Id is 
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

   subtype OGRSTPenParam is Ogr_Style_Tool_Param_Pen_Id;  -- ../ogr_core.h:897

   type Ogr_Style_Tool_Param_Brush_Id is 
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

   subtype OGRSTBrushParam is Ogr_Style_Tool_Param_Brush_Id;  -- ../ogr_core.h:916

   type Ogr_Style_Tool_Param_Symbol_Id is 
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

   subtype OGRSTSymbolParam is Ogr_Style_Tool_Param_Symbol_Id;  -- ../ogr_core.h:938

   type Ogr_Style_Tool_Param_Label_Id is 
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

   subtype OGRSTLabelParam is Ogr_Style_Tool_Param_Label_Id;  -- ../ogr_core.h:969

   type OGRCodedValue is record
      PszCode  : Interfaces.C.Strings.Chars_Ptr;  -- ../ogr_core.h:982
      PszValue : Interfaces.C.Strings.Chars_Ptr;  -- ../ogr_core.h:985
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

   function GDALVersionInfo (Arg1 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_core.h:1046
     with Import => True, 
     Convention => C, 
     External_Name => "GDALVersionInfo";

   function GDALCheckVersion
     (NVersionMajor           : Int;
      NVersionMinor           : Int;
      PszCallingComponentName : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_core.h:1062
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCheckVersion";

   --  arg-macro: procedure OGR_FOR_EACH_FEATURE_BEGIN (hFeat, hLayer)
   --    { OGRFeatureH hFeat := CPL_NULLPTR; OGR_L_ResetReading(hLayer); while( true) { if( hFeat ) OGR_F_Destroy(hFeat); hFeat := OGR_L_GetNextFeature(hLayer); if( nothFeat ) break;
   --  arg-macro: procedure OGR_FOR_EACH_FEATURE_END (hFeat)
   --    } OGR_F_Destroy(hFeat); }
   subtype OGRGeometryH is  System.Address;  -- ../ogr_api.h:63

   subtype OGRSpatialReferenceH is  System.Address;  -- ../ogr_api.h:78

   subtype OGRCoordinateTransformationH is  System.Address;  -- ../ogr_api.h:80

   type U_CPLXMLNode is null record;   -- incomplete struct

   function OGR_G_CreateFromWkb
     (Arg1 : System.Address;
      Arg2 : OGRSpatialReferenceH;
      Arg3 : System.Address;
      Arg4 : Int) return OGRErr  -- ../ogr_api.h:90
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateFromWkb";

   function OGR_G_CreateFromWkbEx
     (Arg1 : System.Address;
      Arg2 : OGRSpatialReferenceH;
      Arg3 : System.Address;
      Arg4 : Size_T) return OGRErr  -- ../ogr_api.h:92
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateFromWkbEx";

   function OGR_G_CreateFromWkt
     (Arg1 : System.Address;
      Arg2 : OGRSpatialReferenceH;
      Arg3 : System.Address) return OGRErr  -- ../ogr_api.h:94
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateFromWkt";

   function OGR_G_CreateFromFgf
     (Arg1 : System.Address;
      Arg2 : OGRSpatialReferenceH;
      Arg3 : System.Address;
      Arg4 : Int;
      Arg5 : access Int) return OGRErr  -- ../ogr_api.h:96
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateFromFgf";

   procedure OGR_G_DestroyGeometry (Arg1 : OGRGeometryH)  -- ../ogr_api.h:98
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_DestroyGeometry";

   function OGR_G_CreateGeometry (Arg1 : OGRwkbGeometryType) return OGRGeometryH  -- ../ogr_api.h:99
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateGeometry";

   function OGR_G_ApproximateArcAngles
     (DfCenterX                 : Double;
      DfCenterY                 : Double;
      DfZ                       : Double;
      DfPrimaryRadius           : Double;
      DfSecondaryAxis           : Double;
      DfRotation                : Double;
      DfStartAngle              : Double;
      DfEndAngle                : Double;
      DfMaxAngleStepSizeDegrees : Double) return OGRGeometryH  -- ../ogr_api.h:101
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ApproximateArcAngles";

   function OGR_G_ForceToPolygon (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:107
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ForceToPolygon";

   function OGR_G_ForceToLineString (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:108
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ForceToLineString";

   function OGR_G_ForceToMultiPolygon (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:109
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ForceToMultiPolygon";

   function OGR_G_ForceToMultiPoint (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:110
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ForceToMultiPoint";

   function OGR_G_ForceToMultiLineString (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:111
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ForceToMultiLineString";

   function OGR_G_ForceTo
     (HGeom        : OGRGeometryH;
      ETargetType  : OGRwkbGeometryType;
      PapszOptions : System.Address) return OGRGeometryH  -- ../ogr_api.h:112
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ForceTo";

   function OGR_G_RemoveLowerDimensionSubGeoms (HGeom : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:115
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_RemoveLowerDimensionSubGeoms";

   function OGR_G_GetDimension (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:117
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetDimension";

   function OGR_G_GetCoordinateDimension (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:118
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetCoordinateDimension";

   function OGR_G_CoordinateDimension (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:119
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CoordinateDimension";

   procedure OGR_G_SetCoordinateDimension (Arg1 : OGRGeometryH; Arg2 : Int)  -- ../ogr_api.h:120
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetCoordinateDimension";

   function OGR_G_Is3D (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:121
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Is3D";

   function OGR_G_IsMeasured (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:122
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_IsMeasured";

   procedure OGR_G_Set3D (Arg1 : OGRGeometryH; Arg2 : Int)  -- ../ogr_api.h:123
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Set3D";

   procedure OGR_G_SetMeasured (Arg1 : OGRGeometryH; Arg2 : Int)  -- ../ogr_api.h:124
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetMeasured";

   function OGR_G_Clone (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:125
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Clone";

   procedure OGR_G_GetEnvelope (Arg1 : OGRGeometryH; Arg2 : access OGREnvelope)  -- ../ogr_api.h:126
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetEnvelope";

   procedure OGR_G_GetEnvelope3D (Arg1 : OGRGeometryH; Arg2 : access OGREnvelope3D)  -- ../ogr_api.h:127
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetEnvelope3D";

   function OGR_G_ImportFromWkb
     (Arg1 : OGRGeometryH;
      Arg2 : System.Address;
      Arg3 : Int) return OGRErr  -- ../ogr_api.h:128
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ImportFromWkb";

   function OGR_G_ExportToWkb
     (Arg1 : OGRGeometryH;
      Arg2 : OGRwkbByteOrder;
      Arg3 : access Unsigned_Char) return OGRErr  -- ../ogr_api.h:129
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToWkb";

   function OGR_G_ExportToIsoWkb
     (Arg1 : OGRGeometryH;
      Arg2 : OGRwkbByteOrder;
      Arg3 : access Unsigned_Char) return OGRErr  -- ../ogr_api.h:130
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToIsoWkb";

   function OGR_G_WkbSize (HGeom : OGRGeometryH) return Int  -- ../ogr_api.h:131
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_WkbSize";

   function OGR_G_WkbSizeEx (HGeom : OGRGeometryH) return Size_T  -- ../ogr_api.h:132
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_WkbSizeEx";

   function OGR_G_ImportFromWkt (Arg1 : OGRGeometryH; Arg2 : System.Address) return OGRErr  -- ../ogr_api.h:133
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ImportFromWkt";

   function OGR_G_ExportToWkt (Arg1 : OGRGeometryH; Arg2 : System.Address) return OGRErr  -- ../ogr_api.h:134
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToWkt";

   function OGR_G_ExportToIsoWkt (Arg1 : OGRGeometryH; Arg2 : System.Address) return OGRErr  -- ../ogr_api.h:135
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToIsoWkt";

   function OGR_G_GetGeometryType (Arg1 : OGRGeometryH) return OGRwkbGeometryType  -- ../ogr_api.h:136
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetGeometryType";

   function OGR_G_GetGeometryName (Arg1 : OGRGeometryH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:137
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetGeometryName";

   procedure OGR_G_DumpReadable
     (Arg1 : OGRGeometryH;
      Arg2 : Interfaces.C_Streams.FILEs;
      Arg3 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:138
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_DumpReadable";

   procedure OGR_G_FlattenTo2D (Arg1 : OGRGeometryH)  -- ../ogr_api.h:139
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_FlattenTo2D";

   procedure OGR_G_CloseRings (Arg1 : OGRGeometryH)  -- ../ogr_api.h:140
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CloseRings";

   function OGR_G_CreateFromGML (Arg1 : Interfaces.C.Strings.Chars_Ptr) return OGRGeometryH  -- ../ogr_api.h:142
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateFromGML";

   function OGR_G_ExportToGML (Arg1 : OGRGeometryH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:143
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToGML";

   function OGR_G_ExportToGMLEx (Arg1 : OGRGeometryH; PapszOptions : System.Address) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:144
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToGMLEx";

   function OGR_G_CreateFromGMLTree (Arg1 : access constant CPLXMLNode) return OGRGeometryH  -- ../ogr_api.h:146
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateFromGMLTree";

   function OGR_G_ExportToGMLTree (Arg1 : OGRGeometryH) return access CPLXMLNode  -- ../ogr_api.h:147
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToGMLTree";

   function OGR_G_ExportEnvelopeToGMLTree (Arg1 : OGRGeometryH) return access CPLXMLNode  -- ../ogr_api.h:148
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportEnvelopeToGMLTree";

   function OGR_G_ExportToKML (Arg1 : OGRGeometryH; PszAltitudeMode : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:150
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToKML";

   function OGR_G_ExportToJson (Arg1 : OGRGeometryH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:152
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToJson";

   function OGR_G_ExportToJsonEx (Arg1 : OGRGeometryH; PapszOptions : System.Address) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:153
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ExportToJsonEx";

   function OGR_G_CreateGeometryFromJson (Arg1 : Interfaces.C.Strings.Chars_Ptr) return OGRGeometryH  -- ../ogr_api.h:155
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateGeometryFromJson";

   function OGR_G_CreateGeometryFromEsriJson (Arg1 : Interfaces.C.Strings.Chars_Ptr) return OGRGeometryH  -- ../ogr_api.h:157
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_CreateGeometryFromEsriJson";

   procedure OGR_G_AssignSpatialReference (Arg1 : OGRGeometryH; Arg2 : OGRSpatialReferenceH)  -- ../ogr_api.h:159
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_AssignSpatialReference";

   function OGR_G_GetSpatialReference (Arg1 : OGRGeometryH) return OGRSpatialReferenceH  -- ../ogr_api.h:161
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetSpatialReference";

   function OGR_G_Transform (Arg1 : OGRGeometryH; Arg2 : OGRCoordinateTransformationH) return OGRErr  -- ../ogr_api.h:162
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Transform";

   function OGR_G_TransformTo (Arg1 : OGRGeometryH; Arg2 : OGRSpatialReferenceH) return OGRErr  -- ../ogr_api.h:163
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_TransformTo";

   type OGRGeomTransformer is null record;   -- incomplete struct

   type OGRGeomTransformerH is access all OGRGeomTransformer;  -- ../ogr_api.h:166

   function OGR_GeomTransformer_Create (Arg1 : OGRCoordinateTransformationH; PapszOptions : CSLConstList) return OGRGeomTransformerH  -- ../ogr_api.h:167
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GeomTransformer_Create";

   function OGR_GeomTransformer_Transform (HTransformer : OGRGeomTransformerH; HGeom : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:169
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GeomTransformer_Transform";

   procedure OGR_GeomTransformer_Destroy (HTransformer : OGRGeomTransformerH)  -- ../ogr_api.h:170
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GeomTransformer_Destroy";

   function OGR_G_Simplify (HThis : OGRGeometryH; Tolerance : Double) return OGRGeometryH  -- ../ogr_api.h:172
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Simplify";

   function OGR_G_SimplifyPreserveTopology (HThis : OGRGeometryH; Tolerance : Double) return OGRGeometryH  -- ../ogr_api.h:173
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SimplifyPreserveTopology";

   function OGR_G_DelaunayTriangulation
     (HThis       : OGRGeometryH;
      DfTolerance : Double;
      BOnlyEdges  : Int) return OGRGeometryH  -- ../ogr_api.h:174
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_DelaunayTriangulation";

   procedure OGR_G_Segmentize (HGeom : OGRGeometryH; DfMaxLength : Double)  -- ../ogr_api.h:176
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Segmentize";

   function OGR_G_Intersects (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:177
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Intersects";

   function OGR_G_Equals (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:178
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Equals";

   function OGR_G_Disjoint (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:180
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Disjoint";

   function OGR_G_Touches (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:181
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Touches";

   function OGR_G_Crosses (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:182
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Crosses";

   function OGR_G_Within (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:183
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Within";

   function OGR_G_Contains (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:184
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Contains";

   function OGR_G_Overlaps (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:185
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Overlaps";

   function OGR_G_Boundary (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:187
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Boundary";

   function OGR_G_ConvexHull (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:188
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_ConvexHull";

   function OGR_G_Buffer
     (Arg1 : OGRGeometryH;
      Arg2 : Double;
      Arg3 : Int) return OGRGeometryH  -- ../ogr_api.h:189
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Buffer";

   function OGR_G_Intersection (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:190
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Intersection";

   function OGR_G_Union (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:191
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Union";

   function OGR_G_UnionCascaded (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:192
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_UnionCascaded";

   function OGR_G_PointOnSurface (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:193
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_PointOnSurface";

   function OGR_G_Difference (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:198
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Difference";

   function OGR_G_SymDifference (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:199
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SymDifference";

   function OGR_G_Distance (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Double  -- ../ogr_api.h:200
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Distance";

   function OGR_G_Distance3D (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Double  -- ../ogr_api.h:201
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Distance3D";

   function OGR_G_Length (Arg1 : OGRGeometryH) return Double  -- ../ogr_api.h:202
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Length";

   function OGR_G_Area (Arg1 : OGRGeometryH) return Double  -- ../ogr_api.h:203
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Area";

   function OGR_G_Centroid (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:204
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Centroid";

   function OGR_G_Value (Arg1 : OGRGeometryH; DfDistance : Double) return OGRGeometryH  -- ../ogr_api.h:205
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Value";

   procedure OGR_G_Empty (Arg1 : OGRGeometryH)  -- ../ogr_api.h:207
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Empty";

   function OGR_G_IsEmpty (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:208
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_IsEmpty";

   function OGR_G_IsValid (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:209
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_IsValid";

   function OGR_G_MakeValid (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:211
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_MakeValid";

   function OGR_G_Normalize (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:212
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Normalize";

   function OGR_G_IsSimple (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:213
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_IsSimple";

   function OGR_G_IsRing (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:214
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_IsRing";

   function OGR_G_Polygonize (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:216
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Polygonize";

   function OGR_G_Intersect (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:220
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Intersect";

   function OGR_G_Equal (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return Int  -- ../ogr_api.h:221
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_Equal";

   function OGR_G_SymmetricDifference (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:222
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SymmetricDifference";

   function OGR_G_GetArea (Arg1 : OGRGeometryH) return Double  -- ../ogr_api.h:223
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetArea";

   function OGR_G_GetBoundary (Arg1 : OGRGeometryH) return OGRGeometryH  -- ../ogr_api.h:224
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetBoundary";

   function OGR_G_GetPointCount (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:228
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetPointCount";

   function OGR_G_GetPoints
     (HGeom    : OGRGeometryH;
      PabyX    : System.Address;
      NXStride : Int;
      PabyY    : System.Address;
      NYStride : Int;
      PabyZ    : System.Address;
      NZStride : Int) return Int  -- ../ogr_api.h:229
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetPoints";

   function OGR_G_GetPointsZM
     (HGeom    : OGRGeometryH;
      PabyX    : System.Address;
      NXStride : Int;
      PabyY    : System.Address;
      NYStride : Int;
      PabyZ    : System.Address;
      NZStride : Int;
      PabyM    : System.Address;
      NMStride : Int) return Int  -- ../ogr_api.h:233
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetPointsZM";

   function OGR_G_GetX (Arg1 : OGRGeometryH; Arg2 : Int) return Double  -- ../ogr_api.h:238
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetX";

   function OGR_G_GetY (Arg1 : OGRGeometryH; Arg2 : Int) return Double  -- ../ogr_api.h:239
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetY";

   function OGR_G_GetZ (Arg1 : OGRGeometryH; Arg2 : Int) return Double  -- ../ogr_api.h:240
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetZ";

   function OGR_G_GetM (Arg1 : OGRGeometryH; Arg2 : Int) return Double  -- ../ogr_api.h:241
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetM";

   procedure OGR_G_GetPoint
     (Arg1   : OGRGeometryH;
      IPoint : Int;
      Arg3   : access Double;
      Arg4   : access Double;
      Arg5   : access Double)  -- ../ogr_api.h:242
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetPoint";

   procedure OGR_G_GetPointZM
     (Arg1   : OGRGeometryH;
      IPoint : Int;
      Arg3   : access Double;
      Arg4   : access Double;
      Arg5   : access Double;
      Arg6   : access Double)  -- ../ogr_api.h:244
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetPointZM";

   procedure OGR_G_SetPointCount (HGeom : OGRGeometryH; NNewPointCount : Int)  -- ../ogr_api.h:246
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetPointCount";

   procedure OGR_G_SetPoint
     (Arg1   : OGRGeometryH;
      IPoint : Int;
      Arg3   : Double;
      Arg4   : Double;
      Arg5   : Double)  -- ../ogr_api.h:247
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetPoint";

   procedure OGR_G_SetPoint_2D
     (Arg1   : OGRGeometryH;
      IPoint : Int;
      Arg3   : Double;
      Arg4   : Double)  -- ../ogr_api.h:249
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetPoint_2D";

   procedure OGR_G_SetPointM
     (Arg1   : OGRGeometryH;
      IPoint : Int;
      Arg3   : Double;
      Arg4   : Double;
      Arg5   : Double)  -- ../ogr_api.h:251
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetPointM";

   procedure OGR_G_SetPointZM
     (Arg1   : OGRGeometryH;
      IPoint : Int;
      Arg3   : Double;
      Arg4   : Double;
      Arg5   : Double;
      Arg6   : Double)  -- ../ogr_api.h:253
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetPointZM";

   procedure OGR_G_AddPoint
     (Arg1 : OGRGeometryH;
      Arg2 : Double;
      Arg3 : Double;
      Arg4 : Double)  -- ../ogr_api.h:255
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_AddPoint";

   procedure OGR_G_AddPoint_2D
     (Arg1 : OGRGeometryH;
      Arg2 : Double;
      Arg3 : Double)  -- ../ogr_api.h:256
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_AddPoint_2D";

   procedure OGR_G_AddPointM
     (Arg1 : OGRGeometryH;
      Arg2 : Double;
      Arg3 : Double;
      Arg4 : Double)  -- ../ogr_api.h:257
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_AddPointM";

   procedure OGR_G_AddPointZM
     (Arg1 : OGRGeometryH;
      Arg2 : Double;
      Arg3 : Double;
      Arg4 : Double;
      Arg5 : Double)  -- ../ogr_api.h:258
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_AddPointZM";

   procedure OGR_G_SetPoints
     (HGeom     : OGRGeometryH;
      NPointsIn : Int;
      PabyX     : System.Address;
      NXStride  : Int;
      PabyY     : System.Address;
      NYStride  : Int;
      PabyZ     : System.Address;
      NZStride  : Int)  -- ../ogr_api.h:259
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetPoints";

   procedure OGR_G_SetPointsZM
     (HGeom     : OGRGeometryH;
      NPointsIn : Int;
      PabyX     : System.Address;
      NXStride  : Int;
      PabyY     : System.Address;
      NYStride  : Int;
      PabyZ     : System.Address;
      NZStride  : Int;
      PabyM     : System.Address;
      NMStride  : Int)  -- ../ogr_api.h:263
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SetPointsZM";

   procedure OGR_G_SwapXY (HGeom : OGRGeometryH)  -- ../ogr_api.h:268
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_SwapXY";

   function OGR_G_GetGeometryCount (Arg1 : OGRGeometryH) return Int  -- ../ogr_api.h:272
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetGeometryCount";

   function OGR_G_GetGeometryRef (Arg1 : OGRGeometryH; Arg2 : Int) return OGRGeometryH  -- ../ogr_api.h:273
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetGeometryRef";

   function OGR_G_AddGeometry (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return OGRErr  -- ../ogr_api.h:274
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_AddGeometry";

   function OGR_G_AddGeometryDirectly (Arg1 : OGRGeometryH; Arg2 : OGRGeometryH) return OGRErr  -- ../ogr_api.h:275
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_AddGeometryDirectly";

   function OGR_G_RemoveGeometry
     (Arg1 : OGRGeometryH;
      Arg2 : Int;
      Arg3 : Int) return OGRErr  -- ../ogr_api.h:276
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_RemoveGeometry";

   function OGR_G_HasCurveGeometry (Arg1 : OGRGeometryH; BLookForNonLinear : Int) return Int  -- ../ogr_api.h:278
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_HasCurveGeometry";

   function OGR_G_GetLinearGeometry
     (HGeom                     : OGRGeometryH;
      DfMaxAngleStepSizeDegrees : Double;
      PapszOptions              : System.Address) return OGRGeometryH  -- ../ogr_api.h:279
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetLinearGeometry";

   function OGR_G_GetCurveGeometry (HGeom : OGRGeometryH; PapszOptions : System.Address) return OGRGeometryH  -- ../ogr_api.h:282
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_G_GetCurveGeometry";

   function OGRBuildPolygonFromEdges
     (HLinesAsCollection : OGRGeometryH;
      BBestEffort        : Int;
      BAutoClose         : Int;
      DfTolerance        : Double;
      PeErr              : access OGRErr) return OGRGeometryH  -- ../ogr_api.h:286
     with Import => True, 
     Convention => C, 
     External_Name => "OGRBuildPolygonFromEdges";

   function OGRSetGenerate_DB2_V72_BYTE_ORDER (BGenerate_DB2_V72_BYTE_ORDER : Int) return OGRErr  -- ../ogr_api.h:293
     with Import => True, 
     Convention => C, 
     External_Name => "OGRSetGenerate_DB2_V72_BYTE_ORDER";

   function OGRGetGenerate_DB2_V72_BYTE_ORDER return Int  -- ../ogr_api.h:296
     with Import => True, 
     Convention => C, 
     External_Name => "OGRGetGenerate_DB2_V72_BYTE_ORDER";

   procedure OGRSetNonLinearGeometriesEnabledFlag (BFlag : Int)  -- ../ogr_api.h:299
     with Import => True, 
     Convention => C, 
     External_Name => "OGRSetNonLinearGeometriesEnabledFlag";

   function OGRGetNonLinearGeometriesEnabledFlag return Int  -- ../ogr_api.h:300
     with Import => True, 
     Convention => C, 
     External_Name => "OGRGetNonLinearGeometriesEnabledFlag";

   type U_OGRPreparedGeometry is null record;   -- incomplete struct

   type OGRPreparedGeometryH is access all U_OGRPreparedGeometry;  -- ../ogr_api.h:303

   function OGRHasPreparedGeometrySupport return Int  -- ../ogr_api.h:305
     with Import => True, 
     Convention => C, 
     External_Name => "OGRHasPreparedGeometrySupport";

   function OGRCreatePreparedGeometry (HGeom : OGRGeometryH) return OGRPreparedGeometryH  -- ../ogr_api.h:306
     with Import => True, 
     Convention => C, 
     External_Name => "OGRCreatePreparedGeometry";

   procedure OGRDestroyPreparedGeometry (HPreparedGeom : OGRPreparedGeometryH)  -- ../ogr_api.h:307
     with Import => True, 
     Convention => C, 
     External_Name => "OGRDestroyPreparedGeometry";

   function OGRPreparedGeometryIntersects (HPreparedGeom : OGRPreparedGeometryH; HOtherGeom : OGRGeometryH) return Int  -- ../ogr_api.h:308
     with Import => True, 
     Convention => C, 
     External_Name => "OGRPreparedGeometryIntersects";

   function OGRPreparedGeometryContains (HPreparedGeom : OGRPreparedGeometryH; HOtherGeom : OGRGeometryH) return Int  -- ../ogr_api.h:310
     with Import => True, 
     Convention => C, 
     External_Name => "OGRPreparedGeometryContains";

   subtype OGRFieldDefnH is  System.Address;  -- ../ogr_api.h:328

   subtype OGRFeatureDefnH is  System.Address;  -- ../ogr_api.h:330

   subtype OGRFeatureH is  System.Address;  -- ../ogr_api.h:332

   subtype OGRStyleTableH is  System.Address;  -- ../ogr_api.h:334

   type OGRGeomFieldDefnHS is null record;   -- incomplete struct

   type OGRGeomFieldDefnH is access all OGRGeomFieldDefnHS;  -- ../ogr_api.h:337

   type OGRFieldDomainHS is null record;   -- incomplete struct

   type OGRFieldDomainH is access all OGRFieldDomainHS;  -- ../ogr_api.h:340

   function OGR_Fld_Create (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : OGRFieldType) return OGRFieldDefnH  -- ../ogr_api.h:345
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_Create";

   procedure OGR_Fld_Destroy (Arg1 : OGRFieldDefnH)  -- ../ogr_api.h:346
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_Destroy";

   procedure OGR_Fld_SetName (Arg1 : OGRFieldDefnH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:348
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetName";

   function OGR_Fld_GetNameRef (Arg1 : OGRFieldDefnH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:349
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetNameRef";

   procedure OGR_Fld_SetAlternativeName (Arg1 : OGRFieldDefnH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:350
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetAlternativeName";

   function OGR_Fld_GetAlternativeNameRef (Arg1 : OGRFieldDefnH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:351
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetAlternativeNameRef";

   function OGR_Fld_GetType (Arg1 : OGRFieldDefnH) return OGRFieldType  -- ../ogr_api.h:352
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetType";

   procedure OGR_Fld_SetType (Arg1 : OGRFieldDefnH; Arg2 : OGRFieldType)  -- ../ogr_api.h:353
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetType";

   function OGR_Fld_GetSubType (Arg1 : OGRFieldDefnH) return OGRFieldSubType  -- ../ogr_api.h:354
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetSubType";

   procedure OGR_Fld_SetSubType (Arg1 : OGRFieldDefnH; Arg2 : OGRFieldSubType)  -- ../ogr_api.h:355
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetSubType";

   function OGR_Fld_GetJustify (Arg1 : OGRFieldDefnH) return OGRJustification  -- ../ogr_api.h:356
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetJustify";

   procedure OGR_Fld_SetJustify (Arg1 : OGRFieldDefnH; Arg2 : OGRJustification)  -- ../ogr_api.h:357
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetJustify";

   function OGR_Fld_GetWidth (Arg1 : OGRFieldDefnH) return Int  -- ../ogr_api.h:358
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetWidth";

   procedure OGR_Fld_SetWidth (Arg1 : OGRFieldDefnH; Arg2 : Int)  -- ../ogr_api.h:359
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetWidth";

   function OGR_Fld_GetPrecision (Arg1 : OGRFieldDefnH) return Int  -- ../ogr_api.h:360
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetPrecision";

   procedure OGR_Fld_SetPrecision (Arg1 : OGRFieldDefnH; Arg2 : Int)  -- ../ogr_api.h:361
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetPrecision";

   procedure OGR_Fld_Set
     (Arg1 : OGRFieldDefnH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : OGRFieldType;
      Arg4 : Int;
      Arg5 : Int;
      Arg6 : OGRJustification)  -- ../ogr_api.h:362
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_Set";

   function OGR_Fld_IsIgnored (HDefn : OGRFieldDefnH) return Int  -- ../ogr_api.h:364
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_IsIgnored";

   procedure OGR_Fld_SetIgnored (HDefn : OGRFieldDefnH; Arg2 : Int)  -- ../ogr_api.h:365
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetIgnored";

   function OGR_Fld_IsNullable (HDefn : OGRFieldDefnH) return Int  -- ../ogr_api.h:366
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_IsNullable";

   procedure OGR_Fld_SetNullable (HDefn : OGRFieldDefnH; Arg2 : Int)  -- ../ogr_api.h:367
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetNullable";

   function OGR_Fld_IsUnique (HDefn : OGRFieldDefnH) return Int  -- ../ogr_api.h:368
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_IsUnique";

   procedure OGR_Fld_SetUnique (HDefn : OGRFieldDefnH; Arg2 : Int)  -- ../ogr_api.h:369
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetUnique";

   function OGR_Fld_GetDefault (HDefn : OGRFieldDefnH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:370
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetDefault";

   procedure OGR_Fld_SetDefault (HDefn : OGRFieldDefnH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:371
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetDefault";

   function OGR_Fld_IsDefaultDriverSpecific (HDefn : OGRFieldDefnH) return Int  -- ../ogr_api.h:372
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_IsDefaultDriverSpecific";

   function OGR_Fld_GetDomainName (HDefn : OGRFieldDefnH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:373
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_GetDomainName";

   procedure OGR_Fld_SetDomainName (HDefn : OGRFieldDefnH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:374
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Fld_SetDomainName";

   function OGR_GetFieldTypeName (Arg1 : OGRFieldType) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:376
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GetFieldTypeName";

   function OGR_GetFieldSubTypeName (Arg1 : OGRFieldSubType) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:377
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GetFieldSubTypeName";

   function OGR_AreTypeSubTypeCompatible (EType : OGRFieldType; ESubType : OGRFieldSubType) return Int  -- ../ogr_api.h:378
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_AreTypeSubTypeCompatible";

   function OGR_GFld_Create (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : OGRwkbGeometryType) return OGRGeomFieldDefnH  -- ../ogr_api.h:383
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_Create";

   procedure OGR_GFld_Destroy (Arg1 : OGRGeomFieldDefnH)  -- ../ogr_api.h:384
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_Destroy";

   procedure OGR_GFld_SetName (Arg1 : OGRGeomFieldDefnH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:386
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_SetName";

   function OGR_GFld_GetNameRef (Arg1 : OGRGeomFieldDefnH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:387
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_GetNameRef";

   function OGR_GFld_GetType (Arg1 : OGRGeomFieldDefnH) return OGRwkbGeometryType  -- ../ogr_api.h:389
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_GetType";

   procedure OGR_GFld_SetType (Arg1 : OGRGeomFieldDefnH; Arg2 : OGRwkbGeometryType)  -- ../ogr_api.h:390
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_SetType";

   function OGR_GFld_GetSpatialRef (Arg1 : OGRGeomFieldDefnH) return OGRSpatialReferenceH  -- ../ogr_api.h:392
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_GetSpatialRef";

   procedure OGR_GFld_SetSpatialRef (Arg1 : OGRGeomFieldDefnH; HSRS : OGRSpatialReferenceH)  -- ../ogr_api.h:393
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_SetSpatialRef";

   function OGR_GFld_IsNullable (HDefn : OGRGeomFieldDefnH) return Int  -- ../ogr_api.h:396
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_IsNullable";

   procedure OGR_GFld_SetNullable (HDefn : OGRGeomFieldDefnH; Arg2 : Int)  -- ../ogr_api.h:397
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_SetNullable";

   function OGR_GFld_IsIgnored (HDefn : OGRGeomFieldDefnH) return Int  -- ../ogr_api.h:399
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_IsIgnored";

   procedure OGR_GFld_SetIgnored (HDefn : OGRGeomFieldDefnH; Arg2 : Int)  -- ../ogr_api.h:400
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GFld_SetIgnored";

   function OGR_FD_Create (Arg1 : Interfaces.C.Strings.Chars_Ptr) return OGRFeatureDefnH  -- ../ogr_api.h:404
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_Create";

   procedure OGR_FD_Destroy (Arg1 : OGRFeatureDefnH)  -- ../ogr_api.h:405
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_Destroy";

   procedure OGR_FD_Release (Arg1 : OGRFeatureDefnH)  -- ../ogr_api.h:406
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_Release";

   function OGR_FD_GetName (Arg1 : OGRFeatureDefnH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:407
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetName";

   function OGR_FD_GetFieldCount (Arg1 : OGRFeatureDefnH) return Int  -- ../ogr_api.h:408
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetFieldCount";

   function OGR_FD_GetFieldDefn (Arg1 : OGRFeatureDefnH; Arg2 : Int) return OGRFieldDefnH  -- ../ogr_api.h:409
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetFieldDefn";

   function OGR_FD_GetFieldIndex (Arg1 : OGRFeatureDefnH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:410
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetFieldIndex";

   procedure OGR_FD_AddFieldDefn (Arg1 : OGRFeatureDefnH; Arg2 : OGRFieldDefnH)  -- ../ogr_api.h:411
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_AddFieldDefn";

   function OGR_FD_DeleteFieldDefn (HDefn : OGRFeatureDefnH; IField : Int) return OGRErr  -- ../ogr_api.h:412
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_DeleteFieldDefn";

   function OGR_FD_ReorderFieldDefns (HDefn : OGRFeatureDefnH; PanMap : access Int) return OGRErr  -- ../ogr_api.h:413
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_ReorderFieldDefns";

   function OGR_FD_GetGeomType (Arg1 : OGRFeatureDefnH) return OGRwkbGeometryType  -- ../ogr_api.h:414
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetGeomType";

   procedure OGR_FD_SetGeomType (Arg1 : OGRFeatureDefnH; Arg2 : OGRwkbGeometryType)  -- ../ogr_api.h:415
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_SetGeomType";

   function OGR_FD_IsGeometryIgnored (Arg1 : OGRFeatureDefnH) return Int  -- ../ogr_api.h:416
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_IsGeometryIgnored";

   procedure OGR_FD_SetGeometryIgnored (Arg1 : OGRFeatureDefnH; Arg2 : Int)  -- ../ogr_api.h:417
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_SetGeometryIgnored";

   function OGR_FD_IsStyleIgnored (Arg1 : OGRFeatureDefnH) return Int  -- ../ogr_api.h:418
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_IsStyleIgnored";

   procedure OGR_FD_SetStyleIgnored (Arg1 : OGRFeatureDefnH; Arg2 : Int)  -- ../ogr_api.h:419
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_SetStyleIgnored";

   function OGR_FD_Reference (Arg1 : OGRFeatureDefnH) return Int  -- ../ogr_api.h:420
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_Reference";

   function OGR_FD_Dereference (Arg1 : OGRFeatureDefnH) return Int  -- ../ogr_api.h:421
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_Dereference";

   function OGR_FD_GetReferenceCount (Arg1 : OGRFeatureDefnH) return Int  -- ../ogr_api.h:422
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetReferenceCount";

   function OGR_FD_GetGeomFieldCount (HFDefn : OGRFeatureDefnH) return Int  -- ../ogr_api.h:424
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetGeomFieldCount";

   function OGR_FD_GetGeomFieldDefn (HFDefn : OGRFeatureDefnH; I : Int) return OGRGeomFieldDefnH  -- ../ogr_api.h:425
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetGeomFieldDefn";

   function OGR_FD_GetGeomFieldIndex (HFDefn : OGRFeatureDefnH; PszName : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:427
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_GetGeomFieldIndex";

   procedure OGR_FD_AddGeomFieldDefn (HFDefn : OGRFeatureDefnH; HGFldDefn : OGRGeomFieldDefnH)  -- ../ogr_api.h:430
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_AddGeomFieldDefn";

   function OGR_FD_DeleteGeomFieldDefn (HFDefn : OGRFeatureDefnH; IGeomField : Int) return OGRErr  -- ../ogr_api.h:432
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_DeleteGeomFieldDefn";

   function OGR_FD_IsSame (HFDefn : OGRFeatureDefnH; HOtherFDefn : OGRFeatureDefnH) return Int  -- ../ogr_api.h:434
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FD_IsSame";

   function OGR_F_Create (Arg1 : OGRFeatureDefnH) return OGRFeatureH  -- ../ogr_api.h:438
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_Create";

   procedure OGR_F_Destroy (Arg1 : OGRFeatureH)  -- ../ogr_api.h:439
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_Destroy";

   function OGR_F_GetDefnRef (Arg1 : OGRFeatureH) return OGRFeatureDefnH  -- ../ogr_api.h:440
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetDefnRef";

   function OGR_F_SetGeometryDirectly (Arg1 : OGRFeatureH; Arg2 : OGRGeometryH) return OGRErr  -- ../ogr_api.h:442
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetGeometryDirectly";

   function OGR_F_SetGeometry (Arg1 : OGRFeatureH; Arg2 : OGRGeometryH) return OGRErr  -- ../ogr_api.h:443
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetGeometry";

   function OGR_F_GetGeometryRef (Arg1 : OGRFeatureH) return OGRGeometryH  -- ../ogr_api.h:444
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetGeometryRef";

   function OGR_F_StealGeometry (Arg1 : OGRFeatureH) return OGRGeometryH  -- ../ogr_api.h:445
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_StealGeometry";

   function OGR_F_Clone (Arg1 : OGRFeatureH) return OGRFeatureH  -- ../ogr_api.h:446
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_Clone";

   function OGR_F_Equal (Arg1 : OGRFeatureH; Arg2 : OGRFeatureH) return Int  -- ../ogr_api.h:447
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_Equal";

   function OGR_F_GetFieldCount (Arg1 : OGRFeatureH) return Int  -- ../ogr_api.h:449
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldCount";

   function OGR_F_GetFieldDefnRef (Arg1 : OGRFeatureH; Arg2 : Int) return OGRFieldDefnH  -- ../ogr_api.h:450
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldDefnRef";

   function OGR_F_GetFieldIndex (Arg1 : OGRFeatureH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:451
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldIndex";

   function OGR_F_IsFieldSet (Arg1 : OGRFeatureH; Arg2 : Int) return Int  -- ../ogr_api.h:453
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_IsFieldSet";

   procedure OGR_F_UnsetField (Arg1 : OGRFeatureH; Arg2 : Int)  -- ../ogr_api.h:454
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_UnsetField";

   function OGR_F_IsFieldNull (Arg1 : OGRFeatureH; Arg2 : Int) return Int  -- ../ogr_api.h:456
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_IsFieldNull";

   function OGR_F_IsFieldSetAndNotNull (Arg1 : OGRFeatureH; Arg2 : Int) return Int  -- ../ogr_api.h:457
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_IsFieldSetAndNotNull";

   procedure OGR_F_SetFieldNull (Arg1 : OGRFeatureH; Arg2 : Int)  -- ../ogr_api.h:458
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldNull";

   function OGR_F_GetRawFieldRef (Arg1 : OGRFeatureH; Arg2 : Int) return access OGRField  -- ../ogr_api.h:460
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetRawFieldRef";

   function OGR_RawField_IsUnset (Arg1 : access constant OGRField) return Int  -- ../ogr_api.h:462
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_RawField_IsUnset";

   function OGR_RawField_IsNull (Arg1 : access constant OGRField) return Int  -- ../ogr_api.h:463
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_RawField_IsNull";

   procedure OGR_RawField_SetUnset (Arg1 : access OGRField)  -- ../ogr_api.h:464
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_RawField_SetUnset";

   procedure OGR_RawField_SetNull (Arg1 : access OGRField)  -- ../ogr_api.h:465
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_RawField_SetNull";

   function OGR_F_GetFieldAsInteger (Arg1 : OGRFeatureH; Arg2 : Int) return Int  -- ../ogr_api.h:467
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsInteger";

   function OGR_F_GetFieldAsInteger64 (Arg1 : OGRFeatureH; Arg2 : Int) return GIntBig  -- ../ogr_api.h:468
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsInteger64";

   function OGR_F_GetFieldAsDouble (Arg1 : OGRFeatureH; Arg2 : Int) return Double  -- ../ogr_api.h:469
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsDouble";

   function OGR_F_GetFieldAsString (Arg1 : OGRFeatureH; Arg2 : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:470
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsString";

   function OGR_F_GetFieldAsIntegerList
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : access Int) return access Int  -- ../ogr_api.h:471
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsIntegerList";

   function OGR_F_GetFieldAsInteger64List
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : access Int) return access GIntBig  -- ../ogr_api.h:472
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsInteger64List";

   function OGR_F_GetFieldAsDoubleList
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : access Int) return access Double  -- ../ogr_api.h:473
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsDoubleList";

   function OGR_F_GetFieldAsStringList (Arg1 : OGRFeatureH; Arg2 : Int) return System.Address  -- ../ogr_api.h:474
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsStringList";

   function OGR_F_GetFieldAsBinary
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : access Int) return access GByte  -- ../ogr_api.h:475
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsBinary";

   function OGR_F_GetFieldAsDateTime
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : access Int;
      Arg4 : access Int;
      Arg5 : access Int;
      Arg6 : access Int;
      Arg7 : access Int;
      Arg8 : access Int;
      Arg9 : access Int) return Int  -- ../ogr_api.h:476
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsDateTime";

   function OGR_F_GetFieldAsDateTimeEx
     (HFeat    : OGRFeatureH;
      IField   : Int;
      PnYear   : access Int;
      PnMonth  : access Int;
      PnDay    : access Int;
      PnHour   : access Int;
      PnMinute : access Int;
      PfSecond : access Float;
      PnTZFlag : access Int) return Int  -- ../ogr_api.h:478
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFieldAsDateTimeEx";

   procedure OGR_F_SetFieldInteger
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Int)  -- ../ogr_api.h:483
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldInteger";

   procedure OGR_F_SetFieldInteger64
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : GIntBig)  -- ../ogr_api.h:484
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldInteger64";

   procedure OGR_F_SetFieldDouble
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Double)  -- ../ogr_api.h:485
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldDouble";

   procedure OGR_F_SetFieldString
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:486
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldString";

   procedure OGR_F_SetFieldIntegerList
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : access Int)  -- ../ogr_api.h:487
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldIntegerList";

   procedure OGR_F_SetFieldInteger64List
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : access GIntBig)  -- ../ogr_api.h:488
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldInteger64List";

   procedure OGR_F_SetFieldDoubleList
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : access Double)  -- ../ogr_api.h:489
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldDoubleList";

   procedure OGR_F_SetFieldStringList
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : CSLConstList)  -- ../ogr_api.h:490
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldStringList";

   procedure OGR_F_SetFieldRaw
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : access OGRField)  -- ../ogr_api.h:491
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldRaw";

   procedure OGR_F_SetFieldBinary
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : System.Address)  -- ../ogr_api.h:492
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldBinary";

   procedure OGR_F_SetFieldDateTime
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Int;
      Arg5 : Int;
      Arg6 : Int;
      Arg7 : Int;
      Arg8 : Int;
      Arg9 : Int)  -- ../ogr_api.h:493
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldDateTime";

   procedure OGR_F_SetFieldDateTimeEx
     (Arg1 : OGRFeatureH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Int;
      Arg5 : Int;
      Arg6 : Int;
      Arg7 : Int;
      Arg8 : Float;
      Arg9 : Int)  -- ../ogr_api.h:495
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFieldDateTimeEx";

   function OGR_F_GetGeomFieldCount (HFeat : OGRFeatureH) return Int  -- ../ogr_api.h:498
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetGeomFieldCount";

   function OGR_F_GetGeomFieldDefnRef (HFeat : OGRFeatureH; IField : Int) return OGRGeomFieldDefnH  -- ../ogr_api.h:499
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetGeomFieldDefnRef";

   function OGR_F_GetGeomFieldIndex (HFeat : OGRFeatureH; PszName : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:501
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetGeomFieldIndex";

   function OGR_F_GetGeomFieldRef (HFeat : OGRFeatureH; IField : Int) return OGRGeometryH  -- ../ogr_api.h:504
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetGeomFieldRef";

   function OGR_F_SetGeomFieldDirectly
     (HFeat  : OGRFeatureH;
      IField : Int;
      HGeom  : OGRGeometryH) return OGRErr  -- ../ogr_api.h:506
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetGeomFieldDirectly";

   function OGR_F_SetGeomField
     (HFeat  : OGRFeatureH;
      IField : Int;
      HGeom  : OGRGeometryH) return OGRErr  -- ../ogr_api.h:509
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetGeomField";

   function OGR_F_GetFID (Arg1 : OGRFeatureH) return GIntBig  -- ../ogr_api.h:512
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetFID";

   function OGR_F_SetFID (Arg1 : OGRFeatureH; Arg2 : GIntBig) return OGRErr  -- ../ogr_api.h:513
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFID";

   procedure OGR_F_DumpReadable (Arg1 : OGRFeatureH; Arg2 : Interfaces.C_Streams.FILEs)  -- ../ogr_api.h:514
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_DumpReadable";

   function OGR_F_SetFrom
     (Arg1 : OGRFeatureH;
      Arg2 : OGRFeatureH;
      Arg3 : Int) return OGRErr  -- ../ogr_api.h:515
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFrom";

   function OGR_F_SetFromWithMap
     (Arg1 : OGRFeatureH;
      Arg2 : OGRFeatureH;
      Arg3 : Int;
      Arg4 : access Int) return OGRErr  -- ../ogr_api.h:516
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetFromWithMap";

   function OGR_F_GetStyleString (Arg1 : OGRFeatureH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:518
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetStyleString";

   procedure OGR_F_SetStyleString (Arg1 : OGRFeatureH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:519
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetStyleString";

   procedure OGR_F_SetStyleStringDirectly (Arg1 : OGRFeatureH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:520
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetStyleStringDirectly";

   function OGR_F_GetStyleTable (Arg1 : OGRFeatureH) return OGRStyleTableH  -- ../ogr_api.h:522
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetStyleTable";

   procedure OGR_F_SetStyleTableDirectly (Arg1 : OGRFeatureH; Arg2 : OGRStyleTableH)  -- ../ogr_api.h:524
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetStyleTableDirectly";

   procedure OGR_F_SetStyleTable (Arg1 : OGRFeatureH; Arg2 : OGRStyleTableH)  -- ../ogr_api.h:526
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetStyleTable";

   function OGR_F_GetNativeData (Arg1 : OGRFeatureH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:528
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetNativeData";

   procedure OGR_F_SetNativeData (Arg1 : OGRFeatureH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:529
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetNativeData";

   function OGR_F_GetNativeMediaType (Arg1 : OGRFeatureH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:530
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_GetNativeMediaType";

   procedure OGR_F_SetNativeMediaType (Arg1 : OGRFeatureH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:531
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_SetNativeMediaType";

   procedure OGR_F_FillUnsetWithDefault
     (HFeat            : OGRFeatureH;
      BNotNullableOnly : Int;
      PapszOptions     : System.Address)  -- ../ogr_api.h:533
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_FillUnsetWithDefault";

   function OGR_F_Validate
     (Arg1           : OGRFeatureH;
      NValidateFlags : Int;
      BEmitError     : Int) return Int  -- ../ogr_api.h:536
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_F_Validate";

   procedure OGR_FldDomain_Destroy (Arg1 : OGRFieldDomainH)  -- ../ogr_api.h:540
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_Destroy";

   function OGR_FldDomain_GetName (Arg1 : OGRFieldDomainH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:541
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_GetName";

   function OGR_FldDomain_GetDescription (Arg1 : OGRFieldDomainH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:542
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_GetDescription";

   function OGR_FldDomain_GetDomainType (Arg1 : OGRFieldDomainH) return OGRFieldDomainType  -- ../ogr_api.h:543
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_GetDomainType";

   function OGR_FldDomain_GetFieldType (Arg1 : OGRFieldDomainH) return OGRFieldType  -- ../ogr_api.h:544
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_GetFieldType";

   function OGR_FldDomain_GetFieldSubType (Arg1 : OGRFieldDomainH) return OGRFieldSubType  -- ../ogr_api.h:545
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_GetFieldSubType";

   function OGR_FldDomain_GetSplitPolicy (Arg1 : OGRFieldDomainH) return OGRFieldDomainSplitPolicy  -- ../ogr_api.h:546
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_GetSplitPolicy";

   procedure OGR_FldDomain_SetSplitPolicy (Arg1 : OGRFieldDomainH; Arg2 : OGRFieldDomainSplitPolicy)  -- ../ogr_api.h:547
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_SetSplitPolicy";

   function OGR_FldDomain_GetMergePolicy (Arg1 : OGRFieldDomainH) return OGRFieldDomainMergePolicy  -- ../ogr_api.h:548
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_GetMergePolicy";

   procedure OGR_FldDomain_SetMergePolicy (Arg1 : OGRFieldDomainH; Arg2 : OGRFieldDomainMergePolicy)  -- ../ogr_api.h:549
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_FldDomain_SetMergePolicy";

   function OGR_CodedFldDomain_Create
     (PszName        : Interfaces.C.Strings.Chars_Ptr;
      PszDescription : Interfaces.C.Strings.Chars_Ptr;
      EFieldType     : OGRFieldType;
      EFieldSubType  : OGRFieldSubType;
      Enumeration    : access constant OGRCodedValue) return OGRFieldDomainH  -- ../ogr_api.h:551
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_CodedFldDomain_Create";

   function OGR_CodedFldDomain_GetEnumeration (Arg1 : OGRFieldDomainH) return access constant OGRCodedValue  -- ../ogr_api.h:556
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_CodedFldDomain_GetEnumeration";

   function OGR_RangeFldDomain_Create
     (PszName         : Interfaces.C.Strings.Chars_Ptr;
      PszDescription  : Interfaces.C.Strings.Chars_Ptr;
      EFieldType      : OGRFieldType;
      EFieldSubType   : OGRFieldSubType;
      PsMin           : access constant OGRField;
      BMinIsInclusive : Extensions.Bool;
      PsMax           : access constant OGRField;
      BMaxIsInclusive : Extensions.Bool) return OGRFieldDomainH  -- ../ogr_api.h:558
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_RangeFldDomain_Create";

   function OGR_RangeFldDomain_GetMin (Arg1 : OGRFieldDomainH; PbIsInclusiveOut : access Extensions.Bool) return access constant OGRField  -- ../ogr_api.h:566
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_RangeFldDomain_GetMin";

   function OGR_RangeFldDomain_GetMax (Arg1 : OGRFieldDomainH; PbIsInclusiveOut : access Extensions.Bool) return access constant OGRField  -- ../ogr_api.h:567
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_RangeFldDomain_GetMax";

   function OGR_GlobFldDomain_Create
     (PszName        : Interfaces.C.Strings.Chars_Ptr;
      PszDescription : Interfaces.C.Strings.Chars_Ptr;
      EFieldType     : OGRFieldType;
      EFieldSubType  : OGRFieldSubType;
      PszGlob        : Interfaces.C.Strings.Chars_Ptr) return OGRFieldDomainH  -- ../ogr_api.h:569
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GlobFldDomain_Create";

   function OGR_GlobFldDomain_GetGlob (Arg1 : OGRFieldDomainH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:574
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_GlobFldDomain_GetGlob";

   subtype OGRLayerH is System.Address;  -- ../ogr_api.h:586

   subtype OGRDataSourceH is System.Address;  -- ../ogr_api.h:588

   subtype OGRSFDriverH is System.Address;  -- ../ogr_api.h:590

   function OGR_L_GetName (Arg1 : OGRLayerH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:595
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetName";

   function OGR_L_GetGeomType (Arg1 : OGRLayerH) return OGRwkbGeometryType  -- ../ogr_api.h:596
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetGeomType";

   function OGR_L_GetSpatialFilter (Arg1 : OGRLayerH) return OGRGeometryH  -- ../ogr_api.h:597
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetSpatialFilter";

   procedure OGR_L_SetSpatialFilter (Arg1 : OGRLayerH; Arg2 : OGRGeometryH)  -- ../ogr_api.h:598
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetSpatialFilter";

   procedure OGR_L_SetSpatialFilterRect
     (Arg1 : OGRLayerH;
      Arg2 : Double;
      Arg3 : Double;
      Arg4 : Double;
      Arg5 : Double)  -- ../ogr_api.h:599
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetSpatialFilterRect";

   procedure OGR_L_SetSpatialFilterEx
     (Arg1       : OGRLayerH;
      IGeomField : Int;
      HGeom      : OGRGeometryH)  -- ../ogr_api.h:601
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetSpatialFilterEx";

   procedure OGR_L_SetSpatialFilterRectEx
     (Arg1       : OGRLayerH;
      IGeomField : Int;
      DfMinX     : Double;
      DfMinY     : Double;
      DfMaxX     : Double;
      DfMaxY     : Double)  -- ../ogr_api.h:603
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetSpatialFilterRectEx";

   function OGR_L_SetAttributeFilter (Arg1 : OGRLayerH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_api.h:606
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetAttributeFilter";

   procedure OGR_L_ResetReading (Arg1 : OGRLayerH)  -- ../ogr_api.h:607
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_ResetReading";

   function OGR_L_GetNextFeature (Arg1 : OGRLayerH) return OGRFeatureH  -- ../ogr_api.h:608
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetNextFeature";

   function OGR_L_SetNextByIndex (Arg1 : OGRLayerH; Arg2 : GIntBig) return OGRErr  -- ../ogr_api.h:656
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetNextByIndex";

   function OGR_L_GetFeature (Arg1 : OGRLayerH; Arg2 : GIntBig) return OGRFeatureH  -- ../ogr_api.h:657
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetFeature";

   function OGR_L_SetFeature (Arg1 : OGRLayerH; Arg2 : OGRFeatureH) return OGRErr  -- ../ogr_api.h:658
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetFeature";

   function OGR_L_CreateFeature (Arg1 : OGRLayerH; Arg2 : OGRFeatureH) return OGRErr  -- ../ogr_api.h:659
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_CreateFeature";

   function OGR_L_DeleteFeature (Arg1 : OGRLayerH; Arg2 : GIntBig) return OGRErr  -- ../ogr_api.h:660
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_DeleteFeature";

   function OGR_L_GetLayerDefn (Arg1 : OGRLayerH) return OGRFeatureDefnH  -- ../ogr_api.h:661
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetLayerDefn";

   function OGR_L_GetSpatialRef (Arg1 : OGRLayerH) return OGRSpatialReferenceH  -- ../ogr_api.h:662
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetSpatialRef";

   function OGR_L_FindFieldIndex
     (Arg1        : OGRLayerH;
      Arg2        : Interfaces.C.Strings.Chars_Ptr;
      BExactMatch : Int) return Int  -- ../ogr_api.h:663
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_FindFieldIndex";

   function OGR_L_GetFeatureCount (Arg1 : OGRLayerH; Arg2 : Int) return GIntBig  -- ../ogr_api.h:664
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetFeatureCount";

   function OGR_L_GetExtent
     (Arg1 : OGRLayerH;
      Arg2 : access OGREnvelope;
      Arg3 : Int) return OGRErr  -- ../ogr_api.h:665
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetExtent";

   function OGR_L_GetExtentEx
     (Arg1       : OGRLayerH;
      IGeomField : Int;
      PsExtent   : access OGREnvelope;
      BForce     : Int) return OGRErr  -- ../ogr_api.h:666
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetExtentEx";

   function OGR_L_TestCapability (Arg1 : OGRLayerH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:668
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_TestCapability";

   function OGR_L_CreateField
     (Arg1 : OGRLayerH;
      Arg2 : OGRFieldDefnH;
      Arg3 : Int) return OGRErr  -- ../ogr_api.h:669
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_CreateField";

   function OGR_L_CreateGeomField
     (HLayer     : OGRLayerH;
      HFieldDefn : OGRGeomFieldDefnH;
      BForce     : Int) return OGRErr  -- ../ogr_api.h:670
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_CreateGeomField";

   function OGR_L_DeleteField (Arg1 : OGRLayerH; IField : Int) return OGRErr  -- ../ogr_api.h:672
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_DeleteField";

   function OGR_L_ReorderFields (Arg1 : OGRLayerH; PanMap : access Int) return OGRErr  -- ../ogr_api.h:673
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_ReorderFields";

   function OGR_L_ReorderField
     (Arg1         : OGRLayerH;
      IOldFieldPos : Int;
      INewFieldPos : Int) return OGRErr  -- ../ogr_api.h:674
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_ReorderField";

   function OGR_L_AlterFieldDefn
     (Arg1          : OGRLayerH;
      IField        : Int;
      HNewFieldDefn : OGRFieldDefnH;
      NFlags        : Int) return OGRErr  -- ../ogr_api.h:675
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_AlterFieldDefn";

   function OGR_L_StartTransaction (Arg1 : OGRLayerH) return OGRErr  -- ../ogr_api.h:676
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_StartTransaction";

   function OGR_L_CommitTransaction (Arg1 : OGRLayerH) return OGRErr  -- ../ogr_api.h:677
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_CommitTransaction";

   function OGR_L_RollbackTransaction (Arg1 : OGRLayerH) return OGRErr  -- ../ogr_api.h:678
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_RollbackTransaction";

   function OGR_L_Reference (Arg1 : OGRLayerH) return Int  -- ../ogr_api.h:680
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_Reference";

   function OGR_L_Dereference (Arg1 : OGRLayerH) return Int  -- ../ogr_api.h:681
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_Dereference";

   function OGR_L_GetRefCount (Arg1 : OGRLayerH) return Int  -- ../ogr_api.h:682
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetRefCount";

   function OGR_L_SyncToDisk (Arg1 : OGRLayerH) return OGRErr  -- ../ogr_api.h:684
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SyncToDisk";

   function OGR_L_GetFeaturesRead (Arg1 : OGRLayerH) return GIntBig  -- ../ogr_api.h:686
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetFeaturesRead";

   function OGR_L_GetFIDColumn (Arg1 : OGRLayerH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:688
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetFIDColumn";

   function OGR_L_GetGeometryColumn (Arg1 : OGRLayerH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:689
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetGeometryColumn";

   function OGR_L_GetStyleTable (Arg1 : OGRLayerH) return OGRStyleTableH  -- ../ogr_api.h:691
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_GetStyleTable";

   procedure OGR_L_SetStyleTableDirectly (Arg1 : OGRLayerH; Arg2 : OGRStyleTableH)  -- ../ogr_api.h:693
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetStyleTableDirectly";

   procedure OGR_L_SetStyleTable (Arg1 : OGRLayerH; Arg2 : OGRStyleTableH)  -- ../ogr_api.h:695
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetStyleTable";

   function OGR_L_SetIgnoredFields (Arg1 : OGRLayerH; Arg2 : System.Address) return OGRErr  -- ../ogr_api.h:696
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SetIgnoredFields";

   function OGR_L_Intersection
     (Arg1 : OGRLayerH;
      Arg2 : OGRLayerH;
      Arg3 : OGRLayerH;
      Arg4 : System.Address;
      Arg5 : GDALProgressFunc;
      Arg6 : System.Address) return OGRErr  -- ../ogr_api.h:697
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_Intersection";

   function OGR_L_Union
     (Arg1 : OGRLayerH;
      Arg2 : OGRLayerH;
      Arg3 : OGRLayerH;
      Arg4 : System.Address;
      Arg5 : GDALProgressFunc;
      Arg6 : System.Address) return OGRErr  -- ../ogr_api.h:698
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_Union";

   function OGR_L_SymDifference
     (Arg1 : OGRLayerH;
      Arg2 : OGRLayerH;
      Arg3 : OGRLayerH;
      Arg4 : System.Address;
      Arg5 : GDALProgressFunc;
      Arg6 : System.Address) return OGRErr  -- ../ogr_api.h:699
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_SymDifference";

   function OGR_L_Identity
     (Arg1 : OGRLayerH;
      Arg2 : OGRLayerH;
      Arg3 : OGRLayerH;
      Arg4 : System.Address;
      Arg5 : GDALProgressFunc;
      Arg6 : System.Address) return OGRErr  -- ../ogr_api.h:700
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_Identity";

   function OGR_L_Update
     (Arg1 : OGRLayerH;
      Arg2 : OGRLayerH;
      Arg3 : OGRLayerH;
      Arg4 : System.Address;
      Arg5 : GDALProgressFunc;
      Arg6 : System.Address) return OGRErr  -- ../ogr_api.h:701
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_Update";

   function OGR_L_Clip
     (Arg1 : OGRLayerH;
      Arg2 : OGRLayerH;
      Arg3 : OGRLayerH;
      Arg4 : System.Address;
      Arg5 : GDALProgressFunc;
      Arg6 : System.Address) return OGRErr  -- ../ogr_api.h:702
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_Clip";

   function OGR_L_Erase
     (Arg1 : OGRLayerH;
      Arg2 : OGRLayerH;
      Arg3 : OGRLayerH;
      Arg4 : System.Address;
      Arg5 : GDALProgressFunc;
      Arg6 : System.Address) return OGRErr  -- ../ogr_api.h:703
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_L_Erase";

   procedure OGR_DS_Destroy (Arg1 : OGRDataSourceH)  -- ../ogr_api.h:707
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_Destroy";

   function OGR_DS_GetName (Arg1 : OGRDataSourceH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:708
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_GetName";

   function OGR_DS_GetLayerCount (Arg1 : OGRDataSourceH) return Int  -- ../ogr_api.h:709
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_GetLayerCount";

   function OGR_DS_GetLayer (Arg1 : OGRDataSourceH; Arg2 : Int) return OGRLayerH  -- ../ogr_api.h:710
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_GetLayer";

   function OGR_DS_GetLayerByName (Arg1 : OGRDataSourceH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRLayerH  -- ../ogr_api.h:711
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_GetLayerByName";

   function OGR_DS_DeleteLayer (Arg1 : OGRDataSourceH; Arg2 : Int) return OGRErr  -- ../ogr_api.h:712
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_DeleteLayer";

   function OGR_DS_GetDriver (Arg1 : OGRDataSourceH) return OGRSFDriverH  -- ../ogr_api.h:713
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_GetDriver";

   function OGR_DS_CreateLayer
     (Arg1 : OGRDataSourceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : OGRSpatialReferenceH;
      Arg4 : OGRwkbGeometryType;
      Arg5 : System.Address) return OGRLayerH  -- ../ogr_api.h:714
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_CreateLayer";

   function OGR_DS_CopyLayer
     (Arg1 : OGRDataSourceH;
      Arg2 : OGRLayerH;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : System.Address) return OGRLayerH  -- ../ogr_api.h:717
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_CopyLayer";

   function OGR_DS_TestCapability (Arg1 : OGRDataSourceH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:719
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_TestCapability";

   function OGR_DS_ExecuteSQL
     (Arg1 : OGRDataSourceH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : OGRGeometryH;
      Arg4 : Interfaces.C.Strings.Chars_Ptr) return OGRLayerH  -- ../ogr_api.h:720
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_ExecuteSQL";

   procedure OGR_DS_ReleaseResultSet (Arg1 : OGRDataSourceH; Arg2 : OGRLayerH)  -- ../ogr_api.h:722
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_ReleaseResultSet";

   function OGR_DS_Reference (Arg1 : OGRDataSourceH) return Int  -- ../ogr_api.h:724
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_Reference";

   function OGR_DS_Dereference (Arg1 : OGRDataSourceH) return Int  -- ../ogr_api.h:725
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_Dereference";

   function OGR_DS_GetRefCount (Arg1 : OGRDataSourceH) return Int  -- ../ogr_api.h:726
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_GetRefCount";

   function OGR_DS_GetSummaryRefCount (Arg1 : OGRDataSourceH) return Int  -- ../ogr_api.h:727
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_GetSummaryRefCount";

   function OGR_DS_SyncToDisk (Arg1 : OGRDataSourceH) return OGRErr  -- ../ogr_api.h:730
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_SyncToDisk";

   function OGR_DS_GetStyleTable (Arg1 : OGRDataSourceH) return OGRStyleTableH  -- ../ogr_api.h:732
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_GetStyleTable";

   procedure OGR_DS_SetStyleTableDirectly (Arg1 : OGRDataSourceH; Arg2 : OGRStyleTableH)  -- ../ogr_api.h:734
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_SetStyleTableDirectly";

   procedure OGR_DS_SetStyleTable (Arg1 : OGRDataSourceH; Arg2 : OGRStyleTableH)  -- ../ogr_api.h:736
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_DS_SetStyleTable";

   function OGR_Dr_GetName (Arg1 : OGRSFDriverH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:740
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Dr_GetName";

   function OGR_Dr_Open
     (Arg1 : OGRSFDriverH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int) return OGRDataSourceH  -- ../ogr_api.h:741
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Dr_Open";

   function OGR_Dr_TestCapability (Arg1 : OGRSFDriverH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:742
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Dr_TestCapability";

   function OGR_Dr_CreateDataSource
     (Arg1 : OGRSFDriverH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : System.Address) return OGRDataSourceH  -- ../ogr_api.h:743
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Dr_CreateDataSource";

   function OGR_Dr_CopyDataSource
     (Arg1 : OGRSFDriverH;
      Arg2 : OGRDataSourceH;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : System.Address) return OGRDataSourceH  -- ../ogr_api.h:745
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Dr_CopyDataSource";

   function OGR_Dr_DeleteDataSource (Arg1 : OGRSFDriverH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRErr  -- ../ogr_api.h:747
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_Dr_DeleteDataSource";

   function OGROpen
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Int;
      Arg3 : System.Address) return OGRDataSourceH  -- ../ogr_api.h:751
     with Import => True, 
     Convention => C, 
     External_Name => "OGROpen";

   function OGROpenShared
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Int;
      Arg3 : System.Address) return OGRDataSourceH  -- ../ogr_api.h:752
     with Import => True, 
     Convention => C, 
     External_Name => "OGROpenShared";

   function OGRReleaseDataSource (Arg1 : OGRDataSourceH) return OGRErr  -- ../ogr_api.h:753
     with Import => True, 
     Convention => C, 
     External_Name => "OGRReleaseDataSource";

   procedure OGRRegisterDriver (Arg1 : OGRSFDriverH)  -- ../ogr_api.h:755
     with Import => True, 
     Convention => C, 
     External_Name => "OGRRegisterDriver";

   procedure OGRDeregisterDriver (Arg1 : OGRSFDriverH)  -- ../ogr_api.h:756
     with Import => True, 
     Convention => C, 
     External_Name => "OGRDeregisterDriver";

   function OGRGetDriverCount return Int  -- ../ogr_api.h:758
     with Import => True, 
     Convention => C, 
     External_Name => "OGRGetDriverCount";

   function OGRGetDriver (Arg1 : Int) return OGRSFDriverH  -- ../ogr_api.h:759
     with Import => True, 
     Convention => C, 
     External_Name => "OGRGetDriver";

   function OGRGetDriverByName (Arg1 : Interfaces.C.Strings.Chars_Ptr) return OGRSFDriverH  -- ../ogr_api.h:760
     with Import => True, 
     Convention => C, 
     External_Name => "OGRGetDriverByName";

   function OGRGetOpenDSCount return Int  -- ../ogr_api.h:762
     with Import => True, 
     Convention => C, 
     External_Name => "OGRGetOpenDSCount";

   function OGRGetOpenDS (IDS : Int) return OGRDataSourceH  -- ../ogr_api.h:763
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

   subtype OGRStyleMgrH is  System.Address;  -- ../ogr_api.h:781

   subtype OGRStyleToolH is  System.Address;  -- ../ogr_api.h:783

   function OGR_SM_Create (HStyleTable : OGRStyleTableH) return OGRStyleMgrH  -- ../ogr_api.h:788
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_SM_Create";

   procedure OGR_SM_Destroy (HSM : OGRStyleMgrH)  -- ../ogr_api.h:789
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_SM_Destroy";

   function OGR_SM_InitFromFeature (HSM : OGRStyleMgrH; HFeat : OGRFeatureH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:791
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_SM_InitFromFeature";

   function OGR_SM_InitStyleString (HSM : OGRStyleMgrH; PszStyleString : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:793
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_SM_InitStyleString";

   function OGR_SM_GetPartCount (HSM : OGRStyleMgrH; PszStyleString : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:795
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_SM_GetPartCount";

   function OGR_SM_GetPart
     (HSM            : OGRStyleMgrH;
      NPartId        : Int;
      PszStyleString : Interfaces.C.Strings.Chars_Ptr) return OGRStyleToolH  -- ../ogr_api.h:797
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_SM_GetPart";

   function OGR_SM_AddPart (HSM : OGRStyleMgrH; HST : OGRStyleToolH) return Int  -- ../ogr_api.h:799
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_SM_AddPart";

   function OGR_SM_AddStyle
     (HSM            : OGRStyleMgrH;
      PszStyleName   : Interfaces.C.Strings.Chars_Ptr;
      PszStyleString : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:800
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_SM_AddStyle";

   function OGR_ST_Create (EClassId : OGRSTClassId) return OGRStyleToolH  -- ../ogr_api.h:805
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_Create";

   procedure OGR_ST_Destroy (HST : OGRStyleToolH)  -- ../ogr_api.h:806
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_Destroy";

   function OGR_ST_GetType (HST : OGRStyleToolH) return OGRSTClassId  -- ../ogr_api.h:808
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_GetType";

   function OGR_ST_GetUnit (HST : OGRStyleToolH) return OGRSTUnitId  -- ../ogr_api.h:810
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_GetUnit";

   procedure OGR_ST_SetUnit
     (HST                : OGRStyleToolH;
      EUnit              : OGRSTUnitId;
      DfGroundPaperScale : Double)  -- ../ogr_api.h:811
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_SetUnit";

   function OGR_ST_GetParamStr
     (HST          : OGRStyleToolH;
      EParam       : Int;
      BValueIsNull : access Int) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:814
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_GetParamStr";

   function OGR_ST_GetParamNum
     (HST          : OGRStyleToolH;
      EParam       : Int;
      BValueIsNull : access Int) return Int  -- ../ogr_api.h:815
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_GetParamNum";

   function OGR_ST_GetParamDbl
     (HST          : OGRStyleToolH;
      EParam       : Int;
      BValueIsNull : access Int) return Double  -- ../ogr_api.h:816
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_GetParamDbl";

   procedure OGR_ST_SetParamStr
     (HST      : OGRStyleToolH;
      EParam   : Int;
      PszValue : Interfaces.C.Strings.Chars_Ptr)  -- ../ogr_api.h:817
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_SetParamStr";

   procedure OGR_ST_SetParamNum
     (HST    : OGRStyleToolH;
      EParam : Int;
      NValue : Int)  -- ../ogr_api.h:818
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_SetParamNum";

   procedure OGR_ST_SetParamDbl
     (HST     : OGRStyleToolH;
      EParam  : Int;
      DfValue : Double)  -- ../ogr_api.h:819
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_SetParamDbl";

   function OGR_ST_GetStyleString (HST : OGRStyleToolH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:820
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_GetStyleString";

   function OGR_ST_GetRGBFromString
     (HST      : OGRStyleToolH;
      PszColor : Interfaces.C.Strings.Chars_Ptr;
      PnRed    : access Int;
      PnGreen  : access Int;
      PnBlue   : access Int;
      PnAlpha  : access Int) return Int  -- ../ogr_api.h:822
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_ST_GetRGBFromString";

   function OGR_STBL_Create return OGRStyleTableH  -- ../ogr_api.h:828
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_Create";

   procedure OGR_STBL_Destroy (HSTBL : OGRStyleTableH)  -- ../ogr_api.h:829
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_Destroy";

   function OGR_STBL_AddStyle
     (HStyleTable    : OGRStyleTableH;
      PszName        : Interfaces.C.Strings.Chars_Ptr;
      PszStyleString : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:830
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_AddStyle";

   function OGR_STBL_SaveStyleTable (HStyleTable : OGRStyleTableH; PszFilename : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:833
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_SaveStyleTable";

   function OGR_STBL_LoadStyleTable (HStyleTable : OGRStyleTableH; PszFilename : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../ogr_api.h:835
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_LoadStyleTable";

   function OGR_STBL_Find (HStyleTable : OGRStyleTableH; PszName : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:837
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_Find";

   procedure OGR_STBL_ResetStyleStringReading (HStyleTable : OGRStyleTableH)  -- ../ogr_api.h:838
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_ResetStyleStringReading";

   function OGR_STBL_GetNextStyle (HStyleTable : OGRStyleTableH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:839
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_GetNextStyle";

   function OGR_STBL_GetLastStyleName (HStyleTable : OGRStyleTableH) return Interfaces.C.Strings.Chars_Ptr  -- ../ogr_api.h:840
     with Import => True, 
     Convention => C, 
     External_Name => "OGR_STBL_GetLastStyleName";

end Gdalada.OGR;
