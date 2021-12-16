pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with System;

package cpl_port_h is

   --  arg-macro: function CPL_STATIC_CAST (type, expr)
   --    return (type)(expr);
   --  arg-macro: function CPL_REINTERPRET_CAST (type, expr)
   --    return (type)(expr);
   --  unsupported macro: GINTBIG_MIN (CPL_STATIC_CAST(GIntBig, 0x80000000) << 32)
   --  unsupported macro: GINTBIG_MAX ((CPL_STATIC_CAST(GIntBig, 0x7FFFFFFF) << 32) | 0xFFFFFFFFU)
   --  unsupported macro: GUINTBIG_MAX ((CPL_STATIC_CAST(GUIntBig, 0xFFFFFFFFU) << 32) | 0xFFFFFFFFU)
   CPL_HAS_GINT64 : constant := 1;  --  ../cpl_port.h:261
   --  unsupported macro: GINT64_MIN GINTBIG_MIN
   --  unsupported macro: GINT64_MAX GINTBIG_MAX
   --  unsupported macro: GUINT64_MAX GUINTBIG_MAX

   CPL_FRMT_GB_WITHOUT_PREFIX : aliased constant String := "ll" & ASCII.NUL;  --  ../cpl_port.h:310
   --  unsupported macro: CPL_FRMT_GIB "%" CPL_FRMT_GB_WITHOUT_PREFIX "d"
   --  unsupported macro: CPL_FRMT_GUIB "%" CPL_FRMT_GB_WITHOUT_PREFIX "u"
   --  arg-macro: procedure GUINTBIG_TO_DOUBLE (x)
   --    CPL_STATIC_CAST(double, x)
   --  arg-macro: function CPL_INT64_FITS_ON_INT32 (x)
   --    return CPL_STATIC_CAST(GIntBig, CPL_STATIC_CAST(int, x)) = (x);
   --  unsupported macro: CPL_DLL __attribute__ ((visibility("default")))
   --  unsupported macro: CPL_INTERNAL __attribute__((visibility("hidden")))
   --  unsupported macro: CPL_UNSTABLE_API CPL_DLL
   --  arg-macro: function MIN (a, b)
   --    return ((a)<(b)) ? (a) : (b);
   --  arg-macro: function MAX (a, b)
   --    return ((a)>(b)) ? (a) : (b);
   --  arg-macro: function ABS (x)
   --    return ((x)<0) ? (-1*(x)) : (x);
   --  arg-macro: function CPLIsEqual (x, y)
   --    return fabs((x) - (y)) < 0.0000000000001;
   --  arg-macro: function STRCASECMP (a, b)
   --    return strcasecmp(a,b);
   --  arg-macro: function STRNCASECMP (a, b, n)
   --    return strncasecmp(a,b,n);
   --  arg-macro: function EQUALN (a, b, n)
   --    return STRNCASECMP(a,b,n)=0;
   --  arg-macro: function EQUAL (a, b)
   --    return STRCASECMP(a,b)=0;
   --  arg-macro: function STARTS_WITH (a, b)
   --    return strncmp(a,b,strlen(b)) = 0;
   --  arg-macro: procedure STARTS_WITH_CI (a, b)
   --    EQUALN(a,b,strlen(b))
   --  arg-macro: procedure CPLIsNan (x)
   --    __builtin_isnan(x)
   --  arg-macro: procedure CPLIsInf (x)
   --    __builtin_isinf(x)
   --  arg-macro: procedure CPLIsFinite (x)
   --    __builtin_isfinite(x)

   CPL_IS_LSB : constant := 1;  --  ../cpl_port.h:676
   --  arg-macro: procedure CPL_SWAP16 (x)
   --    CPL_STATIC_CAST(GUInt16, (CPL_STATIC_CAST(GUInt16, x) << 8) or (CPL_STATIC_CAST(GUInt16, x) >> 8) )
   --  arg-macro: procedure CPL_SWAP32 (x)
   --    CPL_STATIC_CAST(GUInt32, __builtin_bswap32(CPL_STATIC_CAST(GUInt32, x)))
   --  arg-macro: procedure CPL_SWAP64 (x)
   --    CPL_STATIC_CAST(GUInt64, __builtin_bswap64(CPL_STATIC_CAST(GUInt64, x)))
   --  arg-macro: procedure CPL_SWAP16PTR (x)
   --    do { GByte byTemp, *_pabyDataT := CPL_REINTERPRET_CAST(GByte*, x); CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 2); byTemp := _pabyDataT(0); _pabyDataT(0) := _pabyDataT(1); _pabyDataT(1) := byTemp; } while(0)
   --  arg-macro: procedure CPL_SWAP32PTR (x)
   --    do { GUInt32 _n32; void* _lx := x; memcpy(and_n32, _lx, 4); CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 4); _n32 := CPL_SWAP32(_n32); memcpy(_lx, and_n32, 4); } while(0)
   --  arg-macro: procedure CPL_SWAP64PTR (x)
   --    do { GUInt64 _n64; void* _lx := x; memcpy(and_n64, _lx, 8); CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 8); _n64 := CPL_SWAP64(_n64); memcpy(_lx, and_n64, 8); } while(0)
   --  arg-macro: procedure CPL_SWAPDOUBLE (p)
   --    CPL_SWAP64PTR(p)
   --  arg-macro: function CPL_LSBWORD16 (x)
   --    return x;
   --  arg-macro: procedure CPL_MSBWORD16 (x)
   --    CPL_SWAP16(x)
   --  arg-macro: function CPL_LSBWORD32 (x)
   --    return x;
   --  arg-macro: procedure CPL_MSBWORD32 (x)
   --    CPL_SWAP32(x)
   --  arg-macro: procedure CPL_LSBPTR16 (x)
   --    CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 2)
   --  arg-macro: procedure CPL_MSBPTR16 (x)
   --    CPL_SWAP16PTR(x)
   --  arg-macro: procedure CPL_LSBPTR32 (x)
   --    CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 4)
   --  arg-macro: procedure CPL_MSBPTR32 (x)
   --    CPL_SWAP32PTR(x)
   --  arg-macro: procedure CPL_LSBPTR64 (x)
   --    CPL_STATIC_ASSERT_IF_AVAILABLE(sizeof(*(x)) = 1  or else  sizeof(*(x)) = 8)
   --  arg-macro: procedure CPL_MSBPTR64 (x)
   --    CPL_SWAP64PTR(x)
   --  arg-macro: function CPL_LSBINT16PTR (x)
   --    return (*CPL_REINTERPRET_CAST(const GByte*, x)) or (*((CPL_REINTERPRET_CAST(const GByte*, x))+1) << 8);
   --  arg-macro: function CPL_LSBINT32PTR (x)
   --    return (*CPL_REINTERPRET_CAST(const GByte*, x)) or (*((CPL_REINTERPRET_CAST(const GByte*, x))+1) << 8) or (*((CPL_REINTERPRET_CAST(const GByte*, x))+2) << 16) or (*((CPL_REINTERPRET_CAST(const GByte*, x))+3) << 24);
   --  arg-macro: procedure CPL_LSBSINT16PTR (x)
   --    CPL_STATIC_CAST(GInt16,CPL_LSBINT16PTR(x))
   --  arg-macro: procedure CPL_LSBUINT16PTR (x)
   --    CPL_STATIC_CAST(GUInt16, CPL_LSBINT16PTR(x))
   --  arg-macro: procedure CPL_LSBSINT32PTR (x)
   --    CPL_STATIC_CAST(GInt32, CPL_LSBINT32PTR(x))
   --  arg-macro: procedure CPL_LSBUINT32PTR (x)
   --    CPL_STATIC_CAST(GUInt32, CPL_LSBINT32PTR(x))
   --  arg-macro: function UNREFERENCED_PARAM (param)
   --    return (void)param;
   --  arg-macro: procedure CPL_CVSID (string)
   --    static const char cpl_cvsid() __attribute__((used)) := string;
   --  unsupported macro: CPL_NULL_TERMINATED __attribute__((__sentinel__))
   --  arg-macro: procedure CPL_PRINT_FUNC_FORMAT (format_idx, arg_idx)
   --    __attribute__((__format__ (__printf__, format_idx, arg_idx)))
   --  arg-macro: procedure CPL_SCAN_FUNC_FORMAT (format_idx, arg_idx)
   --    __attribute__((__format__ (__scanf__, format_idx, arg_idx)))
   --  arg-macro: procedure CPL_FORMAT_STRING (arg)
   --    arg
   --  arg-macro: procedure CPL_SCANF_FORMAT_STRING (arg)
   --    arg
   --  unsupported macro: CPL_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
   --  unsupported macro: CPL_UNUSED __attribute((__unused__))
   --  unsupported macro: CPL_NO_RETURN __attribute__((noreturn))
   --  unsupported macro: CPL_RETURNS_NONNULL __attribute__((returns_nonnull))
   --  unsupported macro: CPL_RESTRICT __restrict__
   --  arg-macro: procedure CPL_WARN_DEPRECATED (x)
   --    __attribute__ ((deprecated))
   --  unsupported macro: CPL_FALLTHROUGH [[clang::fallthrough]];

   FALSE : constant := 0;  --  ../cpl_port.h:1165

   TRUE : constant := 1;  --  ../cpl_port.h:1169
   --  unsupported macro: EMULATED_BOOL bool
   --  unsupported macro: VOLATILE_BOOL volatile bool
   --  unsupported macro: CPL_NULLPTR NULL

   subtype GInt32 is int;  -- ../cpl_port.h:205

   subtype GUInt32 is unsigned;  -- ../cpl_port.h:207

   subtype GInt16 is short;  -- ../cpl_port.h:211

   subtype GUInt16 is unsigned_short;  -- ../cpl_port.h:213

   subtype GByte is unsigned_char;  -- ../cpl_port.h:215

   subtype GBool is int;  -- ../cpl_port.h:223

   subtype GIntBig is Long_Long_Integer;  -- ../cpl_port.h:248

   subtype GUIntBig is Extensions.unsigned_long_long;  -- ../cpl_port.h:251

   subtype GInt64 is GIntBig;  -- ../cpl_port.h:267

   subtype GUInt64 is GUIntBig;  -- ../cpl_port.h:269

   subtype GPtrDiff_t is GIntBig;  -- ../cpl_port.h:286

   type CSLConstList is new System.Address;  -- ../cpl_port.h:1216

end cpl_port_h;
