pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Gdalada.CPL; use Gdalada.CPL;
with Gdalada.OGR; use Gdalada.OGR;

package Gdalada.GDAL is

   RASTERIO_EXTRA_ARG_CURRENT_VERSION : constant := 1;  --  ../gdal.h:189
   --  arg-macro: procedure INIT_RASTERIO_EXTRA_ARG (s)
   --    do { (s).nVersion := RASTERIO_EXTRA_ARG_CURRENT_VERSION; (s).eResampleAlg := GRIORA_NearestNeighbour; (s).pfnProgress := CPL_NULLPTR; (s).pProgressData := CPL_NULLPTR; (s).bFloatingPointWindowValidity := FALSE; } while(0)

   GDALMD_AREA_OR_POINT               : aliased constant String := "AREA_OR_POINT" & ASCII.NUL;  --  ../gdal.h:243

   GDALMD_AOP_AREA                    : aliased constant String := "Area" & ASCII.NUL;  --  ../gdal.h:246

   GDALMD_AOP_POINT                   : aliased constant String := "Point" & ASCII.NUL;  --  ../gdal.h:249
   --  unsupported macro: CPLE_WrongFormat CPL_STATIC_CAST(CPLErrorNum, 200)

   GDAL_DMD_LONGNAME                  : aliased constant String := "DMD_LONGNAME" & ASCII.NUL;  --  ../gdal.h:318

   GDAL_DMD_HELPTOPIC                 : aliased constant String := "DMD_HELPTOPIC" & ASCII.NUL;  --  ../gdal.h:321

   GDAL_DMD_MIMETYPE                  : aliased constant String := "DMD_MIMETYPE" & ASCII.NUL;  --  ../gdal.h:324

   GDAL_DMD_EXTENSION                 : aliased constant String := "DMD_EXTENSION" & ASCII.NUL;  --  ../gdal.h:327

   GDAL_DMD_CONNECTION_PREFIX         : aliased constant String := "DMD_CONNECTION_PREFIX" & ASCII.NUL;  --  ../gdal.h:333

   GDAL_DMD_EXTENSIONS                : aliased constant String := "DMD_EXTENSIONS" & ASCII.NUL;  --  ../gdal.h:338

   GDAL_DMD_CREATIONOPTIONLIST        : aliased constant String := "DMD_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:341

   GDAL_DMD_MULTIDIM_DATASET_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_DATASET_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:346

   GDAL_DMD_MULTIDIM_GROUP_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_GROUP_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:351

   GDAL_DMD_MULTIDIM_DIMENSION_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_DIMENSION_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:356

   GDAL_DMD_MULTIDIM_ARRAY_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_ARRAY_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:361

   GDAL_DMD_MULTIDIM_ATTRIBUTE_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_ATTRIBUTE_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:366

   GDAL_DMD_OPENOPTIONLIST            : aliased constant String := "DMD_OPENOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:371

   GDAL_DMD_CREATIONDATATYPES         : aliased constant String := "DMD_CREATIONDATATYPES" & ASCII.NUL;  --  ../gdal.h:374

   GDAL_DMD_CREATIONFIELDDATATYPES    : aliased constant String := "DMD_CREATIONFIELDDATATYPES" & ASCII.NUL;  --  ../gdal.h:379

   GDAL_DMD_CREATIONFIELDDATASUBTYPES : aliased constant String := "DMD_CREATIONFIELDDATASUBTYPES" & ASCII.NUL;  --  ../gdal.h:384

   GDAL_DMD_SUBDATASETS               : aliased constant String := "DMD_SUBDATASETS" & ASCII.NUL;  --  ../gdal.h:387

   GDAL_DCAP_OPEN                     : aliased constant String := "DCAP_OPEN" & ASCII.NUL;  --  ../gdal.h:390

   GDAL_DCAP_CREATE                   : aliased constant String := "DCAP_CREATE" & ASCII.NUL;  --  ../gdal.h:400

   GDAL_DCAP_CREATE_MULTIDIMENSIONAL  : aliased constant String := "DCAP_CREATE_MULTIDIMENSIONAL" & ASCII.NUL;  --  ../gdal.h:406

   GDAL_DCAP_CREATECOPY               : aliased constant String := "DCAP_CREATECOPY" & ASCII.NUL;  --  ../gdal.h:416

   GDAL_DCAP_CREATECOPY_MULTIDIMENSIONAL : aliased constant String := "DCAP_CREATECOPY_MULTIDIMENSIONAL" & ASCII.NUL;  --  ../gdal.h:423

   GDAL_DCAP_MULTIDIM_RASTER          : aliased constant String := "DCAP_MULTIDIM_RASTER" & ASCII.NUL;  --  ../gdal.h:428

   GDAL_DCAP_SUBCREATECOPY            : aliased constant String := "DCAP_SUBCREATECOPY" & ASCII.NUL;  --  ../gdal.h:431

   GDAL_DCAP_VIRTUALIO                : aliased constant String := "DCAP_VIRTUALIO" & ASCII.NUL;  --  ../gdal.h:434

   GDAL_DCAP_RASTER                   : aliased constant String := "DCAP_RASTER" & ASCII.NUL;  --  ../gdal.h:439

   GDAL_DCAP_VECTOR                   : aliased constant String := "DCAP_VECTOR" & ASCII.NUL;  --  ../gdal.h:444

   GDAL_DCAP_GNM                      : aliased constant String := "DCAP_GNM" & ASCII.NUL;  --  ../gdal.h:449

   GDAL_DCAP_NOTNULL_FIELDS           : aliased constant String := "DCAP_NOTNULL_FIELDS" & ASCII.NUL;  --  ../gdal.h:454

   GDAL_DCAP_UNIQUE_FIELDS            : aliased constant String := "DCAP_UNIQUE_FIELDS" & ASCII.NUL;  --  ../gdal.h:459

   GDAL_DCAP_DEFAULT_FIELDS           : aliased constant String := "DCAP_DEFAULT_FIELDS" & ASCII.NUL;  --  ../gdal.h:464

   GDAL_DCAP_NOTNULL_GEOMFIELDS       : aliased constant String := "DCAP_NOTNULL_GEOMFIELDS" & ASCII.NUL;  --  ../gdal.h:469

   GDAL_DCAP_NONSPATIAL               : aliased constant String := "DCAP_NONSPATIAL" & ASCII.NUL;  --  ../gdal.h:476

   GDAL_DCAP_FEATURE_STYLES           : aliased constant String := "DCAP_FEATURE_STYLES" & ASCII.NUL;  --  ../gdal.h:481

   GDAL_DIM_TYPE_HORIZONTAL_X         : aliased constant String := "HORIZONTAL_X" & ASCII.NUL;  --  ../gdal.h:486

   GDAL_DIM_TYPE_HORIZONTAL_Y         : aliased constant String := "HORIZONTAL_Y" & ASCII.NUL;  --  ../gdal.h:491

   GDAL_DIM_TYPE_VERTICAL             : aliased constant String := "VERTICAL" & ASCII.NUL;  --  ../gdal.h:496

   GDAL_DIM_TYPE_TEMPORAL             : aliased constant String := "TEMPORAL" & ASCII.NUL;  --  ../gdal.h:501

   GDAL_DIM_TYPE_PARAMETRIC           : aliased constant String := "PARAMETRIC" & ASCII.NUL;  --  ../gdal.h:506

   GDAL_OF_READONLY                   : constant := 16#00#;  --  ../gdal.h:536

   GDAL_OF_UPDATE                     : constant := 16#01#;  --  ../gdal.h:542

   GDAL_OF_ALL                        : constant := 16#00#;  --  ../gdal.h:548

   GDAL_OF_RASTER                     : constant := 16#02#;  --  ../gdal.h:554

   GDAL_OF_VECTOR                     : constant := 16#04#;  --  ../gdal.h:560

   GDAL_OF_GNM                        : constant := 16#08#;  --  ../gdal.h:566

   GDAL_OF_MULTIDIM_RASTER            : constant := 16#10#;  --  ../gdal.h:572

   GDAL_OF_KIND_MASK                  : constant := 16#1E#;  --  ../gdal.h:575

   GDAL_OF_SHARED                     : constant := 16#20#;  --  ../gdal.h:582

   GDAL_OF_VERBOSE_ERROR              : constant := 16#40#;  --  ../gdal.h:588

   GDAL_OF_INTERNAL                   : constant := 16#80#;  --  ../gdal.h:596

   GDAL_OF_DEFAULT_BLOCK_ACCESS       : constant := 0;  --  ../gdal.h:607

   GDAL_OF_ARRAY_BLOCK_ACCESS         : constant := 16#100#;  --  ../gdal.h:617

   GDAL_OF_HASHSET_BLOCK_ACCESS       : constant := 16#200#;  --  ../gdal.h:627

   GDAL_OF_RESERVED_1                 : constant := 16#300#;  --  ../gdal.h:632

   GDAL_OF_BLOCK_ACCESS_MASK          : constant := 16#300#;  --  ../gdal.h:635

   GDAL_DS_LAYER_CREATIONOPTIONLIST   : aliased constant String := "DS_LAYER_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:738
   --  arg-macro: function SRCVAL (papoSource, eSrcType, ii)
   --    return eSrcType = GDT_Byte ? CPL_REINTERPRET_CAST(const GByte*,papoSource)(ii) : (eSrcType = GDT_Float32 ? CPL_REINTERPRET_CAST(const float*,papoSource)(ii) : (eSrcType = GDT_Float64 ? CPL_REINTERPRET_CAST(const double*,papoSource)(ii) : (eSrcType = GDT_Int32 ? CPL_REINTERPRET_CAST(const GInt32*,papoSource)(ii) : (eSrcType = GDT_UInt16 ? CPL_REINTERPRET_CAST(const GUInt16*,papoSource)(ii) : (eSrcType = GDT_Int16 ? CPL_REINTERPRET_CAST(const GInt16*,papoSource)(ii) : (eSrcType = GDT_UInt32 ? CPL_REINTERPRET_CAST(const GUInt32*,papoSource)(ii) : (eSrcType = GDT_CInt16 ? CPL_REINTERPRET_CAST(const GInt16*,papoSource)((ii) * 2) : (eSrcType = GDT_CInt32 ? CPL_REINTERPRET_CAST(const GInt32*,papoSource)((ii) * 2) : (eSrcType = GDT_CFloat32 ? CPL_REINTERPRET_CAST(const float*,papoSource)((ii) * 2) : (eSrcType = GDT_CFloat64 ? CPL_REINTERPRET_CAST(const double*,papoSource)((ii) * 2) : 0))))))))));

   GMF_ALL_VALID                      : constant := 16#01#;  --  ../gdal.h:1046

   GMF_PER_DATASET                    : constant := 16#02#;  --  ../gdal.h:1049

   GMF_ALPHA                          : constant := 16#04#;  --  ../gdal.h:1052

   GMF_NODATA                         : constant := 16#08#;  --  ../gdal.h:1055

   GDAL_DATA_COVERAGE_STATUS_UNIMPLEMENTED : constant := 16#01#;  --  ../gdal.h:1060

   GDAL_DATA_COVERAGE_STATUS_DATA     : constant := 16#02#;  --  ../gdal.h:1066

   GDAL_DATA_COVERAGE_STATUS_EMPTY    : constant := 16#04#;  --  ../gdal.h:1073
   --  unsupported macro: GDALRPCInfo GDALRPCInfoV2
   --  unsupported macro: GDALExtractRPCInfo GDALExtractRPCInfoV2

   type GDALDataType is 
     (GDT_Unknown,
      GDT_Byte,
      GDT_UInt16,
      GDT_Int16,
      GDT_UInt32,
      GDT_Int32,
      GDT_Float32,
      GDT_Float64,
      GDT_CInt16,
      GDT_CInt32,
      GDT_CFloat32,
      GDT_CFloat64,
      GDT_TypeCount)
     with Convention => C;  -- ../gdal.h:79

   function GDALGetDataTypeSize (Arg1 : GDALDataType) return Int  -- ../gdal.h:81
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDataTypeSize";

   function GDALGetDataTypeSizeBits (EDataType : GDALDataType) return Int  -- ../gdal.h:82
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDataTypeSizeBits";

   function GDALGetDataTypeSizeBytes (Arg1 : GDALDataType) return Int  -- ../gdal.h:83
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDataTypeSizeBytes";

   function GDALDataTypeIsComplex (Arg1 : GDALDataType) return Int  -- ../gdal.h:84
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDataTypeIsComplex";

   function GDALDataTypeIsInteger (Arg1 : GDALDataType) return Int  -- ../gdal.h:85
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDataTypeIsInteger";

   function GDALDataTypeIsFloating (Arg1 : GDALDataType) return Int  -- ../gdal.h:86
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDataTypeIsFloating";

   function GDALDataTypeIsSigned (Arg1 : GDALDataType) return Int  -- ../gdal.h:87
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDataTypeIsSigned";

   function GDALGetDataTypeName (Arg1 : GDALDataType) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:88
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDataTypeName";

   function GDALGetDataTypeByName (Arg1 : Interfaces.C.Strings.Chars_Ptr) return GDALDataType  -- ../gdal.h:89
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDataTypeByName";

   function GDALDataTypeUnion (Arg1 : GDALDataType; Arg2 : GDALDataType) return GDALDataType  -- ../gdal.h:90
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDataTypeUnion";

   function GDALDataTypeUnionWithValue
     (EDT      : GDALDataType;
      DValue   : Double;
      BComplex : Int) return GDALDataType  -- ../gdal.h:91
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDataTypeUnionWithValue";

   function GDALFindDataType
     (NBits     : Int;
      BSigned   : Int;
      BFloating : Int;
      BComplex  : Int) return GDALDataType  -- ../gdal.h:92
     with Import => True, 
     Convention => C, 
     External_Name => "GDALFindDataType";

   function GDALFindDataTypeForValue (DValue : Double; BComplex : Int) return GDALDataType  -- ../gdal.h:93
     with Import => True, 
     Convention => C, 
     External_Name => "GDALFindDataTypeForValue";

   function GDALAdjustValueToDataType
     (EDT       : GDALDataType;
      DfValue   : Double;
      PbClamped : access Int;
      PbRounded : access Int) return Double  -- ../gdal.h:94
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAdjustValueToDataType";

   function GDALGetNonComplexDataType (Arg1 : GDALDataType) return GDALDataType  -- ../gdal.h:95
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetNonComplexDataType";

   function GDALDataTypeIsConversionLossy (ETypeFrom : GDALDataType; ETypeTo : GDALDataType) return Int  -- ../gdal.h:96
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDataTypeIsConversionLossy";

   type GDALAsyncStatusType is 
     (GARIO_PENDING,
      GARIO_UPDATE,
      GARIO_ERROR,
      GARIO_COMPLETE,
      GARIO_TypeCount)
     with Convention => C;  -- ../gdal.h:109

   function GDALGetAsyncStatusTypeName (Arg1 : GDALAsyncStatusType) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:111
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetAsyncStatusTypeName";

   function GDALGetAsyncStatusTypeByName (Arg1 : Interfaces.C.Strings.Chars_Ptr) return GDALAsyncStatusType  -- ../gdal.h:112
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetAsyncStatusTypeByName";

   type GDALAccess is 
     (GA_ReadOnly,
      GA_Update)
     with Convention => C;  -- ../gdal.h:118

   type GDALRWFlag is 
     (GF_Read,
      GF_Write)
     with Convention => C;  -- ../gdal.h:124

   subtype GDALRIOResampleAlg is Unsigned;
   GRIORA_NearestNeighbour : constant GDALRIOResampleAlg := 0;
   GRIORA_Bilinear : constant GDALRIOResampleAlg := 1;
   GRIORA_Cubic : constant GDALRIOResampleAlg := 2;
   GRIORA_CubicSpline : constant GDALRIOResampleAlg := 3;
   GRIORA_Lanczos : constant GDALRIOResampleAlg := 4;
   GRIORA_Average : constant GDALRIOResampleAlg := 5;
   GRIORA_Mode : constant GDALRIOResampleAlg := 6;
   GRIORA_Gauss : constant GDALRIOResampleAlg := 7;
   GRIORA_RESERVED_START : constant GDALRIOResampleAlg := 8;
   GRIORA_RESERVED_END : constant GDALRIOResampleAlg := 13;
   GRIORA_RMS : constant GDALRIOResampleAlg := 14;
   GRIORA_LAST : constant GDALRIOResampleAlg := 14;  -- ../gdal.h:153

   type GDALRasterIOExtraArg is record
      NVersion                     : aliased Int;  -- ../gdal.h:163
      EResampleAlg                 : aliased GDALRIOResampleAlg;  -- ../gdal.h:166
      PfnProgress                  : GDALProgressFunc;  -- ../gdal.h:169
      PProgressData                : System.Address;  -- ../gdal.h:171
      BFloatingPointWindowValidity : aliased Int;  -- ../gdal.h:177
      DfXOff                       : aliased Double;  -- ../gdal.h:179
      DfYOff                       : aliased Double;  -- ../gdal.h:181
      DfXSize                      : aliased Double;  -- ../gdal.h:183
      DfYSize                      : aliased Double;  -- ../gdal.h:185
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal.h:186

   subtype GDALColorInterp is Unsigned;
   GCI_Undefined : constant GDALColorInterp := 0;
   GCI_GrayIndex : constant GDALColorInterp := 1;
   GCI_PaletteIndex : constant GDALColorInterp := 2;
   GCI_RedBand : constant GDALColorInterp := 3;
   GCI_GreenBand : constant GDALColorInterp := 4;
   GCI_BlueBand : constant GDALColorInterp := 5;
   GCI_AlphaBand : constant GDALColorInterp := 6;
   GCI_HueBand : constant GDALColorInterp := 7;
   GCI_SaturationBand : constant GDALColorInterp := 8;
   GCI_LightnessBand : constant GDALColorInterp := 9;
   GCI_CyanBand : constant GDALColorInterp := 10;
   GCI_MagentaBand : constant GDALColorInterp := 11;
   GCI_YellowBand : constant GDALColorInterp := 12;
   GCI_BlackBand : constant GDALColorInterp := 13;
   GCI_YCbCr_YBand : constant GDALColorInterp := 14;
   GCI_YCbCr_CbBand : constant GDALColorInterp := 15;
   GCI_YCbCr_CrBand : constant GDALColorInterp := 16;
   GCI_Max : constant GDALColorInterp := 16;  -- ../gdal.h:223

   function GDALGetColorInterpretationName (Arg1 : GDALColorInterp) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:225
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetColorInterpretationName";

   function GDALGetColorInterpretationByName (PszName : Interfaces.C.Strings.Chars_Ptr) return GDALColorInterp  -- ../gdal.h:226
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetColorInterpretationByName";

   type GDALPaletteInterp is 
     (GPI_Gray,
      GPI_RGB,
      GPI_CMYK,
      GPI_HLS)
     with Convention => C;  -- ../gdal.h:235

   function GDALGetPaletteInterpretationName (Arg1 : GDALPaletteInterp) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:237
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetPaletteInterpretationName";

   subtype GDALMajorObjectH is  System.Address;  -- ../gdal.h:265

   subtype GDALDatasetH is  System.Address;  -- ../gdal.h:268

   subtype GDALRasterBandH is  System.Address;  -- ../gdal.h:271

   subtype GDALDriverH is  System.Address;  -- ../gdal.h:274

   subtype GDALColorTableH is  System.Address;  -- ../gdal.h:277

   subtype GDALRasterAttributeTableH is  System.Address;  -- ../gdal.h:280

   subtype GDALAsyncReaderH is  System.Address;  -- ../gdal.h:283

   subtype GSpacing is GIntBig;  -- ../gdal.h:286

   type GDALExtendedDataTypeClass is 
     (GEDTC_NUMERIC,
      GEDTC_STRING,
      GEDTC_COMPOUND)
     with Convention => C;  -- ../gdal.h:298

   type GDALExtendedDataTypeHS is null record;   -- incomplete struct

   type GDALExtendedDataTypeH is access all GDALExtendedDataTypeHS;  -- ../gdal.h:301

   type GDALEDTComponentHS is null record;   -- incomplete struct

   type GDALEDTComponentH is access all GDALEDTComponentHS;  -- ../gdal.h:303

   type GDALGroupHS is null record;   -- incomplete struct

   type GDALGroupH is access all GDALGroupHS;  -- ../gdal.h:305

   type GDALMDArrayHS is null record;   -- incomplete struct

   type GDALMDArrayH is access all GDALMDArrayHS;  -- ../gdal.h:307

   type GDALAttributeHS is null record;   -- incomplete struct

   type GDALAttributeH is access all GDALAttributeHS;  -- ../gdal.h:309

   type GDALDimensionHS is null record;   -- incomplete struct

   type GDALDimensionH is access all GDALDimensionHS;  -- ../gdal.h:311

   procedure GDALAllRegister  -- ../gdal.h:509
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAllRegister";

   function GDALCreate
     (HDriver : GDALDriverH;
      Arg2    : Interfaces.C.Strings.Chars_Ptr;
      Arg3    : Int;
      Arg4    : Int;
      Arg5    : Int;
      Arg6    : GDALDataType;
      Arg7    : CSLConstList) return GDALDatasetH  -- ../gdal.h:511
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreate";

   function GDALCreateCopy
     (Arg1 : GDALDriverH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : GDALDatasetH;
      Arg4 : Int;
      Arg5 : CSLConstList;
      Arg6 : GDALProgressFunc;
      Arg7 : System.Address) return GDALDatasetH  -- ../gdal.h:515
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateCopy";

   function GDALIdentifyDriver (PszFilename : Interfaces.C.Strings.Chars_Ptr; PapszFileList : CSLConstList) return GDALDriverH  -- ../gdal.h:518
     with Import => True, 
     Convention => C, 
     External_Name => "GDALIdentifyDriver";

   function GDALIdentifyDriverEx
     (PszFilename         : Interfaces.C.Strings.Chars_Ptr;
      NIdentifyFlags      : Unsigned;
      PapszAllowedDrivers : System.Address;
      PapszFileList       : System.Address) return GDALDriverH  -- ../gdal.h:521
     with Import => True, 
     Convention => C, 
     External_Name => "GDALIdentifyDriverEx";

   function GDALOpen (PszFilename : Interfaces.C.Strings.Chars_Ptr; EAccess : GDALAccess) return GDALDatasetH  -- ../gdal.h:526
     with Import => True, 
     Convention => C, 
     External_Name => "GDALOpen";

   function GDALOpenShared (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : GDALAccess) return GDALDatasetH  -- ../gdal.h:527
     with Import => True, 
     Convention => C, 
     External_Name => "GDALOpenShared";

   function GDALOpenEx
     (PszFilename         : Interfaces.C.Strings.Chars_Ptr;
      NOpenFlags          : Unsigned;
      PapszAllowedDrivers : System.Address;
      PapszOpenOptions    : System.Address;
      PapszSiblingFiles   : System.Address) return GDALDatasetH  -- ../gdal.h:638
     with Import => True, 
     Convention => C, 
     External_Name => "GDALOpenEx";

   function GDALDumpOpenDatasets (Arg1 : Interfaces.C_Streams.FILEs) return Int  -- ../gdal.h:644
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDumpOpenDatasets";

   function GDALGetDriverByName (Arg1 : Interfaces.C.Strings.Chars_Ptr) return GDALDriverH  -- ../gdal.h:646
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDriverByName";

   function GDALGetDriverCount return Int  -- ../gdal.h:647
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDriverCount";

   function GDALGetDriver (Arg1 : Int) return GDALDriverH  -- ../gdal.h:648
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDriver";

   function GDALCreateDriver return GDALDriverH  -- ../gdal.h:649
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateDriver";

   procedure GDALDestroyDriver (Arg1 : GDALDriverH)  -- ../gdal.h:650
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyDriver";

   function GDALRegisterDriver (Arg1 : GDALDriverH) return Int  -- ../gdal.h:651
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRegisterDriver";

   procedure GDALDeregisterDriver (Arg1 : GDALDriverH)  -- ../gdal.h:652
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDeregisterDriver";

   procedure GDALDestroyDriverManager  -- ../gdal.h:653
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyDriverManager";

   procedure GDALDestroy  -- ../gdal.h:655
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroy";

   function GDALDeleteDataset (Arg1 : GDALDriverH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return CPLErr  -- ../gdal.h:657
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDeleteDataset";

   function GDALRenameDataset
     (Arg1       : GDALDriverH;
      PszNewName : Interfaces.C.Strings.Chars_Ptr;
      PszOldName : Interfaces.C.Strings.Chars_Ptr) return CPLErr  -- ../gdal.h:658
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRenameDataset";

   function GDALCopyDatasetFiles
     (Arg1       : GDALDriverH;
      PszNewName : Interfaces.C.Strings.Chars_Ptr;
      PszOldName : Interfaces.C.Strings.Chars_Ptr) return CPLErr  -- ../gdal.h:661
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCopyDatasetFiles";

   function GDALValidateCreationOptions (Arg1 : GDALDriverH; PapszCreationOptions : CSLConstList) return Int  -- ../gdal.h:664
     with Import => True, 
     Convention => C, 
     External_Name => "GDALValidateCreationOptions";

   function GDALGetDriverShortName (Arg1 : GDALDriverH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:668
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDriverShortName";

   function GDALGetDriverLongName (Arg1 : GDALDriverH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:669
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDriverLongName";

   function GDALGetDriverHelpTopic (Arg1 : GDALDriverH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:670
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDriverHelpTopic";

   function GDALGetDriverCreationOptionList (Arg1 : GDALDriverH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:671
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDriverCreationOptionList";

   type GDAL_GCP is record
      PszId      : Interfaces.C.Strings.Chars_Ptr;  -- ../gdal.h:681
      PszInfo    : Interfaces.C.Strings.Chars_Ptr;  -- ../gdal.h:684
      DfGCPPixel : aliased Double;  -- ../gdal.h:687
      DfGCPLine  : aliased Double;  -- ../gdal.h:689
      DfGCPX     : aliased Double;  -- ../gdal.h:692
      DfGCPY     : aliased Double;  -- ../gdal.h:695
      DfGCPZ     : aliased Double;  -- ../gdal.h:698
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal.h:699

   procedure GDALInitGCPs (Arg1 : Int; Arg2 : access GDAL_GCP)  -- ../gdal.h:701
     with Import => True, 
     Convention => C, 
     External_Name => "GDALInitGCPs";

   procedure GDALDeinitGCPs (Arg1 : Int; Arg2 : access GDAL_GCP)  -- ../gdal.h:702
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDeinitGCPs";

   function GDALDuplicateGCPs (Arg1 : Int; Arg2 : access constant GDAL_GCP) return access GDAL_GCP  -- ../gdal.h:703
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDuplicateGCPs";

   function GDALGCPsToGeoTransform
     (NGCPCount        : Int;
      PasGCPs          : access constant GDAL_GCP;
      PadfGeoTransform : access Double;
      BApproxOK        : Int) return Int  -- ../gdal.h:706
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGCPsToGeoTransform";

   function GDALInvGeoTransform (PadfGeoTransformIn : access Double; PadfInvGeoTransformOut : access Double) return Int  -- ../gdal.h:709
     with Import => True, 
     Convention => C, 
     External_Name => "GDALInvGeoTransform";

   procedure GDALApplyGeoTransform
     (Arg1 : access Double;
      Arg2 : Double;
      Arg3 : Double;
      Arg4 : access Double;
      Arg5 : access Double)  -- ../gdal.h:711
     with Import => True, 
     Convention => C, 
     External_Name => "GDALApplyGeoTransform";

   procedure GDALComposeGeoTransforms
     (PadfGeoTransform1   : access Double;
      PadfGeoTransform2   : access Double;
      PadfGeoTransformOut : access Double)  -- ../gdal.h:713
     with Import => True, 
     Convention => C, 
     External_Name => "GDALComposeGeoTransforms";

   function GDALGetMetadataDomainList (HObject : GDALMajorObjectH) return System.Address  -- ../gdal.h:721
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetMetadataDomainList";

   function GDALGetMetadata (Arg1 : GDALMajorObjectH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return System.Address  -- ../gdal.h:722
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetMetadata";

   function GDALSetMetadata
     (Arg1 : GDALMajorObjectH;
      Arg2 : CSLConstList;
      Arg3 : Interfaces.C.Strings.Chars_Ptr) return CPLErr  -- ../gdal.h:723
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetMetadata";

   function GDALGetMetadataItem
     (Arg1 : GDALMajorObjectH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:726
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetMetadataItem";

   function GDALSetMetadataItem
     (Arg1 : GDALMajorObjectH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : Interfaces.C.Strings.Chars_Ptr) return CPLErr  -- ../gdal.h:728
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetMetadataItem";

   function GDALGetDescription (Arg1 : GDALMajorObjectH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:730
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDescription";

   procedure GDALSetDescription (Arg1 : GDALMajorObjectH; Arg2 : Interfaces.C.Strings.Chars_Ptr)  -- ../gdal.h:731
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetDescription";

   function GDALGetDatasetDriver (Arg1 : GDALDatasetH) return GDALDriverH  -- ../gdal.h:740
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDatasetDriver";

   function GDALGetFileList (Arg1 : GDALDatasetH) return System.Address  -- ../gdal.h:741
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetFileList";

   procedure GDALClose (Arg1 : GDALDatasetH)  -- ../gdal.h:742
     with Import => True, 
     Convention => C, 
     External_Name => "GDALClose";

   function GDALGetRasterXSize (Arg1 : GDALDatasetH) return Int  -- ../gdal.h:743
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterXSize";

   function GDALGetRasterYSize (Arg1 : GDALDatasetH) return Int  -- ../gdal.h:744
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterYSize";

   function GDALGetRasterCount (Arg1 : GDALDatasetH) return Int  -- ../gdal.h:745
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterCount";

   function GDALGetRasterBand (Arg1 : GDALDatasetH; Arg2 : Int) return GDALRasterBandH  -- ../gdal.h:746
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterBand";

   function GDALAddBand
     (HDS          : GDALDatasetH;
      EType        : GDALDataType;
      PapszOptions : CSLConstList) return CPLErr  -- ../gdal.h:748
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAddBand";

   function GDALBeginAsyncReader
     (HDS          : GDALDatasetH;
      NXOff        : Int;
      NYOff        : Int;
      NXSize       : Int;
      NYSize       : Int;
      PBuf         : System.Address;
      NBufXSize    : Int;
      NBufYSize    : Int;
      EBufType     : GDALDataType;
      NBandCount   : Int;
      PanBandMap   : access Int;
      NPixelSpace  : Int;
      NLineSpace   : Int;
      NBandSpace   : Int;
      PapszOptions : CSLConstList) return GDALAsyncReaderH  -- ../gdal.h:752
     with Import => True, 
     Convention => C, 
     External_Name => "GDALBeginAsyncReader";

   procedure GDALEndAsyncReader (HDS : GDALDatasetH; HAsynchReaderH : GDALAsyncReaderH)  -- ../gdal.h:760
     with Import => True, 
     Convention => C, 
     External_Name => "GDALEndAsyncReader";

   function GDALDatasetRasterIO
     (HDS          : GDALDatasetH;
      ERWFlag      : GDALRWFlag;
      NDSXOff      : Int;
      NDSYOff      : Int;
      NDSXSize     : Int;
      NDSYSize     : Int;
      PBuffer      : System.Address;
      NBXSize      : Int;
      NBYSize      : Int;
      EBDataType   : GDALDataType;
      NBandCount   : Int;
      PanBandCount : access Int;
      NPixelSpace  : Int;
      NLineSpace   : Int;
      NBandSpace   : Int) return CPLErr  -- ../gdal.h:762
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetRasterIO";

   function GDALDatasetRasterIOEx
     (HDS          : GDALDatasetH;
      ERWFlag      : GDALRWFlag;
      NDSXOff      : Int;
      NDSYOff      : Int;
      NDSXSize     : Int;
      NDSYSize     : Int;
      PBuffer      : System.Address;
      NBXSize      : Int;
      NBYSize      : Int;
      EBDataType   : GDALDataType;
      NBandCount   : Int;
      PanBandCount : access Int;
      NPixelSpace  : GSpacing;
      NLineSpace   : GSpacing;
      NBandSpace   : GSpacing;
      PsExtraArg   : access GDALRasterIOExtraArg) return CPLErr  -- ../gdal.h:769
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetRasterIOEx";

   function GDALDatasetAdviseRead
     (HDS          : GDALDatasetH;
      NDSXOff      : Int;
      NDSYOff      : Int;
      NDSXSize     : Int;
      NDSYSize     : Int;
      NBXSize      : Int;
      NBYSize      : Int;
      EBDataType   : GDALDataType;
      NBandCount   : Int;
      PanBandCount : access Int;
      PapszOptions : CSLConstList) return CPLErr  -- ../gdal.h:777
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetAdviseRead";

   function GDALGetProjectionRef (Arg1 : GDALDatasetH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:782
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetProjectionRef";

   function GDALGetSpatialRef (Arg1 : GDALDatasetH) return OGRSpatialReferenceH  -- ../gdal.h:783
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetSpatialRef";

   function GDALSetProjection (Arg1 : GDALDatasetH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return CPLErr  -- ../gdal.h:784
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetProjection";

   function GDALSetSpatialRef (Arg1 : GDALDatasetH; Arg2 : OGRSpatialReferenceH) return CPLErr  -- ../gdal.h:785
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetSpatialRef";

   function GDALGetGeoTransform (Arg1 : GDALDatasetH; Arg2 : access Double) return CPLErr  -- ../gdal.h:786
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetGeoTransform";

   function GDALSetGeoTransform (Arg1 : GDALDatasetH; Arg2 : access Double) return CPLErr  -- ../gdal.h:787
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetGeoTransform";

   function GDALGetGCPCount (Arg1 : GDALDatasetH) return Int  -- ../gdal.h:789
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetGCPCount";

   function GDALGetGCPProjection (Arg1 : GDALDatasetH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:790
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetGCPProjection";

   function GDALGetGCPSpatialRef (Arg1 : GDALDatasetH) return OGRSpatialReferenceH  -- ../gdal.h:791
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetGCPSpatialRef";

   function GDALGetGCPs (Arg1 : GDALDatasetH) return access constant GDAL_GCP  -- ../gdal.h:792
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetGCPs";

   function GDALSetGCPs
     (Arg1 : GDALDatasetH;
      Arg2 : Int;
      Arg3 : access constant GDAL_GCP;
      Arg4 : Interfaces.C.Strings.Chars_Ptr) return CPLErr  -- ../gdal.h:793
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetGCPs";

   function GDALSetGCPs2
     (Arg1 : GDALDatasetH;
      Arg2 : Int;
      Arg3 : access constant GDAL_GCP;
      Arg4 : OGRSpatialReferenceH) return CPLErr  -- ../gdal.h:795
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetGCPs2";

   function GDALGetInternalHandle (Arg1 : GDALDatasetH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return System.Address  -- ../gdal.h:798
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetInternalHandle";

   function GDALReferenceDataset (Arg1 : GDALDatasetH) return Int  -- ../gdal.h:799
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReferenceDataset";

   function GDALDereferenceDataset (Arg1 : GDALDatasetH) return Int  -- ../gdal.h:800
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDereferenceDataset";

   function GDALReleaseDataset (Arg1 : GDALDatasetH) return Int  -- ../gdal.h:801
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReleaseDataset";

   function GDALBuildOverviews
     (Arg1 : GDALDatasetH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int;
      Arg4 : access Int;
      Arg5 : Int;
      Arg6 : access Int;
      Arg7 : GDALProgressFunc;
      Arg8 : System.Address) return CPLErr  -- ../gdal.h:804
     with Import => True, 
     Convention => C, 
     External_Name => "GDALBuildOverviews";

   procedure GDALGetOpenDatasets (HDS : System.Address; PnCount : access Int)  -- ../gdal.h:806
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetOpenDatasets";

   function GDALGetAccess (HDS : GDALDatasetH) return Int  -- ../gdal.h:807
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetAccess";

   procedure GDALFlushCache (HDS : GDALDatasetH)  -- ../gdal.h:808
     with Import => True, 
     Convention => C, 
     External_Name => "GDALFlushCache";

   function GDALCreateDatasetMaskBand (HDS : GDALDatasetH; NFlags : Int) return CPLErr  -- ../gdal.h:811
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateDatasetMaskBand";

   function GDALDatasetCopyWholeRaster
     (HSrcDS        : GDALDatasetH;
      HDstDS        : GDALDatasetH;
      PapszOptions  : CSLConstList;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address) return CPLErr  -- ../gdal.h:813
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetCopyWholeRaster";

   function GDALRasterBandCopyWholeRaster
     (HSrcBand          : GDALRasterBandH;
      HDstBand          : GDALRasterBandH;
      ConstpapszOptions : System.Address;
      PfnProgress       : GDALProgressFunc;
      PProgressData     : System.Address) return CPLErr  -- ../gdal.h:817
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterBandCopyWholeRaster";

   function GDALRegenerateOverviews
     (HSrcBand         : GDALRasterBandH;
      NOverviewCount   : Int;
      PahOverviewBands : System.Address;
      PszResampling    : Interfaces.C.Strings.Chars_Ptr;
      PfnProgress      : GDALProgressFunc;
      PProgressData    : System.Address) return CPLErr  -- ../gdal.h:823
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRegenerateOverviews";

   function GDALDatasetGetLayerCount (Arg1 : GDALDatasetH) return Int  -- ../gdal.h:828
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetLayerCount";

   function GDALDatasetGetLayer (Arg1 : GDALDatasetH; Arg2 : Int) return OGRLayerH  -- ../gdal.h:829
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetLayer";

   function GDALDatasetGetLayerByName (Arg1 : GDALDatasetH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return OGRLayerH  -- ../gdal.h:830
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetLayerByName";

   function GDALDatasetDeleteLayer (Arg1 : GDALDatasetH; Arg2 : Int) return OGRErr  -- ../gdal.h:831
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetDeleteLayer";

   function GDALDatasetCreateLayer
     (Arg1 : GDALDatasetH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : OGRSpatialReferenceH;
      Arg4 : OGRwkbGeometryType;
      Arg5 : CSLConstList) return OGRLayerH  -- ../gdal.h:832
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetCreateLayer";

   function GDALDatasetCopyLayer
     (Arg1 : GDALDatasetH;
      Arg2 : OGRLayerH;
      Arg3 : Interfaces.C.Strings.Chars_Ptr;
      Arg4 : CSLConstList) return OGRLayerH  -- ../gdal.h:835
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetCopyLayer";

   procedure GDALDatasetResetReading (Arg1 : GDALDatasetH)  -- ../gdal.h:837
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetResetReading";

   function GDALDatasetGetNextFeature
     (HDS              : GDALDatasetH;
      PhBelongingLayer : System.Address;
      PdfProgressPct   : access Double;
      PfnProgress      : GDALProgressFunc;
      PProgressData    : System.Address) return OGRFeatureH  -- ../gdal.h:838
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetNextFeature";

   function GDALDatasetTestCapability (Arg1 : GDALDatasetH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../gdal.h:843
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetTestCapability";

   function GDALDatasetExecuteSQL
     (Arg1 : GDALDatasetH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : OGRGeometryH;
      Arg4 : Interfaces.C.Strings.Chars_Ptr) return OGRLayerH  -- ../gdal.h:844
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetExecuteSQL";

   function GDALDatasetAbortSQL (Arg1 : GDALDatasetH) return OGRErr  -- ../gdal.h:846
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetAbortSQL";

   procedure GDALDatasetReleaseResultSet (Arg1 : GDALDatasetH; Arg2 : OGRLayerH)  -- ../gdal.h:847
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetReleaseResultSet";

   function GDALDatasetGetStyleTable (Arg1 : GDALDatasetH) return OGRStyleTableH  -- ../gdal.h:848
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetStyleTable";

   procedure GDALDatasetSetStyleTableDirectly (Arg1 : GDALDatasetH; Arg2 : OGRStyleTableH)  -- ../gdal.h:849
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetSetStyleTableDirectly";

   procedure GDALDatasetSetStyleTable (Arg1 : GDALDatasetH; Arg2 : OGRStyleTableH)  -- ../gdal.h:850
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetSetStyleTable";

   function GDALDatasetStartTransaction (HDS : GDALDatasetH; BForce : Int) return OGRErr  -- ../gdal.h:851
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetStartTransaction";

   function GDALDatasetCommitTransaction (HDS : GDALDatasetH) return OGRErr  -- ../gdal.h:852
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetCommitTransaction";

   function GDALDatasetRollbackTransaction (HDS : GDALDatasetH) return OGRErr  -- ../gdal.h:853
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetRollbackTransaction";

   procedure GDALDatasetClearStatistics (HDS : GDALDatasetH)  -- ../gdal.h:854
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetClearStatistics";

   function GDALDatasetGetFieldDomain (HDS : GDALDatasetH; PszName : Interfaces.C.Strings.Chars_Ptr) return OGRFieldDomainH  -- ../gdal.h:856
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetFieldDomain";

   function GDALDatasetAddFieldDomain
     (HDS               : GDALDatasetH;
      HFieldDomain      : OGRFieldDomainH;
      PpszFailureReason : System.Address) return Extensions.Bool  -- ../gdal.h:858
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetAddFieldDomain";

   type GDALDerivedPixelFunc is access function
     (Arg1 : System.Address;
      Arg2 : Int;
      Arg3 : System.Address;
      Arg4 : Int;
      Arg5 : Int;
      Arg6 : GDALDataType;
      Arg7 : GDALDataType;
      Arg8 : Int;
      Arg9 : Int) return CPLErr
     with Convention => C;  -- ../gdal.h:897

   function GDALGetRasterDataType (Arg1 : GDALRasterBandH) return GDALDataType  -- ../gdal.h:902
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterDataType";

   procedure GDALGetBlockSize
     (Arg1    : GDALRasterBandH;
      PnXSize : access Int;
      PnYSize : access Int)  -- ../gdal.h:904
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetBlockSize";

   function GDALGetActualBlockSize
     (Arg1       : GDALRasterBandH;
      NXBlockOff : Int;
      NYBlockOff : Int;
      PnXValid   : access Int;
      PnYValid   : access Int) return CPLErr  -- ../gdal.h:907
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetActualBlockSize";

   function GDALRasterAdviseRead
     (HRB          : GDALRasterBandH;
      NDSXOff      : Int;
      NDSYOff      : Int;
      NDSXSize     : Int;
      NDSYSize     : Int;
      NBXSize      : Int;
      NBYSize      : Int;
      EBDataType   : GDALDataType;
      PapszOptions : CSLConstList) return CPLErr  -- ../gdal.h:910
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterAdviseRead";

   function GDALRasterIO
     (HRBand      : GDALRasterBandH;
      ERWFlag     : GDALRWFlag;
      NDSXOff     : Int;
      NDSYOff     : Int;
      NDSXSize    : Int;
      NDSYSize    : Int;
      PBuffer     : System.Address;
      NBXSize     : Int;
      NBYSize     : Int;
      EBDataType  : GDALDataType;
      NPixelSpace : Int;
      NLineSpace  : Int) return CPLErr  -- ../gdal.h:915
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterIO";

   function GDALRasterIOEx
     (HRBand      : GDALRasterBandH;
      ERWFlag     : GDALRWFlag;
      NDSXOff     : Int;
      NDSYOff     : Int;
      NDSXSize    : Int;
      NDSYSize    : Int;
      PBuffer     : System.Address;
      NBXSize     : Int;
      NBYSize     : Int;
      EBDataType  : GDALDataType;
      NPixelSpace : GSpacing;
      NLineSpace  : GSpacing;
      PsExtraArg  : access GDALRasterIOExtraArg) return CPLErr  -- ../gdal.h:920
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterIOEx";

   function GDALReadBlock
     (Arg1 : GDALRasterBandH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : System.Address) return CPLErr  -- ../gdal.h:925
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReadBlock";

   function GDALWriteBlock
     (Arg1 : GDALRasterBandH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : System.Address) return CPLErr  -- ../gdal.h:926
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWriteBlock";

   function GDALGetRasterBandXSize (Arg1 : GDALRasterBandH) return Int  -- ../gdal.h:927
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterBandXSize";

   function GDALGetRasterBandYSize (Arg1 : GDALRasterBandH) return Int  -- ../gdal.h:928
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterBandYSize";

   function GDALGetRasterAccess (Arg1 : GDALRasterBandH) return GDALAccess  -- ../gdal.h:929
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterAccess";

   function GDALGetBandNumber (Arg1 : GDALRasterBandH) return Int  -- ../gdal.h:930
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetBandNumber";

   function GDALGetBandDataset (Arg1 : GDALRasterBandH) return GDALDatasetH  -- ../gdal.h:931
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetBandDataset";

   function GDALGetRasterColorInterpretation (Arg1 : GDALRasterBandH) return GDALColorInterp  -- ../gdal.h:934
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterColorInterpretation";

   function GDALSetRasterColorInterpretation (Arg1 : GDALRasterBandH; Arg2 : GDALColorInterp) return CPLErr  -- ../gdal.h:936
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetRasterColorInterpretation";

   function GDALGetRasterColorTable (Arg1 : GDALRasterBandH) return GDALColorTableH  -- ../gdal.h:937
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterColorTable";

   function GDALSetRasterColorTable (Arg1 : GDALRasterBandH; Arg2 : GDALColorTableH) return CPLErr  -- ../gdal.h:938
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetRasterColorTable";

   function GDALHasArbitraryOverviews (Arg1 : GDALRasterBandH) return Int  -- ../gdal.h:939
     with Import => True, 
     Convention => C, 
     External_Name => "GDALHasArbitraryOverviews";

   function GDALGetOverviewCount (Arg1 : GDALRasterBandH) return Int  -- ../gdal.h:940
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetOverviewCount";

   function GDALGetOverview (Arg1 : GDALRasterBandH; Arg2 : Int) return GDALRasterBandH  -- ../gdal.h:941
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetOverview";

   function GDALGetRasterNoDataValue (Arg1 : GDALRasterBandH; Arg2 : access Int) return Double  -- ../gdal.h:942
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterNoDataValue";

   function GDALSetRasterNoDataValue (Arg1 : GDALRasterBandH; Arg2 : Double) return CPLErr  -- ../gdal.h:943
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetRasterNoDataValue";

   function GDALDeleteRasterNoDataValue (Arg1 : GDALRasterBandH) return CPLErr  -- ../gdal.h:944
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDeleteRasterNoDataValue";

   function GDALGetRasterCategoryNames (Arg1 : GDALRasterBandH) return System.Address  -- ../gdal.h:945
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterCategoryNames";

   function GDALSetRasterCategoryNames (Arg1 : GDALRasterBandH; Arg2 : CSLConstList) return CPLErr  -- ../gdal.h:946
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetRasterCategoryNames";

   function GDALGetRasterMinimum (Arg1 : GDALRasterBandH; PbSuccess : access Int) return Double  -- ../gdal.h:947
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterMinimum";

   function GDALGetRasterMaximum (Arg1 : GDALRasterBandH; PbSuccess : access Int) return Double  -- ../gdal.h:948
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterMaximum";

   function GDALGetRasterStatistics
     (Arg1      : GDALRasterBandH;
      BApproxOK : Int;
      BForce    : Int;
      PdfMin    : access Double;
      PdfMax    : access Double;
      PdfMean   : access Double;
      PdfStdDev : access Double) return CPLErr  -- ../gdal.h:949
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterStatistics";

   function GDALComputeRasterStatistics
     (Arg1          : GDALRasterBandH;
      BApproxOK     : Int;
      PdfMin        : access Double;
      PdfMax        : access Double;
      PdfMean       : access Double;
      PdfStdDev     : access Double;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address) return CPLErr  -- ../gdal.h:952
     with Import => True, 
     Convention => C, 
     External_Name => "GDALComputeRasterStatistics";

   function GDALSetRasterStatistics
     (HBand    : GDALRasterBandH;
      DfMin    : Double;
      DfMax    : Double;
      DfMean   : Double;
      DfStdDev : Double) return CPLErr  -- ../gdal.h:956
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetRasterStatistics";

   function GDALRasterBandAsMDArray (Arg1 : GDALRasterBandH) return GDALMDArrayH  -- ../gdal.h:960
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterBandAsMDArray";

   function GDALGetRasterUnitType (Arg1 : GDALRasterBandH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:962
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterUnitType";

   function GDALSetRasterUnitType (HBand : GDALRasterBandH; PszNewValue : Interfaces.C.Strings.Chars_Ptr) return CPLErr  -- ../gdal.h:963
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetRasterUnitType";

   function GDALGetRasterOffset (Arg1 : GDALRasterBandH; PbSuccess : access Int) return Double  -- ../gdal.h:964
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterOffset";

   function GDALSetRasterOffset (HBand : GDALRasterBandH; DfNewOffset : Double) return CPLErr  -- ../gdal.h:965
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetRasterOffset";

   function GDALGetRasterScale (Arg1 : GDALRasterBandH; PbSuccess : access Int) return Double  -- ../gdal.h:966
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterScale";

   function GDALSetRasterScale (HBand : GDALRasterBandH; DfNewOffset : Double) return CPLErr  -- ../gdal.h:967
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetRasterScale";

   procedure GDALComputeRasterMinMax
     (HBand     : GDALRasterBandH;
      BApproxOK : Int;
      AdfMinMax : access Double)  -- ../gdal.h:969
     with Import => True, 
     Convention => C, 
     External_Name => "GDALComputeRasterMinMax";

   function GDALFlushRasterCache (HBand : GDALRasterBandH) return CPLErr  -- ../gdal.h:971
     with Import => True, 
     Convention => C, 
     External_Name => "GDALFlushRasterCache";

   function GDALGetRasterHistogram
     (HBand              : GDALRasterBandH;
      DfMin              : Double;
      DfMax              : Double;
      NBuckets           : Int;
      PanHistogram       : access Int;
      BIncludeOutOfRange : Int;
      BApproxOK          : Int;
      PfnProgress        : GDALProgressFunc;
      PProgressData      : System.Address) return CPLErr  -- ../gdal.h:972
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterHistogram";

   function GDALGetRasterHistogramEx
     (HBand              : GDALRasterBandH;
      DfMin              : Double;
      DfMax              : Double;
      NBuckets           : Int;
      PanHistogram       : access GUIntBig;
      BIncludeOutOfRange : Int;
      BApproxOK          : Int;
      PfnProgress        : GDALProgressFunc;
      PProgressData      : System.Address) return CPLErr  -- ../gdal.h:982
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterHistogramEx";

   function GDALGetDefaultHistogram
     (HBand         : GDALRasterBandH;
      PdfMin        : access Double;
      PdfMax        : access Double;
      PnBuckets     : access Int;
      PpanHistogram : System.Address;
      BForce        : Int;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address) return CPLErr  -- ../gdal.h:988
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDefaultHistogram";

   function GDALGetDefaultHistogramEx
     (HBand         : GDALRasterBandH;
      PdfMin        : access Double;
      PdfMax        : access Double;
      PnBuckets     : access Int;
      PpanHistogram : System.Address;
      BForce        : Int;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address) return CPLErr  -- ../gdal.h:998
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDefaultHistogramEx";

   function GDALSetDefaultHistogram
     (HBand        : GDALRasterBandH;
      DfMin        : Double;
      DfMax        : Double;
      NBuckets     : Int;
      PanHistogram : access Int) return CPLErr  -- ../gdal.h:1004
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetDefaultHistogram";

   function GDALSetDefaultHistogramEx
     (HBand        : GDALRasterBandH;
      DfMin        : Double;
      DfMax        : Double;
      NBuckets     : Int;
      PanHistogram : access GUIntBig) return CPLErr  -- ../gdal.h:1011
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetDefaultHistogramEx";

   function GDALGetRandomRasterSample
     (Arg1 : GDALRasterBandH;
      Arg2 : Int;
      Arg3 : access Float) return Int  -- ../gdal.h:1015
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRandomRasterSample";

   function GDALGetRasterSampleOverview (Arg1 : GDALRasterBandH; Arg2 : Int) return GDALRasterBandH  -- ../gdal.h:1017
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterSampleOverview";

   function GDALGetRasterSampleOverviewEx (Arg1 : GDALRasterBandH; Arg2 : GUIntBig) return GDALRasterBandH  -- ../gdal.h:1019
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetRasterSampleOverviewEx";

   function GDALFillRaster
     (HBand            : GDALRasterBandH;
      DfRealValue      : Double;
      DfImaginaryValue : Double) return CPLErr  -- ../gdal.h:1020
     with Import => True, 
     Convention => C, 
     External_Name => "GDALFillRaster";

   function GDALComputeBandStats
     (HBand         : GDALRasterBandH;
      NSampleStep   : Int;
      PdfMean       : access Double;
      PdfStdDev     : access Double;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address) return CPLErr  -- ../gdal.h:1023
     with Import => True, 
     Convention => C, 
     External_Name => "GDALComputeBandStats";

   function GDALOverviewMagnitudeCorrection
     (HBaseBand      : GDALRasterBandH;
      NOverviewCount : Int;
      PahOverviews   : System.Address;
      PfnProgress    : GDALProgressFunc;
      PProgressData  : System.Address) return CPLErr  -- ../gdal.h:1027
     with Import => True, 
     Convention => C, 
     External_Name => "GDALOverviewMagnitudeCorrection";

   function GDALGetDefaultRAT (HBand : GDALRasterBandH) return GDALRasterAttributeTableH  -- ../gdal.h:1033
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDefaultRAT";

   function GDALSetDefaultRAT (Arg1 : GDALRasterBandH; Arg2 : GDALRasterAttributeTableH) return CPLErr  -- ../gdal.h:1035
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetDefaultRAT";

   function GDALAddDerivedBandPixelFunc (PszName : Interfaces.C.Strings.Chars_Ptr; PfnPixelFunc : GDALDerivedPixelFunc) return CPLErr  -- ../gdal.h:1037
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAddDerivedBandPixelFunc";

   function GDALGetMaskBand (HBand : GDALRasterBandH) return GDALRasterBandH  -- ../gdal.h:1040
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetMaskBand";

   function GDALGetMaskFlags (HBand : GDALRasterBandH) return Int  -- ../gdal.h:1041
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetMaskFlags";

   function GDALCreateMaskBand (HBand : GDALRasterBandH; NFlags : Int) return CPLErr  -- ../gdal.h:1043
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateMaskBand";

   function GDALGetDataCoverageStatus
     (HBand         : GDALRasterBandH;
      NXOff         : Int;
      NYOff         : Int;
      NXSize        : Int;
      NYSize        : Int;
      NMaskFlagStop : Int;
      PdfDataPct    : access Double) return Int  -- ../gdal.h:1075
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetDataCoverageStatus";

   function GDALARGetNextUpdatedRegion
     (HARIO      : GDALAsyncReaderH;
      DfTimeout  : Double;
      PnXBufOff  : access Int;
      PnYBufOff  : access Int;
      PnXBufSize : access Int;
      PnYBufSize : access Int) return GDALAsyncStatusType  -- ../gdal.h:1086
     with Import => True, 
     Convention => C, 
     External_Name => "GDALARGetNextUpdatedRegion";

   function GDALARLockBuffer (HARIO : GDALAsyncReaderH; DfTimeout : Double) return Int  -- ../gdal.h:1089
     with Import => True, 
     Convention => C, 
     External_Name => "GDALARLockBuffer";

   procedure GDALARUnlockBuffer (HARIO : GDALAsyncReaderH)  -- ../gdal.h:1091
     with Import => True, 
     Convention => C, 
     External_Name => "GDALARUnlockBuffer";

   function GDALGeneralCmdLineProcessor
     (NArgc      : Int;
      PpapszArgv : System.Address;
      NOptions   : Int) return Int  -- ../gdal.h:1096
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGeneralCmdLineProcessor";

   procedure GDALSwapWords
     (PData      : System.Address;
      NWordSize  : Int;
      NWordCount : Int;
      NWordSkip  : Int)  -- ../gdal.h:1098
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSwapWords";

   procedure GDALSwapWordsEx
     (PData      : System.Address;
      NWordSize  : Int;
      NWordCount : Size_T;
      NWordSkip  : Int)  -- ../gdal.h:1100
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSwapWordsEx";

   procedure GDALCopyWords
     (PSrcData        : System.Address;
      ESrcType        : GDALDataType;
      NSrcPixelOffset : Int;
      PDstData        : System.Address;
      EDstType        : GDALDataType;
      NDstPixelOffset : Int;
      NWordCount      : Int)  -- ../gdal.h:1104
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCopyWords";

   procedure GDALCopyWords64
     (PSrcData        : System.Address;
      ESrcType        : GDALDataType;
      NSrcPixelOffset : Int;
      PDstData        : System.Address;
      EDstType        : GDALDataType;
      NDstPixelOffset : Int;
      NWordCount      : GPtrDiff_T)  -- ../gdal.h:1111
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCopyWords64";

   procedure GDALCopyBits
     (PabySrcData : access GByte;
      NSrcOffset  : Int;
      NSrcStep    : Int;
      PabyDstData : access GByte;
      NDstOffset  : Int;
      NDstStep    : Int;
      NBitCount   : Int;
      NStepCount  : Int)  -- ../gdal.h:1118
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCopyBits";

   function GDALLoadWorldFile (Arg1 : Interfaces.C.Strings.Chars_Ptr; Arg2 : access Double) return Int  -- ../gdal.h:1122
     with Import => True, 
     Convention => C, 
     External_Name => "GDALLoadWorldFile";

   function GDALReadWorldFile
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : access Double) return Int  -- ../gdal.h:1123
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReadWorldFile";

   function GDALWriteWorldFile
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : access Double) return Int  -- ../gdal.h:1125
     with Import => True, 
     Convention => C, 
     External_Name => "GDALWriteWorldFile";

   function GDALLoadTabFile
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : access Double;
      Arg3 : System.Address;
      Arg4 : access Int;
      Arg5 : System.Address) return Int  -- ../gdal.h:1127
     with Import => True, 
     Convention => C, 
     External_Name => "GDALLoadTabFile";

   function GDALReadTabFile
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : access Double;
      Arg3 : System.Address;
      Arg4 : access Int;
      Arg5 : System.Address) return Int  -- ../gdal.h:1129
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReadTabFile";

   function GDALLoadOziMapFile
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : access Double;
      Arg3 : System.Address;
      Arg4 : access Int;
      Arg5 : System.Address) return Int  -- ../gdal.h:1131
     with Import => True, 
     Convention => C, 
     External_Name => "GDALLoadOziMapFile";

   function GDALReadOziMapFile
     (Arg1 : Interfaces.C.Strings.Chars_Ptr;
      Arg2 : access Double;
      Arg3 : System.Address;
      Arg4 : access Int;
      Arg5 : System.Address) return Int  -- ../gdal.h:1133
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReadOziMapFile";

   function GDALDecToDMS
     (Arg1 : Double;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1136
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDecToDMS";

   function GDALPackedDMSToDec (Arg1 : Double) return Double  -- ../gdal.h:1137
     with Import => True, 
     Convention => C, 
     External_Name => "GDALPackedDMSToDec";

   function GDALDecToPackedDMS (Arg1 : Double) return Double  -- ../gdal.h:1138
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDecToPackedDMS";

   type GDALRPCInfoV1_Array6584 is array (0 .. 19) of aliased Double;
   type GDALRPCInfoV1 is record
      DfLINE_OFF        : aliased Double;  -- ../gdal.h:1173
      DfSAMP_OFF        : aliased Double;  -- ../gdal.h:1174
      DfLAT_OFF         : aliased Double;  -- ../gdal.h:1175
      DfLONG_OFF        : aliased Double;  -- ../gdal.h:1176
      DfHEIGHT_OFF      : aliased Double;  -- ../gdal.h:1177
      DfLINE_SCALE      : aliased Double;  -- ../gdal.h:1179
      DfSAMP_SCALE      : aliased Double;  -- ../gdal.h:1180
      DfLAT_SCALE       : aliased Double;  -- ../gdal.h:1181
      DfLONG_SCALE      : aliased Double;  -- ../gdal.h:1182
      DfHEIGHT_SCALE    : aliased Double;  -- ../gdal.h:1183
      AdfLINE_NUM_COEFF : aliased GDALRPCInfoV1_Array6584;  -- ../gdal.h:1185
      AdfLINE_DEN_COEFF : aliased GDALRPCInfoV1_Array6584;  -- ../gdal.h:1186
      AdfSAMP_NUM_COEFF : aliased GDALRPCInfoV1_Array6584;  -- ../gdal.h:1187
      AdfSAMP_DEN_COEFF : aliased GDALRPCInfoV1_Array6584;  -- ../gdal.h:1188
      DfMIN_LONG        : aliased Double;  -- ../gdal.h:1190
      DfMIN_LAT         : aliased Double;  -- ../gdal.h:1191
      DfMAX_LONG        : aliased Double;  -- ../gdal.h:1192
      DfMAX_LAT         : aliased Double;  -- ../gdal.h:1193
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal.h:1194

   type GDALRPCInfoV2_Array6584 is array (0 .. 19) of aliased Double;
   type GDALRPCInfoV2 is record
      DfLINE_OFF        : aliased Double;  -- ../gdal.h:1201
      DfSAMP_OFF        : aliased Double;  -- ../gdal.h:1202
      DfLAT_OFF         : aliased Double;  -- ../gdal.h:1203
      DfLONG_OFF        : aliased Double;  -- ../gdal.h:1204
      DfHEIGHT_OFF      : aliased Double;  -- ../gdal.h:1205
      DfLINE_SCALE      : aliased Double;  -- ../gdal.h:1207
      DfSAMP_SCALE      : aliased Double;  -- ../gdal.h:1208
      DfLAT_SCALE       : aliased Double;  -- ../gdal.h:1209
      DfLONG_SCALE      : aliased Double;  -- ../gdal.h:1210
      DfHEIGHT_SCALE    : aliased Double;  -- ../gdal.h:1211
      AdfLINE_NUM_COEFF : aliased GDALRPCInfoV2_Array6584;  -- ../gdal.h:1213
      AdfLINE_DEN_COEFF : aliased GDALRPCInfoV2_Array6584;  -- ../gdal.h:1214
      AdfSAMP_NUM_COEFF : aliased GDALRPCInfoV2_Array6584;  -- ../gdal.h:1215
      AdfSAMP_DEN_COEFF : aliased GDALRPCInfoV2_Array6584;  -- ../gdal.h:1216
      DfMIN_LONG        : aliased Double;  -- ../gdal.h:1218
      DfMIN_LAT         : aliased Double;  -- ../gdal.h:1219
      DfMAX_LONG        : aliased Double;  -- ../gdal.h:1220
      DfMAX_LAT         : aliased Double;  -- ../gdal.h:1221
      DfERR_BIAS        : aliased Double;  -- ../gdal.h:1224
      DfERR_RAND        : aliased Double;  -- ../gdal.h:1225
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal.h:1226

   function GDALExtractRPCInfoV1 (Arg1 : CSLConstList; Arg2 : access GDALRPCInfoV1) return Int  -- ../gdal.h:1229
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtractRPCInfoV1";

   function GDALExtractRPCInfoV2 (Arg1 : CSLConstList; Arg2 : access GDALRPCInfoV2) return Int  -- ../gdal.h:1231
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtractRPCInfoV2";

   type GDALColorEntry is record
      C1 : aliased Short;  -- ../gdal.h:1241
      C2 : aliased Short;  -- ../gdal.h:1244
      C3 : aliased Short;  -- ../gdal.h:1247
      C4 : aliased Short;  -- ../gdal.h:1250
   end record
     with Convention => C_Pass_By_Copy;  -- ../gdal.h:1251

   function GDALCreateColorTable (Arg1 : GDALPaletteInterp) return GDALColorTableH  -- ../gdal.h:1253
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateColorTable";

   procedure GDALDestroyColorTable (Arg1 : GDALColorTableH)  -- ../gdal.h:1254
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyColorTable";

   function GDALCloneColorTable (Arg1 : GDALColorTableH) return GDALColorTableH  -- ../gdal.h:1255
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCloneColorTable";

   function GDALGetPaletteInterpretation (Arg1 : GDALColorTableH) return GDALPaletteInterp  -- ../gdal.h:1256
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetPaletteInterpretation";

   function GDALGetColorEntryCount (Arg1 : GDALColorTableH) return Int  -- ../gdal.h:1257
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetColorEntryCount";

   function GDALGetColorEntry (Arg1 : GDALColorTableH; Arg2 : Int) return access constant GDALColorEntry  -- ../gdal.h:1258
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetColorEntry";

   function GDALGetColorEntryAsRGB
     (Arg1 : GDALColorTableH;
      Arg2 : Int;
      Arg3 : access GDALColorEntry) return Int  -- ../gdal.h:1259
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetColorEntryAsRGB";

   procedure GDALSetColorEntry
     (Arg1 : GDALColorTableH;
      Arg2 : Int;
      Arg3 : access constant GDALColorEntry)  -- ../gdal.h:1260
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetColorEntry";

   procedure GDALCreateColorRamp
     (HTable       : GDALColorTableH;
      NStartIndex  : Int;
      PsStartColor : access constant GDALColorEntry;
      NEndIndex    : Int;
      PsEndColor   : access constant GDALColorEntry)  -- ../gdal.h:1261
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateColorRamp";

   type GDALRATFieldType is 
     (GFT_Integer,
      GFT_Real,
      GFT_String)
     with Convention => C;  -- ../gdal.h:1274

   type GDALRATFieldUsage is 
     (GFU_Generic,
      GFU_PixelCount,
      GFU_Name,
      GFU_Min,
      GFU_Max,
      GFU_MinMax,
      GFU_Red,
      GFU_Green,
      GFU_Blue,
      GFU_Alpha,
      GFU_RedMin,
      GFU_GreenMin,
      GFU_BlueMin,
      GFU_AlphaMin,
      GFU_RedMax,
      GFU_GreenMax,
      GFU_BlueMax,
      GFU_AlphaMax,
      GFU_MaxCount)
     with Convention => C;  -- ../gdal.h:1297

   type GDALRATTableType is 
     (GRTT_THEMATIC,
      GRTT_ATHEMATIC)
     with Convention => C;  -- ../gdal.h:1305

   function GDALCreateRasterAttributeTable return GDALRasterAttributeTableH  -- ../gdal.h:1308
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateRasterAttributeTable";

   procedure GDALDestroyRasterAttributeTable (Arg1 : GDALRasterAttributeTableH)  -- ../gdal.h:1310
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDestroyRasterAttributeTable";

   function GDALRATGetColumnCount (Arg1 : GDALRasterAttributeTableH) return Int  -- ../gdal.h:1313
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetColumnCount";

   function GDALRATGetNameOfCol (Arg1 : GDALRasterAttributeTableH; Arg2 : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1315
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetNameOfCol";

   function GDALRATGetUsageOfCol (Arg1 : GDALRasterAttributeTableH; Arg2 : Int) return GDALRATFieldUsage  -- ../gdal.h:1317
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetUsageOfCol";

   function GDALRATGetTypeOfCol (Arg1 : GDALRasterAttributeTableH; Arg2 : Int) return GDALRATFieldType  -- ../gdal.h:1319
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetTypeOfCol";

   function GDALRATGetColOfUsage (Arg1 : GDALRasterAttributeTableH; Arg2 : GDALRATFieldUsage) return Int  -- ../gdal.h:1322
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetColOfUsage";

   function GDALRATGetRowCount (Arg1 : GDALRasterAttributeTableH) return Int  -- ../gdal.h:1324
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetRowCount";

   function GDALRATGetValueAsString
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : Int;
      Arg3 : Int) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1326
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetValueAsString";

   function GDALRATGetValueAsInt
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : Int;
      Arg3 : Int) return Int  -- ../gdal.h:1328
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetValueAsInt";

   function GDALRATGetValueAsDouble
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : Int;
      Arg3 : Int) return Double  -- ../gdal.h:1330
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetValueAsDouble";

   procedure GDALRATSetValueAsString
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Interfaces.C.Strings.Chars_Ptr)  -- ../gdal.h:1333
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATSetValueAsString";

   procedure GDALRATSetValueAsInt
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Int)  -- ../gdal.h:1335
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATSetValueAsInt";

   procedure GDALRATSetValueAsDouble
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : Int;
      Arg3 : Int;
      Arg4 : Double)  -- ../gdal.h:1337
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATSetValueAsDouble";

   function GDALRATChangesAreWrittenToFile (HRAT : GDALRasterAttributeTableH) return Int  -- ../gdal.h:1340
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATChangesAreWrittenToFile";

   function GDALRATValuesIOAsDouble
     (HRAT      : GDALRasterAttributeTableH;
      ERWFlag   : GDALRWFlag;
      IField    : Int;
      IStartRow : Int;
      ILength   : Int;
      PdfData   : access Double) return CPLErr  -- ../gdal.h:1342
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATValuesIOAsDouble";

   function GDALRATValuesIOAsInteger
     (HRAT      : GDALRasterAttributeTableH;
      ERWFlag   : GDALRWFlag;
      IField    : Int;
      IStartRow : Int;
      ILength   : Int;
      PnData    : access Int) return CPLErr  -- ../gdal.h:1344
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATValuesIOAsInteger";

   function GDALRATValuesIOAsString
     (HRAT         : GDALRasterAttributeTableH;
      ERWFlag      : GDALRWFlag;
      IField       : Int;
      IStartRow    : Int;
      ILength      : Int;
      PapszStrList : CSLConstList) return CPLErr  -- ../gdal.h:1346
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATValuesIOAsString";

   procedure GDALRATSetRowCount (Arg1 : GDALRasterAttributeTableH; Arg2 : Int)  -- ../gdal.h:1349
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATSetRowCount";

   function GDALRATCreateColumn
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : Interfaces.C.Strings.Chars_Ptr;
      Arg3 : GDALRATFieldType;
      Arg4 : GDALRATFieldUsage) return CPLErr  -- ../gdal.h:1351
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATCreateColumn";

   function GDALRATSetLinearBinning
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : Double;
      Arg3 : Double) return CPLErr  -- ../gdal.h:1355
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATSetLinearBinning";

   function GDALRATGetLinearBinning
     (Arg1 : GDALRasterAttributeTableH;
      Arg2 : access Double;
      Arg3 : access Double) return Int  -- ../gdal.h:1357
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetLinearBinning";

   function GDALRATSetTableType (HRAT : GDALRasterAttributeTableH; EInTableType : GDALRATTableType) return CPLErr  -- ../gdal.h:1359
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATSetTableType";

   function GDALRATGetTableType (HRAT : GDALRasterAttributeTableH) return GDALRATTableType  -- ../gdal.h:1361
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetTableType";

   function GDALRATInitializeFromColorTable (Arg1 : GDALRasterAttributeTableH; Arg2 : GDALColorTableH) return CPLErr  -- ../gdal.h:1362
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATInitializeFromColorTable";

   function GDALRATTranslateToColorTable (Arg1 : GDALRasterAttributeTableH; NEntryCount : Int) return GDALColorTableH  -- ../gdal.h:1364
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATTranslateToColorTable";

   procedure GDALRATDumpReadable (Arg1 : GDALRasterAttributeTableH; Arg2 : Interfaces.C_Streams.FILEs)  -- ../gdal.h:1366
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATDumpReadable";

   function GDALRATClone (Arg1 : GDALRasterAttributeTableH) return GDALRasterAttributeTableH  -- ../gdal.h:1369
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATClone";

   function GDALRATSerializeJSON (Arg1 : GDALRasterAttributeTableH) return System.Address  -- ../gdal.h:1372
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATSerializeJSON";

   function GDALRATGetRowOfValue (Arg1 : GDALRasterAttributeTableH; Arg2 : Double) return Int  -- ../gdal.h:1374
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATGetRowOfValue";

   procedure GDALRATRemoveStatistics (Arg1 : GDALRasterAttributeTableH)  -- ../gdal.h:1375
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRATRemoveStatistics";

   procedure GDALSetCacheMax (NBytes : Int)  -- ../gdal.h:1381
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetCacheMax";

   function GDALGetCacheMax return Int  -- ../gdal.h:1382
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetCacheMax";

   function GDALGetCacheUsed return Int  -- ../gdal.h:1383
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetCacheUsed";

   procedure GDALSetCacheMax64 (NBytes : GIntBig)  -- ../gdal.h:1384
     with Import => True, 
     Convention => C, 
     External_Name => "GDALSetCacheMax64";

   function GDALGetCacheMax64 return GIntBig  -- ../gdal.h:1385
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetCacheMax64";

   function GDALGetCacheUsed64 return GIntBig  -- ../gdal.h:1386
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetCacheUsed64";

   function GDALFlushCacheBlock return Int  -- ../gdal.h:1388
     with Import => True, 
     Convention => C, 
     External_Name => "GDALFlushCacheBlock";

   function GDALDatasetGetVirtualMem
     (HDS                : GDALDatasetH;
      ERWFlag            : GDALRWFlag;
      NXOff              : Int;
      NYOff              : Int;
      NXSize             : Int;
      NYSize             : Int;
      NBufXSize          : Int;
      NBufYSize          : Int;
      EBufType           : GDALDataType;
      NBandCount         : Int;
      PanBandMap         : access Int;
      NPixelSpace        : Int;
      NLineSpace         : GIntBig;
      NBandSpace         : GIntBig;
      NCacheSize         : Size_T;
      NPageSizeHint      : Size_T;
      BSingleThreadUsage : Int;
      PapszOptions       : CSLConstList) return access CPLVirtualMem  -- ../gdal.h:1394
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetVirtualMem";

   function GDALRasterBandGetVirtualMem
     (HBand              : GDALRasterBandH;
      ERWFlag            : GDALRWFlag;
      NXOff              : Int;
      NYOff              : Int;
      NXSize             : Int;
      NYSize             : Int;
      NBufXSize          : Int;
      NBufYSize          : Int;
      EBufType           : GDALDataType;
      NPixelSpace        : Int;
      NLineSpace         : GIntBig;
      NCacheSize         : Size_T;
      NPageSizeHint      : Size_T;
      BSingleThreadUsage : Int;
      PapszOptions       : CSLConstList) return access CPLVirtualMem  -- ../gdal.h:1409
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterBandGetVirtualMem";

   function GDALGetVirtualMemAuto
     (HBand        : GDALRasterBandH;
      ERWFlag      : GDALRWFlag;
      PnPixelSpace : access Int;
      PnLineSpace  : access GIntBig;
      PapszOptions : CSLConstList) return access CPLVirtualMem  -- ../gdal.h:1422
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetVirtualMemAuto";

   type GDALTileOrganization is 
     (GTO_TIP,
      GTO_BIT,
      GTO_BSQ)
     with Convention => C;  -- ../gdal.h:1437

   function GDALDatasetGetTiledVirtualMem
     (HDS                : GDALDatasetH;
      ERWFlag            : GDALRWFlag;
      NXOff              : Int;
      NYOff              : Int;
      NXSize             : Int;
      NYSize             : Int;
      NTileXSize         : Int;
      NTileYSize         : Int;
      EBufType           : GDALDataType;
      NBandCount         : Int;
      PanBandMap         : access Int;
      ETileOrganization  : GDALTileOrganization;
      NCacheSize         : Size_T;
      BSingleThreadUsage : Int;
      PapszOptions       : CSLConstList) return access CPLVirtualMem  -- ../gdal.h:1439
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetTiledVirtualMem";

   function GDALRasterBandGetTiledVirtualMem
     (HBand              : GDALRasterBandH;
      ERWFlag            : GDALRWFlag;
      NXOff              : Int;
      NYOff              : Int;
      NXSize             : Int;
      NYSize             : Int;
      NTileXSize         : Int;
      NTileYSize         : Int;
      EBufType           : GDALDataType;
      NCacheSize         : Size_T;
      BSingleThreadUsage : Int;
      PapszOptions       : CSLConstList) return access CPLVirtualMem  -- ../gdal.h:1451
     with Import => True, 
     Convention => C, 
     External_Name => "GDALRasterBandGetTiledVirtualMem";

   function GDALCreatePansharpenedVRT
     (PszXML                : Interfaces.C.Strings.Chars_Ptr;
      HPanchroBand          : GDALRasterBandH;
      NInputSpectralBands   : Int;
      PahInputSpectralBands : System.Address) return GDALDatasetH  -- ../gdal.h:1465
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreatePansharpenedVRT";

   function GDALGetJPEG2000Structure (PszFilename : Interfaces.C.Strings.Chars_Ptr; PapszOptions : CSLConstList) return access CPLXMLNode  -- ../gdal.h:1474
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGetJPEG2000Structure";

   function GDALCreateMultiDimensional
     (HDriver               : GDALDriverH;
      PszName               : Interfaces.C.Strings.Chars_Ptr;
      PapszRootGroupOptions : CSLConstList;
      PapszOptions          : CSLConstList) return GDALDatasetH  -- ../gdal.h:1481
     with Import => True, 
     Convention => C, 
     External_Name => "GDALCreateMultiDimensional";

   function GDALExtendedDataTypeCreate (EType : GDALDataType) return GDALExtendedDataTypeH  -- ../gdal.h:1486
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeCreate";

   function GDALExtendedDataTypeCreateString (NMaxStringLength : Size_T) return GDALExtendedDataTypeH  -- ../gdal.h:1487
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeCreateString";

   function GDALExtendedDataTypeCreateCompound
     (PszName     : Interfaces.C.Strings.Chars_Ptr;
      NTotalSize  : Size_T;
      NComponents : Size_T;
      Comps       : System.Address) return GDALExtendedDataTypeH  -- ../gdal.h:1488
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeCreateCompound";

   procedure GDALExtendedDataTypeRelease (HEDT : GDALExtendedDataTypeH)  -- ../gdal.h:1491
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeRelease";

   function GDALExtendedDataTypeGetName (HEDT : GDALExtendedDataTypeH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1492
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeGetName";

   function GDALExtendedDataTypeGetClass (HEDT : GDALExtendedDataTypeH) return GDALExtendedDataTypeClass  -- ../gdal.h:1493
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeGetClass";

   function GDALExtendedDataTypeGetNumericDataType (HEDT : GDALExtendedDataTypeH) return GDALDataType  -- ../gdal.h:1494
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeGetNumericDataType";

   function GDALExtendedDataTypeGetSize (HEDT : GDALExtendedDataTypeH) return Size_T  -- ../gdal.h:1495
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeGetSize";

   function GDALExtendedDataTypeGetMaxStringLength (HEDT : GDALExtendedDataTypeH) return Size_T  -- ../gdal.h:1496
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeGetMaxStringLength";

   function GDALExtendedDataTypeGetComponents (HEDT : GDALExtendedDataTypeH; PnCount : access Size_T) return System.Address  -- ../gdal.h:1497
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeGetComponents";

   procedure GDALExtendedDataTypeFreeComponents (Components : System.Address; NCount : Size_T)  -- ../gdal.h:1498
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeFreeComponents";

   function GDALExtendedDataTypeCanConvertTo (HSourceEDT : GDALExtendedDataTypeH; HTargetEDT : GDALExtendedDataTypeH) return Int  -- ../gdal.h:1499
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeCanConvertTo";

   function GDALExtendedDataTypeEquals (HFirstEDT : GDALExtendedDataTypeH; HSecondEDT : GDALExtendedDataTypeH) return Int  -- ../gdal.h:1501
     with Import => True, 
     Convention => C, 
     External_Name => "GDALExtendedDataTypeEquals";

   function GDALEDTComponentCreate
     (PszName : Interfaces.C.Strings.Chars_Ptr;
      NOffset : Size_T;
      HType   : GDALExtendedDataTypeH) return GDALEDTComponentH  -- ../gdal.h:1504
     with Import => True, 
     Convention => C, 
     External_Name => "GDALEDTComponentCreate";

   procedure GDALEDTComponentRelease (HComp : GDALEDTComponentH)  -- ../gdal.h:1505
     with Import => True, 
     Convention => C, 
     External_Name => "GDALEDTComponentRelease";

   function GDALEDTComponentGetName (HComp : GDALEDTComponentH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1506
     with Import => True, 
     Convention => C, 
     External_Name => "GDALEDTComponentGetName";

   function GDALEDTComponentGetOffset (HComp : GDALEDTComponentH) return Size_T  -- ../gdal.h:1507
     with Import => True, 
     Convention => C, 
     External_Name => "GDALEDTComponentGetOffset";

   function GDALEDTComponentGetType (HComp : GDALEDTComponentH) return GDALExtendedDataTypeH  -- ../gdal.h:1508
     with Import => True, 
     Convention => C, 
     External_Name => "GDALEDTComponentGetType";

   function GDALDatasetGetRootGroup (HDS : GDALDatasetH) return GDALGroupH  -- ../gdal.h:1510
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDatasetGetRootGroup";

   procedure GDALGroupRelease (HGroup : GDALGroupH)  -- ../gdal.h:1511
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupRelease";

   function GDALGroupGetName (HGroup : GDALGroupH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1512
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupGetName";

   function GDALGroupGetFullName (HGroup : GDALGroupH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1513
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupGetFullName";

   function GDALGroupGetMDArrayNames (HGroup : GDALGroupH; PapszOptions : CSLConstList) return System.Address  -- ../gdal.h:1514
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupGetMDArrayNames";

   function GDALGroupOpenMDArray
     (HGroup         : GDALGroupH;
      PszMDArrayName : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions   : CSLConstList) return GDALMDArrayH  -- ../gdal.h:1515
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupOpenMDArray";

   function GDALGroupOpenMDArrayFromFullname
     (HGroup         : GDALGroupH;
      PszMDArrayName : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions   : CSLConstList) return GDALMDArrayH  -- ../gdal.h:1516
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupOpenMDArrayFromFullname";

   function GDALGroupResolveMDArray
     (HGroup           : GDALGroupH;
      PszName          : Interfaces.C.Strings.Chars_Ptr;
      PszStartingPoint : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions     : CSLConstList) return GDALMDArrayH  -- ../gdal.h:1517
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupResolveMDArray";

   function GDALGroupGetGroupNames (HGroup : GDALGroupH; PapszOptions : CSLConstList) return System.Address  -- ../gdal.h:1521
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupGetGroupNames";

   function GDALGroupOpenGroup
     (HGroup          : GDALGroupH;
      PszSubGroupName : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions    : CSLConstList) return GDALGroupH  -- ../gdal.h:1522
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupOpenGroup";

   function GDALGroupOpenGroupFromFullname
     (HGroup         : GDALGroupH;
      PszMDArrayName : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions   : CSLConstList) return GDALGroupH  -- ../gdal.h:1523
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupOpenGroupFromFullname";

   function GDALGroupGetDimensions
     (HGroup       : GDALGroupH;
      PnCount      : access Size_T;
      PapszOptions : CSLConstList) return System.Address  -- ../gdal.h:1524
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupGetDimensions";

   function GDALGroupGetAttribute (HGroup : GDALGroupH; PszName : Interfaces.C.Strings.Chars_Ptr) return GDALAttributeH  -- ../gdal.h:1525
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupGetAttribute";

   function GDALGroupGetAttributes
     (HGroup       : GDALGroupH;
      PnCount      : access Size_T;
      PapszOptions : CSLConstList) return System.Address  -- ../gdal.h:1526
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupGetAttributes";

   function GDALGroupGetStructuralInfo (HGroup : GDALGroupH) return CSLConstList  -- ../gdal.h:1527
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupGetStructuralInfo";

   function GDALGroupCreateGroup
     (HGroup          : GDALGroupH;
      PszSubGroupName : Interfaces.C.Strings.Chars_Ptr;
      PapszOptions    : CSLConstList) return GDALGroupH  -- ../gdal.h:1528
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupCreateGroup";

   function GDALGroupCreateDimension
     (HGroup       : GDALGroupH;
      PszName      : Interfaces.C.Strings.Chars_Ptr;
      PszType      : Interfaces.C.Strings.Chars_Ptr;
      PszDirection : Interfaces.C.Strings.Chars_Ptr;
      NSize        : GUInt64;
      PapszOptions : CSLConstList) return GDALDimensionH  -- ../gdal.h:1531
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupCreateDimension";

   function GDALGroupCreateMDArray
     (HGroup        : GDALGroupH;
      PszName       : Interfaces.C.Strings.Chars_Ptr;
      NDimensions   : Size_T;
      PahDimensions : System.Address;
      HEDT          : GDALExtendedDataTypeH;
      PapszOptions  : CSLConstList) return GDALMDArrayH  -- ../gdal.h:1537
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupCreateMDArray";

   function GDALGroupCreateAttribute
     (HGroup        : GDALGroupH;
      PszName       : Interfaces.C.Strings.Chars_Ptr;
      NDimensions   : Size_T;
      PanDimensions : access GUInt64;
      HEDT          : GDALExtendedDataTypeH;
      PapszOptions  : CSLConstList) return GDALAttributeH  -- ../gdal.h:1543
     with Import => True, 
     Convention => C, 
     External_Name => "GDALGroupCreateAttribute";

   procedure GDALMDArrayRelease (HMDArray : GDALMDArrayH)  -- ../gdal.h:1550
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayRelease";

   function GDALMDArrayGetName (HArray : GDALMDArrayH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1551
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetName";

   function GDALMDArrayGetFullName (HArray : GDALMDArrayH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1552
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetFullName";

   function GDALMDArrayGetTotalElementsCount (HArray : GDALMDArrayH) return GUInt64  -- ../gdal.h:1553
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetTotalElementsCount";

   function GDALMDArrayGetDimensionCount (HArray : GDALMDArrayH) return Size_T  -- ../gdal.h:1554
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetDimensionCount";

   function GDALMDArrayGetDimensions (HArray : GDALMDArrayH; PnCount : access Size_T) return System.Address  -- ../gdal.h:1555
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetDimensions";

   function GDALMDArrayGetDataType (HArray : GDALMDArrayH) return GDALExtendedDataTypeH  -- ../gdal.h:1556
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetDataType";

   function GDALMDArrayRead
     (HArray               : GDALMDArrayH;
      ArrayStartIdx        : access GUInt64;
      Count                : access Size_T;
      ArrayStep            : access GInt64;
      BufferStride         : access GPtrDiff_T;
      BufferDatatype       : GDALExtendedDataTypeH;
      PDstBuffer           : System.Address;
      PDstBufferAllocStart : System.Address;
      NDstBufferllocSize   : Size_T) return Int  -- ../gdal.h:1557
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayRead";

   function GDALMDArrayWrite
     (HArray               : GDALMDArrayH;
      ArrayStartIdx        : access GUInt64;
      Count                : access Size_T;
      ArrayStep            : access GInt64;
      BufferStride         : access GPtrDiff_T;
      BufferDatatype       : GDALExtendedDataTypeH;
      PSrcBuffer           : System.Address;
      PsrcBufferAllocStart : System.Address;
      NSrcBufferllocSize   : Size_T) return Int  -- ../gdal.h:1566
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayWrite";

   function GDALMDArrayAdviseRead
     (HArray        : GDALMDArrayH;
      ArrayStartIdx : access GUInt64;
      Count         : access Size_T) return Int  -- ../gdal.h:1575
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayAdviseRead";

   function GDALMDArrayGetAttribute (HArray : GDALMDArrayH; PszName : Interfaces.C.Strings.Chars_Ptr) return GDALAttributeH  -- ../gdal.h:1578
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetAttribute";

   function GDALMDArrayGetAttributes
     (HArray       : GDALMDArrayH;
      PnCount      : access Size_T;
      PapszOptions : CSLConstList) return System.Address  -- ../gdal.h:1579
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetAttributes";

   function GDALMDArrayCreateAttribute
     (HArray        : GDALMDArrayH;
      PszName       : Interfaces.C.Strings.Chars_Ptr;
      NDimensions   : Size_T;
      PanDimensions : access GUInt64;
      HEDT          : GDALExtendedDataTypeH;
      PapszOptions  : CSLConstList) return GDALAttributeH  -- ../gdal.h:1580
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayCreateAttribute";

   function GDALMDArrayGetRawNoDataValue (HArray : GDALMDArrayH) return System.Address  -- ../gdal.h:1586
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetRawNoDataValue";

   function GDALMDArrayGetNoDataValueAsDouble (HArray : GDALMDArrayH; PbHasNoDataValue : access Int) return Double  -- ../gdal.h:1587
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetNoDataValueAsDouble";

   function GDALMDArraySetRawNoDataValue (HArray : GDALMDArrayH; Arg2 : System.Address) return Int  -- ../gdal.h:1589
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArraySetRawNoDataValue";

   function GDALMDArraySetNoDataValueAsDouble (HArray : GDALMDArrayH; DfNoDataValue : Double) return Int  -- ../gdal.h:1590
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArraySetNoDataValueAsDouble";

   function GDALMDArraySetScale (HArray : GDALMDArrayH; DfScale : Double) return Int  -- ../gdal.h:1592
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArraySetScale";

   function GDALMDArraySetScaleEx
     (HArray       : GDALMDArrayH;
      DfScale      : Double;
      EStorageType : GDALDataType) return Int  -- ../gdal.h:1593
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArraySetScaleEx";

   function GDALMDArrayGetScale (HArray : GDALMDArrayH; PbHasValue : access Int) return Double  -- ../gdal.h:1594
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetScale";

   function GDALMDArrayGetScaleEx
     (HArray        : GDALMDArrayH;
      PbHasValue    : access Int;
      PeStorageType : access GDALDataType) return Double  -- ../gdal.h:1595
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetScaleEx";

   function GDALMDArraySetOffset (HArray : GDALMDArrayH; DfOffset : Double) return Int  -- ../gdal.h:1596
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArraySetOffset";

   function GDALMDArraySetOffsetEx
     (HArray       : GDALMDArrayH;
      DfOffset     : Double;
      EStorageType : GDALDataType) return Int  -- ../gdal.h:1597
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArraySetOffsetEx";

   function GDALMDArrayGetOffset (HArray : GDALMDArrayH; PbHasValue : access Int) return Double  -- ../gdal.h:1598
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetOffset";

   function GDALMDArrayGetOffsetEx
     (HArray        : GDALMDArrayH;
      PbHasValue    : access Int;
      PeStorageType : access GDALDataType) return Double  -- ../gdal.h:1599
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetOffsetEx";

   function GDALMDArrayGetBlockSize (HArray : GDALMDArrayH; PnCount : access Size_T) return access GUInt64  -- ../gdal.h:1600
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetBlockSize";

   function GDALMDArraySetUnit (HArray : GDALMDArrayH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../gdal.h:1601
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArraySetUnit";

   function GDALMDArrayGetUnit (HArray : GDALMDArrayH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1602
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetUnit";

   function GDALMDArraySetSpatialRef (Arg1 : GDALMDArrayH; Arg2 : OGRSpatialReferenceH) return Int  -- ../gdal.h:1603
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArraySetSpatialRef";

   function GDALMDArrayGetSpatialRef (HArray : GDALMDArrayH) return OGRSpatialReferenceH  -- ../gdal.h:1604
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetSpatialRef";

   function GDALMDArrayGetProcessingChunkSize
     (HArray          : GDALMDArrayH;
      PnCount         : access Size_T;
      NMaxChunkMemory : Size_T) return access Size_T  -- ../gdal.h:1605
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetProcessingChunkSize";

   function GDALMDArrayGetStructuralInfo (HArray : GDALMDArrayH) return CSLConstList  -- ../gdal.h:1607
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetStructuralInfo";

   function GDALMDArrayGetView (HArray : GDALMDArrayH; PszViewExpr : Interfaces.C.Strings.Chars_Ptr) return GDALMDArrayH  -- ../gdal.h:1608
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetView";

   function GDALMDArrayTranspose
     (HArray                 : GDALMDArrayH;
      NNewAxisCount          : Size_T;
      PanMapNewAxisToOldAxis : access Int) return GDALMDArrayH  -- ../gdal.h:1609
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayTranspose";

   function GDALMDArrayGetUnscaled (HArray : GDALMDArrayH) return GDALMDArrayH  -- ../gdal.h:1612
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetUnscaled";

   function GDALMDArrayGetMask (HArray : GDALMDArrayH; PapszOptions : CSLConstList) return GDALMDArrayH  -- ../gdal.h:1613
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetMask";

   function GDALMDArrayAsClassicDataset
     (HArray : GDALMDArrayH;
      IXDim  : Size_T;
      IYDim  : Size_T) return GDALDatasetH  -- ../gdal.h:1614
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayAsClassicDataset";

   function GDALMDArrayGetStatistics
     (HArray        : GDALMDArrayH;
      Arg2          : GDALDatasetH;
      BApproxOK     : Int;
      BForce        : Int;
      PdfMin        : access Double;
      PdfMax        : access Double;
      PdfMean       : access Double;
      PdfStdDev     : access Double;
      PnValidCount  : access GUInt64;
      PfnProgress   : GDALProgressFunc;
      PProgressData : System.Address) return CPLErr  -- ../gdal.h:1616
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayGetStatistics";

   function GDALMDArrayComputeStatistics
     (HArray        : GDALMDArrayH;
      Arg2          : GDALDatasetH;
      BApproxOK     : Int;
      PdfMin        : access Double;
      PdfMax        : access Double;
      PdfMean       : access Double;
      PdfStdDev     : access Double;
      PnValidCount  : access GUInt64;
      Arg9          : GDALProgressFunc;
      PProgressData : System.Address) return Int  -- ../gdal.h:1622
     with Import => True, 
     Convention => C, 
     External_Name => "GDALMDArrayComputeStatistics";

   procedure GDALAttributeRelease (HAttr : GDALAttributeH)  -- ../gdal.h:1629
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeRelease";

   procedure GDALReleaseAttributes (Attributes : System.Address; NCount : Size_T)  -- ../gdal.h:1630
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReleaseAttributes";

   function GDALAttributeGetName (HAttr : GDALAttributeH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1631
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeGetName";

   function GDALAttributeGetFullName (HAttr : GDALAttributeH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1632
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeGetFullName";

   function GDALAttributeGetTotalElementsCount (HAttr : GDALAttributeH) return GUInt64  -- ../gdal.h:1633
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeGetTotalElementsCount";

   function GDALAttributeGetDimensionCount (HAttr : GDALAttributeH) return Size_T  -- ../gdal.h:1634
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeGetDimensionCount";

   function GDALAttributeGetDimensionsSize (HAttr : GDALAttributeH; PnCount : access Size_T) return access GUInt64  -- ../gdal.h:1635
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeGetDimensionsSize";

   function GDALAttributeGetDataType (HAttr : GDALAttributeH) return GDALExtendedDataTypeH  -- ../gdal.h:1636
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeGetDataType";

   function GDALAttributeReadAsRaw (HAttr : GDALAttributeH; PnSize : access Size_T) return access GByte  -- ../gdal.h:1637
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeReadAsRaw";

   procedure GDALAttributeFreeRawResult
     (HAttr : GDALAttributeH;
      Raw   : access GByte;
      NSize : Size_T)  -- ../gdal.h:1638
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeFreeRawResult";

   function GDALAttributeReadAsString (HAttr : GDALAttributeH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1639
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeReadAsString";

   function GDALAttributeReadAsInt (HAttr : GDALAttributeH) return Int  -- ../gdal.h:1640
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeReadAsInt";

   function GDALAttributeReadAsDouble (HAttr : GDALAttributeH) return Double  -- ../gdal.h:1641
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeReadAsDouble";

   function GDALAttributeReadAsStringArray (HAttr : GDALAttributeH) return System.Address  -- ../gdal.h:1642
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeReadAsStringArray";

   function GDALAttributeReadAsIntArray (HAttr : GDALAttributeH; PnCount : access Size_T) return access Int  -- ../gdal.h:1643
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeReadAsIntArray";

   function GDALAttributeReadAsDoubleArray (HAttr : GDALAttributeH; PnCount : access Size_T) return access Double  -- ../gdal.h:1644
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeReadAsDoubleArray";

   function GDALAttributeWriteRaw
     (HAttr : GDALAttributeH;
      Arg2  : System.Address;
      Arg3  : Size_T) return Int  -- ../gdal.h:1645
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeWriteRaw";

   function GDALAttributeWriteString (HAttr : GDALAttributeH; Arg2 : Interfaces.C.Strings.Chars_Ptr) return Int  -- ../gdal.h:1646
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeWriteString";

   function GDALAttributeWriteStringArray (HAttr : GDALAttributeH; Arg2 : CSLConstList) return Int  -- ../gdal.h:1647
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeWriteStringArray";

   function GDALAttributeWriteInt (HAttr : GDALAttributeH; Arg2 : Int) return Int  -- ../gdal.h:1648
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeWriteInt";

   function GDALAttributeWriteDouble (HAttr : GDALAttributeH; Arg2 : Double) return Int  -- ../gdal.h:1649
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeWriteDouble";

   function GDALAttributeWriteDoubleArray
     (HAttr : GDALAttributeH;
      Arg2  : access Double;
      Arg3  : Size_T) return Int  -- ../gdal.h:1650
     with Import => True, 
     Convention => C, 
     External_Name => "GDALAttributeWriteDoubleArray";

   procedure GDALDimensionRelease (HDim : GDALDimensionH)  -- ../gdal.h:1652
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDimensionRelease";

   procedure GDALReleaseDimensions (Dims : System.Address; NCount : Size_T)  -- ../gdal.h:1653
     with Import => True, 
     Convention => C, 
     External_Name => "GDALReleaseDimensions";

   function GDALDimensionGetName (HDim : GDALDimensionH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1654
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDimensionGetName";

   function GDALDimensionGetFullName (HDim : GDALDimensionH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1655
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDimensionGetFullName";

   function GDALDimensionGetType (HDim : GDALDimensionH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1656
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDimensionGetType";

   function GDALDimensionGetDirection (HDim : GDALDimensionH) return Interfaces.C.Strings.Chars_Ptr  -- ../gdal.h:1657
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDimensionGetDirection";

   function GDALDimensionGetSize (HDim : GDALDimensionH) return GUInt64  -- ../gdal.h:1658
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDimensionGetSize";

   function GDALDimensionGetIndexingVariable (HDim : GDALDimensionH) return GDALMDArrayH  -- ../gdal.h:1659
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDimensionGetIndexingVariable";

   function GDALDimensionSetIndexingVariable (HDim : GDALDimensionH; HArray : GDALMDArrayH) return Int  -- ../gdal.h:1660
     with Import => True, 
     Convention => C, 
     External_Name => "GDALDimensionSetIndexingVariable";

end Gdalada.GDAL;
