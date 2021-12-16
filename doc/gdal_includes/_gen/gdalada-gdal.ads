pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with cpl_progress_h;
with System;
with cpl_port_h;
limited with x86_64_linux_gnu_bits_types_FILE_h;
with cpl_error_h;
with ogr_api_h;
with ogr_core_h;
with Interfaces.C.Extensions;
with stddef_h;
limited with cpl_virtualmem_h;
limited with cpl_minixml_h;

package gdal_h is

   RASTERIO_EXTRA_ARG_CURRENT_VERSION : constant := 1;  --  ../gdal.h:189
   --  arg-macro: procedure INIT_RASTERIO_EXTRA_ARG (s)
   --    do { (s).nVersion := RASTERIO_EXTRA_ARG_CURRENT_VERSION; (s).eResampleAlg := GRIORA_NearestNeighbour; (s).pfnProgress := CPL_NULLPTR; (s).pProgressData := CPL_NULLPTR; (s).bFloatingPointWindowValidity := FALSE; } while(0)

   GDALMD_AREA_OR_POINT : aliased constant String := "AREA_OR_POINT" & ASCII.NUL;  --  ../gdal.h:243

   GDALMD_AOP_AREA : aliased constant String := "Area" & ASCII.NUL;  --  ../gdal.h:246

   GDALMD_AOP_POINT : aliased constant String := "Point" & ASCII.NUL;  --  ../gdal.h:249
   --  unsupported macro: CPLE_WrongFormat CPL_STATIC_CAST(CPLErrorNum, 200)

   GDAL_DMD_LONGNAME : aliased constant String := "DMD_LONGNAME" & ASCII.NUL;  --  ../gdal.h:318

   GDAL_DMD_HELPTOPIC : aliased constant String := "DMD_HELPTOPIC" & ASCII.NUL;  --  ../gdal.h:321

   GDAL_DMD_MIMETYPE : aliased constant String := "DMD_MIMETYPE" & ASCII.NUL;  --  ../gdal.h:324

   GDAL_DMD_EXTENSION : aliased constant String := "DMD_EXTENSION" & ASCII.NUL;  --  ../gdal.h:327

   GDAL_DMD_CONNECTION_PREFIX : aliased constant String := "DMD_CONNECTION_PREFIX" & ASCII.NUL;  --  ../gdal.h:333

   GDAL_DMD_EXTENSIONS : aliased constant String := "DMD_EXTENSIONS" & ASCII.NUL;  --  ../gdal.h:338

   GDAL_DMD_CREATIONOPTIONLIST : aliased constant String := "DMD_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:341

   GDAL_DMD_MULTIDIM_DATASET_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_DATASET_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:346

   GDAL_DMD_MULTIDIM_GROUP_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_GROUP_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:351

   GDAL_DMD_MULTIDIM_DIMENSION_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_DIMENSION_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:356

   GDAL_DMD_MULTIDIM_ARRAY_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_ARRAY_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:361

   GDAL_DMD_MULTIDIM_ATTRIBUTE_CREATIONOPTIONLIST : aliased constant String := "DMD_MULTIDIM_ATTRIBUTE_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:366

   GDAL_DMD_OPENOPTIONLIST : aliased constant String := "DMD_OPENOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:371

   GDAL_DMD_CREATIONDATATYPES : aliased constant String := "DMD_CREATIONDATATYPES" & ASCII.NUL;  --  ../gdal.h:374

   GDAL_DMD_CREATIONFIELDDATATYPES : aliased constant String := "DMD_CREATIONFIELDDATATYPES" & ASCII.NUL;  --  ../gdal.h:379

   GDAL_DMD_CREATIONFIELDDATASUBTYPES : aliased constant String := "DMD_CREATIONFIELDDATASUBTYPES" & ASCII.NUL;  --  ../gdal.h:384

   GDAL_DMD_SUBDATASETS : aliased constant String := "DMD_SUBDATASETS" & ASCII.NUL;  --  ../gdal.h:387

   GDAL_DCAP_OPEN : aliased constant String := "DCAP_OPEN" & ASCII.NUL;  --  ../gdal.h:390

   GDAL_DCAP_CREATE : aliased constant String := "DCAP_CREATE" & ASCII.NUL;  --  ../gdal.h:400

   GDAL_DCAP_CREATE_MULTIDIMENSIONAL : aliased constant String := "DCAP_CREATE_MULTIDIMENSIONAL" & ASCII.NUL;  --  ../gdal.h:406

   GDAL_DCAP_CREATECOPY : aliased constant String := "DCAP_CREATECOPY" & ASCII.NUL;  --  ../gdal.h:416

   GDAL_DCAP_CREATECOPY_MULTIDIMENSIONAL : aliased constant String := "DCAP_CREATECOPY_MULTIDIMENSIONAL" & ASCII.NUL;  --  ../gdal.h:423

   GDAL_DCAP_MULTIDIM_RASTER : aliased constant String := "DCAP_MULTIDIM_RASTER" & ASCII.NUL;  --  ../gdal.h:428

   GDAL_DCAP_SUBCREATECOPY : aliased constant String := "DCAP_SUBCREATECOPY" & ASCII.NUL;  --  ../gdal.h:431

   GDAL_DCAP_VIRTUALIO : aliased constant String := "DCAP_VIRTUALIO" & ASCII.NUL;  --  ../gdal.h:434

   GDAL_DCAP_RASTER : aliased constant String := "DCAP_RASTER" & ASCII.NUL;  --  ../gdal.h:439

   GDAL_DCAP_VECTOR : aliased constant String := "DCAP_VECTOR" & ASCII.NUL;  --  ../gdal.h:444

   GDAL_DCAP_GNM : aliased constant String := "DCAP_GNM" & ASCII.NUL;  --  ../gdal.h:449

   GDAL_DCAP_NOTNULL_FIELDS : aliased constant String := "DCAP_NOTNULL_FIELDS" & ASCII.NUL;  --  ../gdal.h:454

   GDAL_DCAP_UNIQUE_FIELDS : aliased constant String := "DCAP_UNIQUE_FIELDS" & ASCII.NUL;  --  ../gdal.h:459

   GDAL_DCAP_DEFAULT_FIELDS : aliased constant String := "DCAP_DEFAULT_FIELDS" & ASCII.NUL;  --  ../gdal.h:464

   GDAL_DCAP_NOTNULL_GEOMFIELDS : aliased constant String := "DCAP_NOTNULL_GEOMFIELDS" & ASCII.NUL;  --  ../gdal.h:469

   GDAL_DCAP_NONSPATIAL : aliased constant String := "DCAP_NONSPATIAL" & ASCII.NUL;  --  ../gdal.h:476

   GDAL_DCAP_FEATURE_STYLES : aliased constant String := "DCAP_FEATURE_STYLES" & ASCII.NUL;  --  ../gdal.h:481

   GDAL_DIM_TYPE_HORIZONTAL_X : aliased constant String := "HORIZONTAL_X" & ASCII.NUL;  --  ../gdal.h:486

   GDAL_DIM_TYPE_HORIZONTAL_Y : aliased constant String := "HORIZONTAL_Y" & ASCII.NUL;  --  ../gdal.h:491

   GDAL_DIM_TYPE_VERTICAL : aliased constant String := "VERTICAL" & ASCII.NUL;  --  ../gdal.h:496

   GDAL_DIM_TYPE_TEMPORAL : aliased constant String := "TEMPORAL" & ASCII.NUL;  --  ../gdal.h:501

   GDAL_DIM_TYPE_PARAMETRIC : aliased constant String := "PARAMETRIC" & ASCII.NUL;  --  ../gdal.h:506

   GDAL_OF_READONLY : constant := 16#00#;  --  ../gdal.h:536

   GDAL_OF_UPDATE : constant := 16#01#;  --  ../gdal.h:542

   GDAL_OF_ALL : constant := 16#00#;  --  ../gdal.h:548

   GDAL_OF_RASTER : constant := 16#02#;  --  ../gdal.h:554

   GDAL_OF_VECTOR : constant := 16#04#;  --  ../gdal.h:560

   GDAL_OF_GNM : constant := 16#08#;  --  ../gdal.h:566

   GDAL_OF_MULTIDIM_RASTER : constant := 16#10#;  --  ../gdal.h:572

   GDAL_OF_KIND_MASK : constant := 16#1E#;  --  ../gdal.h:575

   GDAL_OF_SHARED : constant := 16#20#;  --  ../gdal.h:582

   GDAL_OF_VERBOSE_ERROR : constant := 16#40#;  --  ../gdal.h:588

   GDAL_OF_INTERNAL : constant := 16#80#;  --  ../gdal.h:596

   GDAL_OF_DEFAULT_BLOCK_ACCESS : constant := 0;  --  ../gdal.h:607

   GDAL_OF_ARRAY_BLOCK_ACCESS : constant := 16#100#;  --  ../gdal.h:617

   GDAL_OF_HASHSET_BLOCK_ACCESS : constant := 16#200#;  --  ../gdal.h:627

   GDAL_OF_RESERVED_1 : constant := 16#300#;  --  ../gdal.h:632

   GDAL_OF_BLOCK_ACCESS_MASK : constant := 16#300#;  --  ../gdal.h:635

   GDAL_DS_LAYER_CREATIONOPTIONLIST : aliased constant String := "DS_LAYER_CREATIONOPTIONLIST" & ASCII.NUL;  --  ../gdal.h:738
   --  arg-macro: function SRCVAL (papoSource, eSrcType, ii)
   --    return eSrcType = GDT_Byte ? CPL_REINTERPRET_CAST(const GByte*,papoSource)(ii) : (eSrcType = GDT_Float32 ? CPL_REINTERPRET_CAST(const float*,papoSource)(ii) : (eSrcType = GDT_Float64 ? CPL_REINTERPRET_CAST(const double*,papoSource)(ii) : (eSrcType = GDT_Int32 ? CPL_REINTERPRET_CAST(const GInt32*,papoSource)(ii) : (eSrcType = GDT_UInt16 ? CPL_REINTERPRET_CAST(const GUInt16*,papoSource)(ii) : (eSrcType = GDT_Int16 ? CPL_REINTERPRET_CAST(const GInt16*,papoSource)(ii) : (eSrcType = GDT_UInt32 ? CPL_REINTERPRET_CAST(const GUInt32*,papoSource)(ii) : (eSrcType = GDT_CInt16 ? CPL_REINTERPRET_CAST(const GInt16*,papoSource)((ii) * 2) : (eSrcType = GDT_CInt32 ? CPL_REINTERPRET_CAST(const GInt32*,papoSource)((ii) * 2) : (eSrcType = GDT_CFloat32 ? CPL_REINTERPRET_CAST(const float*,papoSource)((ii) * 2) : (eSrcType = GDT_CFloat64 ? CPL_REINTERPRET_CAST(const double*,papoSource)((ii) * 2) : 0))))))))));

   GMF_ALL_VALID : constant := 16#01#;  --  ../gdal.h:1046

   GMF_PER_DATASET : constant := 16#02#;  --  ../gdal.h:1049

   GMF_ALPHA : constant := 16#04#;  --  ../gdal.h:1052

   GMF_NODATA : constant := 16#08#;  --  ../gdal.h:1055

   GDAL_DATA_COVERAGE_STATUS_UNIMPLEMENTED : constant := 16#01#;  --  ../gdal.h:1060

   GDAL_DATA_COVERAGE_STATUS_DATA : constant := 16#02#;  --  ../gdal.h:1066

   GDAL_DATA_COVERAGE_STATUS_EMPTY : constant := 16#04#;  --  ../gdal.h:1073
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

   function GDALGetDataTypeSize (arg1 : GDALDataType) return int  -- ../gdal.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDataTypeSize";

   function GDALGetDataTypeSizeBits (eDataType : GDALDataType) return int  -- ../gdal.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDataTypeSizeBits";

   function GDALGetDataTypeSizeBytes (arg1 : GDALDataType) return int  -- ../gdal.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDataTypeSizeBytes";

   function GDALDataTypeIsComplex (arg1 : GDALDataType) return int  -- ../gdal.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDataTypeIsComplex";

   function GDALDataTypeIsInteger (arg1 : GDALDataType) return int  -- ../gdal.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDataTypeIsInteger";

   function GDALDataTypeIsFloating (arg1 : GDALDataType) return int  -- ../gdal.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDataTypeIsFloating";

   function GDALDataTypeIsSigned (arg1 : GDALDataType) return int  -- ../gdal.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDataTypeIsSigned";

   function GDALGetDataTypeName (arg1 : GDALDataType) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDataTypeName";

   function GDALGetDataTypeByName (arg1 : Interfaces.C.Strings.chars_ptr) return GDALDataType  -- ../gdal.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDataTypeByName";

   function GDALDataTypeUnion (arg1 : GDALDataType; arg2 : GDALDataType) return GDALDataType  -- ../gdal.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDataTypeUnion";

   function GDALDataTypeUnionWithValue
     (eDT : GDALDataType;
      dValue : double;
      bComplex : int) return GDALDataType  -- ../gdal.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDataTypeUnionWithValue";

   function GDALFindDataType
     (nBits : int;
      bSigned : int;
      bFloating : int;
      bComplex : int) return GDALDataType  -- ../gdal.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "GDALFindDataType";

   function GDALFindDataTypeForValue (dValue : double; bComplex : int) return GDALDataType  -- ../gdal.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "GDALFindDataTypeForValue";

   function GDALAdjustValueToDataType
     (eDT : GDALDataType;
      dfValue : double;
      pbClamped : access int;
      pbRounded : access int) return double  -- ../gdal.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAdjustValueToDataType";

   function GDALGetNonComplexDataType (arg1 : GDALDataType) return GDALDataType  -- ../gdal.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetNonComplexDataType";

   function GDALDataTypeIsConversionLossy (eTypeFrom : GDALDataType; eTypeTo : GDALDataType) return int  -- ../gdal.h:96
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

   function GDALGetAsyncStatusTypeName (arg1 : GDALAsyncStatusType) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetAsyncStatusTypeName";

   function GDALGetAsyncStatusTypeByName (arg1 : Interfaces.C.Strings.chars_ptr) return GDALAsyncStatusType  -- ../gdal.h:112
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

   subtype GDALRIOResampleAlg is unsigned;
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
      nVersion : aliased int;  -- ../gdal.h:163
      eResampleAlg : aliased GDALRIOResampleAlg;  -- ../gdal.h:166
      pfnProgress : cpl_progress_h.GDALProgressFunc;  -- ../gdal.h:169
      pProgressData : System.Address;  -- ../gdal.h:171
      bFloatingPointWindowValidity : aliased int;  -- ../gdal.h:177
      dfXOff : aliased double;  -- ../gdal.h:179
      dfYOff : aliased double;  -- ../gdal.h:181
      dfXSize : aliased double;  -- ../gdal.h:183
      dfYSize : aliased double;  -- ../gdal.h:185
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal.h:186

   subtype GDALColorInterp is unsigned;
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

   function GDALGetColorInterpretationName (arg1 : GDALColorInterp) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetColorInterpretationName";

   function GDALGetColorInterpretationByName (pszName : Interfaces.C.Strings.chars_ptr) return GDALColorInterp  -- ../gdal.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetColorInterpretationByName";

   type GDALPaletteInterp is 
     (GPI_Gray,
      GPI_RGB,
      GPI_CMYK,
      GPI_HLS)
   with Convention => C;  -- ../gdal.h:235

   function GDALGetPaletteInterpretationName (arg1 : GDALPaletteInterp) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetPaletteInterpretationName";

   type GDALMajorObjectH is new System.Address;  -- ../gdal.h:265

   type GDALDatasetH is new System.Address;  -- ../gdal.h:268

   type GDALRasterBandH is new System.Address;  -- ../gdal.h:271

   type GDALDriverH is new System.Address;  -- ../gdal.h:274

   type GDALColorTableH is new System.Address;  -- ../gdal.h:277

   type GDALRasterAttributeTableH is new System.Address;  -- ../gdal.h:280

   type GDALAsyncReaderH is new System.Address;  -- ../gdal.h:283

   subtype GSpacing is cpl_port_h.GIntBig;  -- ../gdal.h:286

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
     (hDriver : GDALDriverH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : GDALDataType;
      arg7 : cpl_port_h.CSLConstList) return GDALDatasetH  -- ../gdal.h:511
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreate";

   function GDALCreateCopy
     (arg1 : GDALDriverH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : GDALDatasetH;
      arg4 : int;
      arg5 : cpl_port_h.CSLConstList;
      arg6 : cpl_progress_h.GDALProgressFunc;
      arg7 : System.Address) return GDALDatasetH  -- ../gdal.h:515
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateCopy";

   function GDALIdentifyDriver (pszFilename : Interfaces.C.Strings.chars_ptr; papszFileList : cpl_port_h.CSLConstList) return GDALDriverH  -- ../gdal.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "GDALIdentifyDriver";

   function GDALIdentifyDriverEx
     (pszFilename : Interfaces.C.Strings.chars_ptr;
      nIdentifyFlags : unsigned;
      papszAllowedDrivers : System.Address;
      papszFileList : System.Address) return GDALDriverH  -- ../gdal.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "GDALIdentifyDriverEx";

   function GDALOpen (pszFilename : Interfaces.C.Strings.chars_ptr; eAccess : GDALAccess) return GDALDatasetH  -- ../gdal.h:526
   with Import => True, 
        Convention => C, 
        External_Name => "GDALOpen";

   function GDALOpenShared (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : GDALAccess) return GDALDatasetH  -- ../gdal.h:527
   with Import => True, 
        Convention => C, 
        External_Name => "GDALOpenShared";

   function GDALOpenEx
     (pszFilename : Interfaces.C.Strings.chars_ptr;
      nOpenFlags : unsigned;
      papszAllowedDrivers : System.Address;
      papszOpenOptions : System.Address;
      papszSiblingFiles : System.Address) return GDALDatasetH  -- ../gdal.h:638
   with Import => True, 
        Convention => C, 
        External_Name => "GDALOpenEx";

   function GDALDumpOpenDatasets (arg1 : access x86_64_linux_gnu_bits_types_FILE_h.FILE) return int  -- ../gdal.h:644
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDumpOpenDatasets";

   function GDALGetDriverByName (arg1 : Interfaces.C.Strings.chars_ptr) return GDALDriverH  -- ../gdal.h:646
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDriverByName";

   function GDALGetDriverCount return int  -- ../gdal.h:647
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDriverCount";

   function GDALGetDriver (arg1 : int) return GDALDriverH  -- ../gdal.h:648
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDriver";

   function GDALCreateDriver return GDALDriverH  -- ../gdal.h:649
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateDriver";

   procedure GDALDestroyDriver (arg1 : GDALDriverH)  -- ../gdal.h:650
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyDriver";

   function GDALRegisterDriver (arg1 : GDALDriverH) return int  -- ../gdal.h:651
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRegisterDriver";

   procedure GDALDeregisterDriver (arg1 : GDALDriverH)  -- ../gdal.h:652
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

   function GDALDeleteDataset (arg1 : GDALDriverH; arg2 : Interfaces.C.Strings.chars_ptr) return cpl_error_h.CPLErr  -- ../gdal.h:657
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDeleteDataset";

   function GDALRenameDataset
     (arg1 : GDALDriverH;
      pszNewName : Interfaces.C.Strings.chars_ptr;
      pszOldName : Interfaces.C.Strings.chars_ptr) return cpl_error_h.CPLErr  -- ../gdal.h:658
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRenameDataset";

   function GDALCopyDatasetFiles
     (arg1 : GDALDriverH;
      pszNewName : Interfaces.C.Strings.chars_ptr;
      pszOldName : Interfaces.C.Strings.chars_ptr) return cpl_error_h.CPLErr  -- ../gdal.h:661
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCopyDatasetFiles";

   function GDALValidateCreationOptions (arg1 : GDALDriverH; papszCreationOptions : cpl_port_h.CSLConstList) return int  -- ../gdal.h:664
   with Import => True, 
        Convention => C, 
        External_Name => "GDALValidateCreationOptions";

   function GDALGetDriverShortName (arg1 : GDALDriverH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:668
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDriverShortName";

   function GDALGetDriverLongName (arg1 : GDALDriverH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:669
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDriverLongName";

   function GDALGetDriverHelpTopic (arg1 : GDALDriverH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:670
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDriverHelpTopic";

   function GDALGetDriverCreationOptionList (arg1 : GDALDriverH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:671
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDriverCreationOptionList";

   type GDAL_GCP is record
      pszId : Interfaces.C.Strings.chars_ptr;  -- ../gdal.h:681
      pszInfo : Interfaces.C.Strings.chars_ptr;  -- ../gdal.h:684
      dfGCPPixel : aliased double;  -- ../gdal.h:687
      dfGCPLine : aliased double;  -- ../gdal.h:689
      dfGCPX : aliased double;  -- ../gdal.h:692
      dfGCPY : aliased double;  -- ../gdal.h:695
      dfGCPZ : aliased double;  -- ../gdal.h:698
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal.h:699

   procedure GDALInitGCPs (arg1 : int; arg2 : access GDAL_GCP)  -- ../gdal.h:701
   with Import => True, 
        Convention => C, 
        External_Name => "GDALInitGCPs";

   procedure GDALDeinitGCPs (arg1 : int; arg2 : access GDAL_GCP)  -- ../gdal.h:702
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDeinitGCPs";

   function GDALDuplicateGCPs (arg1 : int; arg2 : access constant GDAL_GCP) return access GDAL_GCP  -- ../gdal.h:703
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDuplicateGCPs";

   function GDALGCPsToGeoTransform
     (nGCPCount : int;
      pasGCPs : access constant GDAL_GCP;
      padfGeoTransform : access double;
      bApproxOK : int) return int  -- ../gdal.h:706
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGCPsToGeoTransform";

   function GDALInvGeoTransform (padfGeoTransformIn : access double; padfInvGeoTransformOut : access double) return int  -- ../gdal.h:709
   with Import => True, 
        Convention => C, 
        External_Name => "GDALInvGeoTransform";

   procedure GDALApplyGeoTransform
     (arg1 : access double;
      arg2 : double;
      arg3 : double;
      arg4 : access double;
      arg5 : access double)  -- ../gdal.h:711
   with Import => True, 
        Convention => C, 
        External_Name => "GDALApplyGeoTransform";

   procedure GDALComposeGeoTransforms
     (padfGeoTransform1 : access double;
      padfGeoTransform2 : access double;
      padfGeoTransformOut : access double)  -- ../gdal.h:713
   with Import => True, 
        Convention => C, 
        External_Name => "GDALComposeGeoTransforms";

   function GDALGetMetadataDomainList (hObject : GDALMajorObjectH) return System.Address  -- ../gdal.h:721
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetMetadataDomainList";

   function GDALGetMetadata (arg1 : GDALMajorObjectH; arg2 : Interfaces.C.Strings.chars_ptr) return System.Address  -- ../gdal.h:722
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetMetadata";

   function GDALSetMetadata
     (arg1 : GDALMajorObjectH;
      arg2 : cpl_port_h.CSLConstList;
      arg3 : Interfaces.C.Strings.chars_ptr) return cpl_error_h.CPLErr  -- ../gdal.h:723
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetMetadata";

   function GDALGetMetadataItem
     (arg1 : GDALMajorObjectH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:726
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetMetadataItem";

   function GDALSetMetadataItem
     (arg1 : GDALMajorObjectH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr) return cpl_error_h.CPLErr  -- ../gdal.h:728
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetMetadataItem";

   function GDALGetDescription (arg1 : GDALMajorObjectH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:730
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDescription";

   procedure GDALSetDescription (arg1 : GDALMajorObjectH; arg2 : Interfaces.C.Strings.chars_ptr)  -- ../gdal.h:731
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetDescription";

   function GDALGetDatasetDriver (arg1 : GDALDatasetH) return GDALDriverH  -- ../gdal.h:740
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDatasetDriver";

   function GDALGetFileList (arg1 : GDALDatasetH) return System.Address  -- ../gdal.h:741
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetFileList";

   procedure GDALClose (arg1 : GDALDatasetH)  -- ../gdal.h:742
   with Import => True, 
        Convention => C, 
        External_Name => "GDALClose";

   function GDALGetRasterXSize (arg1 : GDALDatasetH) return int  -- ../gdal.h:743
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterXSize";

   function GDALGetRasterYSize (arg1 : GDALDatasetH) return int  -- ../gdal.h:744
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterYSize";

   function GDALGetRasterCount (arg1 : GDALDatasetH) return int  -- ../gdal.h:745
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterCount";

   function GDALGetRasterBand (arg1 : GDALDatasetH; arg2 : int) return GDALRasterBandH  -- ../gdal.h:746
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterBand";

   function GDALAddBand
     (hDS : GDALDatasetH;
      eType : GDALDataType;
      papszOptions : cpl_port_h.CSLConstList) return cpl_error_h.CPLErr  -- ../gdal.h:748
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAddBand";

   function GDALBeginAsyncReader
     (hDS : GDALDatasetH;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      pBuf : System.Address;
      nBufXSize : int;
      nBufYSize : int;
      eBufType : GDALDataType;
      nBandCount : int;
      panBandMap : access int;
      nPixelSpace : int;
      nLineSpace : int;
      nBandSpace : int;
      papszOptions : cpl_port_h.CSLConstList) return GDALAsyncReaderH  -- ../gdal.h:752
   with Import => True, 
        Convention => C, 
        External_Name => "GDALBeginAsyncReader";

   procedure GDALEndAsyncReader (hDS : GDALDatasetH; hAsynchReaderH : GDALAsyncReaderH)  -- ../gdal.h:760
   with Import => True, 
        Convention => C, 
        External_Name => "GDALEndAsyncReader";

   function GDALDatasetRasterIO
     (hDS : GDALDatasetH;
      eRWFlag : GDALRWFlag;
      nDSXOff : int;
      nDSYOff : int;
      nDSXSize : int;
      nDSYSize : int;
      pBuffer : System.Address;
      nBXSize : int;
      nBYSize : int;
      eBDataType : GDALDataType;
      nBandCount : int;
      panBandCount : access int;
      nPixelSpace : int;
      nLineSpace : int;
      nBandSpace : int) return cpl_error_h.CPLErr  -- ../gdal.h:762
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetRasterIO";

   function GDALDatasetRasterIOEx
     (hDS : GDALDatasetH;
      eRWFlag : GDALRWFlag;
      nDSXOff : int;
      nDSYOff : int;
      nDSXSize : int;
      nDSYSize : int;
      pBuffer : System.Address;
      nBXSize : int;
      nBYSize : int;
      eBDataType : GDALDataType;
      nBandCount : int;
      panBandCount : access int;
      nPixelSpace : GSpacing;
      nLineSpace : GSpacing;
      nBandSpace : GSpacing;
      psExtraArg : access GDALRasterIOExtraArg) return cpl_error_h.CPLErr  -- ../gdal.h:769
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetRasterIOEx";

   function GDALDatasetAdviseRead
     (hDS : GDALDatasetH;
      nDSXOff : int;
      nDSYOff : int;
      nDSXSize : int;
      nDSYSize : int;
      nBXSize : int;
      nBYSize : int;
      eBDataType : GDALDataType;
      nBandCount : int;
      panBandCount : access int;
      papszOptions : cpl_port_h.CSLConstList) return cpl_error_h.CPLErr  -- ../gdal.h:777
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetAdviseRead";

   function GDALGetProjectionRef (arg1 : GDALDatasetH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:782
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetProjectionRef";

   function GDALGetSpatialRef (arg1 : GDALDatasetH) return ogr_api_h.OGRSpatialReferenceH  -- ../gdal.h:783
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetSpatialRef";

   function GDALSetProjection (arg1 : GDALDatasetH; arg2 : Interfaces.C.Strings.chars_ptr) return cpl_error_h.CPLErr  -- ../gdal.h:784
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetProjection";

   function GDALSetSpatialRef (arg1 : GDALDatasetH; arg2 : ogr_api_h.OGRSpatialReferenceH) return cpl_error_h.CPLErr  -- ../gdal.h:785
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetSpatialRef";

   function GDALGetGeoTransform (arg1 : GDALDatasetH; arg2 : access double) return cpl_error_h.CPLErr  -- ../gdal.h:786
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetGeoTransform";

   function GDALSetGeoTransform (arg1 : GDALDatasetH; arg2 : access double) return cpl_error_h.CPLErr  -- ../gdal.h:787
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetGeoTransform";

   function GDALGetGCPCount (arg1 : GDALDatasetH) return int  -- ../gdal.h:789
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetGCPCount";

   function GDALGetGCPProjection (arg1 : GDALDatasetH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:790
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetGCPProjection";

   function GDALGetGCPSpatialRef (arg1 : GDALDatasetH) return ogr_api_h.OGRSpatialReferenceH  -- ../gdal.h:791
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetGCPSpatialRef";

   function GDALGetGCPs (arg1 : GDALDatasetH) return access constant GDAL_GCP  -- ../gdal.h:792
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetGCPs";

   function GDALSetGCPs
     (arg1 : GDALDatasetH;
      arg2 : int;
      arg3 : access constant GDAL_GCP;
      arg4 : Interfaces.C.Strings.chars_ptr) return cpl_error_h.CPLErr  -- ../gdal.h:793
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetGCPs";

   function GDALSetGCPs2
     (arg1 : GDALDatasetH;
      arg2 : int;
      arg3 : access constant GDAL_GCP;
      arg4 : ogr_api_h.OGRSpatialReferenceH) return cpl_error_h.CPLErr  -- ../gdal.h:795
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetGCPs2";

   function GDALGetInternalHandle (arg1 : GDALDatasetH; arg2 : Interfaces.C.Strings.chars_ptr) return System.Address  -- ../gdal.h:798
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetInternalHandle";

   function GDALReferenceDataset (arg1 : GDALDatasetH) return int  -- ../gdal.h:799
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReferenceDataset";

   function GDALDereferenceDataset (arg1 : GDALDatasetH) return int  -- ../gdal.h:800
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDereferenceDataset";

   function GDALReleaseDataset (arg1 : GDALDatasetH) return int  -- ../gdal.h:801
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReleaseDataset";

   function GDALBuildOverviews
     (arg1 : GDALDatasetH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : access int;
      arg5 : int;
      arg6 : access int;
      arg7 : cpl_progress_h.GDALProgressFunc;
      arg8 : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:804
   with Import => True, 
        Convention => C, 
        External_Name => "GDALBuildOverviews";

   procedure GDALGetOpenDatasets (hDS : System.Address; pnCount : access int)  -- ../gdal.h:806
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetOpenDatasets";

   function GDALGetAccess (hDS : GDALDatasetH) return int  -- ../gdal.h:807
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetAccess";

   procedure GDALFlushCache (hDS : GDALDatasetH)  -- ../gdal.h:808
   with Import => True, 
        Convention => C, 
        External_Name => "GDALFlushCache";

   function GDALCreateDatasetMaskBand (hDS : GDALDatasetH; nFlags : int) return cpl_error_h.CPLErr  -- ../gdal.h:811
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateDatasetMaskBand";

   function GDALDatasetCopyWholeRaster
     (hSrcDS : GDALDatasetH;
      hDstDS : GDALDatasetH;
      papszOptions : cpl_port_h.CSLConstList;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:813
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetCopyWholeRaster";

   function GDALRasterBandCopyWholeRaster
     (hSrcBand : GDALRasterBandH;
      hDstBand : GDALRasterBandH;
      constpapszOptions : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:817
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterBandCopyWholeRaster";

   function GDALRegenerateOverviews
     (hSrcBand : GDALRasterBandH;
      nOverviewCount : int;
      pahOverviewBands : System.Address;
      pszResampling : Interfaces.C.Strings.chars_ptr;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:823
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRegenerateOverviews";

   function GDALDatasetGetLayerCount (arg1 : GDALDatasetH) return int  -- ../gdal.h:828
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetLayerCount";

   function GDALDatasetGetLayer (arg1 : GDALDatasetH; arg2 : int) return ogr_api_h.OGRLayerH  -- ../gdal.h:829
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetLayer";

   function GDALDatasetGetLayerByName (arg1 : GDALDatasetH; arg2 : Interfaces.C.Strings.chars_ptr) return ogr_api_h.OGRLayerH  -- ../gdal.h:830
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetLayerByName";

   function GDALDatasetDeleteLayer (arg1 : GDALDatasetH; arg2 : int) return ogr_core_h.OGRErr  -- ../gdal.h:831
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetDeleteLayer";

   function GDALDatasetCreateLayer
     (arg1 : GDALDatasetH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ogr_api_h.OGRSpatialReferenceH;
      arg4 : ogr_core_h.OGRwkbGeometryType;
      arg5 : cpl_port_h.CSLConstList) return ogr_api_h.OGRLayerH  -- ../gdal.h:832
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetCreateLayer";

   function GDALDatasetCopyLayer
     (arg1 : GDALDatasetH;
      arg2 : ogr_api_h.OGRLayerH;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : cpl_port_h.CSLConstList) return ogr_api_h.OGRLayerH  -- ../gdal.h:835
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetCopyLayer";

   procedure GDALDatasetResetReading (arg1 : GDALDatasetH)  -- ../gdal.h:837
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetResetReading";

   function GDALDatasetGetNextFeature
     (hDS : GDALDatasetH;
      phBelongingLayer : System.Address;
      pdfProgressPct : access double;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return ogr_api_h.OGRFeatureH  -- ../gdal.h:838
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetNextFeature";

   function GDALDatasetTestCapability (arg1 : GDALDatasetH; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- ../gdal.h:843
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetTestCapability";

   function GDALDatasetExecuteSQL
     (arg1 : GDALDatasetH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ogr_api_h.OGRGeometryH;
      arg4 : Interfaces.C.Strings.chars_ptr) return ogr_api_h.OGRLayerH  -- ../gdal.h:844
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetExecuteSQL";

   function GDALDatasetAbortSQL (arg1 : GDALDatasetH) return ogr_core_h.OGRErr  -- ../gdal.h:846
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetAbortSQL";

   procedure GDALDatasetReleaseResultSet (arg1 : GDALDatasetH; arg2 : ogr_api_h.OGRLayerH)  -- ../gdal.h:847
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetReleaseResultSet";

   function GDALDatasetGetStyleTable (arg1 : GDALDatasetH) return ogr_api_h.OGRStyleTableH  -- ../gdal.h:848
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetStyleTable";

   procedure GDALDatasetSetStyleTableDirectly (arg1 : GDALDatasetH; arg2 : ogr_api_h.OGRStyleTableH)  -- ../gdal.h:849
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetSetStyleTableDirectly";

   procedure GDALDatasetSetStyleTable (arg1 : GDALDatasetH; arg2 : ogr_api_h.OGRStyleTableH)  -- ../gdal.h:850
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetSetStyleTable";

   function GDALDatasetStartTransaction (hDS : GDALDatasetH; bForce : int) return ogr_core_h.OGRErr  -- ../gdal.h:851
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetStartTransaction";

   function GDALDatasetCommitTransaction (hDS : GDALDatasetH) return ogr_core_h.OGRErr  -- ../gdal.h:852
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetCommitTransaction";

   function GDALDatasetRollbackTransaction (hDS : GDALDatasetH) return ogr_core_h.OGRErr  -- ../gdal.h:853
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetRollbackTransaction";

   procedure GDALDatasetClearStatistics (hDS : GDALDatasetH)  -- ../gdal.h:854
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetClearStatistics";

   function GDALDatasetGetFieldDomain (hDS : GDALDatasetH; pszName : Interfaces.C.Strings.chars_ptr) return ogr_api_h.OGRFieldDomainH  -- ../gdal.h:856
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetFieldDomain";

   function GDALDatasetAddFieldDomain
     (hDS : GDALDatasetH;
      hFieldDomain : ogr_api_h.OGRFieldDomainH;
      ppszFailureReason : System.Address) return Extensions.bool  -- ../gdal.h:858
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetAddFieldDomain";

   type GDALDerivedPixelFunc is access function
        (arg1 : System.Address;
         arg2 : int;
         arg3 : System.Address;
         arg4 : int;
         arg5 : int;
         arg6 : GDALDataType;
         arg7 : GDALDataType;
         arg8 : int;
         arg9 : int) return cpl_error_h.CPLErr
   with Convention => C;  -- ../gdal.h:897

   function GDALGetRasterDataType (arg1 : GDALRasterBandH) return GDALDataType  -- ../gdal.h:902
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterDataType";

   procedure GDALGetBlockSize
     (arg1 : GDALRasterBandH;
      pnXSize : access int;
      pnYSize : access int)  -- ../gdal.h:904
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetBlockSize";

   function GDALGetActualBlockSize
     (arg1 : GDALRasterBandH;
      nXBlockOff : int;
      nYBlockOff : int;
      pnXValid : access int;
      pnYValid : access int) return cpl_error_h.CPLErr  -- ../gdal.h:907
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetActualBlockSize";

   function GDALRasterAdviseRead
     (hRB : GDALRasterBandH;
      nDSXOff : int;
      nDSYOff : int;
      nDSXSize : int;
      nDSYSize : int;
      nBXSize : int;
      nBYSize : int;
      eBDataType : GDALDataType;
      papszOptions : cpl_port_h.CSLConstList) return cpl_error_h.CPLErr  -- ../gdal.h:910
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterAdviseRead";

   function GDALRasterIO
     (hRBand : GDALRasterBandH;
      eRWFlag : GDALRWFlag;
      nDSXOff : int;
      nDSYOff : int;
      nDSXSize : int;
      nDSYSize : int;
      pBuffer : System.Address;
      nBXSize : int;
      nBYSize : int;
      eBDataType : GDALDataType;
      nPixelSpace : int;
      nLineSpace : int) return cpl_error_h.CPLErr  -- ../gdal.h:915
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterIO";

   function GDALRasterIOEx
     (hRBand : GDALRasterBandH;
      eRWFlag : GDALRWFlag;
      nDSXOff : int;
      nDSYOff : int;
      nDSXSize : int;
      nDSYSize : int;
      pBuffer : System.Address;
      nBXSize : int;
      nBYSize : int;
      eBDataType : GDALDataType;
      nPixelSpace : GSpacing;
      nLineSpace : GSpacing;
      psExtraArg : access GDALRasterIOExtraArg) return cpl_error_h.CPLErr  -- ../gdal.h:920
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterIOEx";

   function GDALReadBlock
     (arg1 : GDALRasterBandH;
      arg2 : int;
      arg3 : int;
      arg4 : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:925
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReadBlock";

   function GDALWriteBlock
     (arg1 : GDALRasterBandH;
      arg2 : int;
      arg3 : int;
      arg4 : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:926
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWriteBlock";

   function GDALGetRasterBandXSize (arg1 : GDALRasterBandH) return int  -- ../gdal.h:927
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterBandXSize";

   function GDALGetRasterBandYSize (arg1 : GDALRasterBandH) return int  -- ../gdal.h:928
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterBandYSize";

   function GDALGetRasterAccess (arg1 : GDALRasterBandH) return GDALAccess  -- ../gdal.h:929
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterAccess";

   function GDALGetBandNumber (arg1 : GDALRasterBandH) return int  -- ../gdal.h:930
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetBandNumber";

   function GDALGetBandDataset (arg1 : GDALRasterBandH) return GDALDatasetH  -- ../gdal.h:931
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetBandDataset";

   function GDALGetRasterColorInterpretation (arg1 : GDALRasterBandH) return GDALColorInterp  -- ../gdal.h:934
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterColorInterpretation";

   function GDALSetRasterColorInterpretation (arg1 : GDALRasterBandH; arg2 : GDALColorInterp) return cpl_error_h.CPLErr  -- ../gdal.h:936
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetRasterColorInterpretation";

   function GDALGetRasterColorTable (arg1 : GDALRasterBandH) return GDALColorTableH  -- ../gdal.h:937
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterColorTable";

   function GDALSetRasterColorTable (arg1 : GDALRasterBandH; arg2 : GDALColorTableH) return cpl_error_h.CPLErr  -- ../gdal.h:938
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetRasterColorTable";

   function GDALHasArbitraryOverviews (arg1 : GDALRasterBandH) return int  -- ../gdal.h:939
   with Import => True, 
        Convention => C, 
        External_Name => "GDALHasArbitraryOverviews";

   function GDALGetOverviewCount (arg1 : GDALRasterBandH) return int  -- ../gdal.h:940
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetOverviewCount";

   function GDALGetOverview (arg1 : GDALRasterBandH; arg2 : int) return GDALRasterBandH  -- ../gdal.h:941
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetOverview";

   function GDALGetRasterNoDataValue (arg1 : GDALRasterBandH; arg2 : access int) return double  -- ../gdal.h:942
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterNoDataValue";

   function GDALSetRasterNoDataValue (arg1 : GDALRasterBandH; arg2 : double) return cpl_error_h.CPLErr  -- ../gdal.h:943
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetRasterNoDataValue";

   function GDALDeleteRasterNoDataValue (arg1 : GDALRasterBandH) return cpl_error_h.CPLErr  -- ../gdal.h:944
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDeleteRasterNoDataValue";

   function GDALGetRasterCategoryNames (arg1 : GDALRasterBandH) return System.Address  -- ../gdal.h:945
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterCategoryNames";

   function GDALSetRasterCategoryNames (arg1 : GDALRasterBandH; arg2 : cpl_port_h.CSLConstList) return cpl_error_h.CPLErr  -- ../gdal.h:946
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetRasterCategoryNames";

   function GDALGetRasterMinimum (arg1 : GDALRasterBandH; pbSuccess : access int) return double  -- ../gdal.h:947
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterMinimum";

   function GDALGetRasterMaximum (arg1 : GDALRasterBandH; pbSuccess : access int) return double  -- ../gdal.h:948
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterMaximum";

   function GDALGetRasterStatistics
     (arg1 : GDALRasterBandH;
      bApproxOK : int;
      bForce : int;
      pdfMin : access double;
      pdfMax : access double;
      pdfMean : access double;
      pdfStdDev : access double) return cpl_error_h.CPLErr  -- ../gdal.h:949
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterStatistics";

   function GDALComputeRasterStatistics
     (arg1 : GDALRasterBandH;
      bApproxOK : int;
      pdfMin : access double;
      pdfMax : access double;
      pdfMean : access double;
      pdfStdDev : access double;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:952
   with Import => True, 
        Convention => C, 
        External_Name => "GDALComputeRasterStatistics";

   function GDALSetRasterStatistics
     (hBand : GDALRasterBandH;
      dfMin : double;
      dfMax : double;
      dfMean : double;
      dfStdDev : double) return cpl_error_h.CPLErr  -- ../gdal.h:956
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetRasterStatistics";

   function GDALRasterBandAsMDArray (arg1 : GDALRasterBandH) return GDALMDArrayH  -- ../gdal.h:960
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterBandAsMDArray";

   function GDALGetRasterUnitType (arg1 : GDALRasterBandH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:962
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterUnitType";

   function GDALSetRasterUnitType (hBand : GDALRasterBandH; pszNewValue : Interfaces.C.Strings.chars_ptr) return cpl_error_h.CPLErr  -- ../gdal.h:963
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetRasterUnitType";

   function GDALGetRasterOffset (arg1 : GDALRasterBandH; pbSuccess : access int) return double  -- ../gdal.h:964
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterOffset";

   function GDALSetRasterOffset (hBand : GDALRasterBandH; dfNewOffset : double) return cpl_error_h.CPLErr  -- ../gdal.h:965
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetRasterOffset";

   function GDALGetRasterScale (arg1 : GDALRasterBandH; pbSuccess : access int) return double  -- ../gdal.h:966
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterScale";

   function GDALSetRasterScale (hBand : GDALRasterBandH; dfNewOffset : double) return cpl_error_h.CPLErr  -- ../gdal.h:967
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetRasterScale";

   procedure GDALComputeRasterMinMax
     (hBand : GDALRasterBandH;
      bApproxOK : int;
      adfMinMax : access double)  -- ../gdal.h:969
   with Import => True, 
        Convention => C, 
        External_Name => "GDALComputeRasterMinMax";

   function GDALFlushRasterCache (hBand : GDALRasterBandH) return cpl_error_h.CPLErr  -- ../gdal.h:971
   with Import => True, 
        Convention => C, 
        External_Name => "GDALFlushRasterCache";

   function GDALGetRasterHistogram
     (hBand : GDALRasterBandH;
      dfMin : double;
      dfMax : double;
      nBuckets : int;
      panHistogram : access int;
      bIncludeOutOfRange : int;
      bApproxOK : int;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:972
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterHistogram";

   function GDALGetRasterHistogramEx
     (hBand : GDALRasterBandH;
      dfMin : double;
      dfMax : double;
      nBuckets : int;
      panHistogram : access cpl_port_h.GUIntBig;
      bIncludeOutOfRange : int;
      bApproxOK : int;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:982
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterHistogramEx";

   function GDALGetDefaultHistogram
     (hBand : GDALRasterBandH;
      pdfMin : access double;
      pdfMax : access double;
      pnBuckets : access int;
      ppanHistogram : System.Address;
      bForce : int;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:988
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDefaultHistogram";

   function GDALGetDefaultHistogramEx
     (hBand : GDALRasterBandH;
      pdfMin : access double;
      pdfMax : access double;
      pnBuckets : access int;
      ppanHistogram : System.Address;
      bForce : int;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:998
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDefaultHistogramEx";

   function GDALSetDefaultHistogram
     (hBand : GDALRasterBandH;
      dfMin : double;
      dfMax : double;
      nBuckets : int;
      panHistogram : access int) return cpl_error_h.CPLErr  -- ../gdal.h:1004
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetDefaultHistogram";

   function GDALSetDefaultHistogramEx
     (hBand : GDALRasterBandH;
      dfMin : double;
      dfMax : double;
      nBuckets : int;
      panHistogram : access cpl_port_h.GUIntBig) return cpl_error_h.CPLErr  -- ../gdal.h:1011
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetDefaultHistogramEx";

   function GDALGetRandomRasterSample
     (arg1 : GDALRasterBandH;
      arg2 : int;
      arg3 : access float) return int  -- ../gdal.h:1015
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRandomRasterSample";

   function GDALGetRasterSampleOverview (arg1 : GDALRasterBandH; arg2 : int) return GDALRasterBandH  -- ../gdal.h:1017
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterSampleOverview";

   function GDALGetRasterSampleOverviewEx (arg1 : GDALRasterBandH; arg2 : cpl_port_h.GUIntBig) return GDALRasterBandH  -- ../gdal.h:1019
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetRasterSampleOverviewEx";

   function GDALFillRaster
     (hBand : GDALRasterBandH;
      dfRealValue : double;
      dfImaginaryValue : double) return cpl_error_h.CPLErr  -- ../gdal.h:1020
   with Import => True, 
        Convention => C, 
        External_Name => "GDALFillRaster";

   function GDALComputeBandStats
     (hBand : GDALRasterBandH;
      nSampleStep : int;
      pdfMean : access double;
      pdfStdDev : access double;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:1023
   with Import => True, 
        Convention => C, 
        External_Name => "GDALComputeBandStats";

   function GDALOverviewMagnitudeCorrection
     (hBaseBand : GDALRasterBandH;
      nOverviewCount : int;
      pahOverviews : System.Address;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:1027
   with Import => True, 
        Convention => C, 
        External_Name => "GDALOverviewMagnitudeCorrection";

   function GDALGetDefaultRAT (hBand : GDALRasterBandH) return GDALRasterAttributeTableH  -- ../gdal.h:1033
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDefaultRAT";

   function GDALSetDefaultRAT (arg1 : GDALRasterBandH; arg2 : GDALRasterAttributeTableH) return cpl_error_h.CPLErr  -- ../gdal.h:1035
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetDefaultRAT";

   function GDALAddDerivedBandPixelFunc (pszName : Interfaces.C.Strings.chars_ptr; pfnPixelFunc : GDALDerivedPixelFunc) return cpl_error_h.CPLErr  -- ../gdal.h:1037
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAddDerivedBandPixelFunc";

   function GDALGetMaskBand (hBand : GDALRasterBandH) return GDALRasterBandH  -- ../gdal.h:1040
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetMaskBand";

   function GDALGetMaskFlags (hBand : GDALRasterBandH) return int  -- ../gdal.h:1041
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetMaskFlags";

   function GDALCreateMaskBand (hBand : GDALRasterBandH; nFlags : int) return cpl_error_h.CPLErr  -- ../gdal.h:1043
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateMaskBand";

   function GDALGetDataCoverageStatus
     (hBand : GDALRasterBandH;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      nMaskFlagStop : int;
      pdfDataPct : access double) return int  -- ../gdal.h:1075
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetDataCoverageStatus";

   function GDALARGetNextUpdatedRegion
     (hARIO : GDALAsyncReaderH;
      dfTimeout : double;
      pnXBufOff : access int;
      pnYBufOff : access int;
      pnXBufSize : access int;
      pnYBufSize : access int) return GDALAsyncStatusType  -- ../gdal.h:1086
   with Import => True, 
        Convention => C, 
        External_Name => "GDALARGetNextUpdatedRegion";

   function GDALARLockBuffer (hARIO : GDALAsyncReaderH; dfTimeout : double) return int  -- ../gdal.h:1089
   with Import => True, 
        Convention => C, 
        External_Name => "GDALARLockBuffer";

   procedure GDALARUnlockBuffer (hARIO : GDALAsyncReaderH)  -- ../gdal.h:1091
   with Import => True, 
        Convention => C, 
        External_Name => "GDALARUnlockBuffer";

   function GDALGeneralCmdLineProcessor
     (nArgc : int;
      ppapszArgv : System.Address;
      nOptions : int) return int  -- ../gdal.h:1096
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGeneralCmdLineProcessor";

   procedure GDALSwapWords
     (pData : System.Address;
      nWordSize : int;
      nWordCount : int;
      nWordSkip : int)  -- ../gdal.h:1098
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSwapWords";

   procedure GDALSwapWordsEx
     (pData : System.Address;
      nWordSize : int;
      nWordCount : stddef_h.size_t;
      nWordSkip : int)  -- ../gdal.h:1100
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSwapWordsEx";

   procedure GDALCopyWords
     (pSrcData : System.Address;
      eSrcType : GDALDataType;
      nSrcPixelOffset : int;
      pDstData : System.Address;
      eDstType : GDALDataType;
      nDstPixelOffset : int;
      nWordCount : int)  -- ../gdal.h:1104
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCopyWords";

   procedure GDALCopyWords64
     (pSrcData : System.Address;
      eSrcType : GDALDataType;
      nSrcPixelOffset : int;
      pDstData : System.Address;
      eDstType : GDALDataType;
      nDstPixelOffset : int;
      nWordCount : cpl_port_h.GPtrDiff_t)  -- ../gdal.h:1111
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCopyWords64";

   procedure GDALCopyBits
     (pabySrcData : access cpl_port_h.GByte;
      nSrcOffset : int;
      nSrcStep : int;
      pabyDstData : access cpl_port_h.GByte;
      nDstOffset : int;
      nDstStep : int;
      nBitCount : int;
      nStepCount : int)  -- ../gdal.h:1118
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCopyBits";

   function GDALLoadWorldFile (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access double) return int  -- ../gdal.h:1122
   with Import => True, 
        Convention => C, 
        External_Name => "GDALLoadWorldFile";

   function GDALReadWorldFile
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access double) return int  -- ../gdal.h:1123
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReadWorldFile";

   function GDALWriteWorldFile
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access double) return int  -- ../gdal.h:1125
   with Import => True, 
        Convention => C, 
        External_Name => "GDALWriteWorldFile";

   function GDALLoadTabFile
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access double;
      arg3 : System.Address;
      arg4 : access int;
      arg5 : System.Address) return int  -- ../gdal.h:1127
   with Import => True, 
        Convention => C, 
        External_Name => "GDALLoadTabFile";

   function GDALReadTabFile
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access double;
      arg3 : System.Address;
      arg4 : access int;
      arg5 : System.Address) return int  -- ../gdal.h:1129
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReadTabFile";

   function GDALLoadOziMapFile
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access double;
      arg3 : System.Address;
      arg4 : access int;
      arg5 : System.Address) return int  -- ../gdal.h:1131
   with Import => True, 
        Convention => C, 
        External_Name => "GDALLoadOziMapFile";

   function GDALReadOziMapFile
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access double;
      arg3 : System.Address;
      arg4 : access int;
      arg5 : System.Address) return int  -- ../gdal.h:1133
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReadOziMapFile";

   function GDALDecToDMS
     (arg1 : double;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1136
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDecToDMS";

   function GDALPackedDMSToDec (arg1 : double) return double  -- ../gdal.h:1137
   with Import => True, 
        Convention => C, 
        External_Name => "GDALPackedDMSToDec";

   function GDALDecToPackedDMS (arg1 : double) return double  -- ../gdal.h:1138
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDecToPackedDMS";

   type GDALRPCInfoV1_array6584 is array (0 .. 19) of aliased double;
   type GDALRPCInfoV1 is record
      dfLINE_OFF : aliased double;  -- ../gdal.h:1173
      dfSAMP_OFF : aliased double;  -- ../gdal.h:1174
      dfLAT_OFF : aliased double;  -- ../gdal.h:1175
      dfLONG_OFF : aliased double;  -- ../gdal.h:1176
      dfHEIGHT_OFF : aliased double;  -- ../gdal.h:1177
      dfLINE_SCALE : aliased double;  -- ../gdal.h:1179
      dfSAMP_SCALE : aliased double;  -- ../gdal.h:1180
      dfLAT_SCALE : aliased double;  -- ../gdal.h:1181
      dfLONG_SCALE : aliased double;  -- ../gdal.h:1182
      dfHEIGHT_SCALE : aliased double;  -- ../gdal.h:1183
      adfLINE_NUM_COEFF : aliased GDALRPCInfoV1_array6584;  -- ../gdal.h:1185
      adfLINE_DEN_COEFF : aliased GDALRPCInfoV1_array6584;  -- ../gdal.h:1186
      adfSAMP_NUM_COEFF : aliased GDALRPCInfoV1_array6584;  -- ../gdal.h:1187
      adfSAMP_DEN_COEFF : aliased GDALRPCInfoV1_array6584;  -- ../gdal.h:1188
      dfMIN_LONG : aliased double;  -- ../gdal.h:1190
      dfMIN_LAT : aliased double;  -- ../gdal.h:1191
      dfMAX_LONG : aliased double;  -- ../gdal.h:1192
      dfMAX_LAT : aliased double;  -- ../gdal.h:1193
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal.h:1194

   type GDALRPCInfoV2_array6584 is array (0 .. 19) of aliased double;
   type GDALRPCInfoV2 is record
      dfLINE_OFF : aliased double;  -- ../gdal.h:1201
      dfSAMP_OFF : aliased double;  -- ../gdal.h:1202
      dfLAT_OFF : aliased double;  -- ../gdal.h:1203
      dfLONG_OFF : aliased double;  -- ../gdal.h:1204
      dfHEIGHT_OFF : aliased double;  -- ../gdal.h:1205
      dfLINE_SCALE : aliased double;  -- ../gdal.h:1207
      dfSAMP_SCALE : aliased double;  -- ../gdal.h:1208
      dfLAT_SCALE : aliased double;  -- ../gdal.h:1209
      dfLONG_SCALE : aliased double;  -- ../gdal.h:1210
      dfHEIGHT_SCALE : aliased double;  -- ../gdal.h:1211
      adfLINE_NUM_COEFF : aliased GDALRPCInfoV2_array6584;  -- ../gdal.h:1213
      adfLINE_DEN_COEFF : aliased GDALRPCInfoV2_array6584;  -- ../gdal.h:1214
      adfSAMP_NUM_COEFF : aliased GDALRPCInfoV2_array6584;  -- ../gdal.h:1215
      adfSAMP_DEN_COEFF : aliased GDALRPCInfoV2_array6584;  -- ../gdal.h:1216
      dfMIN_LONG : aliased double;  -- ../gdal.h:1218
      dfMIN_LAT : aliased double;  -- ../gdal.h:1219
      dfMAX_LONG : aliased double;  -- ../gdal.h:1220
      dfMAX_LAT : aliased double;  -- ../gdal.h:1221
      dfERR_BIAS : aliased double;  -- ../gdal.h:1224
      dfERR_RAND : aliased double;  -- ../gdal.h:1225
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal.h:1226

   function GDALExtractRPCInfoV1 (arg1 : cpl_port_h.CSLConstList; arg2 : access GDALRPCInfoV1) return int  -- ../gdal.h:1229
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtractRPCInfoV1";

   function GDALExtractRPCInfoV2 (arg1 : cpl_port_h.CSLConstList; arg2 : access GDALRPCInfoV2) return int  -- ../gdal.h:1231
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtractRPCInfoV2";

   type GDALColorEntry is record
      c1 : aliased short;  -- ../gdal.h:1241
      c2 : aliased short;  -- ../gdal.h:1244
      c3 : aliased short;  -- ../gdal.h:1247
      c4 : aliased short;  -- ../gdal.h:1250
   end record
   with Convention => C_Pass_By_Copy;  -- ../gdal.h:1251

   function GDALCreateColorTable (arg1 : GDALPaletteInterp) return GDALColorTableH  -- ../gdal.h:1253
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateColorTable";

   procedure GDALDestroyColorTable (arg1 : GDALColorTableH)  -- ../gdal.h:1254
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyColorTable";

   function GDALCloneColorTable (arg1 : GDALColorTableH) return GDALColorTableH  -- ../gdal.h:1255
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCloneColorTable";

   function GDALGetPaletteInterpretation (arg1 : GDALColorTableH) return GDALPaletteInterp  -- ../gdal.h:1256
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetPaletteInterpretation";

   function GDALGetColorEntryCount (arg1 : GDALColorTableH) return int  -- ../gdal.h:1257
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetColorEntryCount";

   function GDALGetColorEntry (arg1 : GDALColorTableH; arg2 : int) return access constant GDALColorEntry  -- ../gdal.h:1258
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetColorEntry";

   function GDALGetColorEntryAsRGB
     (arg1 : GDALColorTableH;
      arg2 : int;
      arg3 : access GDALColorEntry) return int  -- ../gdal.h:1259
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetColorEntryAsRGB";

   procedure GDALSetColorEntry
     (arg1 : GDALColorTableH;
      arg2 : int;
      arg3 : access constant GDALColorEntry)  -- ../gdal.h:1260
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetColorEntry";

   procedure GDALCreateColorRamp
     (hTable : GDALColorTableH;
      nStartIndex : int;
      psStartColor : access constant GDALColorEntry;
      nEndIndex : int;
      psEndColor : access constant GDALColorEntry)  -- ../gdal.h:1261
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

   procedure GDALDestroyRasterAttributeTable (arg1 : GDALRasterAttributeTableH)  -- ../gdal.h:1310
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDestroyRasterAttributeTable";

   function GDALRATGetColumnCount (arg1 : GDALRasterAttributeTableH) return int  -- ../gdal.h:1313
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetColumnCount";

   function GDALRATGetNameOfCol (arg1 : GDALRasterAttributeTableH; arg2 : int) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1315
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetNameOfCol";

   function GDALRATGetUsageOfCol (arg1 : GDALRasterAttributeTableH; arg2 : int) return GDALRATFieldUsage  -- ../gdal.h:1317
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetUsageOfCol";

   function GDALRATGetTypeOfCol (arg1 : GDALRasterAttributeTableH; arg2 : int) return GDALRATFieldType  -- ../gdal.h:1319
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetTypeOfCol";

   function GDALRATGetColOfUsage (arg1 : GDALRasterAttributeTableH; arg2 : GDALRATFieldUsage) return int  -- ../gdal.h:1322
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetColOfUsage";

   function GDALRATGetRowCount (arg1 : GDALRasterAttributeTableH) return int  -- ../gdal.h:1324
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetRowCount";

   function GDALRATGetValueAsString
     (arg1 : GDALRasterAttributeTableH;
      arg2 : int;
      arg3 : int) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1326
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetValueAsString";

   function GDALRATGetValueAsInt
     (arg1 : GDALRasterAttributeTableH;
      arg2 : int;
      arg3 : int) return int  -- ../gdal.h:1328
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetValueAsInt";

   function GDALRATGetValueAsDouble
     (arg1 : GDALRasterAttributeTableH;
      arg2 : int;
      arg3 : int) return double  -- ../gdal.h:1330
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetValueAsDouble";

   procedure GDALRATSetValueAsString
     (arg1 : GDALRasterAttributeTableH;
      arg2 : int;
      arg3 : int;
      arg4 : Interfaces.C.Strings.chars_ptr)  -- ../gdal.h:1333
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATSetValueAsString";

   procedure GDALRATSetValueAsInt
     (arg1 : GDALRasterAttributeTableH;
      arg2 : int;
      arg3 : int;
      arg4 : int)  -- ../gdal.h:1335
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATSetValueAsInt";

   procedure GDALRATSetValueAsDouble
     (arg1 : GDALRasterAttributeTableH;
      arg2 : int;
      arg3 : int;
      arg4 : double)  -- ../gdal.h:1337
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATSetValueAsDouble";

   function GDALRATChangesAreWrittenToFile (hRAT : GDALRasterAttributeTableH) return int  -- ../gdal.h:1340
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATChangesAreWrittenToFile";

   function GDALRATValuesIOAsDouble
     (hRAT : GDALRasterAttributeTableH;
      eRWFlag : GDALRWFlag;
      iField : int;
      iStartRow : int;
      iLength : int;
      pdfData : access double) return cpl_error_h.CPLErr  -- ../gdal.h:1342
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATValuesIOAsDouble";

   function GDALRATValuesIOAsInteger
     (hRAT : GDALRasterAttributeTableH;
      eRWFlag : GDALRWFlag;
      iField : int;
      iStartRow : int;
      iLength : int;
      pnData : access int) return cpl_error_h.CPLErr  -- ../gdal.h:1344
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATValuesIOAsInteger";

   function GDALRATValuesIOAsString
     (hRAT : GDALRasterAttributeTableH;
      eRWFlag : GDALRWFlag;
      iField : int;
      iStartRow : int;
      iLength : int;
      papszStrList : cpl_port_h.CSLConstList) return cpl_error_h.CPLErr  -- ../gdal.h:1346
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATValuesIOAsString";

   procedure GDALRATSetRowCount (arg1 : GDALRasterAttributeTableH; arg2 : int)  -- ../gdal.h:1349
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATSetRowCount";

   function GDALRATCreateColumn
     (arg1 : GDALRasterAttributeTableH;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : GDALRATFieldType;
      arg4 : GDALRATFieldUsage) return cpl_error_h.CPLErr  -- ../gdal.h:1351
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATCreateColumn";

   function GDALRATSetLinearBinning
     (arg1 : GDALRasterAttributeTableH;
      arg2 : double;
      arg3 : double) return cpl_error_h.CPLErr  -- ../gdal.h:1355
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATSetLinearBinning";

   function GDALRATGetLinearBinning
     (arg1 : GDALRasterAttributeTableH;
      arg2 : access double;
      arg3 : access double) return int  -- ../gdal.h:1357
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetLinearBinning";

   function GDALRATSetTableType (hRAT : GDALRasterAttributeTableH; eInTableType : GDALRATTableType) return cpl_error_h.CPLErr  -- ../gdal.h:1359
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATSetTableType";

   function GDALRATGetTableType (hRAT : GDALRasterAttributeTableH) return GDALRATTableType  -- ../gdal.h:1361
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetTableType";

   function GDALRATInitializeFromColorTable (arg1 : GDALRasterAttributeTableH; arg2 : GDALColorTableH) return cpl_error_h.CPLErr  -- ../gdal.h:1362
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATInitializeFromColorTable";

   function GDALRATTranslateToColorTable (arg1 : GDALRasterAttributeTableH; nEntryCount : int) return GDALColorTableH  -- ../gdal.h:1364
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATTranslateToColorTable";

   procedure GDALRATDumpReadable (arg1 : GDALRasterAttributeTableH; arg2 : access x86_64_linux_gnu_bits_types_FILE_h.FILE)  -- ../gdal.h:1366
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATDumpReadable";

   function GDALRATClone (arg1 : GDALRasterAttributeTableH) return GDALRasterAttributeTableH  -- ../gdal.h:1369
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATClone";

   function GDALRATSerializeJSON (arg1 : GDALRasterAttributeTableH) return System.Address  -- ../gdal.h:1372
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATSerializeJSON";

   function GDALRATGetRowOfValue (arg1 : GDALRasterAttributeTableH; arg2 : double) return int  -- ../gdal.h:1374
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATGetRowOfValue";

   procedure GDALRATRemoveStatistics (arg1 : GDALRasterAttributeTableH)  -- ../gdal.h:1375
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRATRemoveStatistics";

   procedure GDALSetCacheMax (nBytes : int)  -- ../gdal.h:1381
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetCacheMax";

   function GDALGetCacheMax return int  -- ../gdal.h:1382
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetCacheMax";

   function GDALGetCacheUsed return int  -- ../gdal.h:1383
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetCacheUsed";

   procedure GDALSetCacheMax64 (nBytes : cpl_port_h.GIntBig)  -- ../gdal.h:1384
   with Import => True, 
        Convention => C, 
        External_Name => "GDALSetCacheMax64";

   function GDALGetCacheMax64 return cpl_port_h.GIntBig  -- ../gdal.h:1385
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetCacheMax64";

   function GDALGetCacheUsed64 return cpl_port_h.GIntBig  -- ../gdal.h:1386
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetCacheUsed64";

   function GDALFlushCacheBlock return int  -- ../gdal.h:1388
   with Import => True, 
        Convention => C, 
        External_Name => "GDALFlushCacheBlock";

   function GDALDatasetGetVirtualMem
     (hDS : GDALDatasetH;
      eRWFlag : GDALRWFlag;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      nBufXSize : int;
      nBufYSize : int;
      eBufType : GDALDataType;
      nBandCount : int;
      panBandMap : access int;
      nPixelSpace : int;
      nLineSpace : cpl_port_h.GIntBig;
      nBandSpace : cpl_port_h.GIntBig;
      nCacheSize : stddef_h.size_t;
      nPageSizeHint : stddef_h.size_t;
      bSingleThreadUsage : int;
      papszOptions : cpl_port_h.CSLConstList) return access cpl_virtualmem_h.CPLVirtualMem  -- ../gdal.h:1394
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetVirtualMem";

   function GDALRasterBandGetVirtualMem
     (hBand : GDALRasterBandH;
      eRWFlag : GDALRWFlag;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      nBufXSize : int;
      nBufYSize : int;
      eBufType : GDALDataType;
      nPixelSpace : int;
      nLineSpace : cpl_port_h.GIntBig;
      nCacheSize : stddef_h.size_t;
      nPageSizeHint : stddef_h.size_t;
      bSingleThreadUsage : int;
      papszOptions : cpl_port_h.CSLConstList) return access cpl_virtualmem_h.CPLVirtualMem  -- ../gdal.h:1409
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterBandGetVirtualMem";

   function GDALGetVirtualMemAuto
     (hBand : GDALRasterBandH;
      eRWFlag : GDALRWFlag;
      pnPixelSpace : access int;
      pnLineSpace : access cpl_port_h.GIntBig;
      papszOptions : cpl_port_h.CSLConstList) return access cpl_virtualmem_h.CPLVirtualMem  -- ../gdal.h:1422
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetVirtualMemAuto";

   type GDALTileOrganization is 
     (GTO_TIP,
      GTO_BIT,
      GTO_BSQ)
   with Convention => C;  -- ../gdal.h:1437

   function GDALDatasetGetTiledVirtualMem
     (hDS : GDALDatasetH;
      eRWFlag : GDALRWFlag;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      nTileXSize : int;
      nTileYSize : int;
      eBufType : GDALDataType;
      nBandCount : int;
      panBandMap : access int;
      eTileOrganization : GDALTileOrganization;
      nCacheSize : stddef_h.size_t;
      bSingleThreadUsage : int;
      papszOptions : cpl_port_h.CSLConstList) return access cpl_virtualmem_h.CPLVirtualMem  -- ../gdal.h:1439
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetTiledVirtualMem";

   function GDALRasterBandGetTiledVirtualMem
     (hBand : GDALRasterBandH;
      eRWFlag : GDALRWFlag;
      nXOff : int;
      nYOff : int;
      nXSize : int;
      nYSize : int;
      nTileXSize : int;
      nTileYSize : int;
      eBufType : GDALDataType;
      nCacheSize : stddef_h.size_t;
      bSingleThreadUsage : int;
      papszOptions : cpl_port_h.CSLConstList) return access cpl_virtualmem_h.CPLVirtualMem  -- ../gdal.h:1451
   with Import => True, 
        Convention => C, 
        External_Name => "GDALRasterBandGetTiledVirtualMem";

   function GDALCreatePansharpenedVRT
     (pszXML : Interfaces.C.Strings.chars_ptr;
      hPanchroBand : GDALRasterBandH;
      nInputSpectralBands : int;
      pahInputSpectralBands : System.Address) return GDALDatasetH  -- ../gdal.h:1465
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreatePansharpenedVRT";

   function GDALGetJPEG2000Structure (pszFilename : Interfaces.C.Strings.chars_ptr; papszOptions : cpl_port_h.CSLConstList) return access cpl_minixml_h.CPLXMLNode  -- ../gdal.h:1474
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGetJPEG2000Structure";

   function GDALCreateMultiDimensional
     (hDriver : GDALDriverH;
      pszName : Interfaces.C.Strings.chars_ptr;
      papszRootGroupOptions : cpl_port_h.CSLConstList;
      papszOptions : cpl_port_h.CSLConstList) return GDALDatasetH  -- ../gdal.h:1481
   with Import => True, 
        Convention => C, 
        External_Name => "GDALCreateMultiDimensional";

   function GDALExtendedDataTypeCreate (eType : GDALDataType) return GDALExtendedDataTypeH  -- ../gdal.h:1486
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeCreate";

   function GDALExtendedDataTypeCreateString (nMaxStringLength : stddef_h.size_t) return GDALExtendedDataTypeH  -- ../gdal.h:1487
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeCreateString";

   function GDALExtendedDataTypeCreateCompound
     (pszName : Interfaces.C.Strings.chars_ptr;
      nTotalSize : stddef_h.size_t;
      nComponents : stddef_h.size_t;
      comps : System.Address) return GDALExtendedDataTypeH  -- ../gdal.h:1488
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeCreateCompound";

   procedure GDALExtendedDataTypeRelease (hEDT : GDALExtendedDataTypeH)  -- ../gdal.h:1491
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeRelease";

   function GDALExtendedDataTypeGetName (hEDT : GDALExtendedDataTypeH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1492
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeGetName";

   function GDALExtendedDataTypeGetClass (hEDT : GDALExtendedDataTypeH) return GDALExtendedDataTypeClass  -- ../gdal.h:1493
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeGetClass";

   function GDALExtendedDataTypeGetNumericDataType (hEDT : GDALExtendedDataTypeH) return GDALDataType  -- ../gdal.h:1494
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeGetNumericDataType";

   function GDALExtendedDataTypeGetSize (hEDT : GDALExtendedDataTypeH) return stddef_h.size_t  -- ../gdal.h:1495
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeGetSize";

   function GDALExtendedDataTypeGetMaxStringLength (hEDT : GDALExtendedDataTypeH) return stddef_h.size_t  -- ../gdal.h:1496
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeGetMaxStringLength";

   function GDALExtendedDataTypeGetComponents (hEDT : GDALExtendedDataTypeH; pnCount : access stddef_h.size_t) return System.Address  -- ../gdal.h:1497
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeGetComponents";

   procedure GDALExtendedDataTypeFreeComponents (components : System.Address; nCount : stddef_h.size_t)  -- ../gdal.h:1498
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeFreeComponents";

   function GDALExtendedDataTypeCanConvertTo (hSourceEDT : GDALExtendedDataTypeH; hTargetEDT : GDALExtendedDataTypeH) return int  -- ../gdal.h:1499
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeCanConvertTo";

   function GDALExtendedDataTypeEquals (hFirstEDT : GDALExtendedDataTypeH; hSecondEDT : GDALExtendedDataTypeH) return int  -- ../gdal.h:1501
   with Import => True, 
        Convention => C, 
        External_Name => "GDALExtendedDataTypeEquals";

   function GDALEDTComponentCreate
     (pszName : Interfaces.C.Strings.chars_ptr;
      nOffset : stddef_h.size_t;
      hType : GDALExtendedDataTypeH) return GDALEDTComponentH  -- ../gdal.h:1504
   with Import => True, 
        Convention => C, 
        External_Name => "GDALEDTComponentCreate";

   procedure GDALEDTComponentRelease (hComp : GDALEDTComponentH)  -- ../gdal.h:1505
   with Import => True, 
        Convention => C, 
        External_Name => "GDALEDTComponentRelease";

   function GDALEDTComponentGetName (hComp : GDALEDTComponentH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1506
   with Import => True, 
        Convention => C, 
        External_Name => "GDALEDTComponentGetName";

   function GDALEDTComponentGetOffset (hComp : GDALEDTComponentH) return stddef_h.size_t  -- ../gdal.h:1507
   with Import => True, 
        Convention => C, 
        External_Name => "GDALEDTComponentGetOffset";

   function GDALEDTComponentGetType (hComp : GDALEDTComponentH) return GDALExtendedDataTypeH  -- ../gdal.h:1508
   with Import => True, 
        Convention => C, 
        External_Name => "GDALEDTComponentGetType";

   function GDALDatasetGetRootGroup (hDS : GDALDatasetH) return GDALGroupH  -- ../gdal.h:1510
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDatasetGetRootGroup";

   procedure GDALGroupRelease (hGroup : GDALGroupH)  -- ../gdal.h:1511
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupRelease";

   function GDALGroupGetName (hGroup : GDALGroupH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1512
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupGetName";

   function GDALGroupGetFullName (hGroup : GDALGroupH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1513
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupGetFullName";

   function GDALGroupGetMDArrayNames (hGroup : GDALGroupH; papszOptions : cpl_port_h.CSLConstList) return System.Address  -- ../gdal.h:1514
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupGetMDArrayNames";

   function GDALGroupOpenMDArray
     (hGroup : GDALGroupH;
      pszMDArrayName : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return GDALMDArrayH  -- ../gdal.h:1515
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupOpenMDArray";

   function GDALGroupOpenMDArrayFromFullname
     (hGroup : GDALGroupH;
      pszMDArrayName : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return GDALMDArrayH  -- ../gdal.h:1516
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupOpenMDArrayFromFullname";

   function GDALGroupResolveMDArray
     (hGroup : GDALGroupH;
      pszName : Interfaces.C.Strings.chars_ptr;
      pszStartingPoint : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return GDALMDArrayH  -- ../gdal.h:1517
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupResolveMDArray";

   function GDALGroupGetGroupNames (hGroup : GDALGroupH; papszOptions : cpl_port_h.CSLConstList) return System.Address  -- ../gdal.h:1521
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupGetGroupNames";

   function GDALGroupOpenGroup
     (hGroup : GDALGroupH;
      pszSubGroupName : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return GDALGroupH  -- ../gdal.h:1522
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupOpenGroup";

   function GDALGroupOpenGroupFromFullname
     (hGroup : GDALGroupH;
      pszMDArrayName : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return GDALGroupH  -- ../gdal.h:1523
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupOpenGroupFromFullname";

   function GDALGroupGetDimensions
     (hGroup : GDALGroupH;
      pnCount : access stddef_h.size_t;
      papszOptions : cpl_port_h.CSLConstList) return System.Address  -- ../gdal.h:1524
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupGetDimensions";

   function GDALGroupGetAttribute (hGroup : GDALGroupH; pszName : Interfaces.C.Strings.chars_ptr) return GDALAttributeH  -- ../gdal.h:1525
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupGetAttribute";

   function GDALGroupGetAttributes
     (hGroup : GDALGroupH;
      pnCount : access stddef_h.size_t;
      papszOptions : cpl_port_h.CSLConstList) return System.Address  -- ../gdal.h:1526
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupGetAttributes";

   function GDALGroupGetStructuralInfo (hGroup : GDALGroupH) return cpl_port_h.CSLConstList  -- ../gdal.h:1527
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupGetStructuralInfo";

   function GDALGroupCreateGroup
     (hGroup : GDALGroupH;
      pszSubGroupName : Interfaces.C.Strings.chars_ptr;
      papszOptions : cpl_port_h.CSLConstList) return GDALGroupH  -- ../gdal.h:1528
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupCreateGroup";

   function GDALGroupCreateDimension
     (hGroup : GDALGroupH;
      pszName : Interfaces.C.Strings.chars_ptr;
      pszType : Interfaces.C.Strings.chars_ptr;
      pszDirection : Interfaces.C.Strings.chars_ptr;
      nSize : cpl_port_h.GUInt64;
      papszOptions : cpl_port_h.CSLConstList) return GDALDimensionH  -- ../gdal.h:1531
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupCreateDimension";

   function GDALGroupCreateMDArray
     (hGroup : GDALGroupH;
      pszName : Interfaces.C.Strings.chars_ptr;
      nDimensions : stddef_h.size_t;
      pahDimensions : System.Address;
      hEDT : GDALExtendedDataTypeH;
      papszOptions : cpl_port_h.CSLConstList) return GDALMDArrayH  -- ../gdal.h:1537
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupCreateMDArray";

   function GDALGroupCreateAttribute
     (hGroup : GDALGroupH;
      pszName : Interfaces.C.Strings.chars_ptr;
      nDimensions : stddef_h.size_t;
      panDimensions : access cpl_port_h.GUInt64;
      hEDT : GDALExtendedDataTypeH;
      papszOptions : cpl_port_h.CSLConstList) return GDALAttributeH  -- ../gdal.h:1543
   with Import => True, 
        Convention => C, 
        External_Name => "GDALGroupCreateAttribute";

   procedure GDALMDArrayRelease (hMDArray : GDALMDArrayH)  -- ../gdal.h:1550
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayRelease";

   function GDALMDArrayGetName (hArray : GDALMDArrayH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1551
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetName";

   function GDALMDArrayGetFullName (hArray : GDALMDArrayH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1552
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetFullName";

   function GDALMDArrayGetTotalElementsCount (hArray : GDALMDArrayH) return cpl_port_h.GUInt64  -- ../gdal.h:1553
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetTotalElementsCount";

   function GDALMDArrayGetDimensionCount (hArray : GDALMDArrayH) return stddef_h.size_t  -- ../gdal.h:1554
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetDimensionCount";

   function GDALMDArrayGetDimensions (hArray : GDALMDArrayH; pnCount : access stddef_h.size_t) return System.Address  -- ../gdal.h:1555
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetDimensions";

   function GDALMDArrayGetDataType (hArray : GDALMDArrayH) return GDALExtendedDataTypeH  -- ../gdal.h:1556
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetDataType";

   function GDALMDArrayRead
     (hArray : GDALMDArrayH;
      arrayStartIdx : access cpl_port_h.GUInt64;
      count : access stddef_h.size_t;
      arrayStep : access cpl_port_h.GInt64;
      bufferStride : access cpl_port_h.GPtrDiff_t;
      bufferDatatype : GDALExtendedDataTypeH;
      pDstBuffer : System.Address;
      pDstBufferAllocStart : System.Address;
      nDstBufferllocSize : stddef_h.size_t) return int  -- ../gdal.h:1557
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayRead";

   function GDALMDArrayWrite
     (hArray : GDALMDArrayH;
      arrayStartIdx : access cpl_port_h.GUInt64;
      count : access stddef_h.size_t;
      arrayStep : access cpl_port_h.GInt64;
      bufferStride : access cpl_port_h.GPtrDiff_t;
      bufferDatatype : GDALExtendedDataTypeH;
      pSrcBuffer : System.Address;
      psrcBufferAllocStart : System.Address;
      nSrcBufferllocSize : stddef_h.size_t) return int  -- ../gdal.h:1566
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayWrite";

   function GDALMDArrayAdviseRead
     (hArray : GDALMDArrayH;
      arrayStartIdx : access cpl_port_h.GUInt64;
      count : access stddef_h.size_t) return int  -- ../gdal.h:1575
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayAdviseRead";

   function GDALMDArrayGetAttribute (hArray : GDALMDArrayH; pszName : Interfaces.C.Strings.chars_ptr) return GDALAttributeH  -- ../gdal.h:1578
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetAttribute";

   function GDALMDArrayGetAttributes
     (hArray : GDALMDArrayH;
      pnCount : access stddef_h.size_t;
      papszOptions : cpl_port_h.CSLConstList) return System.Address  -- ../gdal.h:1579
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetAttributes";

   function GDALMDArrayCreateAttribute
     (hArray : GDALMDArrayH;
      pszName : Interfaces.C.Strings.chars_ptr;
      nDimensions : stddef_h.size_t;
      panDimensions : access cpl_port_h.GUInt64;
      hEDT : GDALExtendedDataTypeH;
      papszOptions : cpl_port_h.CSLConstList) return GDALAttributeH  -- ../gdal.h:1580
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayCreateAttribute";

   function GDALMDArrayGetRawNoDataValue (hArray : GDALMDArrayH) return System.Address  -- ../gdal.h:1586
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetRawNoDataValue";

   function GDALMDArrayGetNoDataValueAsDouble (hArray : GDALMDArrayH; pbHasNoDataValue : access int) return double  -- ../gdal.h:1587
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetNoDataValueAsDouble";

   function GDALMDArraySetRawNoDataValue (hArray : GDALMDArrayH; arg2 : System.Address) return int  -- ../gdal.h:1589
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArraySetRawNoDataValue";

   function GDALMDArraySetNoDataValueAsDouble (hArray : GDALMDArrayH; dfNoDataValue : double) return int  -- ../gdal.h:1590
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArraySetNoDataValueAsDouble";

   function GDALMDArraySetScale (hArray : GDALMDArrayH; dfScale : double) return int  -- ../gdal.h:1592
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArraySetScale";

   function GDALMDArraySetScaleEx
     (hArray : GDALMDArrayH;
      dfScale : double;
      eStorageType : GDALDataType) return int  -- ../gdal.h:1593
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArraySetScaleEx";

   function GDALMDArrayGetScale (hArray : GDALMDArrayH; pbHasValue : access int) return double  -- ../gdal.h:1594
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetScale";

   function GDALMDArrayGetScaleEx
     (hArray : GDALMDArrayH;
      pbHasValue : access int;
      peStorageType : access GDALDataType) return double  -- ../gdal.h:1595
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetScaleEx";

   function GDALMDArraySetOffset (hArray : GDALMDArrayH; dfOffset : double) return int  -- ../gdal.h:1596
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArraySetOffset";

   function GDALMDArraySetOffsetEx
     (hArray : GDALMDArrayH;
      dfOffset : double;
      eStorageType : GDALDataType) return int  -- ../gdal.h:1597
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArraySetOffsetEx";

   function GDALMDArrayGetOffset (hArray : GDALMDArrayH; pbHasValue : access int) return double  -- ../gdal.h:1598
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetOffset";

   function GDALMDArrayGetOffsetEx
     (hArray : GDALMDArrayH;
      pbHasValue : access int;
      peStorageType : access GDALDataType) return double  -- ../gdal.h:1599
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetOffsetEx";

   function GDALMDArrayGetBlockSize (hArray : GDALMDArrayH; pnCount : access stddef_h.size_t) return access cpl_port_h.GUInt64  -- ../gdal.h:1600
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetBlockSize";

   function GDALMDArraySetUnit (hArray : GDALMDArrayH; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- ../gdal.h:1601
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArraySetUnit";

   function GDALMDArrayGetUnit (hArray : GDALMDArrayH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1602
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetUnit";

   function GDALMDArraySetSpatialRef (arg1 : GDALMDArrayH; arg2 : ogr_api_h.OGRSpatialReferenceH) return int  -- ../gdal.h:1603
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArraySetSpatialRef";

   function GDALMDArrayGetSpatialRef (hArray : GDALMDArrayH) return ogr_api_h.OGRSpatialReferenceH  -- ../gdal.h:1604
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetSpatialRef";

   function GDALMDArrayGetProcessingChunkSize
     (hArray : GDALMDArrayH;
      pnCount : access stddef_h.size_t;
      nMaxChunkMemory : stddef_h.size_t) return access stddef_h.size_t  -- ../gdal.h:1605
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetProcessingChunkSize";

   function GDALMDArrayGetStructuralInfo (hArray : GDALMDArrayH) return cpl_port_h.CSLConstList  -- ../gdal.h:1607
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetStructuralInfo";

   function GDALMDArrayGetView (hArray : GDALMDArrayH; pszViewExpr : Interfaces.C.Strings.chars_ptr) return GDALMDArrayH  -- ../gdal.h:1608
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetView";

   function GDALMDArrayTranspose
     (hArray : GDALMDArrayH;
      nNewAxisCount : stddef_h.size_t;
      panMapNewAxisToOldAxis : access int) return GDALMDArrayH  -- ../gdal.h:1609
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayTranspose";

   function GDALMDArrayGetUnscaled (hArray : GDALMDArrayH) return GDALMDArrayH  -- ../gdal.h:1612
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetUnscaled";

   function GDALMDArrayGetMask (hArray : GDALMDArrayH; papszOptions : cpl_port_h.CSLConstList) return GDALMDArrayH  -- ../gdal.h:1613
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetMask";

   function GDALMDArrayAsClassicDataset
     (hArray : GDALMDArrayH;
      iXDim : stddef_h.size_t;
      iYDim : stddef_h.size_t) return GDALDatasetH  -- ../gdal.h:1614
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayAsClassicDataset";

   function GDALMDArrayGetStatistics
     (hArray : GDALMDArrayH;
      arg2 : GDALDatasetH;
      bApproxOK : int;
      bForce : int;
      pdfMin : access double;
      pdfMax : access double;
      pdfMean : access double;
      pdfStdDev : access double;
      pnValidCount : access cpl_port_h.GUInt64;
      pfnProgress : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return cpl_error_h.CPLErr  -- ../gdal.h:1616
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayGetStatistics";

   function GDALMDArrayComputeStatistics
     (hArray : GDALMDArrayH;
      arg2 : GDALDatasetH;
      bApproxOK : int;
      pdfMin : access double;
      pdfMax : access double;
      pdfMean : access double;
      pdfStdDev : access double;
      pnValidCount : access cpl_port_h.GUInt64;
      arg9 : cpl_progress_h.GDALProgressFunc;
      pProgressData : System.Address) return int  -- ../gdal.h:1622
   with Import => True, 
        Convention => C, 
        External_Name => "GDALMDArrayComputeStatistics";

   procedure GDALAttributeRelease (hAttr : GDALAttributeH)  -- ../gdal.h:1629
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeRelease";

   procedure GDALReleaseAttributes (attributes : System.Address; nCount : stddef_h.size_t)  -- ../gdal.h:1630
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReleaseAttributes";

   function GDALAttributeGetName (hAttr : GDALAttributeH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1631
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeGetName";

   function GDALAttributeGetFullName (hAttr : GDALAttributeH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1632
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeGetFullName";

   function GDALAttributeGetTotalElementsCount (hAttr : GDALAttributeH) return cpl_port_h.GUInt64  -- ../gdal.h:1633
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeGetTotalElementsCount";

   function GDALAttributeGetDimensionCount (hAttr : GDALAttributeH) return stddef_h.size_t  -- ../gdal.h:1634
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeGetDimensionCount";

   function GDALAttributeGetDimensionsSize (hAttr : GDALAttributeH; pnCount : access stddef_h.size_t) return access cpl_port_h.GUInt64  -- ../gdal.h:1635
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeGetDimensionsSize";

   function GDALAttributeGetDataType (hAttr : GDALAttributeH) return GDALExtendedDataTypeH  -- ../gdal.h:1636
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeGetDataType";

   function GDALAttributeReadAsRaw (hAttr : GDALAttributeH; pnSize : access stddef_h.size_t) return access cpl_port_h.GByte  -- ../gdal.h:1637
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeReadAsRaw";

   procedure GDALAttributeFreeRawResult
     (hAttr : GDALAttributeH;
      raw : access cpl_port_h.GByte;
      nSize : stddef_h.size_t)  -- ../gdal.h:1638
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeFreeRawResult";

   function GDALAttributeReadAsString (hAttr : GDALAttributeH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1639
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeReadAsString";

   function GDALAttributeReadAsInt (hAttr : GDALAttributeH) return int  -- ../gdal.h:1640
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeReadAsInt";

   function GDALAttributeReadAsDouble (hAttr : GDALAttributeH) return double  -- ../gdal.h:1641
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeReadAsDouble";

   function GDALAttributeReadAsStringArray (hAttr : GDALAttributeH) return System.Address  -- ../gdal.h:1642
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeReadAsStringArray";

   function GDALAttributeReadAsIntArray (hAttr : GDALAttributeH; pnCount : access stddef_h.size_t) return access int  -- ../gdal.h:1643
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeReadAsIntArray";

   function GDALAttributeReadAsDoubleArray (hAttr : GDALAttributeH; pnCount : access stddef_h.size_t) return access double  -- ../gdal.h:1644
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeReadAsDoubleArray";

   function GDALAttributeWriteRaw
     (hAttr : GDALAttributeH;
      arg2 : System.Address;
      arg3 : stddef_h.size_t) return int  -- ../gdal.h:1645
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeWriteRaw";

   function GDALAttributeWriteString (hAttr : GDALAttributeH; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- ../gdal.h:1646
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeWriteString";

   function GDALAttributeWriteStringArray (hAttr : GDALAttributeH; arg2 : cpl_port_h.CSLConstList) return int  -- ../gdal.h:1647
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeWriteStringArray";

   function GDALAttributeWriteInt (hAttr : GDALAttributeH; arg2 : int) return int  -- ../gdal.h:1648
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeWriteInt";

   function GDALAttributeWriteDouble (hAttr : GDALAttributeH; arg2 : double) return int  -- ../gdal.h:1649
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeWriteDouble";

   function GDALAttributeWriteDoubleArray
     (hAttr : GDALAttributeH;
      arg2 : access double;
      arg3 : stddef_h.size_t) return int  -- ../gdal.h:1650
   with Import => True, 
        Convention => C, 
        External_Name => "GDALAttributeWriteDoubleArray";

   procedure GDALDimensionRelease (hDim : GDALDimensionH)  -- ../gdal.h:1652
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDimensionRelease";

   procedure GDALReleaseDimensions (dims : System.Address; nCount : stddef_h.size_t)  -- ../gdal.h:1653
   with Import => True, 
        Convention => C, 
        External_Name => "GDALReleaseDimensions";

   function GDALDimensionGetName (hDim : GDALDimensionH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1654
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDimensionGetName";

   function GDALDimensionGetFullName (hDim : GDALDimensionH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1655
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDimensionGetFullName";

   function GDALDimensionGetType (hDim : GDALDimensionH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1656
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDimensionGetType";

   function GDALDimensionGetDirection (hDim : GDALDimensionH) return Interfaces.C.Strings.chars_ptr  -- ../gdal.h:1657
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDimensionGetDirection";

   function GDALDimensionGetSize (hDim : GDALDimensionH) return cpl_port_h.GUInt64  -- ../gdal.h:1658
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDimensionGetSize";

   function GDALDimensionGetIndexingVariable (hDim : GDALDimensionH) return GDALMDArrayH  -- ../gdal.h:1659
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDimensionGetIndexingVariable";

   function GDALDimensionSetIndexingVariable (hDim : GDALDimensionH; hArray : GDALMDArrayH) return int  -- ../gdal.h:1660
   with Import => True, 
        Convention => C, 
        External_Name => "GDALDimensionSetIndexingVariable";

end gdal_h;
