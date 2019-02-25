# 1 "Ethash.metal"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 387 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 1 3







# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_config" 1 3
# 9 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 2 3
# 30 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 3
typedef unsigned char uchar;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef struct __Reserved_Name__Do_not_use_ulong ulong;
typedef struct __Reserved_Name__Do_not_use_llong llong;
typedef struct __Reserved_Name__Do_not_use_ullong ullong;
typedef struct __Reserved_Name__Do_not_use_quad quad;
typedef struct __Reserved_Name__Do_not_use_complex complex;
typedef struct __Reserved_Name__Do_not_use_imaginary imaginary;

typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
# 57 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 3
typedef struct __Reserved_Name__Do_not_use_packed_int64_t int64_t;
typedef struct __Reserved_Name__Do_not_use_packed_uint64_t uint64_t;
# 69 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 3
typedef __metal_internal_int64_t ptrdiff_t;
typedef unsigned __metal_internal_int64_t size_t;
typedef __metal_internal_int64_t intptr_t;
typedef unsigned __metal_internal_int64_t uintptr_t;


namespace metal
{
typedef ::uchar uchar;
typedef ::ushort ushort;
typedef ::uint uint;
typedef ::ulong ulong;
typedef ::llong llong;
typedef ::ullong ullong;
typedef ::quad quad;
typedef ::complex complex;
typedef ::imaginary imaginary;

typedef ::int8_t int8_t;
typedef ::uint8_t uint8_t;
typedef ::int16_t int16_t;
typedef ::uint16_t uint16_t;
typedef ::int32_t int32_t;
typedef ::uint32_t uint32_t;
typedef ::int64_t int64_t;
typedef ::uint64_t uint64_t;

typedef ::ptrdiff_t ptrdiff_t;
typedef ::size_t size_t;
typedef ::intptr_t intptr_t;
typedef ::uintptr_t uintptr_t;
}


# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_extended_vector" 1 3







typedef __attribute__((__ext_vector_type__(2))) bool bool2;
typedef __attribute__((__ext_vector_type__(3))) bool bool3;
typedef __attribute__((__ext_vector_type__(4))) bool bool4;
typedef struct __Reserved_Name__Do_not_use_bool8 bool8;
typedef struct __Reserved_Name__Do_not_use_bool16 bool16;

typedef __attribute__((__ext_vector_type__(2))) char char2;
typedef __attribute__((__ext_vector_type__(3))) char char3;
typedef __attribute__((__ext_vector_type__(4))) char char4;
typedef struct __Reserved_Name__Do_not_use_char8 char8;
typedef struct __Reserved_Name__Do_not_use_char16 char16;

typedef __attribute__((__ext_vector_type__(2))) unsigned char uchar2;
typedef __attribute__((__ext_vector_type__(3))) unsigned char uchar3;
typedef __attribute__((__ext_vector_type__(4))) unsigned char uchar4;
typedef struct __Reserved_Name__Do_not_use_uchar16 uchar8;
typedef struct __Reserved_Name__Do_not_use_uchar16 uchar16;

typedef __attribute__((__ext_vector_type__(2))) short short2;
typedef __attribute__((__ext_vector_type__(3))) short short3;
typedef __attribute__((__ext_vector_type__(4))) short short4;
typedef struct __Reserved_Name__Do_not_use_short8 short8;
typedef struct __Reserved_Name__Do_not_use_short16 short16;

typedef __attribute__((__ext_vector_type__(2))) unsigned short ushort2;
typedef __attribute__((__ext_vector_type__(3))) unsigned short ushort3;
typedef __attribute__((__ext_vector_type__(4))) unsigned short ushort4;
typedef struct __Reserved_Name__Do_not_use_ushort8 ushort8;
typedef struct __Reserved_Name__Do_not_use_ushort16 ushort16;

typedef __attribute__((__ext_vector_type__(2))) int int2;
typedef __attribute__((__ext_vector_type__(3))) int int3;
typedef __attribute__((__ext_vector_type__(4))) int int4;
typedef struct __Reserved_Name__Do_not_use_int8 int8;
typedef struct __Reserved_Name__Do_not_use_int16 int16;

typedef __attribute__((__ext_vector_type__(2))) unsigned int uint2;
typedef __attribute__((__ext_vector_type__(3))) unsigned int uint3;
typedef __attribute__((__ext_vector_type__(4))) unsigned int uint4;
typedef struct __Reserved_Name__Do_not_use_uint8 uint8;
typedef struct __Reserved_Name__Do_not_use_uint16 uint16;

typedef struct __Reserved_Name__Do_not_use_long2 long2;
typedef struct __Reserved_Name__Do_not_use_long3 long3;
typedef struct __Reserved_Name__Do_not_use_long4 long4;
typedef struct __Reserved_Name__Do_not_use_long8 long8;
typedef struct __Reserved_Name__Do_not_use_long16 long16;

typedef struct __Reserved_Name__Do_not_use_ulong2 ulong2;
typedef struct __Reserved_Name__Do_not_use_ulong3 ulong3;
typedef struct __Reserved_Name__Do_not_use_ulong4 ulong4;
typedef struct __Reserved_Name__Do_not_use_ulong8 ulong8;
typedef struct __Reserved_Name__Do_not_use_ulong16 ulong16;

typedef struct __Reserved_Name__Do_not_use_llong2 llong2;
typedef struct __Reserved_Name__Do_not_use_llong3 llong3;
typedef struct __Reserved_Name__Do_not_use_llong4 llong4;
typedef struct __Reserved_Name__Do_not_use_llong8 llong8;
typedef struct __Reserved_Name__Do_not_use_llong16 llong16;

typedef struct __Reserved_Name__Do_not_use_ullong2 ullong2;
typedef struct __Reserved_Name__Do_not_use_ullong3 ullong3;
typedef struct __Reserved_Name__Do_not_use_ullong4 ullong4;
typedef struct __Reserved_Name__Do_not_use_ullong8 ullong8;
typedef struct __Reserved_Name__Do_not_use_ullong16 ullong16;

typedef __attribute__((__ext_vector_type__(2))) half half2;
typedef __attribute__((__ext_vector_type__(3))) half half3;
typedef __attribute__((__ext_vector_type__(4))) half half4;
typedef struct __Reserved_Name__Do_not_use_half8 half8;
typedef struct __Reserved_Name__Do_not_use_half16 half16;

typedef __attribute__((__ext_vector_type__(2))) float float2;
typedef __attribute__((__ext_vector_type__(3))) float float3;
typedef __attribute__((__ext_vector_type__(4))) float float4;
typedef struct __Reserved_Name__Do_not_use_float8 float8;
typedef struct __Reserved_Name__Do_not_use_float16 float16;






typedef struct __Reserved_Name__Do_not_use_double2 double2;
typedef struct __Reserved_Name__Do_not_use_double3 double3;
typedef struct __Reserved_Name__Do_not_use_double4 double4;

typedef struct __Reserved_Name__Do_not_use_double8 double8;
typedef struct __Reserved_Name__Do_not_use_double16 double16;

typedef struct __Reserved_Name__Do_not_use_quad2 quad2;
typedef struct __Reserved_Name__Do_not_use_quad3 quad3;
typedef struct __Reserved_Name__Do_not_use_quad4 quad4;
typedef struct __Reserved_Name__Do_not_use_quad8 quad8;
typedef struct __Reserved_Name__Do_not_use_quad16 quad16;

typedef bool2 vector_bool2;
typedef bool3 vector_bool3;
typedef bool4 vector_bool4;
typedef bool8 vector_bool8;
typedef bool16 vector_bool16;

typedef char2 vector_char2;
typedef char3 vector_char3;
typedef char4 vector_char4;
typedef char8 vector_char8;
typedef char16 vector_char16;

typedef uchar2 vector_uchar2;
typedef uchar3 vector_uchar3;
typedef uchar4 vector_uchar4;
typedef uchar8 vector_uchar8;
typedef uchar16 vector_uchar16;

typedef short2 vector_short2;
typedef short3 vector_short3;
typedef short4 vector_short4;
typedef short8 vector_short8;
typedef short16 vector_short16;

typedef ushort2 vector_ushort2;
typedef ushort3 vector_ushort3;
typedef ushort4 vector_ushort4;
typedef ushort8 vector_ushort8;
typedef ushort16 vector_ushort16;

typedef int2 vector_int2;
typedef int3 vector_int3;
typedef int4 vector_int4;
typedef int8 vector_int8;
typedef int16 vector_int16;

typedef uint2 vector_uint2;
typedef uint3 vector_uint3;
typedef uint4 vector_uint4;
typedef uint8 vector_uint8;
typedef uint16 vector_uint16;

typedef long2 vector_long2;
typedef long3 vector_long3;
typedef long4 vector_long4;
typedef long8 vector_long8;
typedef long16 vector_long16;

typedef ulong2 vector_ulong2;
typedef ulong3 vector_ulong3;
typedef ulong4 vector_ulong4;
typedef ulong8 vector_ulong8;
typedef ulong16 vector_ulong16;

typedef half2 vector_half2;
typedef half3 vector_half3;
typedef half4 vector_half4;
typedef half8 vector_half8;
typedef half16 vector_half16;

typedef float2 vector_float2;
typedef float3 vector_float3;
typedef float4 vector_float4;
typedef float8 vector_float8;
typedef float16 vector_float16;

typedef double2 vector_double2;
typedef double3 vector_double3;
typedef double4 vector_double4;
typedef double8 vector_double8;
typedef double16 vector_double16;

typedef quad2 vector_quad2;
typedef quad3 vector_quad3;
typedef quad4 vector_quad4;
typedef quad8 vector_quad8;
typedef quad16 vector_quad16;

namespace metal
{
typedef ::bool2 bool2;
typedef ::bool3 bool3;
typedef ::bool4 bool4;
typedef ::bool8 bool8;
typedef ::bool16 bool16;

typedef ::char2 char2;
typedef ::char3 char3;
typedef ::char4 char4;
typedef ::char8 char8;
typedef ::char16 char16;

typedef ::uchar2 uchar2;
typedef ::uchar3 uchar3;
typedef ::uchar4 uchar4;
typedef ::uchar8 uchar8;
typedef ::uchar16 uchar16;

typedef ::short2 short2;
typedef ::short3 short3;
typedef ::short4 short4;
typedef ::short8 short8;
typedef ::short16 short16;

typedef ::ushort2 ushort2;
typedef ::ushort3 ushort3;
typedef ::ushort4 ushort4;
typedef ::ushort8 ushort8;
typedef ::ushort16 ushort16;

typedef ::int2 int2;
typedef ::int3 int3;
typedef ::int4 int4;
typedef ::int8 int8;
typedef ::int16 int16;

typedef ::uint2 uint2;
typedef ::uint3 uint3;
typedef ::uint4 uint4;
typedef ::uint8 uint8;
typedef ::uint16 uint16;

typedef ::long2 long2;
typedef ::long3 long3;
typedef ::long4 long4;
typedef ::long8 long8;
typedef ::long16 long16;

typedef ::ulong2 ulong2;
typedef ::ulong3 ulong3;
typedef ::ulong4 ulong4;
typedef ::ulong8 ulong8;
typedef ::ulong16 ulong16;

typedef ::llong2 llong2;
typedef ::llong3 llong3;
typedef ::llong4 llong4;
typedef ::llong8 llong8;
typedef ::llong16 llong16;

typedef ::ullong2 ullong2;
typedef ::ullong3 ullong3;
typedef ::ullong4 ullong4;
typedef ::ullong8 ullong8;
typedef ::ullong16 ullong16;

typedef ::half2 half2;
typedef ::half3 half3;
typedef ::half4 half4;
typedef ::half8 half8;
typedef ::half16 half16;

typedef ::float2 float2;
typedef ::float3 float3;
typedef ::float4 float4;
typedef ::float8 float8;
typedef ::float16 float16;

typedef ::double2 double2;
typedef ::double3 double3;
typedef ::double4 double4;
typedef ::double8 double8;
typedef ::double16 double16;

typedef ::quad2 quad2;
typedef ::quad3 quad3;
typedef ::quad4 quad4;
typedef ::quad8 quad8;
typedef ::quad16 quad16;

template <typename T, int N>
using vec = T __attribute__((__ext_vector_type__(N)));
}
# 103 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_packed_vector" 1 3







typedef __attribute__((__packed_vector_type__(2))) bool packed_bool2;
typedef __attribute__((__packed_vector_type__(3))) bool packed_bool3;
typedef __attribute__((__packed_vector_type__(4))) bool packed_bool4;
typedef struct __Reserved_Name__Do_not_use_packed_bool8 packed_bool8;
typedef struct __Reserved_Name__Do_not_use_packed_bool16 packed_bool16;

typedef __attribute__((__packed_vector_type__(2))) char packed_char2;
typedef __attribute__((__packed_vector_type__(3))) char packed_char3;
typedef __attribute__((__packed_vector_type__(4))) char packed_char4;
typedef struct __Reserved_Name__Do_not_use_packed_char8 packed_char8;
typedef struct __Reserved_Name__Do_not_use_packed_char16 packed_char16;

typedef __attribute__((__packed_vector_type__(2))) unsigned char packed_uchar2;
typedef __attribute__((__packed_vector_type__(3))) unsigned char packed_uchar3;
typedef __attribute__((__packed_vector_type__(4))) unsigned char packed_uchar4;
typedef struct __Reserved_Name__Do_not_use_packed_uchar16 packed_uchar8;
typedef struct __Reserved_Name__Do_not_use_packed_uchar16 packed_uchar16;

typedef __attribute__((__packed_vector_type__(2))) short packed_short2;
typedef __attribute__((__packed_vector_type__(3))) short packed_short3;
typedef __attribute__((__packed_vector_type__(4))) short packed_short4;
typedef struct __Reserved_Name__Do_not_use_packed_short8 packed_short8;
typedef struct __Reserved_Name__Do_not_use_packed_short16 packed_short16;

typedef __attribute__((__packed_vector_type__(2))) unsigned short packed_ushort2;
typedef __attribute__((__packed_vector_type__(3))) unsigned short packed_ushort3;
typedef __attribute__((__packed_vector_type__(4))) unsigned short packed_ushort4;
typedef struct __Reserved_Name__Do_not_use_packed_ushort8 packed_ushort8;
typedef struct __Reserved_Name__Do_not_use_packed_ushort16 packed_ushort16;

typedef __attribute__((__packed_vector_type__(2))) int packed_int2;
typedef __attribute__((__packed_vector_type__(3))) int packed_int3;
typedef __attribute__((__packed_vector_type__(4))) int packed_int4;
typedef struct __Reserved_Name__Do_not_use_packed_int8 packed_int8;
typedef struct __Reserved_Name__Do_not_use_packed_int16 packed_int16;

typedef __attribute__((__packed_vector_type__(2))) unsigned int packed_uint2;
typedef __attribute__((__packed_vector_type__(3))) unsigned int packed_uint3;
typedef __attribute__((__packed_vector_type__(4))) unsigned int packed_uint4;
typedef struct __Reserved_Name__Do_not_use_packed_uint8 packed_uint8;
typedef struct __Reserved_Name__Do_not_use_packed_uint16 packed_uint16;

typedef struct __Reserved_Name__Do_not_use_packed_long2 packed_long2;
typedef struct __Reserved_Name__Do_not_use_packed_long3 packed_long3;
typedef struct __Reserved_Name__Do_not_use_packed_long4 packed_long4;
typedef struct __Reserved_Name__Do_not_use_packed_long8 packed_long8;
typedef struct __Reserved_Name__Do_not_use_packed_long16 packed_long16;

typedef struct __Reserved_Name__Do_not_use_packed_ulong2 packed_ulong2;
typedef struct __Reserved_Name__Do_not_use_packed_ulong3 packed_ulong3;
typedef struct __Reserved_Name__Do_not_use_packed_ulong4 packed_ulong4;
typedef struct __Reserved_Name__Do_not_use_packed_ulong8 packed_ulong8;
typedef struct __Reserved_Name__Do_not_use_packed_ulong16 packed_ulong16;

typedef struct __Reserved_Name__Do_not_use_packed_llong2 packed_llong2;
typedef struct __Reserved_Name__Do_not_use_packed_llong3 packed_llong3;
typedef struct __Reserved_Name__Do_not_use_packed_llong4 packed_llong4;
typedef struct __Reserved_Name__Do_not_use_packed_llong8 packed_llong8;
typedef struct __Reserved_Name__Do_not_use_packed_llong16 packed_llong16;

typedef struct __Reserved_Name__Do_not_use_packed_ullong2 packed_ullong2;
typedef struct __Reserved_Name__Do_not_use_packed_ullong3 packed_ullong3;
typedef struct __Reserved_Name__Do_not_use_packed_ullong4 packed_ullong4;
typedef struct __Reserved_Name__Do_not_use_packed_ullong8 packed_ullong8;
typedef struct __Reserved_Name__Do_not_use_packed_ullong16 packed_ullong16;

typedef __attribute__((__packed_vector_type__(2))) half packed_half2;
typedef __attribute__((__packed_vector_type__(3))) half packed_half3;
typedef __attribute__((__packed_vector_type__(4))) half packed_half4;
typedef struct __Reserved_Name__Do_not_use_packed_half8 packed_half8;
typedef struct __Reserved_Name__Do_not_use_packed_half16 packed_half16;

typedef __attribute__((__packed_vector_type__(2))) float packed_float2;
typedef __attribute__((__packed_vector_type__(3))) float packed_float3;
typedef __attribute__((__packed_vector_type__(4))) float packed_float4;
typedef struct __Reserved_Name__Do_not_use_packed_float8 packed_float8;
typedef struct __Reserved_Name__Do_not_use_packed_float16 packed_float16;






typedef struct __Reserved_Name__Do_not_use_packed_double2 packed_double2;
typedef struct __Reserved_Name__Do_not_use_packed_double3 packed_double3;
typedef struct __Reserved_Name__Do_not_use_packed_double4 packed_double4;

typedef struct __Reserved_Name__Do_not_use_packed_double8 packed_double8;
typedef struct __Reserved_Name__Do_not_use_packed_double16 packed_double16;

typedef struct __Reserved_Name__Do_not_use_packed_quad2 packed_quad2;
typedef struct __Reserved_Name__Do_not_use_packed_quad3 packed_quad3;
typedef struct __Reserved_Name__Do_not_use_packed_quad4 packed_quad4;
typedef struct __Reserved_Name__Do_not_use_packed_quad8 packed_quad8;
typedef struct __Reserved_Name__Do_not_use_packed_quad16 packed_quad16;

namespace metal
{
typedef ::packed_bool2 packed_bool2;
typedef ::packed_bool3 packed_bool3;
typedef ::packed_bool4 packed_bool4;
typedef ::packed_bool8 packed_bool8;
typedef ::packed_bool16 packed_bool16;

typedef ::packed_char2 packed_char2;
typedef ::packed_char3 packed_char3;
typedef ::packed_char4 packed_char4;
typedef ::packed_char8 packed_char8;
typedef ::packed_char16 packed_char16;

typedef ::packed_uchar2 packed_uchar2;
typedef ::packed_uchar3 packed_uchar3;
typedef ::packed_uchar4 packed_uchar4;
typedef ::packed_uchar8 packed_uchar8;
typedef ::packed_uchar16 packed_uchar16;

typedef ::packed_short2 packed_short2;
typedef ::packed_short3 packed_short3;
typedef ::packed_short4 packed_short4;
typedef ::packed_short8 packed_short8;
typedef ::packed_short16 packed_short16;

typedef ::packed_ushort2 packed_ushort2;
typedef ::packed_ushort3 packed_ushort3;
typedef ::packed_ushort4 packed_ushort4;
typedef ::packed_ushort8 packed_ushort8;
typedef ::packed_ushort16 packed_ushort16;

typedef ::packed_int2 packed_int2;
typedef ::packed_int3 packed_int3;
typedef ::packed_int4 packed_int4;
typedef ::packed_int8 packed_int8;
typedef ::packed_int16 packed_int16;

typedef ::packed_uint2 packed_uint2;
typedef ::packed_uint3 packed_uint3;
typedef ::packed_uint4 packed_uint4;
typedef ::packed_uint8 packed_uint8;
typedef ::packed_uint16 packed_uint16;

typedef ::packed_long2 packed_long2;
typedef ::packed_long3 packed_long3;
typedef ::packed_long4 packed_long4;
typedef ::packed_long8 packed_long8;
typedef ::packed_long16 packed_long16;

typedef ::packed_ulong2 packed_ulong2;
typedef ::packed_ulong3 packed_ulong3;
typedef ::packed_ulong4 packed_ulong4;
typedef ::packed_ulong8 packed_ulong8;
typedef ::packed_ulong16 packed_ulong16;

typedef ::packed_llong2 packed_llong2;
typedef ::packed_llong3 packed_llong3;
typedef ::packed_llong4 packed_llong4;
typedef ::packed_llong8 packed_llong8;
typedef ::packed_llong16 packed_llong16;

typedef ::packed_ullong2 packed_ullong2;
typedef ::packed_ullong3 packed_ullong3;
typedef ::packed_ullong4 packed_ullong4;
typedef ::packed_ullong8 packed_ullong8;
typedef ::packed_ullong16 packed_ullong16;

typedef ::packed_half2 packed_half2;
typedef ::packed_half3 packed_half3;
typedef ::packed_half4 packed_half4;
typedef ::packed_half8 packed_half8;
typedef ::packed_half16 packed_half16;

typedef ::packed_float2 packed_float2;
typedef ::packed_float3 packed_float3;
typedef ::packed_float4 packed_float4;
typedef ::packed_float8 packed_float8;
typedef ::packed_float16 packed_float16;

typedef ::packed_double2 packed_double2;
typedef ::packed_double3 packed_double3;
typedef ::packed_double4 packed_double4;
typedef ::packed_double8 packed_double8;
typedef ::packed_double16 packed_double16;

typedef ::packed_quad2 packed_quad2;
typedef ::packed_quad3 packed_quad3;
typedef ::packed_quad4 packed_quad4;
typedef ::packed_quad8 packed_quad8;
typedef ::packed_quad16 packed_quad16;

template <typename T, int N>
using packed_vec = T __attribute__((__packed_vector_type__(N)));
}
# 104 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 2 3

# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_type_traits" 1 3







#pragma METAL internals : enable
namespace metal
{
template <bool B, typename T = void>
struct enable_if
{
};
template <typename T>
struct enable_if<true, T>
{
  typedef T type;
};
template <bool B, typename T = void>
using enable_if_t = typename enable_if<B, T>::type;

template <bool B, typename T, typename F>
struct conditional
{
  typedef T type;
};
template <typename T, typename F>
struct conditional<false, T, F>
{
  typedef F type;
};
template <bool B, typename T, typename F>
using conditional_t = typename conditional<B, T, F>::type;

template <typename T>
struct remove_volatile
{
  typedef T type;
};
template <typename T>
struct remove_volatile<volatile T>
{
  typedef T type;
};
template <typename T>
using remove_volatile_t = typename remove_volatile<T>::type;

template <typename T>
struct remove_const
{
  typedef T type;
};
template <typename T>
struct remove_const<const T>
{
  typedef T type;
};
template <typename T>
using remove_const_t = typename remove_const<T>::type;

template <typename T>
struct remove_cv
{
  typedef remove_volatile_t<remove_const_t<T>> type;
};

template <typename T>
using remove_cv_t = typename remove_cv<T>::type;

template <typename T, T v>
struct integral_constant
{
  typedef T value_type;
  typedef integral_constant type;
  static constant constexpr T value = v;
};

template <bool B>
using bool_constant = integral_constant<bool, B>;
using true_type = bool_constant<true>;
using false_type = bool_constant<false>;

template <typename T>
struct _is_integral_impl : bool_constant<__is_integral(T)>
{
};
template <typename T, int N>
struct _is_integral_impl<T __attribute__((ext_vector_type(N)))> : _is_integral_impl<T>
{
};
template <typename T, int N>
struct _is_integral_impl<T __attribute__((packed_vector_type(N)))> : _is_integral_impl<T>
{
};

template <typename T>
struct is_integral : _is_integral_impl<remove_cv_t<T>>
{
};

template <typename T>
constexpr constant bool is_integral_v = is_integral<T>::value;


template <typename T>
struct _is_floating_point_impl : bool_constant<__is_floating_point(T)>
{
};
template <typename T, int N>
struct _is_floating_point_impl<T __attribute__((ext_vector_type(N)))> : _is_floating_point_impl<T>
{
};
template <typename T, int N>
struct _is_floating_point_impl<T __attribute__((packed_vector_type(N)))> : _is_floating_point_impl<T>
{
};

template <typename T>
struct is_floating_point : _is_floating_point_impl<remove_cv_t<T>>
{
};

template <typename T>
constexpr constant bool is_floating_point_v = is_floating_point<T>::value;


template <typename T>
struct _is_scalar_impl : bool_constant<__is_scalar(T)>
{
};

template <typename T>
struct is_scalar : _is_scalar_impl<remove_cv_t<T>>
{
};

template <typename T>
constexpr constant bool is_scalar_v = is_scalar<T>::value;


template <typename T>
struct _is_vector_impl : false_type
{
};
template <typename T, int N>
struct _is_vector_impl<T __attribute__((ext_vector_type(N)))> : true_type
{
};
template <typename T, int N>
struct _is_vector_impl<T __attribute__((packed_vector_type(N)))> : true_type
{
};

template <typename T>
struct is_vector : _is_vector_impl<remove_cv_t<T>>
{
};

template <typename T>
constexpr constant bool is_vector_v = is_vector<T>::value;


template <typename T>
struct _is_arithmetic_impl : bool_constant<__is_arithmetic(T)>
{
};
template <typename T, int N>
struct _is_arithmetic_impl<T __attribute__((ext_vector_type(N)))> : _is_arithmetic_impl<T>
{
};
template <typename T, int N>
struct _is_arithmetic_impl<T __attribute__((packed_vector_type(N)))> : _is_arithmetic_impl<T>
{
};

template <typename T>
struct is_arithmetic : _is_arithmetic_impl<remove_cv_t<T>>
{
};

template <typename T>
constexpr constant bool is_arithmetic_v = is_arithmetic<T>::value;


template <typename U, typename V>
struct is_convertible : bool_constant<__is_convertible_to(U, V)>
{
};

template <typename U, typename V>
constexpr constant bool is_convertible_v = is_convertible<U, V>::value;


template <typename U, typename V>
struct is_same : bool_constant<__is_same(U, V)>
{
};

template <typename U, typename V>
constexpr constant bool is_same_v = is_same<U, V>::value;


template <typename T>
struct is_class : bool_constant<__is_class(T)>
{
};

template <typename T>
constexpr constant bool is_class_v = is_class<T>::value;


template <typename T>
struct is_signed : bool_constant<__is_signed(T)>
{
};
template <typename T, int N>
struct is_signed<T __attribute__((ext_vector_type(N)))> : is_signed<T>
{
};
template <typename T, int N>
struct is_signed<T __attribute__((packed_vector_type(N)))> : is_signed<T>
{
};

template <typename T>
constexpr constant bool is_signed_v = is_signed<T>::value;


template <typename T>
struct is_unsigned : bool_constant<__is_unsigned(T)>
{
};
template <typename T, int N>
struct is_unsigned<T __attribute__((ext_vector_type(N)))> : is_unsigned<T>
{
};
template <typename T, int N>
struct is_unsigned<T __attribute__((packed_vector_type(N)))> : is_unsigned<T>
{
};

template <typename T>
constexpr constant bool is_unsigned_v = is_unsigned<T>::value;


template <typename T>
struct is_enum : bool_constant<__is_enum(T)>
{
};

template <typename T>
constexpr constant bool is_enum_v = is_enum<T>::value;


template <typename T>
struct is_const : bool_constant<__is_const(T)>
{
};

template <typename T>
constexpr constant bool is_const_v = is_const<T>::value;


template <typename T>
struct _vec_elements_impl : integral_constant<size_t, 0>
{
};
template <typename T, int N>
struct _vec_elements_impl<T __attribute__((ext_vector_type(N)))> : integral_constant<size_t, N>
{
};
template <typename T, int N>
struct _vec_elements_impl<T __attribute__((packed_vector_type(N)))> : integral_constant<size_t, N>
{
};
template <typename T>
struct vec_elements : _vec_elements_impl<remove_cv_t<T>>
{
};





template <typename T>
struct _make_scalar_impl
{
  typedef T type;
};
template <typename T, int N>
struct _make_scalar_impl<T __attribute__((ext_vector_type(N)))>
{
  typedef T type;
};
template <typename T, int N>
struct _make_scalar_impl<T __attribute__((packed_vector_type(N)))>
{
  typedef T type;
};
template <typename T>
struct make_scalar : _make_scalar_impl<remove_cv_t<T>>
{
};
template <typename T>
using make_scalar_t = typename make_scalar<T>::type;

template <typename T, typename _E = void>
struct _make_signed_impl
{
};
template <typename T>
struct _make_signed_impl<T, typename enable_if<is_scalar<T>::value && is_signed<T>::value>::type>
{
  typedef T type;
};
template <>
struct _make_signed_impl<unsigned char, void>
{
  typedef signed char type;
};
template <>
struct _make_signed_impl<unsigned short, void>
{
  typedef signed short type;
};
template <>
struct _make_signed_impl<unsigned int, void>
{
  typedef signed int type;
};
template <typename T, int N>
struct _make_signed_impl<T __attribute__((ext_vector_type(N)))>
{
  typedef typename _make_signed_impl<T>::type __attribute__((ext_vector_type(N))) type;
};
template <typename T, int N>
struct _make_signed_impl<T __attribute__((packed_vector_type(N)))>
{
  typedef typename _make_signed_impl<T>::type __attribute__((packed_vector_type(N))) type;
};
template <typename T>
struct make_signed
{
  typedef typename _make_signed_impl<remove_cv_t<T>>::type type;
};
template <typename T>
using make_signed_t = typename make_signed<T>::type;

template <typename T, typename _E = void>
struct _make_unsigned_impl
{
};
template <typename T>
struct _make_unsigned_impl<T, typename enable_if<is_scalar<T>::value && is_unsigned<T>::value>::type>
{
  typedef T type;
};
template <>
struct _make_unsigned_impl<char, void>
{
  typedef unsigned char type;
};
template <>
struct _make_unsigned_impl<signed char, void>
{
  typedef unsigned char type;
};
template <>
struct _make_unsigned_impl<signed short, void>
{
  typedef unsigned short type;
};
template <>
struct _make_unsigned_impl<signed int, void>
{
  typedef unsigned int type;
};
template <typename T, int N>
struct _make_unsigned_impl<T __attribute__((ext_vector_type(N)))>
{
  typedef typename _make_unsigned_impl<T>::type __attribute__((ext_vector_type(N))) type;
};
template <typename T, int N>
struct _make_unsigned_impl<T __attribute__((packed_vector_type(N)))>
{
  typedef typename _make_unsigned_impl<T>::type __attribute__((packed_vector_type(N))) type;
};
template <typename T>
struct make_unsigned
{
  typedef typename _make_unsigned_impl<remove_cv_t<T>>::type type;
};
template <typename T>
using make_unsigned_t = typename make_unsigned<T>::type;

template <typename T>
struct underlying_type
{
  typedef __underlying_type(T) type;
};
template <typename T>
using underlying_type_t = typename underlying_type<T>::type;

template <typename... T>
struct _disjunction : false_type
{
};
template <typename T>
struct _disjunction<T> : T
{
};
template <typename T, typename... U>
struct _disjunction<T, U...> : conditional_t<bool(T::value), T, _disjunction<U...>>
{
};

template <typename... T>
using disjunction = _disjunction<T...>;
template <typename... T>
constexpr constant bool disjunction_v = disjunction<T...>::value;


template <typename... T>
struct _conjunction : true_type
{
};
template <typename T>
struct _conjunction<T> : T
{
};
template <typename T, typename... U>
struct _conjunction<T, U...> : conditional_t<bool(T::value), _conjunction<U...>, T>
{
};

template <typename... T>
using conjunction = _conjunction<T...>;
template <typename... T>
constexpr constant bool conjunction_v = conjunction<T...>::value;


template <typename T>
struct _is_metal_buffer_pointee_impl : bool_constant<__is_metal_buffer_pointee(T)>
{
};

template <typename T>
struct is_metal_buffer_pointee : _is_metal_buffer_pointee_impl<remove_cv_t<T>>
{
};

template <typename T>
constexpr constant bool is_metal_buffer_pointee_v = is_metal_buffer_pointee<T>::value;

}

#pragma METAL internals : disable
# 106 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 2 3

#pragma METAL internals : enable
namespace metal
{



template <typename T, typename = void>
struct _constarg_traits
{



  constexpr static bool check(const thread T &t)
  {
    return false;
  }
  constexpr static bool check(const threadgroup T &t)
  {
    return false;
  }
  constexpr static bool check(const constant T &t)
  {
    return false;
  }
  constexpr static bool check(const device T &t)
  {
    return false;
  }
};


template <typename T>
struct _constarg_traits<T, typename enable_if<is_arithmetic<T>::value && !is_vector<T>::value>::type>
{
  constexpr static bool check(T a)
  {
    return a != 0 || a == 0;
  }
};
template <typename T>
struct _constarg_traits<T, typename enable_if<is_enum<T>::value>::type>
{
  constexpr static bool check(T a)
  {
    return _constarg_traits<underlying_type_t<T>>::check(static_cast<underlying_type_t<T>>(a));
  }
};
}
#pragma METAL internals : disable



# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_tessellation" 1 3
# 13 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_tessellation" 3
namespace metal
{

template <typename T, typename = void>
class patch_control_point;

template <typename T>
class patch_control_point<T, typename enable_if<__is_metal_patch_control_point_struct(T)>::type>
{
  patch_control_point() thread = default;

public:
  thread patch_control_point &operator=(const thread patch_control_point &) thread = delete;
  thread patch_control_point &operator=(const constant patch_control_point&) thread = delete;
  thread patch_control_point *operator&() thread = delete;
  const thread patch_control_point *operator&() const thread = delete;


  size_t size() const thread
  {
    return __metal_get_num_patch_control_points();
  }

  T operator[](size_t pos) const thread
  {
    return control_point_function(static_cast<int>(pos), pcp);
  }

private:

  __attribute__((pure)) static T control_point_function(int, patch_control_point_t);

private:
  patch_control_point_t pcp;
};


struct MTLQuadTessellationFactorsHalf
{
  half edgeTessellationFactor[4];
  half insideTessellationFactor[2];
};

struct MTLTriangleTessellationFactorsHalf
{
  half edgeTessellationFactor[3];
  half insideTessellationFactor;
};

struct MTLDrawPatchIndirectArguments
{
  uint patchCount;
  uint instanceCount;
  uint patchStart;
  uint baseInstance;
};

}
# 159 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 2 3






namespace metal {

enum memory_order {
  memory_order_relaxed = 0,
};

}
# 284 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_types" 3
namespace simd = metal;
# 2 "<built-in>" 2
# 1 "Ethash.metal" 2
# 12 "Ethash.metal"
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 1 3



# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_array" 1 3







# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_assert" 1 3
# 9 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_array" 2 3


namespace metal {

template <typename T, size_t N>
struct array {



  inline __attribute__((__always_inline__)) constexpr size_t size() const thread { return N; }
  inline __attribute__((__always_inline__)) constexpr size_t max_size() const thread { return N; }
  inline __attribute__((__always_inline__)) constexpr bool empty() const thread { return N == 0; }

  inline __attribute__((__always_inline__)) thread T &front() thread {
    ((void) 0);
    return __elems[0];
  }
  inline __attribute__((__always_inline__)) constexpr const thread T &front() const thread {
    ((void) 0);
    return __elems[0];
  }

  inline __attribute__((__always_inline__)) thread T &back() thread {
    ((void) 0);
    return __elems[N - (N != 0)];
  }
  inline __attribute__((__always_inline__)) constexpr const thread T &back() const thread {
    ((void) 0);
    return __elems[N - (N != 0)];
  }

  inline __attribute__((__always_inline__)) thread T &operator[](size_t pos) thread {
    ((void) 0);
    return __elems[pos];
  }
  inline __attribute__((__always_inline__)) constexpr const thread T &operator[](size_t pos) const thread {
    ((void) 0);
    return __elems[pos];
  }

  inline __attribute__((__always_inline__)) thread T *data() thread { return __elems; }
  inline __attribute__((__always_inline__)) constexpr const thread T *data() const thread { return __elems; }

  inline __attribute__((__always_inline__)) constexpr size_t size() const device { return N; }
  inline __attribute__((__always_inline__)) constexpr size_t max_size() const device { return N; }
  inline __attribute__((__always_inline__)) constexpr bool empty() const device { return N == 0; }

  inline __attribute__((__always_inline__)) device T &front() device {
    ((void) 0);
    return __elems[0];
  }
  inline __attribute__((__always_inline__)) constexpr const device T &front() const device {
    ((void) 0);
    return __elems[0];
  }

  inline __attribute__((__always_inline__)) device T &back() device {
    ((void) 0);
    return __elems[N - (N != 0)];
  }
  inline __attribute__((__always_inline__)) constexpr const device T &back() const device {
    ((void) 0);
    return __elems[N - (N != 0)];
  }

  inline __attribute__((__always_inline__)) device T &operator[](size_t pos) device {
    ((void) 0);
    return __elems[pos];
  }
  inline __attribute__((__always_inline__)) constexpr const device T &operator[](size_t pos) const device {
    ((void) 0);
    return __elems[pos];
  }

  inline __attribute__((__always_inline__)) device T *data() device { return __elems; }
  inline __attribute__((__always_inline__)) constexpr const device T *data() const device { return __elems; }

  inline __attribute__((__always_inline__)) constexpr size_t size() const constant { return N; }
  inline __attribute__((__always_inline__)) constexpr size_t max_size() const constant { return N; }
  inline __attribute__((__always_inline__)) constexpr bool empty() const constant { return N == 0; }

  inline __attribute__((__always_inline__)) constexpr const constant T &front() const constant {
    ((void) 0);
    return __elems[0];
  }

  inline __attribute__((__always_inline__)) constexpr const constant T &back() const constant {
    ((void) 0);
    return __elems[N - (N != 0)];
  }

  inline __attribute__((__always_inline__)) constexpr const constant T &operator[](size_t pos) const constant {
    ((void) 0);
    return __elems[pos];
  }

  inline __attribute__((__always_inline__)) constexpr const constant T *data() const constant { return __elems; }

  inline __attribute__((__always_inline__)) constexpr size_t size() const threadgroup { return N; }
  inline __attribute__((__always_inline__)) constexpr size_t max_size() const threadgroup { return N; }
  inline __attribute__((__always_inline__)) constexpr bool empty() const threadgroup { return N == 0; }

  inline __attribute__((__always_inline__)) threadgroup T &front() threadgroup {
    ((void) 0);
    return __elems[0];
  }
  inline __attribute__((__always_inline__)) constexpr const threadgroup T &front() const threadgroup {
    ((void) 0);
    return __elems[0];
  }

  inline __attribute__((__always_inline__)) threadgroup T &back() threadgroup {
    ((void) 0);
    return __elems[N - (N != 0)];
  }
  inline __attribute__((__always_inline__)) constexpr const threadgroup T &back() const threadgroup {
    ((void) 0);
    return __elems[N - (N != 0)];
  }

  inline __attribute__((__always_inline__)) threadgroup T &operator[](size_t pos) threadgroup {
    ((void) 0);
    return __elems[pos];
  }
  inline __attribute__((__always_inline__)) constexpr const threadgroup T &operator[](size_t pos) const threadgroup {
    ((void) 0);
    return __elems[pos];
  }

  inline __attribute__((__always_inline__)) threadgroup T *data() threadgroup { return __elems; }
  inline __attribute__((__always_inline__)) constexpr const threadgroup T *data() const threadgroup { return __elems; }



  T __elems[N ? N : 1];
};

template <typename T>
struct array_ref {
  inline __attribute__((__always_inline__)) constexpr array_ref() thread : d(nullptr), sz(0) {}
  inline __attribute__((__always_inline__)) constexpr array_ref(const thread T &elt) thread : d(&elt), sz(1) {}
  inline __attribute__((__always_inline__)) constexpr array_ref(const thread T *data, size_t size) thread : d(data), sz(size) {}
  template <size_t N> inline __attribute__((__always_inline__)) constexpr array_ref(const thread T (&data)[N]) thread : d(data), sz(N) {}
  template <size_t N> inline __attribute__((__always_inline__)) constexpr array_ref(const thread array<T, N> &data) thread : d(data.data()), sz(data.size()) {}

  inline __attribute__((__always_inline__)) constexpr size_t size() const thread { return sz; }
  inline __attribute__((__always_inline__)) constexpr bool empty() const thread { return sz == 0; }

  inline __attribute__((__always_inline__)) constexpr const thread T &front() const thread {
    ((void) 0);
    return d[0];
  }
  inline __attribute__((__always_inline__)) constexpr const thread T &back() const thread {
    ((void) 0);
    return d[sz - 1];
  }
  inline __attribute__((__always_inline__)) constexpr const thread T &operator[](size_t pos) const thread {
    ((void) 0);
    return d[pos];
  }
  inline __attribute__((__always_inline__)) constexpr const thread T *data() const thread { return d; }

private:
  const thread T *d;
  size_t sz;
};

template <typename T>
struct array_ref<device T> {
  inline __attribute__((__always_inline__)) constexpr array_ref() thread : d(nullptr), sz(0) {}
  inline __attribute__((__always_inline__)) constexpr array_ref(const device T &elt) thread : d(&elt), sz(1) {}
  inline __attribute__((__always_inline__)) constexpr array_ref(const device T *data, size_t size) thread : d(data), sz(size) {}
  template <size_t N> inline __attribute__((__always_inline__)) constexpr array_ref(const device T (&data)[N]) thread : d(data), sz(N) {}
  template <size_t N> inline __attribute__((__always_inline__)) constexpr array_ref(const device array<T, N> &data) thread : d(data.data()), sz(data.size()) {}

  inline __attribute__((__always_inline__)) constexpr size_t size() const thread { return sz; }
  inline __attribute__((__always_inline__)) constexpr bool empty() const thread { return sz == 0; }

  inline __attribute__((__always_inline__)) constexpr const device T &front() const thread {
    ((void) 0);
    return d[0];
  }
  inline __attribute__((__always_inline__)) constexpr const device T &back() const thread {
    ((void) 0);
    return d[sz - 1];
  }
  inline __attribute__((__always_inline__)) constexpr const device T &operator[](size_t pos) const thread {
    ((void) 0);
    return d[pos];
  }
  inline __attribute__((__always_inline__)) constexpr const device T *data() const thread { return d; }

private:
  const device T *d;
  size_t sz;
};

template <typename T>
struct array_ref<constant T> {
  inline __attribute__((__always_inline__)) constexpr array_ref() thread : d(nullptr), sz(0) {}
  inline __attribute__((__always_inline__)) constexpr array_ref(const constant T &elt) thread : d(&elt), sz(1) {}
  inline __attribute__((__always_inline__)) constexpr array_ref(const constant T *data, size_t size) thread : d(data), sz(size) {}
  template <size_t N> inline __attribute__((__always_inline__)) constexpr array_ref(const constant T (&data)[N]) thread : d(data), sz(N) {}
  template <size_t N> inline __attribute__((__always_inline__)) constexpr array_ref(const constant array<T, N> &data) thread : d(data.data()), sz(data.size()) {}

  inline __attribute__((__always_inline__)) constexpr size_t size() const thread { return sz; }
  inline __attribute__((__always_inline__)) constexpr bool empty() const thread { return sz == 0; }

  inline __attribute__((__always_inline__)) constexpr const constant T &front() const thread {
    ((void) 0);
    return d[0];
  }
  inline __attribute__((__always_inline__)) constexpr const constant T &back() const thread {
    ((void) 0);
    return d[sz - 1];
  }
  inline __attribute__((__always_inline__)) constexpr const constant T &operator[](size_t pos) const thread {
    ((void) 0);
    return d[pos];
  }
  inline __attribute__((__always_inline__)) constexpr const constant T *data() const thread { return d; }

private:
  const constant T *d;
  size_t sz;
};

template <typename T>
struct array_ref<threadgroup T> {
  inline __attribute__((__always_inline__)) constexpr array_ref() thread : d(nullptr), sz(0) {}
  inline __attribute__((__always_inline__)) constexpr array_ref(const threadgroup T &elt) thread : d(&elt), sz(1) {}
  inline __attribute__((__always_inline__)) constexpr array_ref(const threadgroup T *data, size_t size) thread : d(data), sz(size) {}
  template <size_t N> inline __attribute__((__always_inline__)) constexpr array_ref(const threadgroup T (&data)[N]) thread : d(data), sz(N) {}
  template <size_t N> inline __attribute__((__always_inline__)) constexpr array_ref(const threadgroup array<T, N> &data) thread : d(data.data()), sz(data.size()) {}

  inline __attribute__((__always_inline__)) constexpr size_t size() const thread { return sz; }
  inline __attribute__((__always_inline__)) constexpr bool empty() const thread { return sz == 0; }

  inline __attribute__((__always_inline__)) constexpr const threadgroup T &front() const thread {
    ((void) 0);
    return d[0];
  }
  inline __attribute__((__always_inline__)) constexpr const threadgroup T &back() const thread {
    ((void) 0);
    return d[sz - 1];
  }
  inline __attribute__((__always_inline__)) constexpr const threadgroup T &operator[](size_t pos) const thread {
    ((void) 0);
    return d[pos];
  }
  inline __attribute__((__always_inline__)) constexpr const threadgroup T *data() const thread { return d; }

private:
  const threadgroup T *d;
  size_t sz;
};


template <typename T>
inline __attribute__((__always_inline__)) constexpr array_ref<thread T> make_array_ref(const thread T &elt) { return array_ref<thread T>(elt); }
template <typename T>
inline __attribute__((__always_inline__)) constexpr array_ref<thread T> make_array_ref(const thread T *data, size_t size) { return array_ref<thread T>(data, size); }
template <typename T, size_t N>
inline __attribute__((__always_inline__)) constexpr array_ref<thread T> make_array_ref(const thread T (&data)[N]) { return array_ref<thread T>(data); }
template <typename T, size_t N>
inline __attribute__((__always_inline__)) constexpr array_ref<thread T> make_array_ref(const thread array<T, N> &data) { return array_ref<thread T>(data); }

template <typename T>
inline __attribute__((__always_inline__)) constexpr array_ref<device T> make_array_ref(const device T &elt) { return array_ref<device T>(elt); }
template <typename T>
inline __attribute__((__always_inline__)) constexpr array_ref<device T> make_array_ref(const device T *data, size_t size) { return array_ref<device T>(data, size); }
template <typename T, size_t N>
inline __attribute__((__always_inline__)) constexpr array_ref<device T> make_array_ref(const device T (&data)[N]) { return array_ref<device T>(data); }
template <typename T, size_t N>
inline __attribute__((__always_inline__)) constexpr array_ref<device T> make_array_ref(const device array<T, N> &data) { return array_ref<device T>(data); }

template <typename T>
inline __attribute__((__always_inline__)) constexpr array_ref<constant T> make_array_ref(const constant T &elt) { return array_ref<constant T>(elt); }
template <typename T>
inline __attribute__((__always_inline__)) constexpr array_ref<constant T> make_array_ref(const constant T *data, size_t size) { return array_ref<constant T>(data, size); }
template <typename T, size_t N>
inline __attribute__((__always_inline__)) constexpr array_ref<constant T> make_array_ref(const constant T (&data)[N]) { return array_ref<constant T>(data); }
template <typename T, size_t N>
inline __attribute__((__always_inline__)) constexpr array_ref<constant T> make_array_ref(const constant array<T, N> &data) { return array_ref<constant T>(data); }

template <typename T>
inline __attribute__((__always_inline__)) constexpr array_ref<threadgroup T> make_array_ref(const threadgroup T &elt) { return array_ref<threadgroup T>(elt); }
template <typename T>
inline __attribute__((__always_inline__)) constexpr array_ref<threadgroup T> make_array_ref(const threadgroup T *data, size_t size) { return array_ref<threadgroup T>(data, size); }
template <typename T, size_t N>
inline __attribute__((__always_inline__)) constexpr array_ref<threadgroup T> make_array_ref(const threadgroup T (&data)[N]) { return array_ref<threadgroup T>(data); }
template <typename T, size_t N>
inline __attribute__((__always_inline__)) constexpr array_ref<threadgroup T> make_array_ref(const threadgroup array<T, N> &data) { return array_ref<threadgroup T>(data); }



}
# 5 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_atomic" 1 3







# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_compute" 1 3







namespace metal
{


enum class mem_flags
{
  mem_none = 0,
  mem_device = 1,
  mem_threadgroup = 2,

  mem_texture = 4,

  mem_device_and_threadgroup __attribute__((deprecated("use mem_device or mem_threadgroup instead"))) = mem_device | mem_threadgroup
};


inline __attribute__((__always_inline__)) constexpr mem_flags operator|(mem_flags x, mem_flags y)
{
  return static_cast<mem_flags>(static_cast<int>(x) | static_cast<int>(y));
}

inline __attribute__((__always_inline__)) constexpr mem_flags operator&(mem_flags x, mem_flags y)
{
  return static_cast<mem_flags>(static_cast<int>(x) & static_cast<int>(y));
}

inline __attribute__((__always_inline__)) constexpr mem_flags operator^(mem_flags x, mem_flags y)
{
  return static_cast<mem_flags>(static_cast<int>(x) ^ static_cast<int>(y));
}

inline __attribute__((__always_inline__)) constexpr mem_flags operator~(mem_flags x)
{
  return static_cast<mem_flags>(~static_cast<int>(x));
}


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wtautological-compare"
template <>
struct _constarg_traits<mem_flags>
{
  constexpr static bool check(mem_flags flags)
  {
    return flags == flags;
  }
};
#pragma clang diagnostic pop

inline __attribute__((__always_inline__)) void threadgroup_barrier(mem_flags flags)
{
  __metal_wg_barrier(int(flags), 1);
}


inline __attribute__((__always_inline__)) void simdgroup_barrier(mem_flags flags)
{

  __metal_simdgroup_barrier(int(flags), 1);
}



struct MTLDispatchThreadgroupsIndirectArguments
{
  uint threadgroupsPerGrid[3];
};



}
# 9 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_atomic" 2 3

namespace metal
{


template <typename T, typename _E = void>
struct _atomic
{
  _atomic() threadgroup = default;
  _atomic() device = delete;
  _atomic(const threadgroup _atomic &) threadgroup = delete;
  _atomic(const device _atomic &) threadgroup = delete;
  _atomic(const threadgroup _atomic &) device = delete;
  _atomic(const device _atomic &) device = delete;
  threadgroup _atomic &operator=(const threadgroup _atomic &) threadgroup = delete;
  threadgroup _atomic &operator=(const device _atomic &) threadgroup = delete;
  device _atomic &operator=(const threadgroup _atomic &) device = delete;
  device _atomic &operator=(const device _atomic &) device = delete;
};

template <typename T>
struct _atomic<T, typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value>::type>
{
  _atomic() threadgroup = default;
  _atomic() device = delete;
  _atomic(const threadgroup _atomic &) threadgroup = delete;
  _atomic(const device _atomic &) threadgroup = delete;
  _atomic(const threadgroup _atomic &) device = delete;
  _atomic(const device _atomic &) device = delete;
  threadgroup _atomic &operator=(const threadgroup _atomic &) threadgroup = delete;
  threadgroup _atomic &operator=(const device _atomic &) threadgroup = delete;
  device _atomic &operator=(const threadgroup _atomic &) device = delete;
  device _atomic &operator=(const device _atomic &) device = delete;

  T __s;
};
typedef _atomic<int> atomic_int;
typedef _atomic<uint> atomic_uint;
# 59 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_atomic" 3
template <typename T, typename U, typename _E = typename enable_if<is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) void atomic_store_explicit(volatile threadgroup _atomic<T> *object, U desired, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  __metal_atomic_store_explicit(&object->__s, decltype(object->__s)(desired), int(order), 1);
}
template <typename T, typename U, typename _E = typename enable_if<is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) void atomic_store_explicit(volatile device _atomic<T> *object, U desired, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  __metal_atomic_store_explicit(&object->__s, decltype(object->__s)(desired), int(order), 2);
}







template <typename T>
inline __attribute__((__always_inline__)) T atomic_load_explicit(const volatile threadgroup _atomic<T> *object, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return T(__metal_atomic_load_explicit(&object->__s, int(order), 1));
}
template <typename T>
inline __attribute__((__always_inline__)) T atomic_load_explicit(const volatile device _atomic<T> *object, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return T(__metal_atomic_load_explicit(&object->__s, int(order), 2));
}



template <typename T, typename U, typename _E = typename enable_if<is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_exchange_explicit(volatile threadgroup _atomic<T> *object, U desired, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return T(__metal_atomic_exchange_explicit(&object->__s, decltype(object->__s)(desired), int(order), 1));
}
template <typename T, typename U, typename _E = typename enable_if<is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_exchange_explicit(volatile device _atomic<T> *object, U desired, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return T(__metal_atomic_exchange_explicit(&object->__s , decltype(object->__s)(desired), int(order), 2));
}
# 107 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_atomic" 3
template <typename T, typename U, typename _E = typename enable_if<is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) bool atomic_compare_exchange_weak_explicit(volatile threadgroup _atomic<T> *object, thread T *expected, U desired, memory_order success, memory_order failure) __attribute__((enable_if(_constarg_traits<decltype(success)>::check(success), "'" "success" "' argument must be known at compile-time"))) __attribute__((enable_if(_constarg_traits<decltype(failure)>::check(failure), "'" "failure" "' argument must be known at compile-time")))
{
  decltype(object->__s) next_expected(*expected);
  bool swapped = __metal_atomic_compare_exchange_weak_explicit(&object->__s, &next_expected, decltype(object->__s)(desired), int(success), int(failure), 1);
  *expected = T(next_expected);
  return swapped;
}
template <typename T, typename U, typename _E = typename enable_if<is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) bool atomic_compare_exchange_weak_explicit(volatile device _atomic<T> *object, thread T *expected, U desired, memory_order success, memory_order failure) __attribute__((enable_if(_constarg_traits<decltype(success)>::check(success), "'" "success" "' argument must be known at compile-time"))) __attribute__((enable_if(_constarg_traits<decltype(failure)>::check(failure), "'" "failure" "' argument must be known at compile-time")))
{
  decltype(object->__s) next_expected(*expected);
  bool swapped = __metal_atomic_compare_exchange_weak_explicit(&object->__s, &next_expected, decltype(object->__s)(desired), int(success), int(failure), 2);
  *expected = T(next_expected);
  return swapped;
}



template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_add_explicit(volatile threadgroup _atomic<T> *object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_add_explicit(&object->__s, T(operand), int(order), 1);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_add_explicit(volatile device _atomic<T>* object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_add_explicit(&object->__s, T(operand), int(order), 2);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_and_explicit(volatile threadgroup _atomic<T> *object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_and_explicit(&object->__s, T(operand), int(order), 1);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_and_explicit(volatile device _atomic<T>* object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_and_explicit(&object->__s, T(operand), int(order), 2);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_max_explicit(volatile threadgroup _atomic<T> *object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_max_explicit(&object->__s, T(operand), int(order), 1);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_max_explicit(volatile device _atomic<T>* object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_max_explicit(&object->__s, T(operand), int(order), 2);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_min_explicit(volatile threadgroup _atomic<T> *object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_min_explicit(&object->__s, T(operand), int(order), 1);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_min_explicit(volatile device _atomic<T>* object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_min_explicit(&object->__s, T(operand), int(order), 2);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_or_explicit(volatile threadgroup _atomic<T> *object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_or_explicit(&object->__s, T(operand), int(order), 1);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_or_explicit(volatile device _atomic<T>* object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_or_explicit(&object->__s, T(operand), int(order), 2);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_sub_explicit(volatile threadgroup _atomic<T> *object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_sub_explicit(&object->__s, T(operand), int(order), 1);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_sub_explicit(volatile device _atomic<T>* object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_sub_explicit(&object->__s, T(operand), int(order), 2);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_xor_explicit(volatile threadgroup _atomic<T> *object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_xor_explicit(&object->__s, T(operand), int(order), 1);
}
template <typename T, typename U, typename _E = typename enable_if<_disjunction<is_same<T, int>, is_same<T, uint>>::value && is_convertible<T, U>::value>::type>
inline __attribute__((__always_inline__)) T atomic_fetch_xor_explicit(volatile device _atomic<T>* object, U operand, memory_order order) __attribute__((enable_if(_constarg_traits<decltype(order)>::check(order), "'" "order" "' argument must be known at compile-time")))
{
  return __metal_atomic_fetch_xor_explicit(&object->__s, T(operand), int(order), 2);
}
}
# 6 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_command_buffer" 1 3







namespace metal
{
# 286 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_command_buffer" 3
}
# 7 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_common" 1 3







# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_common" 1 3







# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math_utils" 1 3







# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_utils" 1 3







#pragma METAL internals : enable
namespace metal
{
template <typename T>
struct _is_scalar_integral : false_type {
};
template <>
struct _is_scalar_integral<char> : true_type
{
};
template <>
struct _is_scalar_integral<uchar> : true_type
{
};
template <>
struct _is_scalar_integral<short> : true_type
{
};
template <>
struct _is_scalar_integral<ushort> : true_type
{
};
template <>
struct _is_scalar_integral<int> : true_type
{
};
template <>
struct _is_scalar_integral<uint> : true_type
{
};
template <typename T>
struct _is_integral : _is_scalar_integral<T>
{
};
template <typename T, int N>
struct _is_integral<T __attribute__((ext_vector_type(N)))> : _is_integral<T>
{
};
template <typename T, int N>
struct _is_integral<T __attribute__((packed_vector_type(N)))> : _is_integral<T>
{
};
template <typename T>
struct _is_integral_vector : bool_constant<is_vector<T>::value && _is_scalar_integral<typename make_scalar<T>::type>::value>
{
};

template <typename T, typename U, typename _E = void>
struct _integer_binary_func_operand_type
{
  using type = void;
};
# 74 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_utils" 3
template <typename T>
struct _integer_binary_func_operand_type<T, T, typename enable_if<_is_integral<T>::value>::type>
{
  using type = T;
};




template <typename T, typename U>
struct _integer_binary_func_operand_type<T, U, typename enable_if<(_is_integral_vector<T>::value ^ _is_integral_vector<U>::value) && (is_scalar<T>::value ^ is_scalar<U>::value)>::type>
{
  using type = typename conditional<_is_integral_vector<T>::value, T, U>::type;
};



template <typename T, typename U>
struct _integer_binary_func_operand_type<T, U, typename enable_if<(_is_scalar_integral<T>::value && is_scalar<U>::value && is_floating_point<U>::value) || (_is_scalar_integral<U>::value && is_scalar<T>::value && is_floating_point<T>::value)>::type>
{
  using type = typename conditional<_is_integral<T>::value, T, U>::type;
};


template <typename T, typename U>
struct _integer_binary_func_operand_type<T, U, typename enable_if<(is_same<int, T>::value && is_same<bool, U>::value) || (is_same<int, U>::value && is_same<bool, T>::value)>::type>
{
  typedef int type;
};




template <typename T, typename U>

struct _integer_binary_func_operand_type<T, U, typename enable_if<((is_same<unsigned __metal_internal_int64_t, T>::value || is_same<__metal_internal_int64_t, T>::value) && (is_floating_point<U>::value || _is_integral<U>::value)) || ((is_same<unsigned __metal_internal_int64_t, U>::value || is_same<__metal_internal_int64_t, U>::value) && (is_floating_point<T>::value || _is_integral<T>::value))>::type>
{
  typedef typename conditional<is_same<unsigned __metal_internal_int64_t, T>::value || is_same<__metal_internal_int64_t, T>::value, U, T>::type type;
};


template <typename T, typename U>
using _integer_binary_func_operand_type_t = typename _integer_binary_func_operand_type<T, U>::type;
template <typename T, typename U>
struct _integer_binary_func_enable : bool_constant<!is_same<void, _integer_binary_func_operand_type_t<T, U>>::value>
{
};

template <typename T, typename U, typename V, typename _E = void>
struct _integer_ternary_func_operand_type
{
  using type = void;
};
# 141 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_utils" 3
template <typename T>
struct _integer_ternary_func_operand_type<T, T, T, typename enable_if<_is_integral<T>::value>::type>
{
  using type = T;
};



template <typename T, typename U, typename V>
struct _integer_ternary_func_operand_type<T, U, V, typename enable_if<(_is_integral_vector<T>::value + _is_integral_vector<U>::value + _is_integral_vector<V>::value) == 1 && (is_scalar<T>::value + is_scalar<U>::value + is_scalar<V>::value) == 2 && (!is_same<T, U>::value && !is_same<T, V>::value && !is_same<U, V>::value)>::type>
{
  using type = typename conditional<_is_integral_vector<T>::value, T, typename conditional<_is_integral_vector<U>::value, U, V>::type>::type;
};



template <typename T, typename U, typename V>
struct _integer_ternary_func_operand_type<T, U, V, typename enable_if<is_scalar<T>::value && is_scalar<U>::value && is_scalar<V>::value && (_is_integral<T>::value + _is_integral<U>::value + _is_integral<V>::value) == 1 && (!is_same<T, U>::value && !is_same<T, V>::value && !is_same<U, V>::value)>::type>
{
  using type = typename conditional<_is_integral<T>::value, T, typename conditional<_is_integral<U>::value, U, V>::type>::type;
};



template <typename T, typename V>
struct _integer_ternary_func_operand_type<T, T, V, typename enable_if<!is_same<T, V>::value>::type> : _integer_binary_func_operand_type<T, V>
{
};
template <typename T, typename U>
struct _integer_ternary_func_operand_type<T, U, T, typename enable_if<!is_same<T, U>::value>::type> : _integer_binary_func_operand_type<T, U>
{
};
template <typename T, typename U>
struct _integer_ternary_func_operand_type<T, U, U, typename enable_if<!is_same<T, U>::value>::type> : _integer_binary_func_operand_type<T, U>
{
};

template <typename T, typename U, typename V>
using _integer_ternary_func_operand_type_t = typename _integer_ternary_func_operand_type<T, U, V>::type;
template <typename T, typename U, typename V>
struct _integer_ternary_func_enable : bool_constant<!is_same<void, _integer_ternary_func_operand_type_t<T, U, V>>::value>
{
};
}
#pragma METAL internals : disable
# 9 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math_utils" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math_utils" 1 3
# 16 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math_utils" 3
#pragma METAL internals : enable
namespace metal
{
template <typename T>
struct _is_scalar : bool_constant<is_scalar<T>::value && is_arithmetic<T>::value>
{
};

template <typename T>
struct _is_fp_vector : bool_constant<is_floating_point<T>::value && is_vector<T>::value>
{
};

template <typename T, typename U, typename _E = void>
struct _math_binary_func_operand_type
{
  using type = void;
};
# 48 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math_utils" 3
template <typename T>
struct _math_binary_func_operand_type<T, T, typename enable_if<is_floating_point<T>::value>::type>
{
  using type = T;
};




template <typename T, typename U>
struct _math_binary_func_operand_type<T, U, typename enable_if<(_is_fp_vector<T>::value ^ _is_fp_vector<U>::value) && (_is_scalar<T>::value ^ _is_scalar<U>::value)>::type>
{
  using type = typename conditional<_is_fp_vector<T>::value, T, U>::type;
};



template <typename T, typename U>
struct _math_binary_func_operand_type<T, U, typename enable_if<_is_scalar<T>::value && _is_scalar<U>::value && (is_floating_point<T>::value ^ is_floating_point<U>::value)>::type>
{
  using type = typename conditional<is_floating_point<T>::value, T, U>::type;
};





template <typename T, typename U, typename _E = void>
struct _math_fast_or_precise_binary_func_operand_type : _math_binary_func_operand_type<T, U>
{
};



template <typename T, typename U>
struct _math_fast_or_precise_binary_func_operand_type<T, U, typename enable_if<(is_same<float, T>::value && _is_scalar<U>::value) || (is_same<float, U>::value && _is_scalar<T>::value)>::type>
{
  using type = float;
};
# 129 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math_utils" 3
template <typename T, typename U>
using _math_binary_func_operand_type_t = typename _math_binary_func_operand_type<T, U>::type;
template <typename T, typename U>
using _math_fast_or_precise_binary_func_operand_type_t = typename _math_fast_or_precise_binary_func_operand_type<T, U>::type;
template <typename T, typename U>
struct _math_binary_func_enable : bool_constant<!is_same<void, _math_binary_func_operand_type_t<T, U>>::value>
{
};
template <typename T, typename U>
struct _math_fast_or_precise_binary_func_enable : bool_constant<!is_same<void, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::value>
{
};

template <typename T, typename U, typename V, typename _E = void>
struct _math_ternary_func_operand_type
{
  using type = void;
};
# 161 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math_utils" 3
template <typename T>
struct _math_ternary_func_operand_type<T, T, T, typename enable_if<is_floating_point<T>::value>::type>
{
  using type = T;
};



template <typename T, typename U, typename V>
struct _math_ternary_func_operand_type<T, U, V, typename enable_if<(_is_fp_vector<T>::value + _is_fp_vector<U>::value + _is_fp_vector<V>::value) == 1 && (_is_scalar<T>::value + _is_scalar<U>::value + _is_scalar<V>::value) == 2 && (!is_same<T, U>::value && !is_same<T, V>::value && !is_same<U, V>::value)>::type>
{
  using type = typename conditional<_is_fp_vector<T>::value, T, typename conditional<_is_fp_vector<U>::value, U, V>::type>::type;
};



template <typename T, typename U, typename V>
struct _math_ternary_func_operand_type<T, U, V, typename enable_if<_is_scalar<T>::value && _is_scalar<U>::value && _is_scalar<V>::value && (is_floating_point<T>::value + is_floating_point<U>::value + is_floating_point<V>::value) == 1 && (!is_same<T, U>::value && !is_same<T, V>::value && !is_same<U, V>::value)>::type>
{
  using type = typename conditional<is_floating_point<T>::value, T, typename conditional<is_floating_point<U>::value, U, V>::type>::type;
};



template <typename T, typename V>
struct _math_ternary_func_operand_type<T, T, V, typename enable_if<!is_same<T, V>::value>::type> : _math_binary_func_operand_type<T, V>
{
};
template <typename T, typename U>
struct _math_ternary_func_operand_type<T, U, T, typename enable_if<!is_same<T, U>::value>::type> : _math_binary_func_operand_type<T, U>
{
};
template <typename T, typename U>
struct _math_ternary_func_operand_type<T, U, U, typename enable_if<!is_same<T, U>::value>::type> : _math_binary_func_operand_type<T, U>
{
};





template <typename T, typename U, typename V, typename _E = void>
struct _math_fast_or_precise_ternary_func_operand_type : _math_ternary_func_operand_type<T, U, V>
{
};



template <typename T, typename U, typename V>
struct _math_fast_or_precise_ternary_func_operand_type<T, U, V, typename enable_if<(is_same<float, T>::value || is_same<float, U>::value || is_same<float, V>::value) && (_is_scalar<T>::value && _is_scalar<U>::value && _is_scalar<V>::value)>::type>
{
  using type = float;
};

template <typename T, typename U, typename V>
using _math_ternary_func_operand_type_t = typename _math_ternary_func_operand_type<T, U, V>::type;
template <typename T, typename U, typename V>
using _math_fast_or_precise_ternary_func_operand_type_t = typename _math_fast_or_precise_ternary_func_operand_type<T, U, V>::type;
template <typename T, typename U, typename V>
struct _math_ternary_func_enable : bool_constant<!is_same<void, _math_ternary_func_operand_type_t<T, U, V>>::value>
{
};
template <typename T, typename U, typename V>
struct _math_fast_or_precise_ternary_func_enable : bool_constant<!is_same<void, _math_fast_or_precise_ternary_func_operand_type_t<T, U, V>>::value>
{
};
}
#pragma METAL internals : disable
# 10 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math_utils" 2 3

#pragma METAL internals : enable
namespace metal
{
template <typename T, typename U, typename _E = void>
struct _integer_math_binary_func_operand_type
{
  typedef void type;
};
# 33 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math_utils" 3
template <typename T>
struct _integer_math_binary_func_operand_type<T, T, typename enable_if<is_floating_point<T>::value || _is_integral<T>::value>::type>
{
  typedef T type;
};



template <typename T, typename U>
struct _integer_math_binary_func_operand_type<T, U, typename enable_if<((_is_fp_vector<T>::value || _is_integral_vector<T>::value) ^ (_is_fp_vector<U>::value || _is_integral_vector<U>::value)) && (_is_scalar<T>::value ^ _is_scalar<U>::value)>::type>
{
  typedef typename conditional<is_vector<T>::value, T, U>::type type;
};


template <typename T, typename U>
struct _integer_math_binary_func_operand_type<T, U, typename enable_if<(is_same<int, T>::value && is_same<bool, U>::value) || (is_same<int, U>::value && is_same<bool, T>::value)>::type>
{
  typedef int type;
};




template <typename T, typename U>

struct _integer_math_binary_func_operand_type<T, U, typename enable_if<((is_same<unsigned __metal_internal_int64_t, T>::value || is_same<__metal_internal_int64_t, T>::value) && (is_floating_point<U>::value || _is_integral<U>::value)) || ((is_same<unsigned __metal_internal_int64_t, U>::value || is_same<__metal_internal_int64_t, U>::value) && (is_floating_point<T>::value || _is_integral<T>::value))>::type>
{
  typedef typename conditional<is_same<unsigned __metal_internal_int64_t, T>::value || is_same<__metal_internal_int64_t, T>::value, U, T>::type type;
};


template <typename T, typename U>
using _integer_math_binary_func_operand_type_t = typename _integer_math_binary_func_operand_type<T, U>::type;
template <typename T, typename U>
struct _integer_math_binary_func_enable : bool_constant<!is_same<void, _integer_math_binary_func_operand_type_t<T, U>>::value>
{
};

template <typename T, typename U, typename V, typename _E = void>
struct _integer_math_ternary_func_operand_type
{
  typedef void type;
};
# 90 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math_utils" 3
template <typename T>
struct _integer_math_ternary_func_operand_type<T, T, T, typename enable_if<is_floating_point<T>::value || _is_integral<T>::value>::type>
{
  using type = T;
};



template <typename T, typename U, typename V>
struct _integer_math_ternary_func_operand_type<T, U, V, typename enable_if<((_is_fp_vector<T>::value || _is_integral_vector<T>::value) + (_is_fp_vector<U>::value || _is_integral_vector<U>::value) + (_is_fp_vector<V>::value || _is_integral_vector<V>::value)) == 1 && (_is_scalar<T>::value + _is_scalar<U>::value + _is_scalar<V>::value) == 2 && (!is_same<T, U>::value && !is_same<T, V>::value && !is_same<U, V>::value)>::type>
{
  using type = typename conditional<(_is_fp_vector<T>::value || _is_integral_vector<T>::value), T, typename conditional<(_is_fp_vector<U>::value || _is_integral_vector<U>::value), U, V>::type>::type;
};



template <typename T, typename V>
struct _integer_math_ternary_func_operand_type<T, T, V, typename enable_if<!is_same<T, V>::value>::type> : _integer_math_binary_func_operand_type<T, V>
{
};
template <typename T, typename U>
struct _integer_math_ternary_func_operand_type<T, U, T, typename enable_if<!is_same<T, U>::value>::type> : _integer_math_binary_func_operand_type<T, U>
{
};
template <typename T, typename U>
struct _integer_math_ternary_func_operand_type<T, U, U, typename enable_if<!is_same<T, U>::value>::type> : _integer_math_binary_func_operand_type<T, U>
{
};

template <typename T, typename U, typename V>
using _integer_math_ternary_func_operand_type_t = typename _integer_math_ternary_func_operand_type<T, U, V>::type;
template <typename T, typename U, typename V>
struct _integer_math_ternary_func_enable : bool_constant<!is_same<void, _integer_math_ternary_func_operand_type_t<T, U, V>>::value>
{
};

}
#pragma METAL internals : disable
# 9 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_common" 2 3


#pragma METAL internals : enable
namespace metal
{
template <typename T, typename _E = void>
struct _clamp_impl;

template <typename T>
struct _clamp_impl<T, typename enable_if<_is_integral<T>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x, T minval, T maxval) const thread
  {
    return __metal_clamp(x, minval, maxval);
  }
};

template <typename T>
struct _clamp_impl<T, typename enable_if<is_floating_point<T>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x, T minval, T maxval) const thread
  {
    return __metal_clamp(x, minval, maxval, true);
  }
};

template <typename T, typename U, typename V, typename _E = void>
struct _clamp_type : _integer_math_ternary_func_operand_type<T, U, V>
{
};
template <>
struct _clamp_type<float, int, int, void>
{
  typedef float type;
};
template <typename T, typename U, typename V>
using _clamp_type_t = typename _clamp_type<T, U, V>::type;
template <typename T, typename U, typename V>
struct _clamp_enable : bool_constant<!is_same<void, _clamp_type_t<T, U, V>>::value>
{
};

template <typename T, typename U, typename V, typename _O = typename enable_if<_clamp_enable<T, U, V>::value, _clamp_type_t<T, U, V>>::type>
inline __attribute__((__always_inline__)) _O clamp(T x, U minval, V maxval)
{
  return _clamp_impl<_O>()(_O(x), _O(minval), _O(maxval));
}
}
#pragma METAL internals : disable
# 9 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_common" 2 3




namespace metal
{

namespace fast
{
template <typename T, typename U, typename V, typename _O = typename enable_if<_math_fast_or_precise_ternary_func_enable<T, U, V>::value, _math_fast_or_precise_ternary_func_operand_type_t<T, U, V>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O clamp(T x, U minval, V maxval)
{
  return __metal_clamp(_O(x), _O(minval), _O(maxval), true);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T saturate(T x)
{
  return __metal_saturate(x, true);
}
}

namespace precise
{
template <typename T, typename U, typename V, typename _O = typename enable_if<_math_fast_or_precise_ternary_func_enable<T, U, V>::value, _math_fast_or_precise_ternary_func_operand_type_t<T, U, V>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O clamp(T x, U minval, V maxval)
{
  return __metal_clamp(_O(x), _O(minval), _O(maxval), false);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T saturate(T x)
{
  return __metal_saturate(x, false);
}
}


template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T saturate(T x)
{
  return __metal_saturate(x, true);
}
}

namespace metal
{
template <typename T, typename U, typename V, typename _O = typename enable_if<_math_ternary_func_enable<T, U, V>::value, _math_ternary_func_operand_type_t<T, U, V>>::type>
inline __attribute__((__always_inline__)) _O mix(T x, U y, V a)
{
  return __metal_mix(_O(x), _O(y), _O(a));
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T sign(T x)
{
  return __metal_sign(x);
}

template <typename T, typename U, typename V, typename _O = typename enable_if<_math_ternary_func_enable<T, U, V>::value, _math_ternary_func_operand_type_t<T, U, V>>::type>
inline __attribute__((__always_inline__)) _O smoothstep(T edge0, U edge1, V x)
{
  _O t = clamp((_O(x) - _O(edge0)) / (_O(edge1) - _O(edge0)), _O(0), _O(1));
  return t * t * (_O(3) - _O(2) * t);
}

template <typename T, typename U, typename _O = typename enable_if<_math_binary_func_enable<T, U>::value, _math_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O step(T edge, U x)
{
  return _O(_O(x) >= _O(edge));
}
}
# 8 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3

# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_functional" 1 3







namespace metal
{
template <typename T>
struct plus
{
  typedef T first_argument_type;
  typedef T second_argument_type;
  typedef T result_type;

  T operator()(const thread T &a, const thread T &b) const thread
  {
    return a + b;
  }
  T operator()(const thread T &a, const device T &b) const thread
  {
    return a + b;
  }
  T operator()(const thread T &a, const constant T &b) const thread
  {
    return a + b;
  }
  T operator()(const thread T &a, const threadgroup T &b) const thread
  {
    return a + b;
  }
  T operator()(const device T &a, const thread T &b) const thread
  {
    return a + b;
  }
  T operator()(const device T &a, const device T &b) const thread
  {
    return a + b;
  }
  T operator()(const device T &a, const constant T &b) const thread
  {
    return a + b;
  }
  T operator()(const device T &a, const threadgroup T &b) const thread
  {
    return a + b;
  }
  T operator()(const constant T &a, const thread T &b) const thread
  {
    return a + b;
  }
  T operator()(const constant T &a, const device T &b) const thread
  {
    return a + b;
  }
  T operator()(const constant T &a, const constant T &b) const thread
  {
    return a + b;
  }
  T operator()(const constant T &a, const threadgroup T &b) const thread
  {
    return a + b;
  }
  T operator()(const threadgroup T &a, const thread T &b) const thread
  {
    return a + b;
  }
  T operator()(const threadgroup T &a, const device T &b) const thread
  {
    return a + b;
  }
  T operator()(const threadgroup T &a, const constant T &b) const thread
  {
    return a + b;
  }
  T operator()(const threadgroup T &a, const threadgroup T &b) const thread
  {
    return a + b;
  }
};

template <typename T>
struct minus
{
  typedef T first_argument_type;
  typedef T second_argument_type;
  typedef T result_type;

  T operator()(const thread T &a, const thread T &b) const thread
  {
    return a - b;
  }
  T operator()(const thread T &a, const device T &b) const thread
  {
    return a - b;
  }
  T operator()(const thread T &a, const constant T &b) const thread
  {
    return a - b;
  }
  T operator()(const thread T &a, const threadgroup T &b) const thread
  {
    return a - b;
  }
  T operator()(const device T &a, const thread T &b) const thread
  {
    return a - b;
  }
  T operator()(const device T &a, const device T &b) const thread
  {
    return a - b;
  }
  T operator()(const device T &a, const constant T &b) const thread
  {
    return a - b;
  }
  T operator()(const device T &a, const threadgroup T &b) const thread
  {
    return a - b;
  }
  T operator()(const constant T &a, const thread T &b) const thread
  {
    return a - b;
  }
  T operator()(const constant T &a, const device T &b) const thread
  {
    return a - b;
  }
  T operator()(const constant T &a, const constant T &b) const thread
  {
    return a - b;
  }
  T operator()(const constant T &a, const threadgroup T &b) const thread
  {
    return a - b;
  }
  T operator()(const threadgroup T &a, const thread T &b) const thread
  {
    return a - b;
  }
  T operator()(const threadgroup T &a, const device T &b) const thread
  {
    return a - b;
  }
  T operator()(const threadgroup T &a, const constant T &b) const thread
  {
    return a - b;
  }
  T operator()(const threadgroup T &a, const threadgroup T &b) const thread
  {
    return a - b;
  }
};

template <typename T>
struct multiplies
{
  typedef T first_argument_type;
  typedef T second_argument_type;
  typedef T result_type;

  T operator()(const thread T &a, const thread T &b) const thread
  {
    return a * b;
  }
  T operator()(const thread T &a, const device T &b) const thread
  {
    return a * b;
  }
  T operator()(const thread T &a, const constant T &b) const thread
  {
    return a * b;
  }
  T operator()(const thread T &a, const threadgroup T &b) const thread
  {
    return a * b;
  }
  T operator()(const device T &a, const thread T &b) const thread
  {
    return a * b;
  }
  T operator()(const device T &a, const device T &b) const thread
  {
    return a * b;
  }
  T operator()(const device T &a, const constant T &b) const thread
  {
    return a * b;
  }
  T operator()(const device T &a, const threadgroup T &b) const thread
  {
    return a * b;
  }
  T operator()(const constant T &a, const thread T &b) const thread
  {
    return a * b;
  }
  T operator()(const constant T &a, const device T &b) const thread
  {
    return a * b;
  }
  T operator()(const constant T &a, const constant T &b) const thread
  {
    return a * b;
  }
  T operator()(const constant T &a, const threadgroup T &b) const thread
  {
    return a * b;
  }
  T operator()(const threadgroup T &a, const thread T &b) const thread
  {
    return a * b;
  }
  T operator()(const threadgroup T &a, const device T &b) const thread
  {
    return a * b;
  }
  T operator()(const threadgroup T &a, const constant T &b) const thread
  {
    return a * b;
  }
  T operator()(const threadgroup T &a, const threadgroup T &b) const thread
  {
    return a * b;
  }
};
}
# 10 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_geometric" 1 3







# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_limits" 1 3







#pragma METAL internals : enable
namespace metal
{
enum float_round_style
{
  round_indeterminate = -1,
  round_toward_zero = 0,
  round_to_nearest = 1,
  round_toward_infinity = 2,
  round_toward_neg_infinity = 3
};

enum float_denorm_style
{
  denorm_indeterminate = -1,
  denorm_absent = 0,
  denorm_present = 1
};

template <typename T>
struct _numeric_limits_impl
{
  static constexpr constant bool is_specialized = false;
  static constexpr constant bool is_signed = false;
  static constexpr constant bool is_integer = false;
  static constexpr constant bool is_exact = false;
  static constexpr constant bool has_infinity = false;
  static constexpr constant bool has_quiet_NaN = false;
  static constexpr constant bool has_signaling_NaN = false;
  static constexpr constant float_denorm_style has_denorm = denorm_absent;
  static constexpr constant bool has_denorm_loss = false;
  static constexpr constant float_round_style round_style = round_toward_zero;
  static constexpr constant bool is_iec559 = false;
  static constexpr constant bool is_bounded = false;
  static constexpr constant bool is_modulo = false;
  static constexpr constant int digits = 0;
  static constexpr constant int digits10 = 0;
  static constexpr constant int max_digits10 = 0;
  static constexpr constant int radix = 0;
  static constexpr constant int min_exponent = 0;
  static constexpr constant int min_exponent10 = 0;
  static constexpr constant int max_exponent = 0;
  static constexpr constant int max_exponent10 = 0;
  static constexpr constant bool traps = false;
  static constexpr constant bool tinyness_before = false;

  static constexpr T min()
  {
    return T();
  }
  static constexpr T lowest()
  {
    return T();
  }
  static constexpr T max()
  {
    return T();
  }
  static constexpr T epsilon()
  {
    return T();
  }
  static constexpr T round_error()
  {
    return T();
  }
  static constexpr T infinity()
  {
    return T();
  }
  static constexpr T quiet_NaN()
  {
    return T();
  }
  static constexpr T signaling_NaN()
  {
    return T();
  }
  static constexpr T denorm_min()
  {
    return T();
  }
};


template <>
struct _numeric_limits_impl<half>
{
  static constexpr constant bool has_quiet_NaN = true;

  static constexpr half min()
  {
    return 0x1.0p-14h;
  }
  static constexpr half max()
  {
    return 0x1.ffcp15h;
  }
  static constexpr half epsilon()
  {
    return 0x1.0p-10h;
  }
  static constexpr half quiet_NaN()
  {
    return __builtin_nanh("");
  }
};


template <>
struct _numeric_limits_impl<float>
{
  static constexpr constant bool has_quiet_NaN = true;

  static constexpr float min()
  {
    return 0x1.0p-126f;
  }
  static constexpr float max()
  {
    return 0x1.fffffep127f;
  }
  static constexpr float epsilon()
  {
    return 0x1.0p-23f;
  }
  static constexpr float quiet_NaN()
  {
    return __builtin_nanf("");
  }
};
# 166 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_limits" 3
template <typename T>
struct numeric_limits : _numeric_limits_impl<remove_cv_t<T>>
{
};

}
#pragma METAL internals : disable
# 9 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_geometric" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 1 3







# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math" 1 3
# 10 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math" 3
#pragma METAL internals : enable
namespace metal
{
template <typename T, typename _E = void>
struct _abs_impl;

template <typename T>
struct _abs_impl<T, typename enable_if<_is_integral<T>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x) const thread
  {
    return __metal_abs(x);
  }
};

template <typename T>
struct _abs_impl<T, typename enable_if<is_floating_point<T>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x) const thread
  {
    return __metal_fabs(x, true);
  }
};

template <typename T, typename _E = typename enable_if<_is_integral<T>::value || is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T abs(T x)
{
  return _abs_impl<T>()(x);
}

template <typename T, typename _E = void>
struct _max_impl;

template <typename T>
struct _max_impl<T, typename enable_if<is_integral<T>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x, T y) const thread
  {
    return __metal_max(x, y);
  }
};

template <typename T>
struct _max_impl<T, typename enable_if<is_floating_point<T>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x, T y) const thread
  {
    return __metal_fmax(x, y, true);
  }
};

template <typename T, typename U, typename _E = void>
struct _max_type : _integer_math_binary_func_operand_type<T, U>
{
};
template <>
struct _max_type<float, bool, void>
{
  typedef float type;
};
template <typename T, typename U>
using _max_type_t = typename _max_type<T, U>::type;
template <typename T, typename U>
struct _max_enable : bool_constant<!is_same<void, _max_type_t<T, U>>::value>
{
};

template <typename T, typename U, typename _O = typename enable_if<_max_enable<T, U>::value, _max_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O max(T x, U y)
{
  return _max_impl<_O>()(_O(x), _O(y));
}
# 141 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math" 3
template <typename T, typename _E = void>
struct _min_impl;

template <typename T>
struct _min_impl<T, typename enable_if<is_integral<T>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x, T y) const thread
  {
    return __metal_min(x, y);
  }
};

template <typename T>
struct _min_impl<T, typename enable_if<is_floating_point<T>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x, T y) const thread
  {
    return __metal_fmin(x, y, true);
  }
};

template <typename T, typename U, typename _O = typename enable_if<_integer_math_binary_func_enable<T, U>::value, _integer_math_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O min(T x, U y)
{
  return _min_impl<_O>()(_O(x), _O(y));
}
# 196 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer_math" 3
}
#pragma METAL internals : disable
# 9 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 2 3

# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_relational" 1 3







#pragma METAL internals : enable
namespace metal
{


template <typename T>
struct _fp_encoding_traits_impl;

template <typename T, int N>
struct _fp_encoding_traits_impl<T __attribute__((ext_vector_type(N)))>
{
  typedef typename _fp_encoding_traits_impl<T>::encoding_type __attribute__((ext_vector_type(N))) encoding_type;
  constexpr static constant encoding_type bit_width = sizeof(encoding_type) * 8;
  constexpr static constant encoding_type sign_mask = _fp_encoding_traits_impl<T>::sign_mask;
  constexpr static constant encoding_type inf_mask = _fp_encoding_traits_impl<T>::inf_mask;
  constexpr static constant encoding_type min_mask = _fp_encoding_traits_impl<T>::min_mask;
};
template <typename T, int N>
struct _fp_encoding_traits_impl<T __attribute__((packed_vector_type(N)))>
{
  typedef typename _fp_encoding_traits_impl<T>::encoding_type __attribute__((packed_vector_type(N))) encoding_type;
  constexpr static constant encoding_type bit_width = sizeof(encoding_type) * 8;
  constexpr static constant encoding_type sign_mask = _fp_encoding_traits_impl<T>::sign_mask;
  constexpr static constant encoding_type inf_mask = _fp_encoding_traits_impl<T>::inf_mask;
  constexpr static constant encoding_type min_mask = _fp_encoding_traits_impl<T>::min_mask;
};
template <>
struct _fp_encoding_traits_impl<half>
{
  typedef ushort encoding_type;
  constexpr static constant encoding_type bit_width = sizeof(encoding_type) * 8;
  constexpr static constant encoding_type sign_mask = 0x8000;
  constexpr static constant encoding_type inf_mask = 0x7c00;
  constexpr static constant encoding_type min_mask = 0x0400;
};
template <>
struct _fp_encoding_traits_impl<float>
{
  typedef uint encoding_type;
  constexpr static constant encoding_type bit_width = sizeof(encoding_type) * 8;
  constexpr static constant encoding_type sign_mask = 0x80000000;
  constexpr static constant encoding_type inf_mask = 0x7f800000;
  constexpr static constant encoding_type min_mask = 0x00800000;
};
# 64 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_relational" 3
template <typename T>
struct _fp_encoding_traits : _fp_encoding_traits_impl<remove_cv_t<T>>
{
};

template <typename T, typename U, typename _E = void>
struct _relational_select_operand_type
{
  typedef void type;
};
# 92 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_relational" 3
template <typename T>
struct _relational_select_operand_type<T, T, typename enable_if<is_arithmetic<T>::value>::type>
{
  typedef T type;
};



template <typename T, typename U>
struct _relational_select_operand_type<T, U, typename enable_if<(is_vector<T>::value ^ is_vector<U>::value) && ((is_scalar<T>::value && is_arithmetic<T>::value) ^ (is_scalar<U>::value && is_arithmetic<U>::value))>::type>
{
  typedef conditional_t<is_vector<T>::value, T, U> type;
};

template <typename T, typename U>
using _relational_select_operand_type_t = typename _relational_select_operand_type<T, U>::type;
template <typename T, typename U>
struct _relational_select_enable : bool_constant<!is_same<void, _relational_select_operand_type_t<T, U>>::value>
{
};

template <typename T, typename _E = void>
struct _make_bool_impl;

template <typename T>
struct _make_bool_impl<T, typename enable_if<is_arithmetic<T>::value && is_scalar<T>::value>::type>
{
  typedef bool type;
};
template <typename T, int N>
struct _make_bool_impl<T __attribute__((ext_vector_type(N)))>
{
  typedef bool __attribute__((ext_vector_type(N))) type;
};
template <typename T, int N>
struct _make_bool_impl<T __attribute__((packed_vector_type(N)))>
{
  typedef bool __attribute__((packed_vector_type(N))) type;
};

template <typename T>
struct _make_bool : _make_bool_impl<remove_cv_t<T>>
{
};
template <typename T>
using _make_bool_t = typename _make_bool<T>::type;

template <typename T, typename _E = typename enable_if<is_same<make_scalar_t<T>, bool>::value>::type>
inline __attribute__((__always_inline__)) bool all(T x)
{
  return __metal_all(x);
}

template <typename T, typename _E = typename enable_if<is_same<make_scalar_t<T>, bool>::value>::type>
inline __attribute__((__always_inline__)) bool any(T x)
{
  return __metal_any(x);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) _make_bool_t<T> isinf(T x)
{
  return (__builtin_astype(x, typename _fp_encoding_traits<T>::encoding_type) & ~_fp_encoding_traits<T>::sign_mask) == _fp_encoding_traits<T>::inf_mask;
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) _make_bool_t<T> isfinite(T x)
{
  return (__builtin_astype(x, typename _fp_encoding_traits<T>::encoding_type) & ~_fp_encoding_traits<T>::sign_mask) < _fp_encoding_traits<T>::inf_mask;
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) _make_bool_t<T> isnan(T x)
{
  return (__builtin_astype(x, typename _fp_encoding_traits<T>::encoding_type) & ~_fp_encoding_traits<T>::sign_mask) > _fp_encoding_traits<T>::inf_mask;
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) _make_bool_t<T> isnormal(T x)
{
  return typename _fp_encoding_traits<T>::encoding_type((__builtin_astype(x, typename _fp_encoding_traits<T>::encoding_type) & ~_fp_encoding_traits<T>::sign_mask) - _fp_encoding_traits<T>::min_mask) < typename _fp_encoding_traits<T>::encoding_type(_fp_encoding_traits<T>::inf_mask - _fp_encoding_traits<T>::min_mask);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) _make_bool_t<T> isunordered(T x, T y)
{
  return isnan(x) || isnan(y);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) _make_bool_t<T> isordered(T x, T y)
{
  return !isunordered(x, y);
}

template <typename T, typename U, typename _O = typename enable_if<_relational_select_enable<T, U>::value, _relational_select_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O select(T x, U y, _make_bool_t<_O> c)
{
  return __metal_select(_O(x), _O(y), c);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) _make_bool_t<T> signbit(T x)
{
  return (__builtin_astype(x, typename _fp_encoding_traits<T>::encoding_type) >> (_fp_encoding_traits<T>::bit_width - 1)) == 1;
}
}
#pragma METAL internals : disable
# 11 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 2 3

namespace metal {



namespace fast
{
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T abs(T x)
{
  return __metal_fabs(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T acos(T x)
{
  return __metal_acos(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T acosh(T x)
{
  return __metal_acosh(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T asin(T x)
{
  return __metal_asin(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T asinh(T x)
{
  return __metal_asinh(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T atan(T y_over_x)
{
  return __metal_atan(y_over_x, true);
}
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O atan2(T y, U x)
{
  return __metal_atan2(_O(y), _O(x), true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T atanh(T x)
{
  return __metal_atanh(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T ceil(T x)
{
  return __metal_ceil(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T cos(T x)
{
  return __metal_cos(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T cosh(T x)
{
  return __metal_cosh(x, true);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T cospi(T x)
{
  return __metal_cospi(x, true);
}
# 87 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T exp(T x)
{
  return __metal_exp(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T exp10(T x)
{
  return __metal_exp10(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T exp2(T x)
{
  return __metal_exp2(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T fabs(T x)
{
  return __metal_fabs(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T floor(T x)
{
  return __metal_floor(x, true);
}
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O fmax(T x, U y)
{
  return __metal_fmax(_O(x), _O(y), true);
}
# 131 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O fmin(T x, U y)
{
  return __metal_fmin(_O(x), _O(y), true);
}







template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O fmod(T x, U y)
{
  return __metal_fmod(_O(x), _O(y), true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T log(T x)
{
  return __metal_log(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T log2(T x)
{
  return __metal_log2(x, true);
}
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O max(T x, U y)
{
  return __metal_fmax(_O(x), _O(y), true);
}
# 177 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O min(T x, U y)
{
  return __metal_fmin(_O(x), _O(y), true);
}







template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O pow(T x, U y)
{
  return __metal_pow(_O(x), _O(y), true);
}
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O powr(T x, U y)
{
  return __metal_powr(_O(x), _O(y), true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T rint(T x)
{
  return __metal_rint(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T round(T x)
{
  return __metal_round(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T rsqrt(T x)
{
  return __metal_rsqrt(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T sin(T x)
{
  return __metal_sin(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T sinh(T x)
{
  return __metal_sinh(x, true);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T sinpi(T x)
{
  return __metal_sinpi(x, true);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T sqrt(T x)
{
  return __metal_sqrt(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T tan(T x)
{
  return __metal_tan(x, true);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T tanh(T x)
{
  return __metal_tanh(x, true);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T tanpi(T x)
{
  return __metal_tanpi(x, true);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T trunc(T x)
{
  return __metal_trunc(x, true);
}
}

namespace precise
{
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T abs(T x)
{
  return __metal_fabs(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T acos(T x)
{
  return __metal_acos(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T acosh(T x)
{
  return __metal_acosh(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T asin(T x)
{
  return __metal_asin(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T asinh(T x)
{
  return __metal_asinh(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T atan(T y_over_x)
{
  return __metal_atan(y_over_x, false);
}
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O atan2(T y, U x)
{
  return __metal_atan2(_O(y), _O(x), false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T atanh(T x)
{
  return __metal_atanh(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T ceil(T x)
{
  return __metal_ceil(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T cos(T x)
{
  return __metal_cos(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T cosh(T x)
{
  return __metal_cosh(x, false);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T cospi(T x)
{
  return __metal_cospi(x, false);
}
# 331 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T exp(T x)
{
  return __metal_exp(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T exp10(T x)
{
  return __metal_exp10(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T exp2(T x)
{
  return __metal_exp2(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T fabs(T x)
{
  return __metal_fabs(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T floor(T x)
{
  return __metal_floor(x, false);
}
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O fmax(T x, U y)
{
  return __metal_fmax(_O(x), _O(y), false);
}
# 375 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O fmin(T x, U y)
{
  return __metal_fmin(_O(x), _O(y), false);
}







template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O fmod(T x, U y)
{
  return __metal_fmod(_O(x), _O(y), false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T log(T x)
{
  return __metal_log(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T log2(T x)
{
  return __metal_log2(x, false);
}
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O max(T x, U y)
{
  return __metal_fmax(_O(x), _O(y), false);
}
# 421 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O min(T x, U y)
{
  return __metal_fmin(_O(x), _O(y), false);
}







template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O pow(T x, U y)
{
  return __metal_pow(_O(x), _O(y), false);
}
template <typename T, typename U, typename _O = typename enable_if<_math_fast_or_precise_binary_func_enable<T, U>::value, _math_fast_or_precise_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) _O powr(T x, U y)
{
  return __metal_powr(_O(x), _O(y), false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T rint(T x)
{
  return __metal_rint(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T round(T x)
{
  return __metal_round(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T rsqrt(T x)
{
  return __metal_rsqrt(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T sin(T x)
{
  return __metal_sin(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T sinh(T x)
{
  return __metal_sinh(x, false);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T sinpi(T x)
{
  return __metal_sinpi(x, false);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T sqrt(T x)
{
  return __metal_sqrt(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T tan(T x)
{
  return __metal_tan(x, false);
}
template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T tanh(T x)
{
  return __metal_tanh(x, false);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T tanpi(T x)
{
  return __metal_tanpi(x, false);
}

template <typename T, typename _E = typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T trunc(T x)
{
  return __metal_trunc(x, false);
}
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T acos(T x)
{
  return __metal_acos(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T acosh(T x)
{
  return __metal_acosh(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T asin(T x)
{
  return __metal_asin(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T asinh(T x)
{
  return __metal_asinh(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T atan(T y_over_x)
{
  return __metal_atan(y_over_x, true);
}
template <typename T, typename U, typename _O = typename enable_if<_math_binary_func_enable<T, U>::value, _math_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O atan2(T y, U x)
{
  return __metal_atan2(_O(y), _O(x), true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T atanh(T x)
{
  return __metal_atanh(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T ceil(T x)
{
  return __metal_ceil(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T cos(T x)
{
  return __metal_cos(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T cosh(T x)
{
  return __metal_cosh(x, true);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T cospi(T x)
{
  return __metal_cospi(x, true);
}
# 568 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T exp(T x)
{
  return __metal_exp(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T exp10(T x)
{
  return __metal_exp10(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T exp2(T x)
{
  return __metal_exp2(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T fabs(T x)
{
  return __metal_fabs(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T floor(T x)
{
  return __metal_floor(x, true);
}
template <typename T, typename U, typename _O = typename enable_if<_math_binary_func_enable<T, U>::value, _math_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O fmax(T x, U y)
{
  return __metal_fmax(_O(x), _O(y), true);
}
# 612 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
template <typename T, typename U, typename _O = typename enable_if<_math_binary_func_enable<T, U>::value, _math_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O fmin(T x, U y)
{
  return __metal_fmin(_O(x), _O(y), true);
}







template <typename T, typename U, typename _O = typename enable_if<_math_binary_func_enable<T, U>::value, _math_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O fmod(T x, U y)
{
  return __metal_fmod(_O(x), _O(y), true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T log(T x)
{
  return __metal_log(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T log2(T x)
{
  return __metal_log2(x, true);
}
template <typename T, typename U, typename _O = typename enable_if<_math_binary_func_enable<T, U>::value, _math_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O pow(T x, U y)
{
  return __metal_pow(_O(x), _O(y), true);
}
template <typename T, typename U, typename _O = typename enable_if<_math_binary_func_enable<T, U>::value, _math_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O powr(T x, U y)
{
  return __metal_powr(_O(x), _O(y), true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T rint(T x)
{
  return __metal_rint(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T round(T x)
{
  return __metal_round(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T rsqrt(T x)
{
  return __metal_rsqrt(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T sin(T x)
{
  return __metal_sin(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T sinh(T x)
{
  return __metal_sinh(x, true);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T sinpi(T x)
{
  return __metal_sinpi(x, true);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T sqrt(T x)
{
  return __metal_sqrt(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T tan(T x)
{
  return __metal_tan(x, true);
}
template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T tanh(T x)
{
  return __metal_tanh(x, true);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T tanpi(T x)
{
  return __metal_tanpi(x, true);
}

template <typename T, typename _E = typename enable_if<is_floating_point<T>::value>::type>
inline __attribute__((__always_inline__)) T trunc(T x)
{
  return __metal_trunc(x, true);
}
# 721 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) half copysign(half, half);
  inline __attribute__((__always_inline__)) half fdim(half, half);
  inline __attribute__((__always_inline__)) half frexp(half, thread int&);
  inline __attribute__((__always_inline__)) int ilogb(half);
  inline __attribute__((__always_inline__)) half ldexp(half, int);
  inline __attribute__((__always_inline__)) half modf(half, thread half&);
  inline __attribute__((__always_inline__)) float copysign(float, float);
  inline __attribute__((__always_inline__)) float fdim(float, float);
  inline __attribute__((__always_inline__)) float frexp(float, thread int&);
  inline __attribute__((__always_inline__)) int ilogb(float);
  inline __attribute__((__always_inline__)) float ldexp(float, int);
  inline __attribute__((__always_inline__)) float modf(float, thread float&);
# 741 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,2> copysign(vec<half,2>, vec<half,2>);
  inline __attribute__((__always_inline__)) vec<half,2> fdim(vec<half,2>, vec<half,2>);
  inline __attribute__((__always_inline__)) vec<half,2> frexp(vec<half,2>, thread vec<int,2>&);
  inline __attribute__((__always_inline__)) vec<int,2> ilogb(vec<half,2>);
  inline __attribute__((__always_inline__)) vec<half,2> ldexp(vec<half,2>, vec<int,2>);
  inline __attribute__((__always_inline__)) vec<half,2> modf(vec<half,2>, thread vec<half,2>&);
  inline __attribute__((__always_inline__)) vec<float,2> copysign(vec<float,2>, vec<float,2>);
  inline __attribute__((__always_inline__)) vec<float,2> fdim(vec<float,2>, vec<float,2>);
  inline __attribute__((__always_inline__)) vec<float,2> frexp(vec<float,2>, thread vec<int,2>&);
  inline __attribute__((__always_inline__)) vec<int,2> ilogb(vec<float,2>);
  inline __attribute__((__always_inline__)) vec<float,2> ldexp(vec<float,2>, vec<int,2>);
  inline __attribute__((__always_inline__)) vec<float,2> modf(vec<float,2>, thread vec<float,2>&);
# 761 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,3> copysign(vec<half,3>, vec<half,3>);
  inline __attribute__((__always_inline__)) vec<half,3> fdim(vec<half,3>, vec<half,3>);
  inline __attribute__((__always_inline__)) vec<half,3> frexp(vec<half,3>, thread vec<int,3>&);
  inline __attribute__((__always_inline__)) vec<int,3> ilogb(vec<half,3>);
  inline __attribute__((__always_inline__)) vec<half,3> ldexp(vec<half,3>, vec<int,3>);
  inline __attribute__((__always_inline__)) vec<half,3> modf(vec<half,3>, thread vec<half,3>&);
  inline __attribute__((__always_inline__)) vec<float,3> copysign(vec<float,3>, vec<float,3>);
  inline __attribute__((__always_inline__)) vec<float,3> fdim(vec<float,3>, vec<float,3>);
  inline __attribute__((__always_inline__)) vec<float,3> frexp(vec<float,3>, thread vec<int,3>&);
  inline __attribute__((__always_inline__)) vec<int,3> ilogb(vec<float,3>);
  inline __attribute__((__always_inline__)) vec<float,3> ldexp(vec<float,3>, vec<int,3>);
  inline __attribute__((__always_inline__)) vec<float,3> modf(vec<float,3>, thread vec<float,3>&);
# 781 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,4> copysign(vec<half,4>, vec<half,4>);
  inline __attribute__((__always_inline__)) vec<half,4> fdim(vec<half,4>, vec<half,4>);
  inline __attribute__((__always_inline__)) vec<half,4> frexp(vec<half,4>, thread vec<int,4>&);
  inline __attribute__((__always_inline__)) vec<int,4> ilogb(vec<half,4>);
  inline __attribute__((__always_inline__)) vec<half,4> ldexp(vec<half,4>, vec<int,4>);
  inline __attribute__((__always_inline__)) vec<half,4> modf(vec<half,4>, thread vec<half,4>&);
  inline __attribute__((__always_inline__)) vec<float,4> copysign(vec<float,4>, vec<float,4>);
  inline __attribute__((__always_inline__)) vec<float,4> fdim(vec<float,4>, vec<float,4>);
  inline __attribute__((__always_inline__)) vec<float,4> frexp(vec<float,4>, thread vec<int,4>&);
  inline __attribute__((__always_inline__)) vec<int,4> ilogb(vec<float,4>);
  inline __attribute__((__always_inline__)) vec<float,4> ldexp(vec<float,4>, vec<int,4>);
  inline __attribute__((__always_inline__)) vec<float,4> modf(vec<float,4>, thread vec<float,4>&);
# 802 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
namespace fast {

  inline __attribute__((__always_inline__)) float copysign(float x, float y) {
    return metal::copysign(x, y);
  }


            float fma(float a, float b, float c) __asm("air.fma.f32");


            float fract(float x) __asm("air.fast_fract.f32");

  inline __attribute__((__always_inline__)) float frexp(float x, thread int &exp) {
    return metal::frexp(x, exp);
  }
  inline __attribute__((__always_inline__)) int ilogb(float x) {
    return metal::ilogb(x);
  }

            float ldexp(float x, int k) __asm("air.fast_ldexp.f32");






  inline __attribute__((__always_inline__)) float fdim(float x, float y) {
    return metal::fdim(x, y);
  }
            float log10(float x) __asm("air.fast_log10.f32");

  inline __attribute__((__always_inline__)) float modf(float x, thread float &intval) {
    return metal::modf(x, intval);
  }
            float sincos(float x, thread float &cosval) __asm("air.fast_sincos.f32");



  inline __attribute__((__always_inline__)) vec<float,2> copysign(vec<float,2> x, vec<float,2> y) {
    return metal::copysign(x, y);
  }


            vec<float,2> fma(vec<float,2> a, vec<float,2> b, vec<float,2> c) __asm("air.fma.v2f32");


  inline __attribute__((__always_inline__)) vec<float,2> frexp(vec<float,2> x, thread vec<int,2> &exponent) {
    int temp_exponent;
    vec<float,2> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,2> ilogb(vec<float,2> x) {
    vec<int,2> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    return ret_val;
  }

            vec<float,2> ldexp(vec<float,2> x, vec<int,2> k) __asm("air.fast_ldexp.v2f32");
# 873 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,2> fdim(vec<float,2> x, vec<float,2> y) {
    vec<float,2> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    return ret_val;
  }

            vec<float,2> fract(vec<float,2> x) __asm("air.fast_fract.v2f32");
# 889 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<float,2> log10(vec<float,2> x) __asm("air.fast_log10.v2f32");

  inline __attribute__((__always_inline__)) vec<float,2> modf(vec<float,2> x, thread vec<float,2> &intval) {
    return metal::modf(x, intval);
  }
            vec<float,2> sincos(vec<float,2> x, thread vec<float,2> &cosval) __asm("air.fast_sincos.v2f32");



  inline __attribute__((__always_inline__)) vec<float,3> copysign(vec<float,3> x, vec<float,3> y) {
    return metal::copysign(x, y);
  }


            vec<float,3> fma(vec<float,3> a, vec<float,3> b, vec<float,3> c) __asm("air.fma.v3f32");


  inline __attribute__((__always_inline__)) vec<float,3> frexp(vec<float,3> x, thread vec<int,3> &exponent) {
    int temp_exponent;
    vec<float,3> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    ret_val[2] = frexp(x[2], temp_exponent);
    exponent[2] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,3> ilogb(vec<float,3> x) {
    vec<int,3> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    ret_val[2] = ilogb(x[2]);
    return ret_val;
  }

            vec<float,3> ldexp(vec<float,3> x, vec<int,3> k) __asm("air.fast_ldexp.v3f32");
# 935 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,3> fdim(vec<float,3> x, vec<float,3> y) {
    vec<float,3> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    ret_val[2] = fdim(x[2], y[2]);
    return ret_val;
  }

            vec<float,3> fract(vec<float,3> x) __asm("air.fast_fract.v3f32");
# 953 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<float,3> log10(vec<float,3> x) __asm("air.fast_log10.v3f32");

  inline __attribute__((__always_inline__)) vec<float,3> modf(vec<float,3> x, thread vec<float,3> &intval) {
    return metal::modf(x, intval);
  }
            vec<float,3> sincos(vec<float,3> x, thread vec<float,3> &cosval) __asm("air.fast_sincos.v3f32");



  inline __attribute__((__always_inline__)) vec<float,4> copysign(vec<float,4> x, vec<float,4> y) {
    return metal::copysign(x, y);
  }


            vec<float,4> fma(vec<float,4> a, vec<float,4> b, vec<float,4> c) __asm("air.fma.v4f32");


  inline __attribute__((__always_inline__)) vec<float,4> frexp(vec<float,4> x, thread vec<int,4> &exponent) {
    int temp_exponent;
    vec<float,4> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    ret_val[2] = frexp(x[2], temp_exponent);
    exponent[2] = temp_exponent;
    ret_val[3] = frexp(x[3], temp_exponent);
    exponent[3] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,4> ilogb(vec<float,4> x) {
    vec<int,4> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    ret_val[2] = ilogb(x[2]);
    ret_val[3] = ilogb(x[3]);
    return ret_val;
  }

            vec<float,4> ldexp(vec<float,4> x, vec<int,4> k) __asm("air.fast_ldexp.v4f32");
# 1003 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,4> fdim(vec<float,4> x, vec<float,4> y) {
    vec<float,4> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    ret_val[2] = fdim(x[2], y[2]);
    ret_val[3] = fdim(x[3], y[3]);
    return ret_val;
  }

            vec<float,4> fract(vec<float,4> x) __asm("air.fast_fract.v4f32");
# 1023 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<float,4> log10(vec<float,4> x) __asm("air.fast_log10.v4f32");

  inline __attribute__((__always_inline__)) vec<float,4> modf(vec<float,4> x, thread vec<float,4> &intval) {
    return metal::modf(x, intval);
  }
            vec<float,4> sincos(vec<float,4> x, thread vec<float,4> &cosval) __asm("air.fast_sincos.v4f32");


}

namespace precise {

  inline __attribute__((__always_inline__)) float copysign(float x, float y) {
    return metal::copysign(x, y);
  }


            float fma(float a, float b, float c) __asm("air.fma.f32");



            float fract(float x) __asm("air.fract.f32");
# 1056 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) float frexp(float x, thread int &exp) {
    return metal::frexp(x, exp);
  }
  inline __attribute__((__always_inline__)) int ilogb(float x) {
    return metal::ilogb(x);
  }

            float ldexp(float x, int k) __asm("air.ldexp.f32");






  inline __attribute__((__always_inline__)) float fdim(float x, float y) {
    return metal::fdim(x, y);
  }
            float log10(float x) __asm("air.log10.f32");

  inline __attribute__((__always_inline__)) float modf(float x, thread float &intval) {
    return metal::modf(x, intval);
  }
            float sincos(float x, thread float &cosval) __asm("air.sincos.f32");



  inline __attribute__((__always_inline__)) vec<float,2> copysign(vec<float,2> x, vec<float,2> y) {
    return metal::copysign(x, y);
  }


            vec<float,2> fma(vec<float,2> a, vec<float,2> b, vec<float,2> c) __asm("air.fma.v2f32");


  inline __attribute__((__always_inline__)) vec<float,2> frexp(vec<float,2> x, thread vec<int,2> &exponent) {
    int temp_exponent;
    vec<float,2> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,2> ilogb(vec<float,2> x) {
    vec<int,2> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    return ret_val;
  }

            vec<float,2> ldexp(vec<float,2> x, vec<int,2> k) __asm("air.ldexp.v2f32");
# 1115 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,2> fdim(vec<float,2> x, vec<float,2> y) {
    vec<float,2> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    return ret_val;
  }

            vec<float,2> fract(vec<float,2> x) __asm("air.fract.v2f32");
# 1131 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<float,2> log10(vec<float,2> x) __asm("air.log10.v2f32");

  inline __attribute__((__always_inline__)) vec<float,2> modf(vec<float,2> x, thread vec<float,2> &intval) {
    return metal::modf(x, intval);
  }
            vec<float,2> sincos(vec<float,2> x, thread vec<float,2> &cosval) __asm("air.sincos.v2f32");



  inline __attribute__((__always_inline__)) vec<float,3> copysign(vec<float,3> x, vec<float,3> y) {
    return metal::copysign(x, y);
  }


            vec<float,3> fma(vec<float,3> a, vec<float,3> b, vec<float,3> c) __asm("air.fma.v3f32");


  inline __attribute__((__always_inline__)) vec<float,3> frexp(vec<float,3> x, thread vec<int,3> &exponent) {
    int temp_exponent;
    vec<float,3> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    ret_val[2] = frexp(x[2], temp_exponent);
    exponent[2] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,3> ilogb(vec<float,3> x) {
    vec<int,3> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    ret_val[2] = ilogb(x[2]);
    return ret_val;
  }

            vec<float,3> ldexp(vec<float,3> x, vec<int,3> k) __asm("air.ldexp.v3f32");
# 1177 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,3> fdim(vec<float,3> x, vec<float,3> y) {
    vec<float,3> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    ret_val[2] = fdim(x[2], y[2]);
    return ret_val;
  }

            vec<float,3> fract(vec<float,3> x) __asm("air.fract.v3f32");
# 1195 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<float,3> log10(vec<float,3> x) __asm("air.log10.v3f32");

  inline __attribute__((__always_inline__)) vec<float,3> modf(vec<float,3> x, thread vec<float,3> &intval) {
    return metal::modf(x, intval);
  }
            vec<float,3> sincos(vec<float,3> x, thread vec<float,3> &cosval) __asm("air.sincos.v3f32");



  inline __attribute__((__always_inline__)) vec<float,4> copysign(vec<float,4> x, vec<float,4> y) {
    return metal::copysign(x, y);
  }


            vec<float,4> fma(vec<float,4> a, vec<float,4> b, vec<float,4> c) __asm("air.fma.v4f32");


  inline __attribute__((__always_inline__)) vec<float,4> frexp(vec<float,4> x, thread vec<int,4> &exponent) {
    int temp_exponent;
    vec<float,4> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    ret_val[2] = frexp(x[2], temp_exponent);
    exponent[2] = temp_exponent;
    ret_val[3] = frexp(x[3], temp_exponent);
    exponent[3] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,4> ilogb(vec<float,4> x) {
    vec<int,4> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    ret_val[2] = ilogb(x[2]);
    ret_val[3] = ilogb(x[3]);
    return ret_val;
  }

            vec<float,4> ldexp(vec<float,4> x, vec<int,4> k) __asm("air.ldexp.v4f32");
# 1245 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,4> fdim(vec<float,4> x, vec<float,4> y) {
    vec<float,4> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    ret_val[2] = fdim(x[2], y[2]);
    ret_val[3] = fdim(x[3], y[3]);
    return ret_val;
  }

            vec<float,4> fract(vec<float,4> x) __asm("air.fract.v4f32");
# 1265 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<float,4> log10(vec<float,4> x) __asm("air.log10.v4f32");

  inline __attribute__((__always_inline__)) vec<float,4> modf(vec<float,4> x, thread vec<float,4> &intval) {
    return metal::modf(x, intval);
  }
            vec<float,4> sincos(vec<float,4> x, thread vec<float,4> &cosval) __asm("air.sincos.v4f32");


}


  inline __attribute__((__always_inline__)) half copysign(half x, half y) {
    ushort iy = as_type<ushort>(y) & (ushort)(0x8000);
    ushort ret = (as_type<ushort>(x) & (ushort)(0x8000 - 1ULL)) | iy;
    return as_type<half>(ret);
  }


            half fma(half a, half b, half c) __asm("air.fma.f16");


            half fract(half x) __asm("air.fract.f16");

  inline __attribute__((__always_inline__)) half frexp(half x, thread int &exp) {
  if ((as_type<ushort>(x) & (ushort)(0x7c00)) == (ushort)(0x7c00)) {
    exp = 0;
    return x;
  }


  if (x == 0.0f) {
    exp = 0;
    return 0.0f;
  }

  ushort xi = as_type<ushort>(x);
  int e = (xi & 0x7c00) >> 10;

  if (e == 0) {

    half t = as_type<half>((ushort)((xi & (ushort)0x03ff) | (ushort)0x3c00));
    t = t - 1.0f;
    xi = as_type<ushort>(copysign(t, x));
    e = -14 + ((xi & 0x7c00) >> 10);
  }

  e -= 14;
  exp = e;
  return as_type<half>((ushort)((xi & (0x8000 | 0x03ff)) | 0x3800));
  }
  inline __attribute__((__always_inline__)) int ilogb(half x) {
    ushort ux = as_type<ushort>(x) & (ushort)(0x7fff);
    short exp = ux >> (ushort)(10);

    if(((uint)(exp) - (uint)(1)) >= (uint)(30)) {

      if(x == half(0))
        return (-2147483647 - 1);

      if(metal::isnan(x))
        return (-2147483647 - 1);

      if(ux == (ushort)(0x7c00))
        return 2147483647;

      ux |= (ushort)(0x3c00);
      half f = as_type<half>(ux) - half(1);
      exp = as_type<ushort>(f) >> (ushort)(10);

      return exp - short(15 + 14);
    }

    return exp - short(15);
  }

            half ldexp(half x, int k) __asm("air." "" "ldexp.f16");
# 1377 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) half fdim(half x, half y) {
    bool xNan = x != x;
    bool yNan = y != y;
    if (xNan || yNan)
      return as_type<half>((ushort)0x7e00);

    half t = x - y;



    return select(t, half(0), bool(t < half(0)) || bool(x == y));
  }
            half log10(half x) __asm("air.log10.f16");

  inline __attribute__((__always_inline__)) half modf(half x, thread half &intval) {
    intval = trunc(x);
    bool isinf_x = isinf(x);
    return copysign(select(x - intval, half(0), isinf_x), x);
  }
            half sincos(half x, thread half &cosval) __asm("air." "" "sincos.f16");



  inline __attribute__((__always_inline__)) float copysign(float x, float y) {
    uint iy = as_type<uint>(y) & (uint)(0x80000000);
    uint ret = (as_type<uint>(x) & (uint)(0x80000000 - 1ULL)) | iy;
    return as_type<float>(ret);
  }


            float fma(float a, float b, float c) __asm("air.fma.f32");


  inline __attribute__((__always_inline__)) float fract(float x) {

    return fast::fract(x);



  }

  inline __attribute__((__always_inline__)) float frexp(float x, thread int &exp) {
  if ((as_type<uint>(x) & (uint)(0x7f800000)) == (uint)(0x7f800000)) {
    exp = 0;
    return x;
  }


  if (x == 0.0f) {
    exp = 0;
    return 0.0f;
  }

  uint xi = as_type<uint>(x);
  int e = (xi & 0x7f800000) >> 23;

  if (e == 0) {

    float t = as_type<float>((uint)((xi & (uint)0x007fffff) | (uint)0x3f800000));
    t = t - 1.0f;
    xi = as_type<uint>(copysign(t, x));
    e = -126 + ((xi & 0x7f800000) >> 23);
  }

  e -= 126;
  exp = e;
  return as_type<float>((uint)((xi & (0x80000000 | 0x007fffff)) | 0x3f000000));
  }
  inline __attribute__((__always_inline__)) int ilogb(float x) {
    uint ux = as_type<uint>(x) & (uint)(0x7fffffff);
    int exp = ux >> (uint)(23);

    if(((uint)(exp) - (uint)(1)) >= (uint)(254)) {

      if(x == float(0))
        return (-2147483647 - 1);

      if(metal::isnan(x))
        return (-2147483647 - 1);

      if(ux == (uint)(0x7f800000))
        return 2147483647;

      ux |= (uint)(0x3f800000);
      float f = as_type<float>(ux) - float(1);
      exp = as_type<uint>(f) >> (uint)(23);

      return exp - int(127 + 126);
    }

    return exp - int(127);
  }

            float ldexp(float x, int k) __asm("air." "fast_" "ldexp.f32");
# 1507 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) float fdim(float x, float y) {
    bool xNan = x != x;
    bool yNan = y != y;
    if (xNan || yNan)
      return as_type<float>(0x7fc00000);

    float t = x - y;



    return select(t, float(0), bool(t < float(0)) || bool(x == y));
  }
  inline __attribute__((__always_inline__)) float log10(float x) {

    return fast::log10(x);



  }

  inline __attribute__((__always_inline__)) float modf(float x, thread float &intval) {
    intval = trunc(x);
    bool isinf_x = isinf(x);
    return copysign(select(x - intval, float(0), isinf_x), x);
  }
            float sincos(float x, thread float &cosval) __asm("air." "fast_" "sincos.f32");
# 1673 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,2> copysign(vec<half,2> x, vec<half,2> y) {
    vec<ushort,2> iy = as_type<vec<ushort,2>>(y) & (vec<ushort,2>)(0x8000);
    vec<ushort,2> ret = (as_type<vec<ushort,2>>(x) & (vec<ushort,2>)(0x8000 - 1ULL)) | iy;
    return as_type<vec<half,2>>(ret);
  }


            vec<half,2> fma(vec<half,2> a, vec<half,2> b, vec<half,2> c) __asm("air.fma.v2f16");


  inline __attribute__((__always_inline__)) vec<half,2> frexp(vec<half,2> x, thread vec<int,2> &exponent) {
    int temp_exponent;
    vec<half,2> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,2> ilogb(vec<half,2> x) {
    vec<int,2> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    return ret_val;
  }

            vec<half,2> ldexp(vec<half,2> x, vec<int,2> k) __asm("air." "" "ldexp.v2f16");
# 1708 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,2> fdim(vec<half,2> x, vec<half,2> y) {
    vec<half,2> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    return ret_val;
  }

            vec<half,2> fract(vec<half,2> x) __asm("air." "" "fract.v2f16");
# 1724 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<half,2> log10(vec<half,2> x) __asm("air.log10.v2f16");

  inline __attribute__((__always_inline__)) vec<half,2> modf(vec<half,2> x, thread vec<half,2> &intval) {
    intval = trunc(x);
    vec<bool,2> isinf_x = isinf(x);
    return copysign(select(x - intval, vec<half,2>(0), isinf_x), x);
  }
            vec<half,2> sincos(vec<half,2> x, thread vec<half,2> &cosval) __asm("air." "" "sincos.v2f16");



  inline __attribute__((__always_inline__)) vec<float,2> copysign(vec<float,2> x, vec<float,2> y) {
    vec<uint,2> iy = as_type<vec<uint,2>>(y) & (vec<uint,2>)(0x80000000);
    vec<uint,2> ret = (as_type<vec<uint,2>>(x) & (vec<uint,2>)(0x80000000 - 1ULL)) | iy;
    return as_type<vec<float,2>>(ret);
  }


            vec<float,2> fma(vec<float,2> a, vec<float,2> b, vec<float,2> c) __asm("air.fma.v2f32");


  inline __attribute__((__always_inline__)) vec<float,2> frexp(vec<float,2> x, thread vec<int,2> &exponent) {
    int temp_exponent;
    vec<float,2> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,2> ilogb(vec<float,2> x) {
    vec<int,2> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    return ret_val;
  }

            vec<float,2> ldexp(vec<float,2> x, vec<int,2> k) __asm("air." "fast_" "ldexp.v2f32");
# 1770 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,2> fdim(vec<float,2> x, vec<float,2> y) {
    vec<float,2> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    return ret_val;
  }

            vec<float,2> fract(vec<float,2> x) __asm("air." "fast_" "fract.v2f32");
# 1786 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,2> log10(vec<float,2> x) {

    return fast::log10(x);



  }

  inline __attribute__((__always_inline__)) vec<float,2> modf(vec<float,2> x, thread vec<float,2> &intval) {
    intval = trunc(x);
    vec<bool,2> isinf_x = isinf(x);
    return copysign(select(x - intval, vec<float,2>(0), isinf_x), x);
  }
            vec<float,2> sincos(vec<float,2> x, thread vec<float,2> &cosval) __asm("air." "fast_" "sincos.v2f32");
# 1867 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,3> copysign(vec<half,3> x, vec<half,3> y) {
    vec<ushort,3> iy = as_type<vec<ushort,3>>(y) & (vec<ushort,3>)(0x8000);
    vec<ushort,3> ret = (as_type<vec<ushort,3>>(x) & (vec<ushort,3>)(0x8000 - 1ULL)) | iy;
    return as_type<vec<half,3>>(ret);
  }


            vec<half,3> fma(vec<half,3> a, vec<half,3> b, vec<half,3> c) __asm("air.fma.v3f16");


  inline __attribute__((__always_inline__)) vec<half,3> frexp(vec<half,3> x, thread vec<int,3> &exponent) {
    int temp_exponent;
    vec<half,3> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    ret_val[2] = frexp(x[2], temp_exponent);
    exponent[2] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,3> ilogb(vec<half,3> x) {
    vec<int,3> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    ret_val[2] = ilogb(x[2]);
    return ret_val;
  }

            vec<half,3> ldexp(vec<half,3> x, vec<int,3> k) __asm("air." "" "ldexp.v3f16");
# 1906 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,3> fdim(vec<half,3> x, vec<half,3> y) {
    vec<half,3> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    ret_val[2] = fdim(x[2], y[2]);
    return ret_val;
  }

            vec<half,3> fract(vec<half,3> x) __asm("air." "" "fract.v3f16");
# 1924 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<half,3> log10(vec<half,3> x) __asm("air.log10.v3f16");

  inline __attribute__((__always_inline__)) vec<half,3> modf(vec<half,3> x, thread vec<half,3> &intval) {
    intval = trunc(x);
    vec<bool,3> isinf_x = isinf(x);
    return copysign(select(x - intval, vec<half,3>(0), isinf_x), x);
  }
            vec<half,3> sincos(vec<half,3> x, thread vec<half,3> &cosval) __asm("air." "" "sincos.v3f16");



  inline __attribute__((__always_inline__)) vec<float,3> copysign(vec<float,3> x, vec<float,3> y) {
    vec<uint,3> iy = as_type<vec<uint,3>>(y) & (vec<uint,3>)(0x80000000);
    vec<uint,3> ret = (as_type<vec<uint,3>>(x) & (vec<uint,3>)(0x80000000 - 1ULL)) | iy;
    return as_type<vec<float,3>>(ret);
  }


            vec<float,3> fma(vec<float,3> a, vec<float,3> b, vec<float,3> c) __asm("air.fma.v3f32");


  inline __attribute__((__always_inline__)) vec<float,3> frexp(vec<float,3> x, thread vec<int,3> &exponent) {
    int temp_exponent;
    vec<float,3> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    ret_val[2] = frexp(x[2], temp_exponent);
    exponent[2] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,3> ilogb(vec<float,3> x) {
    vec<int,3> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    ret_val[2] = ilogb(x[2]);
    return ret_val;
  }

            vec<float,3> ldexp(vec<float,3> x, vec<int,3> k) __asm("air." "fast_" "ldexp.v3f32");
# 1974 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,3> fdim(vec<float,3> x, vec<float,3> y) {
    vec<float,3> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    ret_val[2] = fdim(x[2], y[2]);
    return ret_val;
  }

            vec<float,3> fract(vec<float,3> x) __asm("air." "fast_" "fract.v3f32");
# 1992 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,3> log10(vec<float,3> x) {

    return fast::log10(x);



  }

  inline __attribute__((__always_inline__)) vec<float,3> modf(vec<float,3> x, thread vec<float,3> &intval) {
    intval = trunc(x);
    vec<bool,3> isinf_x = isinf(x);
    return copysign(select(x - intval, vec<float,3>(0), isinf_x), x);
  }
            vec<float,3> sincos(vec<float,3> x, thread vec<float,3> &cosval) __asm("air." "fast_" "sincos.v3f32");
# 2079 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,4> copysign(vec<half,4> x, vec<half,4> y) {
    vec<ushort,4> iy = as_type<vec<ushort,4>>(y) & (vec<ushort,4>)(0x8000);
    vec<ushort,4> ret = (as_type<vec<ushort,4>>(x) & (vec<ushort,4>)(0x8000 - 1ULL)) | iy;
    return as_type<vec<half,4>>(ret);
  }


            vec<half,4> fma(vec<half,4> a, vec<half,4> b, vec<half,4> c) __asm("air.fma.v4f16");


  inline __attribute__((__always_inline__)) vec<half,4> frexp(vec<half,4> x, thread vec<int,4> &exponent) {
    int temp_exponent;
    vec<half,4> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    ret_val[2] = frexp(x[2], temp_exponent);
    exponent[2] = temp_exponent;
    ret_val[3] = frexp(x[3], temp_exponent);
    exponent[3] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,4> ilogb(vec<half,4> x) {
    vec<int,4> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    ret_val[2] = ilogb(x[2]);
    ret_val[3] = ilogb(x[3]);
    return ret_val;
  }

            vec<half,4> ldexp(vec<half,4> x, vec<int,4> k) __asm("air." "" "ldexp.v4f16");
# 2122 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<half,4> fdim(vec<half,4> x, vec<half,4> y) {
    vec<half,4> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    ret_val[2] = fdim(x[2], y[2]);
    ret_val[3] = fdim(x[3], y[3]);
    return ret_val;
  }

            vec<half,4> fract(vec<half,4> x) __asm("air." "" "fract.v4f16");
# 2142 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
            vec<half,4> log10(vec<half,4> x) __asm("air.log10.v4f16");

  inline __attribute__((__always_inline__)) vec<half,4> modf(vec<half,4> x, thread vec<half,4> &intval) {
    intval = trunc(x);
    vec<bool,4> isinf_x = isinf(x);
    return copysign(select(x - intval, vec<half,4>(0), isinf_x), x);
  }
            vec<half,4> sincos(vec<half,4> x, thread vec<half,4> &cosval) __asm("air." "" "sincos.v4f16");



  inline __attribute__((__always_inline__)) vec<float,4> copysign(vec<float,4> x, vec<float,4> y) {
    vec<uint,4> iy = as_type<vec<uint,4>>(y) & (vec<uint,4>)(0x80000000);
    vec<uint,4> ret = (as_type<vec<uint,4>>(x) & (vec<uint,4>)(0x80000000 - 1ULL)) | iy;
    return as_type<vec<float,4>>(ret);
  }


            vec<float,4> fma(vec<float,4> a, vec<float,4> b, vec<float,4> c) __asm("air.fma.v4f32");


  inline __attribute__((__always_inline__)) vec<float,4> frexp(vec<float,4> x, thread vec<int,4> &exponent) {
    int temp_exponent;
    vec<float,4> ret_val;
    ret_val[0] = frexp(x[0], temp_exponent);
    exponent[0] = temp_exponent;
    ret_val[1] = frexp(x[1], temp_exponent);
    exponent[1] = temp_exponent;
    ret_val[2] = frexp(x[2], temp_exponent);
    exponent[2] = temp_exponent;
    ret_val[3] = frexp(x[3], temp_exponent);
    exponent[3] = temp_exponent;
    return ret_val;
  }
  inline __attribute__((__always_inline__)) vec<int,4> ilogb(vec<float,4> x) {
    vec<int,4> ret_val;
    ret_val[0] = ilogb(x[0]);
    ret_val[1] = ilogb(x[1]);
    ret_val[2] = ilogb(x[2]);
    ret_val[3] = ilogb(x[3]);
    return ret_val;
  }

            vec<float,4> ldexp(vec<float,4> x, vec<int,4> k) __asm("air." "fast_" "ldexp.v4f32");
# 2196 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,4> fdim(vec<float,4> x, vec<float,4> y) {
    vec<float,4> ret_val;
    ret_val[0] = fdim(x[0], y[0]);
    ret_val[1] = fdim(x[1], y[1]);
    ret_val[2] = fdim(x[2], y[2]);
    ret_val[3] = fdim(x[3], y[3]);
    return ret_val;
  }

            vec<float,4> fract(vec<float,4> x) __asm("air." "fast_" "fract.v4f32");
# 2216 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
  inline __attribute__((__always_inline__)) vec<float,4> log10(vec<float,4> x) {

    return fast::log10(x);



  }

  inline __attribute__((__always_inline__)) vec<float,4> modf(vec<float,4> x, thread vec<float,4> &intval) {
    intval = trunc(x);
    vec<bool,4> isinf_x = isinf(x);
    return copysign(select(x - intval, vec<float,4>(0), isinf_x), x);
  }
            vec<float,4> sincos(vec<float,4> x, thread vec<float,4> &cosval) __asm("air." "fast_" "sincos.v4f32");
# 2308 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_math" 3
}
# 10 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_geometric" 2 3

#pragma METAL internals : enable
namespace metal
{


template <typename T>
struct _fp_range_traits_impl;

template <>
struct _fp_range_traits_impl<half>
{
  constexpr static constant half scale_down = 0x1.0p-10;
  constexpr static constant half scale_down_inv = 0x1.0p+10;
  constexpr static constant half scale_up = 0x1.0p+8;
  constexpr static constant half scale_up_inv = 0x1.0p-8;
};
template <>
struct _fp_range_traits_impl<float>
{
  constexpr static constant float scale_down = 0x1.0p-66;
  constexpr static constant float scale_down_inv = 0x1.0p+66;
  constexpr static constant float scale_up = 0x1.0p+64;
  constexpr static constant float scale_up_inv = 0x1.0p-64;
};
# 46 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_geometric" 3
template <typename T>
struct _fp_range_traits : _fp_range_traits_impl<remove_cv_t<T>>
{
};

template <typename T, typename U, typename _E = void>
struct _geometric_binary_func_operand_type
{
  using type = void;
};
# 70 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_geometric" 3
template <typename T>
struct _geometric_binary_func_operand_type<T, T, typename enable_if<_is_fp_vector<T>::value>::type>
{
  using type = T;
};




template <typename T, typename U>
struct _geometric_binary_func_operand_type<T, U, typename enable_if<(_is_fp_vector<T>::value ^ _is_fp_vector<U>::value) && (_is_scalar<T>::value ^ _is_scalar<U>::value)>::type>
{
  using type = typename conditional<_is_fp_vector<T>::value, T, U>::type;
};

template <typename T, typename U>
using _geometric_binary_func_operand_type_t = typename _geometric_binary_func_operand_type<T, U>::type;
template <typename T, typename U>
struct _geometric_binary_func_enable : bool_constant<!is_same<void, _geometric_binary_func_operand_type_t<T, U>>::value>
{
};

template <typename T, typename U, typename V, typename _E = void>
struct _geometric_ternary_func_operand_type
{
  using type = void;
};





template <typename T>
struct _geometric_ternary_func_operand_type<T, T, T, typename enable_if<_is_fp_vector<T>::value>::type>
{
  using type = T;
};




template <typename T, typename U, typename V>
struct _geometric_ternary_func_operand_type<T, U, V, typename enable_if<(_is_fp_vector<T>::value + _is_fp_vector<U>::value + _is_fp_vector<V>::value) == 1 && (_is_scalar<T>::value + _is_scalar<U>::value + _is_scalar<V>::value) == 2 && (!is_same<T, U>::value && !is_same<T, V>::value && !is_same<U, V>::value)>::type>
{
  using type = typename conditional<_is_fp_vector<T>::value, T, U>::type;
};




template <typename T, typename V>
struct _geometric_ternary_func_operand_type<T, T, V, typename enable_if<!is_same<T, V>::value>::type> : _geometric_binary_func_operand_type<T, V>
{
};
template <typename T, typename U>
struct _geometric_ternary_func_operand_type<T, U, T, typename enable_if<!is_same<T, U>::value>::type> : _geometric_binary_func_operand_type<T, U>
{
};
template <typename T, typename U>
struct _geometric_ternary_func_operand_type<T, U, U, typename enable_if<!is_same<T, U>::value>::type> : _geometric_binary_func_operand_type<T, U>
{
};

template <typename T, typename U, typename V>
using _geometric_ternary_func_operand_type_t = typename _geometric_ternary_func_operand_type<T, U, V>::type;
template <typename T, typename U, typename V>
struct _geometric_ternary_func_enable : bool_constant<!is_same<void, _geometric_ternary_func_operand_type_t<T, U, V>>::value>
{
};




template <typename T, typename U, typename _E = void>
struct _geometric_cross_func_operand_type : _geometric_binary_func_operand_type<T, U>
{
};

template <typename T, typename U>
using _geometric_cross_func_operand_type_t = typename _geometric_cross_func_operand_type<T, U>::type;
template <typename T, typename U>
struct _geometric_cross_func_enable : bool_constant<!is_same<void, _geometric_cross_func_operand_type_t<T, U>>::value && vec_elements<_geometric_cross_func_operand_type_t<T, U>>::value == 3>
{
};




template <typename T, typename U, typename V, typename _E = void>
struct _geometric_refract_func_operand_type : _geometric_binary_func_operand_type<T, U>
{
};

template <typename T, typename U, typename V>
using _geometric_refract_func_operand_type_t = typename _geometric_refract_func_operand_type<T, U, V>::type;
template <typename T, typename U, typename V>
struct _geometric_refract_func_enable : bool_constant<!is_same<void, _geometric_cross_func_operand_type_t<T, U>>::value && is_scalar<V>::value>
{
};

template <typename T, typename U, typename _O = typename enable_if<_geometric_binary_func_enable<T, U>::value, _geometric_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) make_scalar_t<_O> dot(T x, U y)
{
  return __metal_dot(_O(x), _O(y));
}

template <typename T, typename _E = typename enable_if<_is_fp_vector<T>::value>::type>
inline __attribute__((__always_inline__)) make_scalar_t<T> length_squared(T x)
{
  return dot(x, x);
}

namespace fast
{
template <typename T, typename _E = typename enable_if<_is_fp_vector<T>::value && is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) make_scalar_t<T> length(T x)
{
  return fast::sqrt(length_squared(x));
}

template <typename T, typename _E = typename enable_if<_is_fp_vector<T>::value && is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T normalize(T x)
{
  return x * fast::rsqrt(length_squared(x));
}

template <typename T, typename U, typename _O = typename enable_if<_geometric_binary_func_enable<T, U>::value, _geometric_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) make_scalar_t<_O> distance(T x, U y)
{
  return fast::length(_O(x) - _O(y));
}
}

namespace precise
{
template <typename T, typename _E = typename enable_if<_is_fp_vector<T>::value && is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) make_scalar_t<T> length(T x)
{
  using R = make_scalar_t<T>;

  R len_sq = length_squared(x);
  if (isinf(len_sq))
  {
    len_sq = length_squared(x * _fp_range_traits<R>::scale_down);
    return _fp_range_traits<R>::scale_down_inv * precise::sqrt(len_sq);
  }
  if (len_sq < numeric_limits<R>::min() / numeric_limits<R>::epsilon())
  {
    len_sq = length_squared(x * _fp_range_traits<R>::scale_up);
    return _fp_range_traits<R>::scale_up_inv * precise::sqrt(len_sq);
  }
  return precise::sqrt(len_sq);
}

template <typename T, typename _E = typename enable_if<_is_fp_vector<T>::value && is_same<float, make_scalar_t<T>>::value>::type>
inline __attribute__((__always_inline__)) T normalize(T x)
{
  using R = make_scalar_t<T>;

  if (any(isinf(x)))
    return numeric_limits<R>::quiet_NaN();

  R len_sq = length_squared(x);
  if (isinf(len_sq))
  {
    x *= _fp_range_traits<R>::scale_down;
    len_sq = length_squared(x);
    if (isinf(len_sq))
      return copysign(select(T(0), T(1), isinf(x)), x);
  }
  else if (len_sq < numeric_limits<R>::min() / numeric_limits<R>::epsilon())
  {
    x *= _fp_range_traits<R>::scale_up;
    len_sq = length_squared(x);
    if (len_sq == R(0))
      return x;
  }
  return x * precise::rsqrt(len_sq);
}

template <typename T, typename U, typename _O = typename enable_if<_geometric_binary_func_enable<T, U>::value, _geometric_binary_func_operand_type_t<T, U>>::type, typename _E = typename enable_if<is_same<float, make_scalar_t<_O>>::value>::type>
inline __attribute__((__always_inline__)) make_scalar_t<_O> distance(T x, U y)
{
  return precise::length(_O(x) - _O(y));
}
}

template <typename T, typename _E = void>
struct _length_impl
{
  inline __attribute__((__always_inline__)) make_scalar_t<T> operator()(T x) const thread
  {
    return sqrt(length_squared(x));
  }
};

template <typename T>
struct _length_impl<T, typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) make_scalar_t<T> operator()(T x) const thread
  {

    return fast::length(x);



  }
};

template <typename T, typename _E = typename enable_if<_is_fp_vector<T>::value>::type>
inline __attribute__((__always_inline__)) make_scalar_t<T> length(T x)
{
  return _length_impl<T>()(x);
}

template <typename T, typename _E = void>
struct _normalize_impl
{
  inline __attribute__((__always_inline__)) T operator()(T x) const thread
  {
    return x * rsqrt(length_squared(x));
  }
};

template <typename T>
struct _normalize_impl<T, typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x) const thread
  {

    return fast::normalize(x);



  }
};

template <typename T, typename _E = typename enable_if<_is_fp_vector<T>::value>::type>
inline __attribute__((__always_inline__)) T normalize(T x)
{
  return _normalize_impl<T>()(x);
}

template <typename T, typename _E = void>
struct _distance_impl
{
  inline __attribute__((__always_inline__)) make_scalar_t<T> operator()(T x, T y) const thread
  {
    return length(x - y);
  }
};

template <typename T>
struct _distance_impl<T, typename enable_if<is_same<float, make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) make_scalar_t<T> operator()(T x, T y) const thread
  {

    return fast::distance(x, y);



  }
};

template <typename T, typename U, typename _O = typename enable_if<_geometric_binary_func_enable<T, U>::value, _geometric_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) make_scalar_t<_O> distance(T x, U y)
{
  return _distance_impl<_O>()(_O(x), _O(y));
}

template <typename T, typename U, typename _O = typename enable_if<_geometric_binary_func_enable<T, U>::value, _geometric_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) make_scalar_t<_O> distance_squared(T x, U y)
{
  return length_squared(_O(x) - _O(y));
}

template <typename T, typename U, typename V, typename _O = typename enable_if<_geometric_ternary_func_enable<T, U, V>::value, _geometric_ternary_func_operand_type_t<T, U, V>>::type>
inline __attribute__((__always_inline__)) _O faceforward(T n, U i, V nref)
{
  return dot(_O(nref), _O(i)) < make_scalar_t<_O>(0) ? _O(n) : _O(-n);
}

template <typename T, typename U, typename _O = typename enable_if<_geometric_binary_func_enable<T, U>::value, _geometric_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O reflect(T i, U n)
{
  return _O(i) - make_scalar_t<_O>(2) * dot(_O(n), _O(i)) * _O(n);
}

template <typename T, typename U, typename V, typename _O = typename enable_if<_geometric_refract_func_enable<T, U, V>::value, _geometric_refract_func_operand_type_t<T, U, V>>::type>
inline __attribute__((__always_inline__)) _O refract(T i, U n, V eta)
{
  using R = make_scalar_t<_O>;

  R k = R(1) - R(eta) * R(eta) * (R(1) - dot(_O(n), _O(i)) * dot(_O(n), _O(i)));
  if (k < R(0))
    return {0};
  return R(eta) * _O(i) - (R(eta) * dot(_O(n), _O(i)) + sqrt(k)) * _O(n);
}

template <typename T, typename U, typename _O = typename enable_if<_geometric_cross_func_enable<T, U>::value, _geometric_cross_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O cross(T x, U y)
{
  return {(_O(x)[1] * _O(y)[2]) - (_O(y)[1] * _O(x)[2]), (_O(x)[2] * _O(y)[0]) - (_O(y)[2] * _O(x)[0]), (_O(x)[0] * _O(y)[1]) - (_O(y)[0] * _O(x)[1])};
}
}
#pragma METAL internals : disable
# 11 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_graphics" 1 3
# 10 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_graphics" 3
namespace metal
{




template <typename T, typename _E = typename enable_if<_disjunction<is_same<make_scalar_t<T>, half>, is_same<make_scalar_t<T>, float>>::value>::type>
inline __attribute__((__always_inline__)) T dfdx(T p)
{
  return __metal_dfdx(p);
}

template <typename T, typename _E = typename enable_if<_disjunction<is_same<make_scalar_t<T>, half>, is_same<make_scalar_t<T>, float>>::value>::type>
inline __attribute__((__always_inline__)) T dfdy(T p)
{
  return __metal_dfdy(p);
}

template <typename T, typename _E = typename enable_if<_disjunction<is_same<make_scalar_t<T>, half>, is_same<make_scalar_t<T>, float>>::value>::type>
inline __attribute__((__always_inline__)) T fwidth(T p)
{
  return __metal_fwidth(p);
}
# 57 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_graphics" 3
inline __attribute__((__always_inline__)) uint get_num_samples()
{
  return __metal_get_num_samples(0);
}

inline __attribute__((__always_inline__)) float2 get_sample_position(uint indx)
{
  return __metal_get_sample_position(indx, 0);
}







inline __attribute__((__always_inline__)) void discard_fragment()

{
  __metal_discard_fragment();
}


struct MTLDrawPrimitivesIndirectArguments
{
  uint vertexCount;
  uint instanceCount;
  uint vertexStart;
  uint baseInstance;
};

struct MTLDrawIndexedPrimitivesIndirectArguments
{
  uint indexCount;
  uint instanceCount;
  uint indexStart;
  uint baseVertex;
  uint baseInstance;
};


}
# 12 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_initializer_list" 1 3







namespace metal
{
template <typename T>
struct initializer_list
{
  typedef T value_type;
  typedef const thread T& reference;
  typedef const thread T& const_reference;
  typedef size_t size_type;

  typedef const thread T *iterator;
  typedef const thread T *const_iterator;

  constexpr initializer_list() thread
      : elems(nullptr), count(0)
  {
  }

  size_type size() const thread
  {
    return count;
  }

  const_iterator begin() const thread
  {
    return elems;
  }

  const_iterator end() const thread
  {
    return elems + count;
  }

private:
  const thread value_type *elems;
  size_type count;
};
}
# 13 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer" 1 3
# 12 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer" 3
#pragma METAL internals : enable
namespace metal
{


template <typename T, typename U, typename _O = typename enable_if<_integer_binary_func_enable<T, U>::value, _integer_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) make_unsigned_t<_O> absdiff(T x, U y)
{
  return __metal_absdiff(_O(x), _O(y));
}

template <typename T, typename U, typename _O = typename enable_if<_integer_binary_func_enable<T, U>::value, _integer_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O addsat(T x, U y)
{
  return __metal_addsat(_O(x), _O(y));
}

template <typename T, typename _E = typename enable_if<_is_integral<T>::value>::type>
inline __attribute__((__always_inline__)) T clz(T x)
{
  return __metal_clz(x);
}

template <typename T, typename _E = typename enable_if<_is_integral<T>::value>::type>
inline __attribute__((__always_inline__)) T ctz(T x)
{
  return __metal_ctz(x);
}
# 49 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer" 3
template <typename T, typename _E = void>
struct _extract_bits_impl
{
};
template <typename T>
struct _extract_bits_impl<T, typename enable_if<is_signed<make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x, uint offset, uint bits)
  {
    typedef make_unsigned_t<T> unsigned_type;
    if (bits == 0)
      return 0;
    unsigned_type xu = as_type<unsigned_type>(x) >> offset;
    unsigned_type signmask = unsigned_type(1) << (bits - 1);
    unsigned_type mask1 = ((~xu & signmask) << 1) - 1;
    unsigned_type mask2 = ~(((xu & signmask) << 1) - 1);
    xu = (xu & mask1) | mask2;
    return as_type<T>(xu);
  }
};
template <typename T>
struct _extract_bits_impl<T, typename enable_if<is_unsigned<make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x, uint offset, uint bits)
  {
    if (bits == sizeof(make_scalar_t<T>) * 8)
      return x;
    return (x >> offset) & ((T(1) << bits) - T(1));
  }
};
template <typename T, typename _E = typename enable_if<_is_integral<T>::value>::type>
inline __attribute__((__always_inline__)) T extract_bits(T x, uint offset, uint bits)
{
  return _extract_bits_impl<T>()(x, offset, bits);
}



template <typename T, typename U, typename _O = typename enable_if<_integer_binary_func_enable<T, U>::value, _integer_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O hadd(T x, U y)
{
  return __metal_hadd(_O(x), _O(y));
}
# 101 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer" 3
template <typename T, typename _E = void>
struct _insert_bits_impl
{
};
template <typename T>
struct _insert_bits_impl<T, typename enable_if<is_unsigned<make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T base, T insert, uint offset, uint bits)
  {
    typedef make_unsigned_t<T> unsigned_type;
    if (bits == sizeof(make_scalar_t<T>) * 8)
      return insert;
    unsigned_type mask = ((unsigned_type(1) << bits) - unsigned_type(1)) << offset;
    return (base & ~mask) | ((insert << offset) & mask);
  }
};
template <typename T>
struct _insert_bits_impl<T, typename enable_if<is_signed<make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T base, T insert, uint offset, uint bits)
  {
    typedef make_unsigned_t<T> unsigned_type;
    return as_type<T>(_insert_bits_impl<unsigned_type>()(as_type<unsigned_type>(base), as_type<unsigned_type>(insert), offset, bits));
  }
};
template <typename T, typename _E = typename enable_if<_is_integral<T>::value>::type>
inline __attribute__((__always_inline__)) T insert_bits(T base, T insert, uint offset, uint bits)
{
  return _insert_bits_impl<T>()(base, insert, offset, bits);
}
template <typename T, typename U, typename _O = typename enable_if<_integer_binary_func_enable<T, U>::value, _integer_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O insert_bits(T base, U insert, uint offset, uint bits)
{
  return _insert_bits_impl<_O>()(_O(base), _O(insert), offset, bits);
}



template <typename T, typename U, typename V, typename _O = typename enable_if<_integer_ternary_func_enable<T, U, V>::value, _integer_ternary_func_operand_type_t<T, U, V>>::type>
inline __attribute__((__always_inline__)) _O madhi(T x, U y, V z)
{
  return __metal_madhi(_O(x), _O(y), _O(z));
}

template <typename T, typename U, typename V, typename _O = typename enable_if<_integer_ternary_func_enable<T, U, V>::value, _integer_ternary_func_operand_type_t<T, U, V>>::type>
inline __attribute__((__always_inline__)) _O madsat(T x, U y, V z)
{
  return __metal_madsat(_O(x), _O(y), _O(z));
}
# 167 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer" 3
template <typename T, typename U, typename _O = typename enable_if<_integer_binary_func_enable<T, U>::value, _integer_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O mulhi(T x, U y)
{
  return __metal_mulhi(_O(x), _O(y));
}

template <typename T, typename _E = typename enable_if<_is_integral<T>::value>::type>
inline __attribute__((__always_inline__)) T popcount(T x)
{
  return __metal_popcount(x);
}
# 187 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_integer" 3
template <typename T, typename _E = void>
struct _reverse_bits_impl
{
};
template <typename T>
struct _reverse_bits_impl<T, typename enable_if<is_signed<make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x)
  {
    typedef make_unsigned_t<T> unsigned_type;
    return as_type<T>(_reverse_bits_impl<unsigned_type>()(as_type<unsigned_type>(x)));
  }
};
template <typename T>
struct _reverse_bits_impl<T, typename enable_if<is_same<uchar, make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x)
  {
    x = ((x & T(0x55)) << 1) | ((x & T(0xAA)) >> 1);
    x = ((x & T(0x33)) << 2) | ((x & T(0xCC)) >> 2);
    return (x << 4) | (x >> 4);
  }
};
template <typename T>
struct _reverse_bits_impl<T, typename enable_if<is_same<ushort, make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x)
  {
    x = ((x & T(0x5555)) << 1) | ((x & T(0xAAAA)) >> 1);
    x = ((x & T(0x3333)) << 2) | ((x & T(0xCCCC)) >> 2);
    x = ((x & T(0x0F0F)) << 4) | ((x & T(0xF0F0)) >> 4);
    return (x << 8) | (x >> 8);
  }
};
template <typename T>
struct _reverse_bits_impl<T, typename enable_if<is_same<uint, make_scalar_t<T>>::value>::type>
{
  inline __attribute__((__always_inline__)) T operator()(T x)
  {
    x = ((x & T(0x55555555)) << 1) | ((x & T(0xAAAAAAAA)) >> 1);
    x = ((x & T(0x33333333)) << 2) | ((x & T(0xCCCCCCCC)) >> 2);
    x = ((x & T(0x0F0F0F0F)) << 4) | ((x & T(0xF0F0F0F0)) >> 4);
    x = ((x & T(0x00FF00FF)) << 8) | ((x & T(0xFF00FF00)) >> 8);
    return (x << 16) | (x >> 16);
  }
};
template <typename T, typename _E = typename enable_if<_is_integral<T>::value>::type>
inline __attribute__((__always_inline__)) T reverse_bits(T x)
{
  return _reverse_bits_impl<T>()(x);
}



template <typename T, typename U, typename _O = typename enable_if<_integer_binary_func_enable<T, U>::value, _integer_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O rhadd(T x, U y)
{
  return __metal_rhadd(_O(x), _O(y));
}

template <typename T, typename U, typename _O = typename enable_if<_integer_binary_func_enable<T, U>::value, _integer_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O rotate(T x, U y)
{
  return __metal_rotate(_O(x), _O(y));
}

template <typename T, typename U, typename _O = typename enable_if<_integer_binary_func_enable<T, U>::value, _integer_binary_func_operand_type_t<T, U>>::type>
inline __attribute__((__always_inline__)) _O subsat(T x, U y)
{
  return __metal_subsat(_O(x), _O(y));
}
}
#pragma METAL internals : disable
# 14 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3


# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_matrix" 1 3
# 11 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_matrix" 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_numeric" 1 3







namespace metal
{
template <typename T>
inline __attribute__((__always_inline__)) T _make_accumulation(T val)
{
  return val;
}
template <typename T, typename... U>
inline __attribute__((__always_inline__)) T _make_accumulation(T acc, T val, U... vals)
{
  return _make_accumulation(acc + val, vals...);
}
}
# 12 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_matrix" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_utility" 1 3







namespace metal
{
template <typename T, T... I>
struct _integer_sequence
{
  typedef T value_type;
  static constexpr size_t size()
  {
    return sizeof...(I);
  }
};
template <typename T, T N>
using _make_integer_sequence = __make_integer_seq<_integer_sequence, T, N>;

template <typename T, T... I>
using integer_sequence = _integer_sequence<T, I...>;
template <typename T, T N>
using make_integer_sequence = _make_integer_sequence<T, N>;

}
# 13 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_matrix" 2 3

#pragma METAL internals : enable
namespace metal {


template <typename T, int Cols, int Rows = Cols, typename _E = typename enable_if<is_scalar<T>::value && is_floating_point<T>::value && Cols >=2 && Rows >= 2>::type>
struct matrix
{
  vec<T, Rows> columns[Cols];

private:
  template <typename U, int... R>
  static vec<T, Rows> build_col(initializer_list<U> col, _integer_sequence<int, R...>)
  {
    return {(R < col.size() ? *(col.begin() + R) : U())...};
  }
  template <int... R>
  static vec<T, Rows> build_diag_col(int c, T val, _integer_sequence<int, R...>)
  {
    return {(c == R ? val : 0)...};
  }

  template <int... R>
  static vec<T, Rows> build_full_col(int c, initializer_list<T> elems, _integer_sequence<int, R...>)
  {
    return {*(elems.begin() + c * Rows + R)...};
  }


  struct cols_init_tag
  {
  };
  struct cols_all_tag
  {
  };

  struct elems_all_tag
  {
  };


  template <int... C>
  inline __attribute__((__always_inline__)) explicit matrix(T val, _integer_sequence<int, C...>) thread
      : columns{build_diag_col(C, val, _make_integer_sequence<int, Rows>())...}
  {
  }

  template <int... C>
  inline __attribute__((__always_inline__)) explicit matrix(cols_init_tag, initializer_list<vec<T, Rows>> cols, _integer_sequence<int, C...>) thread
     : columns{(C < cols.size() ? *(cols.begin() + C) : vec<T, Rows>())...}
  {
  }

  template <typename... U, typename _G = typename enable_if<_conjunction<is_convertible<U, vec<T, Rows>>...>::value>::type>
  inline __attribute__((__always_inline__)) explicit matrix(cols_all_tag, U... cols) thread
      : columns{vec<T, Rows>(cols)...}
  {
  }


  template <typename... U, typename _G = typename enable_if<_conjunction<is_convertible<U, T>...>::value>::type>
  inline __attribute__((__always_inline__)) explicit matrix(elems_all_tag, U... elems) thread
      : matrix({T(elems)...}, _make_integer_sequence<int, Cols>())
  {
  }
  template <int... C>
  inline __attribute__((__always_inline__)) explicit matrix(initializer_list<T> elems, _integer_sequence<int, C...>) thread
      : columns{build_full_col(C, elems, _make_integer_sequence<int, Rows>())...}
  {
  }

  template <int... C>
  inline __attribute__((__always_inline__)) explicit matrix(T val, _integer_sequence<int, C...>) constant
      : columns{build_diag_col(C, val, _make_integer_sequence<int, Rows>())...}
  {
  }

  template <int... C>
  inline __attribute__((__always_inline__)) explicit matrix(cols_init_tag, initializer_list<vec<T, Rows>> cols, _integer_sequence<int, C...>) constant
     : columns{(C < cols.size() ? *(cols.begin() + C) : vec<T, Rows>())...}
  {
  }

  template <typename... U, typename _G = typename enable_if<_conjunction<is_convertible<U, vec<T, Rows>>...>::value>::type>
  inline __attribute__((__always_inline__)) explicit matrix(cols_all_tag, U... cols) constant
      : columns{vec<T, Rows>(cols)...}
  {
  }


  template <typename... U, typename _G = typename enable_if<_conjunction<is_convertible<U, T>...>::value>::type>
  inline __attribute__((__always_inline__)) explicit matrix(elems_all_tag, U... elems) constant
      : matrix({T(elems)...}, _make_integer_sequence<int, Cols>())
  {
  }
  template <int... C>
  inline __attribute__((__always_inline__)) explicit matrix(initializer_list<T> elems, _integer_sequence<int, C...>) constant
      : columns{build_full_col(C, elems, _make_integer_sequence<int, Rows>())...}
  {
  }


  template <typename U, int... C>
  inline __attribute__((__always_inline__)) explicit matrix(const thread matrix<U, Cols, Rows> &that, _integer_sequence<int, C...>) thread
      : columns{vec<T, Rows>(that.columns[C])...}
  {
  }
  template <typename U, int... C>
  inline __attribute__((__always_inline__)) explicit matrix(const device matrix<U, Cols, Rows> &that, _integer_sequence<int, C...>) thread
      : columns{vec<T, Rows>(that.columns[C])...}
  {
  }
  template <typename U, int... C>
  inline __attribute__((__always_inline__)) explicit matrix(const constant matrix<U, Cols, Rows> &that, _integer_sequence<int, C...>) thread
      : columns{vec<T, Rows>(that.columns[C])...}
  {
  }
  template <typename U, int... C>
  inline __attribute__((__always_inline__)) explicit matrix(const threadgroup matrix<U, Cols, Rows> &that, _integer_sequence<int, C...>) thread
      : columns{vec<T, Rows>(that.columns[C])...}
  {
  }
  template <typename U, int... C>
  inline __attribute__((__always_inline__)) explicit matrix(const thread matrix<U, Cols, Rows> &that, _integer_sequence<int, C...>) constant
      : columns{vec<T, Rows>(that.columns[C])...}
  {
  }
  template <typename U, int... C>
  inline __attribute__((__always_inline__)) explicit matrix(const device matrix<U, Cols, Rows> &that, _integer_sequence<int, C...>) constant
      : columns{vec<T, Rows>(that.columns[C])...}
  {
  }
  template <typename U, int... C>
  inline __attribute__((__always_inline__)) explicit matrix(const constant matrix<U, Cols, Rows> &that, _integer_sequence<int, C...>) constant
      : columns{vec<T, Rows>(that.columns[C])...}
  {
  }
  template <typename U, int... C>
  inline __attribute__((__always_inline__)) explicit matrix(const threadgroup matrix<U, Cols, Rows> &that, _integer_sequence<int, C...>) constant
      : columns{vec<T, Rows>(that.columns[C])...}
  {
  }

public:
  inline __attribute__((__always_inline__)) matrix() thread = default;

  inline __attribute__((__always_inline__)) matrix(initializer_list<vec<T, Rows>> cols) thread
      : matrix(cols_init_tag(), cols, _make_integer_sequence<int, Cols>())
  {
  }
  template <typename... U, typename _G = typename enable_if<sizeof...(U) == Cols>::type>
  inline __attribute__((__always_inline__)) explicit matrix(initializer_list<U>... cols) thread
      : columns{build_col(cols, _make_integer_sequence<int, Rows>())...}
  {
  }

  inline __attribute__((__always_inline__)) explicit matrix(T val) thread
      : matrix(val, _make_integer_sequence<int, Cols>())
  {
  }


  template <typename... U, typename _G = typename enable_if<(sizeof...(U) == Cols) || (sizeof...(U) == Cols * Rows)>::type>
  inline __attribute__((__always_inline__)) explicit matrix(U... vals) thread
      : matrix(conditional_t<sizeof...(U) == Cols, cols_all_tag, elems_all_tag>(), vals...)
  {
  }







  inline __attribute__((__always_inline__)) matrix() constant = default;

  inline __attribute__((__always_inline__)) matrix(initializer_list<vec<T, Rows>> cols) constant
      : matrix(cols_init_tag(), cols, _make_integer_sequence<int, Cols>())
  {
  }
  template <typename... U, typename _G = typename enable_if<sizeof...(U) == Cols>::type>
  inline __attribute__((__always_inline__)) explicit matrix(initializer_list<U>... cols) constant
      : columns{build_col(cols, _make_integer_sequence<int, Rows>())...}
  {
  }

  inline __attribute__((__always_inline__)) explicit matrix(T val) constant
      : matrix(val, _make_integer_sequence<int, Cols>())
  {
  }


  template <typename... U, typename _G = typename enable_if<(sizeof...(U) == Cols) || (sizeof...(U) == Cols * Rows)>::type>
  inline __attribute__((__always_inline__)) explicit matrix(U... vals) constant
      : matrix(conditional_t<sizeof...(U) == Cols, cols_all_tag, elems_all_tag>(), vals...)
  {
  }
# 218 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_matrix" 3
  inline __attribute__((__always_inline__)) matrix(const thread matrix<T, Cols, Rows> &that) thread = default;

  template <typename U>
  inline __attribute__((__always_inline__)) explicit matrix(const thread matrix<U, Cols, Rows> &that) thread
      : matrix(that, _make_integer_sequence<int, Cols>())
  {
  }
  inline __attribute__((__always_inline__)) matrix(const device matrix<T, Cols, Rows> &that) thread = default;

  template <typename U>
  inline __attribute__((__always_inline__)) explicit matrix(const device matrix<U, Cols, Rows> &that) thread
      : matrix(that, _make_integer_sequence<int, Cols>())
  {
  }
  inline __attribute__((__always_inline__)) matrix(const constant matrix<T, Cols, Rows> &that) thread = default;

  template <typename U>
  inline __attribute__((__always_inline__)) explicit matrix(const constant matrix<U, Cols, Rows> &that) thread
      : matrix(that, _make_integer_sequence<int, Cols>())
  {
  }
  inline __attribute__((__always_inline__)) matrix(const threadgroup matrix<T, Cols, Rows> &that) thread = default;

  template <typename U>
  inline __attribute__((__always_inline__)) explicit matrix(const threadgroup matrix<U, Cols, Rows> &that) thread
      : matrix(that, _make_integer_sequence<int, Cols>())
  {
  }
  inline __attribute__((__always_inline__)) matrix(const thread matrix<T, Cols, Rows> &that) constant = default;

  template <typename U>
  inline __attribute__((__always_inline__)) explicit matrix(const thread matrix<U, Cols, Rows> &that) constant
      : matrix(that, _make_integer_sequence<int, Cols>())
  {
  }
  inline __attribute__((__always_inline__)) matrix(const device matrix<T, Cols, Rows> &that) constant = default;

  template <typename U>
  inline __attribute__((__always_inline__)) explicit matrix(const device matrix<U, Cols, Rows> &that) constant
      : matrix(that, _make_integer_sequence<int, Cols>())
  {
  }
  inline __attribute__((__always_inline__)) matrix(const constant matrix<T, Cols, Rows> &that) constant = default;

  template <typename U>
  inline __attribute__((__always_inline__)) explicit matrix(const constant matrix<U, Cols, Rows> &that) constant
      : matrix(that, _make_integer_sequence<int, Cols>())
  {
  }
  inline __attribute__((__always_inline__)) matrix(const threadgroup matrix<T, Cols, Rows> &that) constant = default;

  template <typename U>
  inline __attribute__((__always_inline__)) explicit matrix(const threadgroup matrix<U, Cols, Rows> &that) constant
      : matrix(that, _make_integer_sequence<int, Cols>())
  {
  }

public:
  inline __attribute__((__always_inline__)) thread vec<T, Rows> &operator[](int r) thread
  {
    return columns[r];
  }
  inline __attribute__((__always_inline__)) device vec<T, Rows> &operator[](int r) device
  {
    return columns[r];
  }
  inline __attribute__((__always_inline__)) threadgroup vec<T, Rows> &operator[](int r) threadgroup
  {
    return columns[r];
  }

  inline __attribute__((__always_inline__)) const thread vec<T, Rows> &operator[](int r) const thread
  {
    return columns[r];
  }
  inline __attribute__((__always_inline__)) const device vec<T, Rows> &operator[](int r) const device
  {
    return columns[r];
  }
  inline __attribute__((__always_inline__)) const constant vec<T, Rows> &operator[](int r) const constant
  {
    return columns[r];
  }
  inline __attribute__((__always_inline__)) const threadgroup vec<T, Rows> &operator[](int r) const threadgroup
  {
    return columns[r];
  }

private:
  template <typename O, int... C>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, vec<T, Rows> b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, vec<T, Rows> b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, vec<T, Rows> b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, vec<T, Rows> b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, vec<T, Rows> b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, vec<T, Rows> b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b);
  }

  template <typename O, int... C>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(thread matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(device matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }
  template <typename O, int... C>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, C...>)
  {
    a[Cols - sizeof...(C)] = op(a[Cols - sizeof...(C)], b[Cols - sizeof...(C)]);
    _make_compound_foreach(a, b, op, _make_integer_sequence<int, sizeof...(C) - 1>());
  }
  template <typename O>
  static void _make_compound_foreach(threadgroup matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b, O op, _integer_sequence<int, 0>)
  {
    a[Cols - 1] = op(a[Cols - 1], b[Cols - 1]);
  }

public:
  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator+=(const thread matrix<T, Cols, Rows> &that) thread
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator-=(const thread matrix<T, Cols, Rows> &that) thread
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator+=(const device matrix<T, Cols, Rows> &that) thread
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator-=(const device matrix<T, Cols, Rows> &that) thread
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator+=(const constant matrix<T, Cols, Rows> &that) thread
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator-=(const constant matrix<T, Cols, Rows> &that) thread
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator+=(const threadgroup matrix<T, Cols, Rows> &that) thread
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator-=(const threadgroup matrix<T, Cols, Rows> &that) thread
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator+=(const thread matrix<T, Cols, Rows> &that) device
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator-=(const thread matrix<T, Cols, Rows> &that) device
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator+=(const device matrix<T, Cols, Rows> &that) device
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator-=(const device matrix<T, Cols, Rows> &that) device
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator+=(const constant matrix<T, Cols, Rows> &that) device
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator-=(const constant matrix<T, Cols, Rows> &that) device
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator+=(const threadgroup matrix<T, Cols, Rows> &that) device
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator-=(const threadgroup matrix<T, Cols, Rows> &that) device
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator+=(const thread matrix<T, Cols, Rows> &that) threadgroup
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator-=(const thread matrix<T, Cols, Rows> &that) threadgroup
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator+=(const device matrix<T, Cols, Rows> &that) threadgroup
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator-=(const device matrix<T, Cols, Rows> &that) threadgroup
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator+=(const constant matrix<T, Cols, Rows> &that) threadgroup
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator-=(const constant matrix<T, Cols, Rows> &that) threadgroup
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator+=(const threadgroup matrix<T, Cols, Rows> &that) threadgroup
  {
    _make_compound_foreach(*this, that, plus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator-=(const threadgroup matrix<T, Cols, Rows> &that) threadgroup
  {
    _make_compound_foreach(*this, that, minus<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }

  inline __attribute__((__always_inline__)) thread matrix<T, Cols, Rows> &operator*=(T val) thread
  {
    _make_compound_foreach(*this, vec<T, Rows>(val), multiplies<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) device matrix<T, Cols, Rows> &operator*=(T val) device
  {
    _make_compound_foreach(*this, vec<T, Rows>(val), multiplies<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
  inline __attribute__((__always_inline__)) threadgroup matrix<T, Cols, Rows> &operator*=(T val) threadgroup
  {
    _make_compound_foreach(*this, vec<T, Rows>(val), multiplies<vec<T, Rows>>(), _make_integer_sequence<int, Cols>());
    return *this;
  }
};

typedef matrix<half, 2, 2> half2x2;
typedef matrix<half, 2, 3> half2x3;
typedef matrix<half, 2, 4> half2x4;
typedef matrix<half, 3, 2> half3x2;
typedef matrix<half, 3, 3> half3x3;
typedef matrix<half, 3, 4> half3x4;
typedef matrix<half, 4, 2> half4x2;
typedef matrix<half, 4, 3> half4x3;
typedef matrix<half, 4, 4> half4x4;
typedef matrix<float, 2, 2> float2x2;
typedef matrix<float, 2, 3> float2x3;
typedef matrix<float, 2, 4> float2x4;
typedef matrix<float, 3, 2> float3x2;
typedef matrix<float, 3, 3> float3x3;
typedef matrix<float, 3, 4> float3x4;
typedef matrix<float, 4, 2> float4x2;
typedef matrix<float, 4, 3> float4x3;
typedef matrix<float, 4, 4> float4x4;
# 661 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_matrix" 3
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(T a, const thread matrix<T, Cols, Rows> &b)
{
  return _matrix_scalar_product_impl(b, a, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const thread matrix<T, Cols, Rows> &a, T b)
{
  return b * a;
}
template <typename T, int Cols, int K>
inline __attribute__((__always_inline__)) vec<T, Cols> operator*(vec<T, K> a, const thread matrix<T, Cols, K> &b)
{
  return _vector_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int K, int Rows>
inline __attribute__((__always_inline__)) vec<T, Rows> operator*(const thread matrix<T, K, Rows> &a, vec<T, K> b)
{
  return _matrix_vector_product_impl(vec<T, Rows>(), a, b, _make_integer_sequence<int, K>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(T a, const device matrix<T, Cols, Rows> &b)
{
  return _matrix_scalar_product_impl(b, a, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const device matrix<T, Cols, Rows> &a, T b)
{
  return b * a;
}
template <typename T, int Cols, int K>
inline __attribute__((__always_inline__)) vec<T, Cols> operator*(vec<T, K> a, const device matrix<T, Cols, K> &b)
{
  return _vector_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int K, int Rows>
inline __attribute__((__always_inline__)) vec<T, Rows> operator*(const device matrix<T, K, Rows> &a, vec<T, K> b)
{
  return _matrix_vector_product_impl(vec<T, Rows>(), a, b, _make_integer_sequence<int, K>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(T a, const constant matrix<T, Cols, Rows> &b)
{
  return _matrix_scalar_product_impl(b, a, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const constant matrix<T, Cols, Rows> &a, T b)
{
  return b * a;
}
template <typename T, int Cols, int K>
inline __attribute__((__always_inline__)) vec<T, Cols> operator*(vec<T, K> a, const constant matrix<T, Cols, K> &b)
{
  return _vector_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int K, int Rows>
inline __attribute__((__always_inline__)) vec<T, Rows> operator*(const constant matrix<T, K, Rows> &a, vec<T, K> b)
{
  return _matrix_vector_product_impl(vec<T, Rows>(), a, b, _make_integer_sequence<int, K>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(T a, const threadgroup matrix<T, Cols, Rows> &b)
{
  return _matrix_scalar_product_impl(b, a, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const threadgroup matrix<T, Cols, Rows> &a, T b)
{
  return b * a;
}
template <typename T, int Cols, int K>
inline __attribute__((__always_inline__)) vec<T, Cols> operator*(vec<T, K> a, const threadgroup matrix<T, Cols, K> &b)
{
  return _vector_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int K, int Rows>
inline __attribute__((__always_inline__)) vec<T, Rows> operator*(const threadgroup matrix<T, K, Rows> &a, vec<T, K> b)
{
  return _matrix_vector_product_impl(vec<T, Rows>(), a, b, _make_integer_sequence<int, K>());
}

template <typename T, int Cols, int Rows, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_scalar_product_impl(const thread matrix<T, Cols, Rows> &a, T b, _integer_sequence<int, C...>)
{
  return {(a[C] * vec<T, Rows>(b))...};
}
template <typename T, int Cols, int K, int... C>
inline __attribute__((__always_inline__)) vec<T, Cols> _vector_matrix_product_impl(vec<T, K> a, const thread matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {dot(a, b[C])...};
}

template <typename T, int K, int Rows, int... H>
inline __attribute__((__always_inline__)) vec<T, Rows> _matrix_vector_product_impl(vec<T, Rows> tmp, const thread matrix<T, K, Rows> &a, vec<T, K> b, _integer_sequence<int, H...>)
{
  return _matrix_vector_product_impl(tmp + a[K - sizeof...(H)] * b[K - sizeof...(H)], a, b, _make_integer_sequence<int, sizeof...(H) - 1>());
}
template <typename T, int K, int Rows>
inline __attribute__((__always_inline__)) vec<T, Rows> _matrix_vector_product_impl(vec<T, Rows> tmp, const thread matrix<T, K, Rows> &a, vec<T, K> b, _integer_sequence<int, 0>)
{
  return tmp + a[K - 1] * b[K - 1];
}
template <typename T, int Cols, int Rows, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_scalar_product_impl(const device matrix<T, Cols, Rows> &a, T b, _integer_sequence<int, C...>)
{
  return {(a[C] * vec<T, Rows>(b))...};
}
template <typename T, int Cols, int K, int... C>
inline __attribute__((__always_inline__)) vec<T, Cols> _vector_matrix_product_impl(vec<T, K> a, const device matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {dot(a, b[C])...};
}

template <typename T, int K, int Rows, int... H>
inline __attribute__((__always_inline__)) vec<T, Rows> _matrix_vector_product_impl(vec<T, Rows> tmp, const device matrix<T, K, Rows> &a, vec<T, K> b, _integer_sequence<int, H...>)
{
  return _matrix_vector_product_impl(tmp + a[K - sizeof...(H)] * b[K - sizeof...(H)], a, b, _make_integer_sequence<int, sizeof...(H) - 1>());
}
template <typename T, int K, int Rows>
inline __attribute__((__always_inline__)) vec<T, Rows> _matrix_vector_product_impl(vec<T, Rows> tmp, const device matrix<T, K, Rows> &a, vec<T, K> b, _integer_sequence<int, 0>)
{
  return tmp + a[K - 1] * b[K - 1];
}
template <typename T, int Cols, int Rows, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_scalar_product_impl(const constant matrix<T, Cols, Rows> &a, T b, _integer_sequence<int, C...>)
{
  return {(a[C] * vec<T, Rows>(b))...};
}
template <typename T, int Cols, int K, int... C>
inline __attribute__((__always_inline__)) vec<T, Cols> _vector_matrix_product_impl(vec<T, K> a, const constant matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {dot(a, b[C])...};
}

template <typename T, int K, int Rows, int... H>
inline __attribute__((__always_inline__)) vec<T, Rows> _matrix_vector_product_impl(vec<T, Rows> tmp, const constant matrix<T, K, Rows> &a, vec<T, K> b, _integer_sequence<int, H...>)
{
  return _matrix_vector_product_impl(tmp + a[K - sizeof...(H)] * b[K - sizeof...(H)], a, b, _make_integer_sequence<int, sizeof...(H) - 1>());
}
template <typename T, int K, int Rows>
inline __attribute__((__always_inline__)) vec<T, Rows> _matrix_vector_product_impl(vec<T, Rows> tmp, const constant matrix<T, K, Rows> &a, vec<T, K> b, _integer_sequence<int, 0>)
{
  return tmp + a[K - 1] * b[K - 1];
}
template <typename T, int Cols, int Rows, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_scalar_product_impl(const threadgroup matrix<T, Cols, Rows> &a, T b, _integer_sequence<int, C...>)
{
  return {(a[C] * vec<T, Rows>(b))...};
}
template <typename T, int Cols, int K, int... C>
inline __attribute__((__always_inline__)) vec<T, Cols> _vector_matrix_product_impl(vec<T, K> a, const threadgroup matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {dot(a, b[C])...};
}

template <typename T, int K, int Rows, int... H>
inline __attribute__((__always_inline__)) vec<T, Rows> _matrix_vector_product_impl(vec<T, Rows> tmp, const threadgroup matrix<T, K, Rows> &a, vec<T, K> b, _integer_sequence<int, H...>)
{
  return _matrix_vector_product_impl(tmp + a[K - sizeof...(H)] * b[K - sizeof...(H)], a, b, _make_integer_sequence<int, sizeof...(H) - 1>());
}
template <typename T, int K, int Rows>
inline __attribute__((__always_inline__)) vec<T, Rows> _matrix_vector_product_impl(vec<T, Rows> tmp, const threadgroup matrix<T, K, Rows> &a, vec<T, K> b, _integer_sequence<int, 0>)
{
  return tmp + a[K - 1] * b[K - 1];
}

template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const thread matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const thread matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const thread matrix<T, K, Rows> &a, const thread matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const thread matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const thread matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const thread matrix<T, K, Rows> &a, const device matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const thread matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const thread matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const thread matrix<T, K, Rows> &a, const constant matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const thread matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const thread matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const thread matrix<T, K, Rows> &a, const threadgroup matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const device matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const device matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const device matrix<T, K, Rows> &a, const thread matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const device matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const device matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const device matrix<T, K, Rows> &a, const device matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const device matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const device matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const device matrix<T, K, Rows> &a, const constant matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const device matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const device matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const device matrix<T, K, Rows> &a, const threadgroup matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const constant matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const constant matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const constant matrix<T, K, Rows> &a, const thread matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const constant matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const constant matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const constant matrix<T, K, Rows> &a, const device matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const constant matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const constant matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const constant matrix<T, K, Rows> &a, const constant matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const constant matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const constant matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const constant matrix<T, K, Rows> &a, const threadgroup matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const threadgroup matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const threadgroup matrix<T, Cols, Rows> &a, const thread matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const threadgroup matrix<T, K, Rows> &a, const thread matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const threadgroup matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const threadgroup matrix<T, Cols, Rows> &a, const device matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const threadgroup matrix<T, K, Rows> &a, const device matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const threadgroup matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const threadgroup matrix<T, Cols, Rows> &a, const constant matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const threadgroup matrix<T, K, Rows> &a, const constant matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator+(const threadgroup matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp += b;
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator-(const threadgroup matrix<T, Cols, Rows> &a, const threadgroup matrix<T, Cols, Rows> &b)
{
  matrix<T, Cols, Rows> tmp = a;
  return tmp -= b;
}
template <typename T, int K, int Rows, int Cols>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> operator*(const threadgroup matrix<T, K, Rows> &a, const threadgroup matrix<T, Cols, K> &b)
{
  return _matrix_matrix_product_impl(a, b, _make_integer_sequence<int, Cols>());
}

template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const thread matrix<T, K, Rows> &a, const thread matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const thread matrix<T, K, Rows> &a, const device matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const thread matrix<T, K, Rows> &a, const constant matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const thread matrix<T, K, Rows> &a, const threadgroup matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const device matrix<T, K, Rows> &a, const thread matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const device matrix<T, K, Rows> &a, const device matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const device matrix<T, K, Rows> &a, const constant matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const device matrix<T, K, Rows> &a, const threadgroup matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const constant matrix<T, K, Rows> &a, const thread matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const constant matrix<T, K, Rows> &a, const device matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const constant matrix<T, K, Rows> &a, const constant matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const constant matrix<T, K, Rows> &a, const threadgroup matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const threadgroup matrix<T, K, Rows> &a, const thread matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const threadgroup matrix<T, K, Rows> &a, const device matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const threadgroup matrix<T, K, Rows> &a, const constant matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}
template <typename T, int K, int Rows, int Cols, int... C>
inline __attribute__((__always_inline__)) matrix<T, Cols, Rows> _matrix_matrix_product_impl(const threadgroup matrix<T, K, Rows> &a, const threadgroup matrix<T, Cols, K> &b, _integer_sequence<int, C...>)
{
  return {a * b[C]...};
}

template <typename T, int K>
inline __attribute__((__always_inline__)) thread vec<T, K> &operator*=(thread vec<T, K> &a, const thread matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) thread vec<T, K> &operator*=(thread vec<T, K> &a, const device matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) thread vec<T, K> &operator*=(thread vec<T, K> &a, const constant matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) thread vec<T, K> &operator*=(thread vec<T, K> &a, const threadgroup matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) device vec<T, K> &operator*=(device vec<T, K> &a, const thread matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) device vec<T, K> &operator*=(device vec<T, K> &a, const device matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) device vec<T, K> &operator*=(device vec<T, K> &a, const constant matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) device vec<T, K> &operator*=(device vec<T, K> &a, const threadgroup matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) threadgroup vec<T, K> &operator*=(threadgroup vec<T, K> &a, const thread matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) threadgroup vec<T, K> &operator*=(threadgroup vec<T, K> &a, const device matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) threadgroup vec<T, K> &operator*=(threadgroup vec<T, K> &a, const constant matrix<T, K, K> &b)
{
  return a = a * b;
}
template <typename T, int K>
inline __attribute__((__always_inline__)) threadgroup vec<T, K> &operator*=(threadgroup vec<T, K> &a, const threadgroup matrix<T, K, K> &b)
{
  return a = a * b;
}



template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Rows, Cols> transpose(const thread matrix<T, Cols, Rows> &a)
{
  return _transpose_impl(a, _make_integer_sequence<int, Rows>());
}
template <typename T, int K>
inline __attribute__((__always_inline__)) T determinant(const thread matrix<T, K, K> &a)
{
  return _determinant_impl(a, 0, _make_determinant_rows(_make_integer_sequence<int, K>()), _make_integer_sequence<int, K>());
}

template <typename T, int Cols, int Rows, int... R>
inline __attribute__((__always_inline__)) matrix<T, Rows, Cols> _transpose_impl(const thread matrix<T, Cols, Rows> &a, _integer_sequence<int, R...>)
{
  return {_transpose_row(R, a, _make_integer_sequence<int, Cols>())...};
}
template <typename T, int Cols, int Rows, int... C>
inline __attribute__((__always_inline__)) vec<T, Cols> _transpose_row(int r, const thread matrix<T, Cols, Rows> &a, _integer_sequence<int, C...>)
{
  return {a[C][r]...};
}

template <typename T, int K, int... R>
inline __attribute__((__always_inline__)) T _determinant_impl(const thread matrix<T, K, K> &a, int c, vec<int, sizeof...(R)> rows, _integer_sequence<int, R...>)
{
  return _make_accumulation(((R & 1 ? -1 : 1) * a[c][rows[R]] * _determinant_impl(a, c + 1, _remove_determinant_row(rows, R, _make_integer_sequence<int, sizeof...(R) - 1>()), _make_integer_sequence<int, sizeof...(R) - 1>()))...);
}
template <typename T, int K>
inline __attribute__((__always_inline__)) T _determinant_impl(const thread matrix<T, K, K> &a, int c, vec<int, 2> rows, _integer_sequence<int, 0, 1>)
{
  return a[c][rows[0]] * a[c + 1][rows[1]] - a[c][rows[1]] * a[c + 1][rows[0]];
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Rows, Cols> transpose(const device matrix<T, Cols, Rows> &a)
{
  return _transpose_impl(a, _make_integer_sequence<int, Rows>());
}
template <typename T, int K>
inline __attribute__((__always_inline__)) T determinant(const device matrix<T, K, K> &a)
{
  return _determinant_impl(a, 0, _make_determinant_rows(_make_integer_sequence<int, K>()), _make_integer_sequence<int, K>());
}

template <typename T, int Cols, int Rows, int... R>
inline __attribute__((__always_inline__)) matrix<T, Rows, Cols> _transpose_impl(const device matrix<T, Cols, Rows> &a, _integer_sequence<int, R...>)
{
  return {_transpose_row(R, a, _make_integer_sequence<int, Cols>())...};
}
template <typename T, int Cols, int Rows, int... C>
inline __attribute__((__always_inline__)) vec<T, Cols> _transpose_row(int r, const device matrix<T, Cols, Rows> &a, _integer_sequence<int, C...>)
{
  return {a[C][r]...};
}

template <typename T, int K, int... R>
inline __attribute__((__always_inline__)) T _determinant_impl(const device matrix<T, K, K> &a, int c, vec<int, sizeof...(R)> rows, _integer_sequence<int, R...>)
{
  return _make_accumulation(((R & 1 ? -1 : 1) * a[c][rows[R]] * _determinant_impl(a, c + 1, _remove_determinant_row(rows, R, _make_integer_sequence<int, sizeof...(R) - 1>()), _make_integer_sequence<int, sizeof...(R) - 1>()))...);
}
template <typename T, int K>
inline __attribute__((__always_inline__)) T _determinant_impl(const device matrix<T, K, K> &a, int c, vec<int, 2> rows, _integer_sequence<int, 0, 1>)
{
  return a[c][rows[0]] * a[c + 1][rows[1]] - a[c][rows[1]] * a[c + 1][rows[0]];
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Rows, Cols> transpose(const constant matrix<T, Cols, Rows> &a)
{
  return _transpose_impl(a, _make_integer_sequence<int, Rows>());
}
template <typename T, int K>
inline __attribute__((__always_inline__)) T determinant(const constant matrix<T, K, K> &a)
{
  return _determinant_impl(a, 0, _make_determinant_rows(_make_integer_sequence<int, K>()), _make_integer_sequence<int, K>());
}

template <typename T, int Cols, int Rows, int... R>
inline __attribute__((__always_inline__)) matrix<T, Rows, Cols> _transpose_impl(const constant matrix<T, Cols, Rows> &a, _integer_sequence<int, R...>)
{
  return {_transpose_row(R, a, _make_integer_sequence<int, Cols>())...};
}
template <typename T, int Cols, int Rows, int... C>
inline __attribute__((__always_inline__)) vec<T, Cols> _transpose_row(int r, const constant matrix<T, Cols, Rows> &a, _integer_sequence<int, C...>)
{
  return {a[C][r]...};
}

template <typename T, int K, int... R>
inline __attribute__((__always_inline__)) T _determinant_impl(const constant matrix<T, K, K> &a, int c, vec<int, sizeof...(R)> rows, _integer_sequence<int, R...>)
{
  return _make_accumulation(((R & 1 ? -1 : 1) * a[c][rows[R]] * _determinant_impl(a, c + 1, _remove_determinant_row(rows, R, _make_integer_sequence<int, sizeof...(R) - 1>()), _make_integer_sequence<int, sizeof...(R) - 1>()))...);
}
template <typename T, int K>
inline __attribute__((__always_inline__)) T _determinant_impl(const constant matrix<T, K, K> &a, int c, vec<int, 2> rows, _integer_sequence<int, 0, 1>)
{
  return a[c][rows[0]] * a[c + 1][rows[1]] - a[c][rows[1]] * a[c + 1][rows[0]];
}
template <typename T, int Cols, int Rows>
inline __attribute__((__always_inline__)) matrix<T, Rows, Cols> transpose(const threadgroup matrix<T, Cols, Rows> &a)
{
  return _transpose_impl(a, _make_integer_sequence<int, Rows>());
}
template <typename T, int K>
inline __attribute__((__always_inline__)) T determinant(const threadgroup matrix<T, K, K> &a)
{
  return _determinant_impl(a, 0, _make_determinant_rows(_make_integer_sequence<int, K>()), _make_integer_sequence<int, K>());
}

template <typename T, int Cols, int Rows, int... R>
inline __attribute__((__always_inline__)) matrix<T, Rows, Cols> _transpose_impl(const threadgroup matrix<T, Cols, Rows> &a, _integer_sequence<int, R...>)
{
  return {_transpose_row(R, a, _make_integer_sequence<int, Cols>())...};
}
template <typename T, int Cols, int Rows, int... C>
inline __attribute__((__always_inline__)) vec<T, Cols> _transpose_row(int r, const threadgroup matrix<T, Cols, Rows> &a, _integer_sequence<int, C...>)
{
  return {a[C][r]...};
}

template <typename T, int K, int... R>
inline __attribute__((__always_inline__)) T _determinant_impl(const threadgroup matrix<T, K, K> &a, int c, vec<int, sizeof...(R)> rows, _integer_sequence<int, R...>)
{
  return _make_accumulation(((R & 1 ? -1 : 1) * a[c][rows[R]] * _determinant_impl(a, c + 1, _remove_determinant_row(rows, R, _make_integer_sequence<int, sizeof...(R) - 1>()), _make_integer_sequence<int, sizeof...(R) - 1>()))...);
}
template <typename T, int K>
inline __attribute__((__always_inline__)) T _determinant_impl(const threadgroup matrix<T, K, K> &a, int c, vec<int, 2> rows, _integer_sequence<int, 0, 1>)
{
  return a[c][rows[0]] * a[c + 1][rows[1]] - a[c][rows[1]] * a[c + 1][rows[0]];
}

template <int... R>
inline __attribute__((__always_inline__)) vec<int, sizeof...(R)> _make_determinant_rows(_integer_sequence<int, R...>)
{
  return {R...};
}
template <int... R>
inline __attribute__((__always_inline__)) vec<int, sizeof...(R)> _remove_determinant_row(vec<int, sizeof...(R) + 1> rows, int r, _integer_sequence<int, R...>)
{
  return {rows[R < r ? R : R + 1]...};
}
}
#pragma METAL internals : disable
# 17 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3

# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_pack" 1 3







namespace metal
{


inline __attribute__((__always_inline__)) float4 unpack_unorm4x8_to_float(uint x)
{
  return __metal_unpack_unorm4x8(x, float4());
}
inline __attribute__((__always_inline__)) float4 unpack_snorm4x8_to_float(uint x)
{
  return __metal_unpack_snorm4x8(x, float4());
}
inline __attribute__((__always_inline__)) half4 unpack_unorm4x8_to_half(uint x)
{
  return __metal_unpack_unorm4x8(x, half4());
}
inline __attribute__((__always_inline__)) half4 unpack_snorm4x8_to_half(uint x)
{
  return __metal_unpack_snorm4x8(x, half4());
}

inline __attribute__((__always_inline__)) float4 unpack_unorm4x8_srgb_to_float(uint x)
{
  return __metal_unpack_unorm4x8_srgb(x, float4());
}
inline __attribute__((__always_inline__)) half4 unpack_unorm4x8_srgb_to_half(uint x)
{
  return __metal_unpack_unorm4x8_srgb(x, half4());
}

inline __attribute__((__always_inline__)) float2 unpack_unorm2x16_to_float(uint x)
{
  return __metal_unpack_unorm2x16(x, float2());
}
inline __attribute__((__always_inline__)) float2 unpack_snorm2x16_to_float(uint x)
{
  return __metal_unpack_snorm2x16(x, float2());
}
inline __attribute__((__always_inline__)) half2 unpack_unorm2x16_to_half(uint x)
{
  return __metal_unpack_unorm2x16(x, half2());
}
inline __attribute__((__always_inline__)) half2 unpack_snorm2x16_to_half(uint x)
{
  return __metal_unpack_snorm2x16(x, half2());
}

inline __attribute__((__always_inline__)) float4 unpack_unorm10a2_to_float(uint x)
{
  return __metal_unpack_unorm_rgb10a2(x, float4());
}
inline __attribute__((__always_inline__)) float3 unpack_unorm565_to_float(ushort x)
{
  return __metal_unpack_unorm_rgb565(x, float3());
}
inline __attribute__((__always_inline__)) half4 unpack_unorm10a2_to_half(uint x)
{
  return __metal_unpack_unorm_rgb10a2(x, half4());
}
inline __attribute__((__always_inline__)) half3 unpack_unorm565_to_half(ushort x)
{
  return __metal_unpack_unorm_rgb565(x, half3());
}

inline __attribute__((__always_inline__)) uint pack_float_to_unorm4x8(float4 x)
{
  return __metal_pack_unorm4x8(x);
}
inline __attribute__((__always_inline__)) uint pack_float_to_snorm4x8(float4 x)
{
  return __metal_pack_snorm4x8(x);
}
inline __attribute__((__always_inline__)) uint pack_half_to_unorm4x8(half4 x)
{
  return __metal_pack_unorm4x8(x);
}
inline __attribute__((__always_inline__)) uint pack_half_to_snorm4x8(half4 x)
{
  return __metal_pack_snorm4x8(x);
}

inline __attribute__((__always_inline__)) uint pack_float_to_srgb_unorm4x8(float4 x)
{
  return __metal_pack_unorm4x8_srgb(x);
}
inline __attribute__((__always_inline__)) uint pack_half_to_srgb_unorm4x8(half4 x)
{
  return __metal_pack_unorm4x8_srgb(x);
}

inline __attribute__((__always_inline__)) uint pack_float_to_unorm2x16(float2 x)
{
  return __metal_pack_unorm2x16(x);
}
inline __attribute__((__always_inline__)) uint pack_float_to_snorm2x16(float2 x)
{
  return __metal_pack_snorm2x16(x);
}
inline __attribute__((__always_inline__)) uint pack_half_to_unorm2x16(half2 x)
{
  return __metal_pack_unorm2x16(x);
}
inline __attribute__((__always_inline__)) uint pack_half_to_snorm2x16(half2 x)
{
  return __metal_pack_snorm2x16(x);
}

inline __attribute__((__always_inline__)) uint pack_float_to_unorm10a2(float4 x)
{
  return __metal_pack_unorm_rgb10a2(x);
}
inline __attribute__((__always_inline__)) ushort pack_float_to_unorm565(float3 x)
{
  return __metal_pack_unorm_rgb565(x);
}
inline __attribute__((__always_inline__)) uint pack_half_to_unorm10a2(half4 x)
{
  return __metal_pack_unorm_rgb10a2(x);
}
inline __attribute__((__always_inline__)) ushort pack_half_to_unorm565(half3 x)
{
  return __metal_pack_unorm_rgb565(x);
}
}
# 19 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_quadgroup" 1 3
# 10 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_quadgroup" 3
namespace metal {





#pragma METAL internals : enable
template <typename T, typename _E = void>
struct __is_valid_quadgroup_type : false_type
{
};

template <typename T>
struct __is_valid_quadgroup_type<T, typename enable_if<is_same_v<make_scalar_t<T>, half> ||
                                                       is_same_v<make_scalar_t<T>, float> ||



                                                       is_same_v<make_scalar_t<T>, char> ||
                                                       is_same_v<make_scalar_t<T>, uchar> ||
                                                       is_same_v<make_scalar_t<T>, signed char> ||
                                                       is_same_v<make_scalar_t<T>, short> ||
                                                       is_same_v<make_scalar_t<T>, ushort> ||
                                                       is_same_v<make_scalar_t<T>, int> ||
                                                       is_same_v<make_scalar_t<T>, uint>>::type> : true_type
{
};

template <typename T, typename _E = void>
struct __is_valid_quadgroup_integral_type : false_type
{
};

template <typename T>
struct __is_valid_quadgroup_integral_type<T, typename enable_if<is_same_v<make_scalar_t<T>, char> ||
                                                                is_same_v<make_scalar_t<T>, uchar> ||
                                                                is_same_v<make_scalar_t<T>, signed char> ||
                                                                is_same_v<make_scalar_t<T>, short> ||
                                                                is_same_v<make_scalar_t<T>, ushort> ||
                                                                is_same_v<make_scalar_t<T>, int> ||
                                                                is_same_v<make_scalar_t<T>, uint>>::type> : true_type
{
};
#pragma METAL internals : disable
# 115 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_quadgroup" 3
template <typename T, typename _E = typename enable_if<__is_valid_quadgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T quad_broadcast(T data, ushort broadcast_lane_id)
{
  return __metal_quad_broadcast(data, broadcast_lane_id);
}
# 193 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_quadgroup" 3
template <typename T, typename _E = typename enable_if<__is_valid_quadgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T quad_shuffle(T data, ushort quad_lane_id)
{
  return __metal_quad_shuffle(data, quad_lane_id);
}

template <typename T, typename _E = typename enable_if<__is_valid_quadgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T quad_shuffle_down(T data, ushort delta)
{
  return __metal_quad_shuffle_down(data, delta);
}

template <typename T, typename _E = typename enable_if<__is_valid_quadgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T quad_shuffle_up(T data, ushort delta)
{
  return __metal_quad_shuffle_up(data, delta);
}
# 227 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_quadgroup" 3
template <typename T, typename _E = typename enable_if<__is_valid_quadgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T quad_shuffle_xor(T data, ushort mask)
{
  return __metal_quad_shuffle_xor(data, mask);
}
# 248 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_quadgroup" 3
}
# 20 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3

# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_simdgroup" 1 3
# 10 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_simdgroup" 3
namespace metal
{




#pragma METAL internals : enable
template <typename T, typename _E = void>
struct __is_valid_simdgroup_type : false_type
{
};

template <typename T>
struct __is_valid_simdgroup_type<T, typename enable_if<is_same_v<make_scalar_t<T>, half> ||
                                                       is_same_v<make_scalar_t<T>, float> ||



                                                       is_same_v<make_scalar_t<T>, char> ||
                                                       is_same_v<make_scalar_t<T>, uchar> ||
                                                       is_same_v<make_scalar_t<T>, signed char> ||
                                                       is_same_v<make_scalar_t<T>, short> ||
                                                       is_same_v<make_scalar_t<T>, ushort> ||
                                                       is_same_v<make_scalar_t<T>, int> ||
                                                       is_same_v<make_scalar_t<T>, uint>>::type> : true_type
{
};

template <typename T, typename _E = void>
struct __is_valid_simdgroup_integral_type : false_type
{
};

template <typename T>
struct __is_valid_simdgroup_integral_type<T, typename enable_if<is_same_v<make_scalar_t<T>, char> ||
                                                                is_same_v<make_scalar_t<T>, uchar> ||
                                                                is_same_v<make_scalar_t<T>, signed char> ||
                                                                is_same_v<make_scalar_t<T>, short> ||
                                                                is_same_v<make_scalar_t<T>, ushort> ||
                                                                is_same_v<make_scalar_t<T>, int> ||
                                                                is_same_v<make_scalar_t<T>, uint>>::type> : true_type
{
};
#pragma METAL internals : disable
# 118 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_simdgroup" 3
template <typename T, typename _E = typename enable_if<__is_valid_simdgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T simd_broadcast(T data, ushort broadcast_lane_id)
{
  return __metal_simd_broadcast(data, broadcast_lane_id);
}
# 196 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_simdgroup" 3
template <typename T, typename _E = typename enable_if<__is_valid_simdgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T simd_shuffle(T data, ushort simd_lane_id)
{
  return __metal_simd_shuffle(data, simd_lane_id);
}

template <typename T, typename _E = typename enable_if<__is_valid_simdgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T simd_shuffle_down(T data, ushort delta)
{
  return __metal_simd_shuffle_down(data, delta);
}
# 224 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_simdgroup" 3
template <typename T, typename _E = typename enable_if<__is_valid_simdgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T simd_shuffle_up(T data, ushort delta)
{
  return __metal_simd_shuffle_up(data, delta);
}

template <typename T, typename _E = typename enable_if<__is_valid_simdgroup_type<T>::value>::type>
inline __attribute__((__always_inline__)) T simd_shuffle_xor(T data, ushort mask)
{
  return __metal_simd_shuffle_xor(data, mask);
}
# 251 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_simdgroup" 3
}
# 22 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 1 3
# 13 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 3
#pragma METAL internals : enable
namespace metal {
enum class access
{
  sample,
  read,
  write,

  read_write

};

enum class coord
{
  normalized = 0,
  pixel = 1
};
enum class filter
{
  nearest = 0,
  linear = 1,
};
enum class s_address
{
  clamp_to_zero = 0,
  clamp_to_edge = 1,
  repeat = 2,
  mirrored_repeat = 3,

  clamp_to_border = 4

};
enum class t_address
{
  clamp_to_zero = 0,
  clamp_to_edge = 1,
  repeat = 2,
  mirrored_repeat = 3,

  clamp_to_border = 4

};
enum class r_address
{
  clamp_to_zero = 0,
  clamp_to_edge = 1,
  repeat = 2,
  mirrored_repeat = 3,

  clamp_to_border = 4

};
enum class address
{
  clamp_to_zero = 0,
  clamp_to_edge = 1,
  repeat = 2,
  mirrored_repeat = 3,

  clamp_to_border = 4

};
enum class mip_filter
{
  none = 0,
  nearest = 1,
  linear = 2
};
enum class compare_func
{
  less = 1,
  less_equal = 2,
  greater = 3,
  greater_equal = 4,
  equal = 5,
  not_equal = 6,

  always = 7,
  never = 8

};
enum class mag_filter
{
  nearest = 0,
  linear = 1,
};
enum class min_filter
{
  nearest = 0,
  linear = 1,
};

struct __max_anisotropy
{
  inline __attribute__((__always_inline__)) constexpr explicit __max_anisotropy(int v) thread
      : value(v - 1)
  {
  }
  uchar value : 4;
};
struct __lod_clamp
{
  inline __attribute__((__always_inline__)) constexpr explicit __lod_clamp(float min, float max) thread
      : bits((convert(max) << 16) | convert(min))
  {
  }
  uint bits;

private:
  inline __attribute__((__always_inline__)) static constexpr float clamp(float x, float absmax)
  {
    return (x > absmax) ? absmax : (x < -absmax) ? -absmax : x;
  }
  inline __attribute__((__always_inline__)) static constexpr uint convert(float x)
  {
    return as_type<ushort>(static_cast<half>(__builtin_isfinite(x) ? clamp(x, 0x1.ffcp15h) : x));
  }
};


using max_anisotropy = __max_anisotropy;
using lod_clamp = __lod_clamp;



enum class border_color
{
  transparent_black = 0,
  opaque_black = 1,
  opaque_white = 2
};




struct sampler
{
private:
  using __uint64_t = unsigned __metal_internal_int64_t;

public:







  inline __attribute__((__always_inline__)) constexpr sampler() thread : val(build())
  {
  }
  template <typename... Ts>
  inline __attribute__((__always_inline__)) constexpr sampler(Ts... t) thread : val(build(t...))
  {
  }
  inline __attribute__((__always_inline__)) constexpr sampler() constant : val(build())
  {
  }
  template <typename... Ts>
  inline __attribute__((__always_inline__)) constexpr sampler(Ts... t) constant : val(build(t...))
  {
  }

  inline __attribute__((__always_inline__)) constexpr sampler(const thread sampler &) thread = default;
  inline __attribute__((__always_inline__)) constexpr sampler(const constant sampler &) thread = default;

  inline __attribute__((__always_inline__)) constexpr sampler(const device sampler &) thread = default;

  inline __attribute__((__always_inline__)) constexpr sampler(const thread sampler &) constant = default;
  inline __attribute__((__always_inline__)) constexpr sampler(const constant sampler &) constant = default;

  inline __attribute__((__always_inline__)) constexpr sampler(const device sampler &) constant = default;



  inline __attribute__((__always_inline__)) thread sampler &operator=(const thread sampler &that) thread = default;




  inline __attribute__((__always_inline__)) thread sampler &operator=(const constant sampler &that) thread = default;





  inline __attribute__((__always_inline__)) thread sampler &operator=(const device sampler &that) thread = default;






  inline __attribute__((__always_inline__)) device sampler &operator=(const thread sampler &that) device = default;






  inline __attribute__((__always_inline__)) device sampler &operator=(const constant sampler &that) device = default;






  inline __attribute__((__always_inline__)) device sampler &operator=(const device sampler &that) device = default;





private :
  sampler_t val;

private:

  constexpr const static constant unsigned s_address_bits = 3;
  constexpr const static constant unsigned t_address_bits = 3;
  constexpr const static constant unsigned r_address_bits = 3;
  constexpr const static constant unsigned mag_filter_bits = 2;
  constexpr const static constant unsigned min_filter_bits = 2;
  constexpr const static constant unsigned mip_filter_bits = 2;
  constexpr const static constant unsigned normalized_bits = 1;
  constexpr const static constant unsigned compare_bits = 4;
  constexpr const static constant unsigned anisotropy_bits = 4;
  constexpr const static constant unsigned lod_clamp_bits = 32;

  constexpr const static constant unsigned border_color_bits = 2;
  constexpr const static constant unsigned marker_bit = 63;

  constexpr const static constant unsigned s_address_base = 0;
  constexpr const static constant unsigned t_address_base = s_address_base + s_address_bits;
  constexpr const static constant unsigned r_address_base = t_address_base + t_address_bits;
  constexpr const static constant unsigned mag_filter_base = r_address_base + r_address_bits;
  constexpr const static constant unsigned min_filter_base = mag_filter_base + mag_filter_bits;
  constexpr const static constant unsigned mip_filter_base = min_filter_base + min_filter_bits;
  constexpr const static constant unsigned normalized_base = mip_filter_base + mip_filter_bits;
  constexpr const static constant unsigned compare_base = normalized_base + normalized_bits;
  constexpr const static constant unsigned anisotropy_base = compare_base + compare_bits;
  constexpr const static constant unsigned lod_clamp_base = anisotropy_base + anisotropy_bits;
  constexpr const static constant unsigned border_color_base = lod_clamp_base + lod_clamp_bits;

  constexpr const static constant __uint64_t s_address_mask = ((1ULL << s_address_bits ) - 1) << s_address_base;
  constexpr const static constant __uint64_t t_address_mask = ((1ULL << t_address_bits ) - 1) << t_address_base;
  constexpr const static constant __uint64_t r_address_mask = ((1ULL << r_address_bits ) - 1) << r_address_base;
  constexpr const static constant __uint64_t mag_filter_mask = ((1ULL << mag_filter_bits ) - 1) << mag_filter_base;
  constexpr const static constant __uint64_t min_filter_mask = ((1ULL << min_filter_bits ) - 1) << min_filter_base;
  constexpr const static constant __uint64_t mip_filter_mask = ((1ULL << mip_filter_bits ) - 1) << mip_filter_base;
  constexpr const static constant __uint64_t normalized_mask = ((1ULL << normalized_bits ) - 1) << normalized_base;
  constexpr const static constant __uint64_t compare_mask = ((1ULL << compare_bits ) - 1) << compare_base;
  constexpr const static constant __uint64_t anisotropy_mask = ((1ULL << anisotropy_bits ) - 1) << anisotropy_base;
  constexpr const static constant __uint64_t lod_clamp_mask = ((1ULL << lod_clamp_bits ) - 1) << lod_clamp_base;
  constexpr const static constant __uint64_t border_color_mask = ((1ULL << border_color_bits) - 1) << border_color_base;


  constexpr const static constant compare_func default_compare_func = compare_func::never;



  constexpr const static constant auto default_anisotropy = __max_anisotropy(1);
  constexpr const static constant auto default_lod_clamp = __lod_clamp(0.0, 0x1.fffffep127f);

  static constexpr __uint64_t build()
  {
    return (__uint64_t(1) << marker_bit) |
           (__uint64_t(default_lod_clamp.bits) << lod_clamp_base) |
           (__uint64_t(default_anisotropy.value) << anisotropy_base) |
           (__uint64_t(default_compare_func) << compare_base) |
           (__uint64_t(address::clamp_to_edge) << s_address_base) |
           (__uint64_t(address::clamp_to_edge) << t_address_base) |
           (__uint64_t(address::clamp_to_edge) << r_address_base);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(coord mode, Ts... t)
  {
    return (__uint64_t(mode) << normalized_base) | (build(t...) & ~normalized_mask);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(s_address mode, Ts... t)
  {
    return (__uint64_t(mode) << s_address_base) | (build(t...) & ~s_address_mask);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(t_address mode, Ts... t)
  {
    return (__uint64_t(mode) << t_address_base) | (build(t...) & ~t_address_mask);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(r_address mode, Ts... t)
  {
    return (__uint64_t(mode) << r_address_base) | (build(t...) & ~r_address_mask);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(address mode, Ts... t)
  {
    return (__uint64_t(mode) << s_address_base) |
           (__uint64_t(mode) << t_address_base) |
           (__uint64_t(mode) << r_address_base) |
           (build(t...) & ~(s_address_mask | t_address_mask | r_address_mask));
  }

  template <typename... Ts>
  static constexpr __uint64_t build(mag_filter mode, Ts... t)
  {
    return (__uint64_t(mode) << mag_filter_base) | (build(t...) & ~mag_filter_mask);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(min_filter mode, Ts... t)
  {
    return (__uint64_t(mode) << min_filter_base) | (build(t...) & ~min_filter_mask);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(filter mode, Ts... t)
  {
    return (__uint64_t(mode) << mag_filter_base) |
           (__uint64_t(mode) << min_filter_base) |
           (build(t...) & ~(mag_filter_mask | min_filter_mask));
  }

  template <typename... Ts>
  static constexpr __uint64_t build(mip_filter mode, Ts... t)
  {
    return (__uint64_t(mode) << mip_filter_base) | (build(t...) & ~mip_filter_mask);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(compare_func mode, Ts... t)
  {
    return (__uint64_t(mode) << compare_base) | (build(t...) & ~compare_mask);
  }


  template <typename... Ts>
  static constexpr __uint64_t build(max_anisotropy aniso, Ts... t)
  {
    return (__uint64_t(aniso.value) << anisotropy_base) | (build(t...) & ~anisotropy_mask);
  }

  template <typename... Ts>
  static constexpr __uint64_t build(lod_clamp lod, Ts... t)
  {
    return (__uint64_t(lod.bits) << lod_clamp_base) | (build(t...) & ~lod_clamp_mask);
  }



  template <typename... Ts>
  static constexpr __uint64_t build(border_color mode, Ts... t)
  {
    return (__uint64_t(mode) << border_color_base) | (build(t...) & ~border_color_mask);
  }



private:
  template <typename T, access a, typename _Enable>
  friend struct texture1d;
  template <typename T, access a, typename _Enable>
  friend struct texture1d_array;
  template <typename T, access a, typename _Enable>
  friend struct texture2d;
  template <typename T, access a, typename _Enable>
  friend struct texture2d_array;
  template <typename T, access a, typename _Enable>
  friend struct texture3d;
  template <typename T, access a, typename _Enable>
  friend struct texturecube;

  template <typename T, access a, typename _Enable>
  friend struct texturecube_array;

  template <typename T, access a, typename _Enable>
  friend struct texture2d_ms;




  template <typename T, access a, typename _Enable>
  friend struct depth2d;
  template <typename T, access a, typename _Enable>
  friend struct depth2d_array;
  template <typename T, access a, typename _Enable>
  friend struct depthcube;

  template <typename T, access a, typename _Enable>
  friend struct depthcube_array;

  template <typename T, access a, typename _Enable>
  friend struct depth2d_ms;




};


struct bias
{
  inline __attribute__((__always_inline__)) constexpr bias(float value) thread
      : value(value)
  {
  }
  float value;
};

struct level
{
  inline __attribute__((__always_inline__)) constexpr level(float lod) thread
      : lod(lod)
  {
  }
  float lod;
};



template <>
struct _constarg_traits<level>
{
  constexpr static bool check(level l)
  {
    return _constarg_traits<float>::check(l.lod);
  }
};

struct gradient2d
{
  inline __attribute__((__always_inline__)) constexpr gradient2d(float2 dPdx, float2 dPdy) thread
      : dPdx(dPdx), dPdy(dPdy)
  {
  }
  float2 dPdx;
  float2 dPdy;
};

struct gradient3d
{
  inline __attribute__((__always_inline__)) constexpr gradient3d(float3 dPdx, float3 dPdy) thread
      : dPdx(dPdx), dPdy(dPdy)
  {
  }
  float3 dPdx;
  float3 dPdy;
};

struct gradientcube
{
  inline __attribute__((__always_inline__)) constexpr gradientcube(float3 dPdx, float3 dPdy) thread
      : dPdx(dPdx), dPdy(dPdy)
  {
  }
  float3 dPdx;
  float3 dPdy;
};

enum class component
{
  x,
  y,
  z,
  w
};

               constexpr static inline bool _is_zero(uint a)
{
  return a == 0;
}
               constexpr static inline bool _is_zero(level a)
{
  return a.lod == 0;
}
# 513 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 3
template <typename T, access a = access::sample, typename _Enable = void>
struct texture1d;
template <typename T, access a = access::sample, typename _Enable = void>
struct texture1d_array;
template <typename T, access a = access::sample, typename _Enable = void>
struct texture2d;
template <typename T, access a = access::sample, typename _Enable = void>
struct texture2d_array;
template <typename T, access a = access::sample, typename _Enable = void>
struct texture3d;
template <typename T, access a = access::sample, typename _Enable = void>
struct texturecube;

template <typename T, access a = access::sample, typename _Enable = void>
struct texturecube_array;

template <typename T, access a = access::read, typename _Enable = void>
struct texture2d_ms;
# 539 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 3
template <typename T, access a = access::sample, typename _Enable = void>
struct depth2d;
template <typename T, access a = access::sample, typename _Enable = void>
struct depth2d_array;
template <typename T, access a = access::sample, typename _Enable = void>
struct depthcube;

template <typename T, access a = access::sample, typename _Enable = void>
struct depthcube_array;

template <typename T, access a = access::read, typename _Enable = void>
struct depth2d_ms;







template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(texture1d<T, a> tex);
template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(texture1d_array<T, a> tex);
template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(texture2d<T, a> tex);
template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(texture2d_array<T, a> tex);
template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(texture3d<T, a> tex);
template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(texturecube<T, a> tex);

template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(texturecube_array<T, a> tex);

template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(texture2d_ms<T, a> tex);






template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(depth2d<T, a> tex);
template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(depth2d_array<T, a> tex);
template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(depthcube<T, a> tex);

template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(depthcube_array<T, a> tex);

template <typename T, access a> inline __attribute__((__always_inline__)) bool is_null_texture(depth2d_ms<T, a> tex);





template <typename T>
struct _is_color_texture_channel_impl : bool_constant<__is_metal_color_texture_channel(T)>
{
};

template <typename T>
struct is_color_texture_channel : _is_color_texture_channel_impl<remove_cv_t<T>>
{
};

template <typename T>
constexpr constant bool is_color_texture_channel_v = is_color_texture_channel<T>::value;



template <typename T>
struct _is_depth_texture_channel_impl : bool_constant<__is_metal_depth_texture_channel(T)>
{
};

template <typename T>
struct is_depth_texture_channel : _is_depth_texture_channel_impl<remove_cv_t<T>>
{
};

template <typename T>
constexpr constant bool is_depth_texture_channel_v = is_depth_texture_channel<T>::value;
# 665 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 3
template <typename T, access a>
struct texture1d<T, a, typename enable_if<is_color_texture_channel<T>::value>::type>
{




  const thread texture1d<T, a> &operator,(const thread texture1d<T, a> &) const thread = delete;

  const device texture1d<T, a> &operator,(const device texture1d<T, a> &) const thread = delete;


  const constant texture1d<T, a> &operator,(const constant texture1d<T, a> &) const thread = delete;


  const thread texture1d<T, a> &operator,(const thread texture1d<T, a> &) const device = delete;


  const device texture1d<T, a> &operator,(const device texture1d<T, a> &) const device = delete;


  const constant texture1d<T, a> &operator,(const constant texture1d<T, a> &) const device = delete;


  const thread texture1d<T, a> &operator,(const thread texture1d<T, a> &) const constant = delete;


  const device texture1d<T, a> &operator,(const device texture1d<T, a> &) const constant = delete;


  const constant texture1d<T, a> &operator,(const constant texture1d<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) texture1d() thread : t(__metal_get_null_texture_1d_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }





  inline __attribute__((__always_inline__)) texture1d() constant : t(__metal_get_null_texture_1d_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }






  inline __attribute__((__always_inline__)) thread texture1d<T, a> &operator=(const thread texture1d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread texture1d<T, a> &operator=(const device texture1d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread texture1d<T, a> &operator=(const constant texture1d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture1d<T, a> &operator=(const thread texture1d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture1d<T, a> &operator=(const device texture1d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture1d<T, a> &operator=(const constant texture1d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float coord) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_1d_t(t, s.val, coord, false, 0, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float coord) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_1d_t(t, s.val, coord, false, 0, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float coord) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_1d_t(t, s.val, coord, false, 0, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort coord, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint coord, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort coord, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint coord, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort coord, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint coord, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort coord, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint coord, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_t(t, coord, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort coord, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint coord, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_t(t, coord, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort coord, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint coord, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_t(t, coord, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) void fence() thread
  {
    __metal_fence_texture_1d_t(t);
  }

  inline __attribute__((__always_inline__)) void fence() device
  {
    __metal_fence_texture_1d_t(t);
  }


  inline __attribute__((__always_inline__)) void fence() constant
  {
    __metal_fence_texture_1d_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {
    return __metal_get_width_texture_1d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_texture_1d_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {
    return __metal_get_width_texture_1d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_texture_1d_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {
    return __metal_get_width_texture_1d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_texture_1d_t(t);
  }


private:
  texture_1d_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(texture1d<T, a>);

};

template<typename T, access a>
struct texture1d_array<T, a, typename enable_if<is_color_texture_channel<T>::value>::type>
{




  const thread texture1d_array<T, a> &operator,(const thread texture1d_array<T, a> &) const thread = delete;

  const device texture1d_array<T, a> &operator,(const device texture1d_array<T, a> &) const thread = delete;


  const constant texture1d_array<T, a> &operator,(const constant texture1d_array<T, a> &) const thread = delete;


  const thread texture1d_array<T, a> &operator,(const thread texture1d_array<T, a> &) const device = delete;


  const device texture1d_array<T, a> &operator,(const device texture1d_array<T, a> &) const device = delete;


  const constant texture1d_array<T, a> &operator,(const constant texture1d_array<T, a> &) const device = delete;


  const thread texture1d_array<T, a> &operator,(const thread texture1d_array<T, a> &) const constant = delete;


  const device texture1d_array<T, a> &operator,(const device texture1d_array<T, a> &) const constant = delete;


  const constant texture1d_array<T, a> &operator,(const constant texture1d_array<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) texture1d_array() thread : t(__metal_get_null_texture_1d_array_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }





  inline __attribute__((__always_inline__)) texture1d_array() constant : t(__metal_get_null_texture_1d_array_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }






  inline __attribute__((__always_inline__)) thread texture1d_array<T, a> &operator=(const thread texture1d_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread texture1d_array<T, a> &operator=(const device texture1d_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread texture1d_array<T, a> &operator=(const constant texture1d_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture1d_array<T, a> &operator=(const thread texture1d_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture1d_array<T, a> &operator=(const device texture1d_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture1d_array<T, a> &operator=(const constant texture1d_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float coord, uint array) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_1d_array_t(t, s.val, coord, array, false, 0, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float coord, uint array) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_1d_array_t(t, s.val, coord, array, false, 0, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float coord, uint array) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_1d_array_t(t, s.val, coord, array, false, 0, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort coord, ushort array, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint coord, uint array, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort coord, ushort array, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint coord, uint array, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort coord, ushort array, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint coord, uint array, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_1d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort coord, ushort array, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_array_t(t, coord, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint coord, uint array, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_array_t(t, coord, array, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort coord, ushort array, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_array_t(t, coord, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint coord, uint array, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_array_t(t, coord, array, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort coord, ushort array, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_array_t(t, coord, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint coord, uint array, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_1d_array_t(t, coord, array, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void fence() thread
  {
    __metal_fence_texture_1d_array_t(t);
  }

  inline __attribute__((__always_inline__)) void fence() device
  {
    __metal_fence_texture_1d_array_t(t);
  }


  inline __attribute__((__always_inline__)) void fence() constant
  {
    __metal_fence_texture_1d_array_t(t);
  }



  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {
    return __metal_get_width_texture_1d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const thread
  {
    return __metal_get_array_size_texture_1d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_texture_1d_array_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {
    return __metal_get_width_texture_1d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const device
  {
    return __metal_get_array_size_texture_1d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_texture_1d_array_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {
    return __metal_get_width_texture_1d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const constant
  {
    return __metal_get_array_size_texture_1d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_texture_1d_array_t(t);
  }


private:
  texture_1d_array_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(texture1d_array<T, a>);

};

template<typename T, access a>
struct texture2d<T, a, typename enable_if<is_color_texture_channel<T>::value>::type>
{




  const thread texture2d<T, a> &operator,(const thread texture2d<T, a> &) const thread = delete;

  const device texture2d<T, a> &operator,(const device texture2d<T, a> &) const thread = delete;


  const constant texture2d<T, a> &operator,(const constant texture2d<T, a> &) const thread = delete;


  const thread texture2d<T, a> &operator,(const thread texture2d<T, a> &) const device = delete;


  const device texture2d<T, a> &operator,(const device texture2d<T, a> &) const device = delete;


  const constant texture2d<T, a> &operator,(const constant texture2d<T, a> &) const device = delete;


  const thread texture2d<T, a> &operator,(const thread texture2d<T, a> &) const constant = delete;


  const device texture2d<T, a> &operator,(const device texture2d<T, a> &) const constant = delete;


  const constant texture2d<T, a> &operator,(const constant texture2d<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) texture2d() thread : t(__metal_get_null_texture_2d_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }





  inline __attribute__((__always_inline__)) texture2d() constant : t(__metal_get_null_texture_2d_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }






  inline __attribute__((__always_inline__)) thread texture2d<T, a> &operator=(const thread texture2d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread texture2d<T, a> &operator=(const device texture2d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread texture2d<T, a> &operator=(const constant texture2d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d<T, a> &operator=(const thread texture2d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d<T, a> &operator=(const device texture2d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d<T, a> &operator=(const constant texture2d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, bias options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, level options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, gradient2d options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, bias options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, level options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, gradient2d options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, bias options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, level options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, gradient2d options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_t(t, coord, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_t(t, coord, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_t(t, coord, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, int2 offset = int2(0), component c = component::x) const thread __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_2d_t(t, s.val, coord, true, offset, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, int2 offset = int2(0), component c = component::x) const device __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_2d_t(t, s.val, coord, true, offset, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, int2 offset = int2(0), component c = component::x) const constant __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_2d_t(t, s.val, coord, true, offset, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void fence() thread
  {
    __metal_fence_texture_2d_t(t);
  }

  inline __attribute__((__always_inline__)) void fence() device
  {
    __metal_fence_texture_2d_t(t);
  }


  inline __attribute__((__always_inline__)) void fence() constant
  {
    __metal_fence_texture_2d_t(t);
  }



  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_texture_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_texture_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_texture_2d_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_texture_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_texture_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_texture_2d_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_texture_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_texture_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_texture_2d_t(t);
  }


private:
  texture_2d_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(texture2d<T, a>);

};

template<typename T, access a>
struct texture2d_array<T, a, typename enable_if<is_color_texture_channel<T>::value>::type>
{




  const thread texture2d_array<T, a> &operator,(const thread texture2d_array<T, a> &) const thread = delete;

  const device texture2d_array<T, a> &operator,(const device texture2d_array<T, a> &) const thread = delete;


  const constant texture2d_array<T, a> &operator,(const constant texture2d_array<T, a> &) const thread = delete;


  const thread texture2d_array<T, a> &operator,(const thread texture2d_array<T, a> &) const device = delete;


  const device texture2d_array<T, a> &operator,(const device texture2d_array<T, a> &) const device = delete;


  const constant texture2d_array<T, a> &operator,(const constant texture2d_array<T, a> &) const device = delete;


  const thread texture2d_array<T, a> &operator,(const thread texture2d_array<T, a> &) const constant = delete;


  const device texture2d_array<T, a> &operator,(const device texture2d_array<T, a> &) const constant = delete;


  const constant texture2d_array<T, a> &operator,(const constant texture2d_array<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) texture2d_array() thread : t(__metal_get_null_texture_2d_array_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }





  inline __attribute__((__always_inline__)) texture2d_array() constant : t(__metal_get_null_texture_2d_array_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }






  inline __attribute__((__always_inline__)) thread texture2d_array<T, a> &operator=(const thread texture2d_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread texture2d_array<T, a> &operator=(const device texture2d_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread texture2d_array<T, a> &operator=(const constant texture2d_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d_array<T, a> &operator=(const thread texture2d_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d_array<T, a> &operator=(const device texture2d_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d_array<T, a> &operator=(const constant texture2d_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, bias options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, level options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, gradient2d options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, bias options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, level options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, gradient2d options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, bias options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, level options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t(t, s.val, coord, array, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float2 coord, uint array, gradient2d options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_2d_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort array, ushort lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint array, uint lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort array, ushort lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint array, uint lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort array, ushort lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint array, uint lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort array, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_array_t(t, coord, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint array, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_array_t(t, coord, array, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort array, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_array_t(t, coord, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint array, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_array_t(t, coord, array, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort array, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_array_t(t, coord, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint array, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_2d_array_t(t, coord, array, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, uint array, int2 offset = int2(0), component c = component::x) const thread __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_2d_array_t(t, s.val, coord, array, true, offset, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, uint array, int2 offset = int2(0), component c = component::x) const device __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_2d_array_t(t, s.val, coord, array, true, offset, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, uint array, int2 offset = int2(0), component c = component::x) const constant __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_2d_array_t(t, s.val, coord, array, true, offset, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void fence() thread
  {
    __metal_fence_texture_2d_array_t(t);
  }

  inline __attribute__((__always_inline__)) void fence() device
  {
    __metal_fence_texture_2d_array_t(t);
  }


  inline __attribute__((__always_inline__)) void fence() constant
  {
    __metal_fence_texture_2d_array_t(t);
  }



  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_texture_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_texture_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const thread
  {
    return __metal_get_array_size_texture_2d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_texture_2d_array_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_texture_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_texture_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const device
  {
    return __metal_get_array_size_texture_2d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_texture_2d_array_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_texture_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_texture_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const constant
  {
    return __metal_get_array_size_texture_2d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_texture_2d_array_t(t);
  }


private:
  texture_2d_array_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(texture2d_array<T, a>);

};

template<typename T, access a>
struct texture3d<T, a, typename enable_if<is_color_texture_channel<T>::value>::type>
{




  const thread texture3d<T, a> &operator,(const thread texture3d<T, a> &) const thread = delete;

  const device texture3d<T, a> &operator,(const device texture3d<T, a> &) const thread = delete;


  const constant texture3d<T, a> &operator,(const constant texture3d<T, a> &) const thread = delete;


  const thread texture3d<T, a> &operator,(const thread texture3d<T, a> &) const device = delete;


  const device texture3d<T, a> &operator,(const device texture3d<T, a> &) const device = delete;


  const constant texture3d<T, a> &operator,(const constant texture3d<T, a> &) const device = delete;


  const thread texture3d<T, a> &operator,(const thread texture3d<T, a> &) const constant = delete;


  const device texture3d<T, a> &operator,(const device texture3d<T, a> &) const constant = delete;


  const constant texture3d<T, a> &operator,(const constant texture3d<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) texture3d() thread : t(__metal_get_null_texture_3d_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }





  inline __attribute__((__always_inline__)) texture3d() constant : t(__metal_get_null_texture_3d_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }






  inline __attribute__((__always_inline__)) thread texture3d<T, a> &operator=(const thread texture3d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread texture3d<T, a> &operator=(const device texture3d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread texture3d<T, a> &operator=(const constant texture3d<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture3d<T, a> &operator=(const thread texture3d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture3d<T, a> &operator=(const device texture3d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture3d<T, a> &operator=(const constant texture3d<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, int3 offset = int3(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, bias options, int3 offset = int3(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, level options, int3 offset = int3(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, gradient3d options, int3 offset = int3(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, int3 offset = int3(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, bias options, int3 offset = int3(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, level options, int3 offset = int3(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, gradient3d options, int3 offset = int3(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, int3 offset = int3(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, bias options, int3 offset = int3(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, level options, int3 offset = int3(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, gradient3d options, int3 offset = int3(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_3d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort3 coord, ushort lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_3d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint3 coord, uint lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_3d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort3 coord, ushort lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_3d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint3 coord, uint lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_3d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort3 coord, ushort lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_3d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint3 coord, uint lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_3d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort3 coord, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_3d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint3 coord, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_3d_t(t, coord, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort3 coord, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_3d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint3 coord, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_3d_t(t, coord, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort3 coord, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_3d_t(t, coord, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint3 coord, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    __metal_write_texture_3d_t(t, coord, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void fence() thread
  {
    __metal_fence_texture_3d_t(t);
  }

  inline __attribute__((__always_inline__)) void fence() device
  {
    __metal_fence_texture_3d_t(t);
  }


  inline __attribute__((__always_inline__)) void fence() constant
  {
    __metal_fence_texture_3d_t(t);
  }



  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_depth(uint lod = 0) const thread
  {
    return __metal_get_depth_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_texture_3d_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_depth(uint lod = 0) const device
  {
    return __metal_get_depth_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_texture_3d_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_depth(uint lod = 0) const constant
  {
    return __metal_get_depth_texture_3d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_texture_3d_t(t);
  }


private:
  texture_3d_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(texture3d<T, a>);

};

template<typename T, access a>
struct texturecube<T, a, typename enable_if<is_color_texture_channel<T>::value>::type>
{




  const thread texturecube<T, a> &operator,(const thread texturecube<T, a> &) const thread = delete;

  const device texturecube<T, a> &operator,(const device texturecube<T, a> &) const thread = delete;


  const constant texturecube<T, a> &operator,(const constant texturecube<T, a> &) const thread = delete;


  const thread texturecube<T, a> &operator,(const thread texturecube<T, a> &) const device = delete;


  const device texturecube<T, a> &operator,(const device texturecube<T, a> &) const device = delete;


  const constant texturecube<T, a> &operator,(const constant texturecube<T, a> &) const device = delete;


  const thread texturecube<T, a> &operator,(const thread texturecube<T, a> &) const constant = delete;


  const device texturecube<T, a> &operator,(const device texturecube<T, a> &) const constant = delete;


  const constant texturecube<T, a> &operator,(const constant texturecube<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) texturecube() thread : t(__metal_get_null_texture_cube_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }





  inline __attribute__((__always_inline__)) texturecube() constant : t(__metal_get_null_texture_cube_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }






  inline __attribute__((__always_inline__)) thread texturecube<T, a> &operator=(const thread texturecube<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread texturecube<T, a> &operator=(const device texturecube<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread texturecube<T, a> &operator=(const constant texturecube<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texturecube<T, a> &operator=(const thread texturecube<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texturecube<T, a> &operator=(const device texturecube<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texturecube<T, a> &operator=(const constant texturecube<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, bias options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, level options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, gradientcube options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t_grad(t, s.val, coord, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, bias options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, level options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, gradientcube options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t_grad(t, s.val, coord, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, bias options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, level options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t(t, s.val, coord, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, gradientcube options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_t_grad(t, s.val, coord, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }




  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort face, ushort lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint face, uint lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort face, ushort lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint face, uint lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort face, ushort lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint face, uint lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }





  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort face, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_t(t, coord, face, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint face, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_t(t, coord, face, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort face, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_t(t, coord, face, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint face, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_t(t, coord, face, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort face, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_t(t, coord, face, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint face, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_t(t, coord, face, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, component c = component::x) const thread __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_cube_t(t, s.val, coord, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, component c = component::x) const device __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_cube_t(t, s.val, coord, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, component c = component::x) const constant __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_cube_t(t, s.val, coord, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void fence() thread
  {
    __metal_fence_texture_cube_t(t);
  }

  inline __attribute__((__always_inline__)) void fence() device
  {
    __metal_fence_texture_cube_t(t);
  }


  inline __attribute__((__always_inline__)) void fence() constant
  {
    __metal_fence_texture_cube_t(t);
  }



  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_texture_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_texture_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_texture_cube_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_texture_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_texture_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_texture_cube_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_texture_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_texture_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_texture_cube_t(t);
  }


private:
  texture_cube_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(texturecube<T, a>);

};


template<typename T, access a>
struct texturecube_array<T, a, typename enable_if<is_color_texture_channel<T>::value>::type>
{




  const thread texturecube_array<T, a> &operator,(const thread texturecube_array<T, a> &) const thread = delete;

  const device texturecube_array<T, a> &operator,(const device texturecube_array<T, a> &) const thread = delete;


  const constant texturecube_array<T, a> &operator,(const constant texturecube_array<T, a> &) const thread = delete;


  const thread texturecube_array<T, a> &operator,(const thread texturecube_array<T, a> &) const device = delete;


  const device texturecube_array<T, a> &operator,(const device texturecube_array<T, a> &) const device = delete;


  const constant texturecube_array<T, a> &operator,(const constant texturecube_array<T, a> &) const device = delete;


  const thread texturecube_array<T, a> &operator,(const thread texturecube_array<T, a> &) const constant = delete;


  const device texturecube_array<T, a> &operator,(const device texturecube_array<T, a> &) const constant = delete;


  const constant texturecube_array<T, a> &operator,(const constant texturecube_array<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) texturecube_array() thread : t(__metal_get_null_texture_cube_array_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }





  inline __attribute__((__always_inline__)) texturecube_array() constant : t(__metal_get_null_texture_cube_array_t())
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Default constructor for textures must use access::sample or access::read as the access qualifier");
  }






  inline __attribute__((__always_inline__)) thread texturecube_array<T, a> &operator=(const thread texturecube_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread texturecube_array<T, a> &operator=(const device texturecube_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread texturecube_array<T, a> &operator=(const constant texturecube_array<T, a> &that) thread
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texturecube_array<T, a> &operator=(const thread texturecube_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texturecube_array<T, a> &operator=(const device texturecube_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texturecube_array<T, a> &operator=(const constant texturecube_array<T, a> &that) device
  {


    static_assert((a == access::read || a == access::sample || a == access::write || a == access::read_write), "Assignment of textures supports only texture with access::sample or access::read access qualifier");
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, bias options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, level options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, gradientcube options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, bias options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, level options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, gradientcube options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, bias options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, level options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t(t, s.val, coord, array, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }
  inline __attribute__((__always_inline__)) vec<T, 4> sample(sampler s, float3 coord, uint array, gradientcube options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_texture_cube_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort face, ushort array, ushort lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint face, uint array, uint lod = 0) const thread
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort face, ushort array, ushort lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint face, uint array, uint lod = 0) const device
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort face, ushort array, ushort lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint face, uint array, uint lod = 0) const constant
  {


    static_assert((a == access::sample || a == access::read || a == access::read_write), "Texture reading supports only texture with access::sample, access::read, or access::read_write as the access qualifier");
    return __metal_read_texture_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort face, ushort array, ushort lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_array_t(t, coord, face, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint face, uint array, uint lod = 0) const thread __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_array_t(t, coord, face, array, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort face, ushort array, ushort lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_array_t(t, coord, face, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint face, uint array, uint lod = 0) const device __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_array_t(t, coord, face, array, color, lod, int(a));
  }



  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, ushort2 coord, ushort face, ushort array, ushort lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_array_t(t, coord, face, array, color, lod, int(a));
  }

  inline __attribute__((__always_inline__)) void write(vec<T, 4> color, uint2 coord, uint face, uint array, uint lod = 0) const constant __attribute__((enable_if(_constarg_traits<decltype(lod)>::check(lod), "'" "lod" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(lod), "'" "lod" "' argument value must be 0")))
  {


    static_assert((a == access::write || a == access::read_write), "Texture writing supports only texture with access::write or access::read_write as the access qualifier");
    return __metal_write_texture_cube_array_t(t, coord, face, array, color, lod, int(a));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, uint array, component c = component::x) const thread __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_cube_array_t(t, s.val, coord, array, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, uint array, component c = component::x) const device __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_cube_array_t(t, s.val, coord, array, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, uint array, component c = component::x) const constant __attribute__((enable_if(_constarg_traits<decltype(c)>::check(c), "'" "c" "' argument must be known at compile-time")))
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_texture_cube_array_t(t, s.val, coord, array, int(c), int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) void fence() thread
  {
    __metal_fence_texture_cube_array_t(t);
  }

  inline __attribute__((__always_inline__)) void fence() device
  {
    __metal_fence_texture_cube_array_t(t);
  }


  inline __attribute__((__always_inline__)) void fence() constant
  {
    __metal_fence_texture_cube_array_t(t);
  }



  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_texture_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_texture_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const thread
  {
    return __metal_get_array_size_texture_cube_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_texture_cube_array_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_texture_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_texture_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const device
  {
    return __metal_get_array_size_texture_cube_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_texture_cube_array_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_texture_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_texture_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const constant
  {
    return __metal_get_array_size_texture_cube_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_texture_cube_array_t(t);
  }


private:
  texture_cube_array_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(texturecube_array<T, a>);

};


template<typename T, access a>
struct texture2d_ms<T, a, typename enable_if<is_color_texture_channel<T>::value>::type>
{


  static_assert((a == access::read), "Multisample textures must have access qualifier access::read");




  const thread texture2d_ms<T, a> &operator,(const thread texture2d_ms<T, a> &) const thread = delete;

  const device texture2d_ms<T, a> &operator,(const device texture2d_ms<T, a> &) const thread = delete;


  const constant texture2d_ms<T, a> &operator,(const constant texture2d_ms<T, a> &) const thread = delete;


  const thread texture2d_ms<T, a> &operator,(const thread texture2d_ms<T, a> &) const device = delete;


  const device texture2d_ms<T, a> &operator,(const device texture2d_ms<T, a> &) const device = delete;


  const constant texture2d_ms<T, a> &operator,(const constant texture2d_ms<T, a> &) const device = delete;


  const thread texture2d_ms<T, a> &operator,(const thread texture2d_ms<T, a> &) const constant = delete;


  const device texture2d_ms<T, a> &operator,(const device texture2d_ms<T, a> &) const constant = delete;


  const constant texture2d_ms<T, a> &operator,(const constant texture2d_ms<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) texture2d_ms() thread : t(__metal_get_null_texture_2d_ms_t())
  {
  }





  inline __attribute__((__always_inline__)) texture2d_ms() constant : t(__metal_get_null_texture_2d_ms_t())
  {
  }






  inline __attribute__((__always_inline__)) thread texture2d_ms<T, a> &operator=(const thread texture2d_ms<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread texture2d_ms<T, a> &operator=(const device texture2d_ms<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread texture2d_ms<T, a> &operator=(const constant texture2d_ms<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d_ms<T, a> &operator=(const thread texture2d_ms<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d_ms<T, a> &operator=(const device texture2d_ms<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device texture2d_ms<T, a> &operator=(const constant texture2d_ms<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort sample) const thread
  {
    return __metal_read_texture_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint sample) const thread
  {
    return __metal_read_texture_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort sample) const device
  {
    return __metal_read_texture_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint sample) const device
  {
    return __metal_read_texture_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }



  inline __attribute__((__always_inline__)) vec<T, 4> read(ushort2 coord, ushort sample) const constant
  {
    return __metal_read_texture_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }

  inline __attribute__((__always_inline__)) vec<T, 4> read(uint2 coord, uint sample) const constant
  {
    return __metal_read_texture_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr), vec<T, 4>());
  }


  inline __attribute__((__always_inline__)) uint get_width() const thread
  {
    return __metal_get_width_texture_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_height() const thread
  {
    return __metal_get_height_texture_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_samples() const thread
  {
    return __metal_get_num_samples_texture_2d_ms_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width() const device
  {
    return __metal_get_width_texture_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_height() const device
  {
    return __metal_get_height_texture_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_samples() const device
  {
    return __metal_get_num_samples_texture_2d_ms_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width() const constant
  {
    return __metal_get_width_texture_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_height() const constant
  {
    return __metal_get_height_texture_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_samples() const constant
  {
    return __metal_get_num_samples_texture_2d_ms_t(t);
  }


private:
  texture_2d_ms_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(texture2d_ms<T, a>);

};
# 4155 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 3
template<typename T, access a>
struct depth2d<T, a, typename enable_if<is_depth_texture_channel<T>::value>::type>
{


  static_assert((a == access::sample || a == access::read), "Depth textures must have access qualifier access::read or access::sample");




  const thread depth2d<T, a> &operator,(const thread depth2d<T, a> &) const thread = delete;

  const device depth2d<T, a> &operator,(const device depth2d<T, a> &) const thread = delete;


  const constant depth2d<T, a> &operator,(const constant depth2d<T, a> &) const thread = delete;


  const thread depth2d<T, a> &operator,(const thread depth2d<T, a> &) const device = delete;


  const device depth2d<T, a> &operator,(const device depth2d<T, a> &) const device = delete;


  const constant depth2d<T, a> &operator,(const constant depth2d<T, a> &) const device = delete;


  const thread depth2d<T, a> &operator,(const thread depth2d<T, a> &) const constant = delete;


  const device depth2d<T, a> &operator,(const device depth2d<T, a> &) const constant = delete;


  const constant depth2d<T, a> &operator,(const constant depth2d<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) depth2d() thread : t(__metal_get_null_depth_2d_t())
  {
  }





  inline __attribute__((__always_inline__)) depth2d() constant : t(__metal_get_null_depth_2d_t())
  {
  }






  inline __attribute__((__always_inline__)) thread depth2d<T, a> &operator=(const thread depth2d<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread depth2d<T, a> &operator=(const device depth2d<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread depth2d<T, a> &operator=(const constant depth2d<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d<T, a> &operator=(const thread depth2d<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d<T, a> &operator=(const device depth2d<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d<T, a> &operator=(const constant depth2d<T, a> &that) device
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, bias options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, level options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, gradient2d options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, bias options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, level options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, gradient2d options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, bias options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, level options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t(t, s.val, coord, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, gradient2d options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_t_grad(t, s.val, coord, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, float compare_value, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, float compare_value, level options, int2 offset = int2(0)) const thread __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, float compare_value, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, float compare_value, level options, int2 offset = int2(0)) const device __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, float compare_value, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, float compare_value, level options, int2 offset = int2(0)) const constant __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort lod = 0) const thread
  {
    return __metal_read_depth_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint lod = 0) const thread
  {
    return __metal_read_depth_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort lod = 0) const device
  {
    return __metal_read_depth_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint lod = 0) const device
  {
    return __metal_read_depth_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort lod = 0) const constant
  {
    return __metal_read_depth_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint lod = 0) const constant
  {
    return __metal_read_depth_2d_t(t, coord, lod, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_2d_t(t, s.val, coord, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_2d_t(t, s.val, coord, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_2d_t(t, s.val, coord, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float2 coord, float compare_value, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float2 coord, float compare_value, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float2 coord, float compare_value, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_2d_t(t, s.val, coord, compare_value, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_depth_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_depth_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_depth_2d_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_depth_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_depth_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_depth_2d_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_depth_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_depth_2d_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_depth_2d_t(t);
  }


private:
  depth_2d_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(depth2d<T, a>);

};

template<typename T, access a>
struct depth2d_array<T, a, typename enable_if<is_depth_texture_channel<T>::value>::type>
{


  static_assert((a == access::sample || a == access::read), "Depth textures must have access qualifier access::read or access::sample");




  const thread depth2d_array<T, a> &operator,(const thread depth2d_array<T, a> &) const thread = delete;

  const device depth2d_array<T, a> &operator,(const device depth2d_array<T, a> &) const thread = delete;


  const constant depth2d_array<T, a> &operator,(const constant depth2d_array<T, a> &) const thread = delete;


  const thread depth2d_array<T, a> &operator,(const thread depth2d_array<T, a> &) const device = delete;


  const device depth2d_array<T, a> &operator,(const device depth2d_array<T, a> &) const device = delete;


  const constant depth2d_array<T, a> &operator,(const constant depth2d_array<T, a> &) const device = delete;


  const thread depth2d_array<T, a> &operator,(const thread depth2d_array<T, a> &) const constant = delete;


  const device depth2d_array<T, a> &operator,(const device depth2d_array<T, a> &) const constant = delete;


  const constant depth2d_array<T, a> &operator,(const constant depth2d_array<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) depth2d_array() thread : t(__metal_get_null_depth_2d_array_t())
  {
  }





  inline __attribute__((__always_inline__)) depth2d_array() constant : t(__metal_get_null_depth_2d_array_t())
  {
  }






  inline __attribute__((__always_inline__)) thread depth2d_array<T, a> &operator=(const thread depth2d_array<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread depth2d_array<T, a> &operator=(const device depth2d_array<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread depth2d_array<T, a> &operator=(const constant depth2d_array<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d_array<T, a> &operator=(const thread depth2d_array<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d_array<T, a> &operator=(const device depth2d_array<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d_array<T, a> &operator=(const constant depth2d_array<T, a> &that) device
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, bias options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, level options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, gradient2d options, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, bias options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, level options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, gradient2d options, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, bias options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, level options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t(t, s.val, coord, array, true, offset, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float2 coord, uint array, gradient2d options, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_2d_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, true, offset, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, uint array, float compare_value, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, uint array, float compare_value, level options, int2 offset = int2(0)) const thread __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, false, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, uint array, float compare_value, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, uint array, float compare_value, level options, int2 offset = int2(0)) const device __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, false, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, uint array, float compare_value, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float2 coord, uint array, float compare_value, level options, int2 offset = int2(0)) const constant __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, false, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort array, ushort lod = 0) const thread
  {
    return __metal_read_depth_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint array, uint lod = 0) const thread
  {
    return __metal_read_depth_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort array, ushort lod = 0) const device
  {
    return __metal_read_depth_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint array, uint lod = 0) const device
  {
    return __metal_read_depth_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort array, ushort lod = 0) const constant
  {
    return __metal_read_depth_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint array, uint lod = 0) const constant
  {
    return __metal_read_depth_2d_array_t(t, coord, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, uint array, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_2d_array_t(t, s.val, coord, array, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, uint array, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_2d_array_t(t, s.val, coord, array, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float2 coord, uint array, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_2d_array_t(t, s.val, coord, array, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float2 coord, uint array, float compare_value, int2 offset = int2(0)) const thread
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float2 coord, uint array, float compare_value, int2 offset = int2(0)) const device
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float2 coord, uint array, float compare_value, int2 offset = int2(0)) const constant
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_2d_array_t(t, s.val, coord, array, compare_value, true, offset, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_depth_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_depth_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const thread
  {
    return __metal_get_array_size_depth_2d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_depth_2d_array_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_depth_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_depth_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const device
  {
    return __metal_get_array_size_depth_2d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_depth_2d_array_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_depth_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_depth_2d_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const constant
  {
    return __metal_get_array_size_depth_2d_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_depth_2d_array_t(t);
  }


private:
  depth_2d_array_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(depth2d_array<T, a>);

};

template<typename T, access a>
struct depthcube<T, a, typename enable_if<is_depth_texture_channel<T>::value>::type>
{


  static_assert((a == access::sample || a == access::read), "Depth textures must have access qualifier access::read or access::sample");




  const thread depthcube<T, a> &operator,(const thread depthcube<T, a> &) const thread = delete;

  const device depthcube<T, a> &operator,(const device depthcube<T, a> &) const thread = delete;


  const constant depthcube<T, a> &operator,(const constant depthcube<T, a> &) const thread = delete;


  const thread depthcube<T, a> &operator,(const thread depthcube<T, a> &) const device = delete;


  const device depthcube<T, a> &operator,(const device depthcube<T, a> &) const device = delete;


  const constant depthcube<T, a> &operator,(const constant depthcube<T, a> &) const device = delete;


  const thread depthcube<T, a> &operator,(const thread depthcube<T, a> &) const constant = delete;


  const device depthcube<T, a> &operator,(const device depthcube<T, a> &) const constant = delete;


  const constant depthcube<T, a> &operator,(const constant depthcube<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) depthcube() thread : t(__metal_get_null_depth_cube_t())
  {
  }





  inline __attribute__((__always_inline__)) depthcube() constant : t(__metal_get_null_depth_cube_t())
  {
  }






  inline __attribute__((__always_inline__)) thread depthcube<T, a> &operator=(const thread depthcube<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread depthcube<T, a> &operator=(const device depthcube<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread depthcube<T, a> &operator=(const constant depthcube<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depthcube<T, a> &operator=(const thread depthcube<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depthcube<T, a> &operator=(const device depthcube<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depthcube<T, a> &operator=(const constant depthcube<T, a> &that) device
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, bias options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, level options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, gradientcube options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t_grad(t, s.val, coord, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, bias options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, level options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, gradientcube options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t_grad(t, s.val, coord, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, bias options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, level options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t(t, s.val, coord, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, gradientcube options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_t_grad(t, s.val, coord, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, float compare_value) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_t(t, s.val, coord, compare_value, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, float compare_value, level options) const thread __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_t(t, s.val, coord, compare_value, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, float compare_value) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_t(t, s.val, coord, compare_value, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, float compare_value, level options) const device __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_t(t, s.val, coord, compare_value, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, float compare_value) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_t(t, s.val, coord, compare_value, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, float compare_value, level options) const constant __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_t(t, s.val, coord, compare_value, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }




  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort face, ushort lod = 0) const thread
  {
    return __metal_read_depth_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint face, uint lod = 0) const thread
  {
    return __metal_read_depth_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort face, ushort lod = 0) const device
  {
    return __metal_read_depth_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint face, uint lod = 0) const device
  {
    return __metal_read_depth_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort face, ushort lod = 0) const constant
  {
    return __metal_read_depth_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint face, uint lod = 0) const constant
  {
    return __metal_read_depth_cube_t(t, coord, face, lod, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord) const thread
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_cube_t(t, s.val, coord, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord) const device
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_cube_t(t, s.val, coord, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord) const constant
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_cube_t(t, s.val, coord, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float3 coord, float compare_value) const thread
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_cube_t(t, s.val, coord, compare_value, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float3 coord, float compare_value) const device
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_cube_t(t, s.val, coord, compare_value, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float3 coord, float compare_value) const constant
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_cube_t(t, s.val, coord, compare_value, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_depth_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_depth_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_depth_cube_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_depth_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_depth_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_depth_cube_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_depth_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_depth_cube_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_depth_cube_t(t);
  }


private:
  depth_cube_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(depthcube<T, a>);

};


template<typename T, access a>
struct depthcube_array<T, a, typename enable_if<is_depth_texture_channel<T>::value>::type>
{


  static_assert((a == access::sample || a == access::read), "Depth textures must have access qualifier access::read or access::sample");




  const thread depthcube_array<T, a> &operator,(const thread depthcube_array<T, a> &) const thread = delete;

  const device depthcube_array<T, a> &operator,(const device depthcube_array<T, a> &) const thread = delete;


  const constant depthcube_array<T, a> &operator,(const constant depthcube_array<T, a> &) const thread = delete;


  const thread depthcube_array<T, a> &operator,(const thread depthcube_array<T, a> &) const device = delete;


  const device depthcube_array<T, a> &operator,(const device depthcube_array<T, a> &) const device = delete;


  const constant depthcube_array<T, a> &operator,(const constant depthcube_array<T, a> &) const device = delete;


  const thread depthcube_array<T, a> &operator,(const thread depthcube_array<T, a> &) const constant = delete;


  const device depthcube_array<T, a> &operator,(const device depthcube_array<T, a> &) const constant = delete;


  const constant depthcube_array<T, a> &operator,(const constant depthcube_array<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) depthcube_array() thread : t(__metal_get_null_depth_cube_array_t())
  {
  }





  inline __attribute__((__always_inline__)) depthcube_array() constant : t(__metal_get_null_depth_cube_array_t())
  {
  }






  inline __attribute__((__always_inline__)) thread depthcube_array<T, a> &operator=(const thread depthcube_array<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread depthcube_array<T, a> &operator=(const device depthcube_array<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread depthcube_array<T, a> &operator=(const constant depthcube_array<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depthcube_array<T, a> &operator=(const thread depthcube_array<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depthcube_array<T, a> &operator=(const device depthcube_array<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depthcube_array<T, a> &operator=(const constant depthcube_array<T, a> &that) device
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, bias options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, level options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, gradientcube options) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, bias options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, level options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, gradientcube options) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, bias options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, false, options.value, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, level options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t(t, s.val, coord, array, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample(sampler s, float3 coord, uint array, gradientcube options) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_depth_cube_array_t_grad(t, s.val, coord, array, options.dPdx, options.dPdy, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, uint array, float compare_value) const thread
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, uint array, float compare_value, level options) const thread __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, uint array, float compare_value) const device
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, uint array, float compare_value, level options) const device __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, uint array, float compare_value) const constant
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, false, 0.0f, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }
  inline __attribute__((__always_inline__)) T sample_compare(sampler s, float3 coord, uint array, float compare_value, level options) const constant __attribute__((enable_if(_constarg_traits<decltype(options)>::check(options), "'" "options" "' argument must be known at compile-time"))) __attribute__((enable_if(_is_zero(options), "'" "options" "' argument value must be 0")))
  {


    static_assert((a == access::sample), "Texture sampling supports only texture with access::sample access qualifier");
    return __metal_sample_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, true, options.lod, 0.0f, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort face, ushort array, ushort lod = 0) const thread
  {
    return __metal_read_depth_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint face, uint array, uint lod = 0) const thread
  {
    return __metal_read_depth_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort face, ushort array, ushort lod = 0) const device
  {
    return __metal_read_depth_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint face, uint array, uint lod = 0) const device
  {
    return __metal_read_depth_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort face, ushort array, ushort lod = 0) const constant
  {
    return __metal_read_depth_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint face, uint array, uint lod = 0) const constant
  {
    return __metal_read_depth_cube_array_t(t, coord, face, array, lod, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, uint array) const thread
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_cube_array_t(t, s.val, coord, array, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, uint array) const device
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_cube_array_t(t, s.val, coord, array, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather(sampler s, float3 coord, uint array) const constant
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_depth_cube_array_t(t, s.val, coord, array, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float3 coord, uint array, float compare_value) const thread
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float3 coord, uint array, float compare_value) const device
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) vec<T, 4> gather_compare(sampler s, float3 coord, uint array, float compare_value) const constant
  {


    static_assert((a == access::sample), "Texture gather supports only texture with access::sample access qualifier");
    return __metal_gather_compare_depth_cube_array_t(t, s.val, coord, array, compare_value, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const thread
  {
    return __metal_get_width_depth_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const thread
  {
    return __metal_get_height_depth_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const thread
  {
    return __metal_get_array_size_depth_cube_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const thread
  {
    return __metal_get_num_mip_levels_depth_cube_array_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const device
  {
    return __metal_get_width_depth_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const device
  {
    return __metal_get_height_depth_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const device
  {
    return __metal_get_array_size_depth_cube_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const device
  {
    return __metal_get_num_mip_levels_depth_cube_array_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width(uint lod = 0) const constant
  {
    return __metal_get_width_depth_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_height(uint lod = 0) const constant
  {
    return __metal_get_height_depth_cube_array_t(t, lod);
  }
  inline __attribute__((__always_inline__)) uint get_array_size() const constant
  {
    return __metal_get_array_size_depth_cube_array_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_mip_levels() const constant
  {
    return __metal_get_num_mip_levels_depth_cube_array_t(t);
  }


private:
  depth_cube_array_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(depthcube_array<T, a>);

};


template<typename T, access a>
struct depth2d_ms<T, a, typename enable_if<is_depth_texture_channel<T>::value>::type>
{


  static_assert((a == access::read), "Multisample textures must have access qualifier access::read");




  const thread depth2d_ms<T, a> &operator,(const thread depth2d_ms<T, a> &) const thread = delete;

  const device depth2d_ms<T, a> &operator,(const device depth2d_ms<T, a> &) const thread = delete;


  const constant depth2d_ms<T, a> &operator,(const constant depth2d_ms<T, a> &) const thread = delete;


  const thread depth2d_ms<T, a> &operator,(const thread depth2d_ms<T, a> &) const device = delete;


  const device depth2d_ms<T, a> &operator,(const device depth2d_ms<T, a> &) const device = delete;


  const constant depth2d_ms<T, a> &operator,(const constant depth2d_ms<T, a> &) const device = delete;


  const thread depth2d_ms<T, a> &operator,(const thread depth2d_ms<T, a> &) const constant = delete;


  const device depth2d_ms<T, a> &operator,(const device depth2d_ms<T, a> &) const constant = delete;


  const constant depth2d_ms<T, a> &operator,(const constant depth2d_ms<T, a> &) const constant = delete;



  inline __attribute__((__always_inline__)) depth2d_ms() thread : t(__metal_get_null_depth_2d_ms_t())
  {
  }





  inline __attribute__((__always_inline__)) depth2d_ms() constant : t(__metal_get_null_depth_2d_ms_t())
  {
  }






  inline __attribute__((__always_inline__)) thread depth2d_ms<T, a> &operator=(const thread depth2d_ms<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }





  inline __attribute__((__always_inline__)) thread depth2d_ms<T, a> &operator=(const device depth2d_ms<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) thread depth2d_ms<T, a> &operator=(const constant depth2d_ms<T, a> &that) thread
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d_ms<T, a> &operator=(const thread depth2d_ms<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d_ms<T, a> &operator=(const device depth2d_ms<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) device depth2d_ms<T, a> &operator=(const constant depth2d_ms<T, a> &that) device
  {
    t = that.t;
    return *this;
  }






  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort sample) const thread
  {
    return __metal_read_depth_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint sample) const thread
  {
    return __metal_read_depth_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort sample) const device
  {
    return __metal_read_depth_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint sample) const device
  {
    return __metal_read_depth_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr));
  }



  inline __attribute__((__always_inline__)) T read(ushort2 coord, ushort sample) const constant
  {
    return __metal_read_depth_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr));
  }

  inline __attribute__((__always_inline__)) T read(uint2 coord, uint sample) const constant
  {
    return __metal_read_depth_2d_ms_t(t, coord, sample, int(a), static_cast<thread bool*>(nullptr));
  }


  inline __attribute__((__always_inline__)) uint get_width() const thread
  {
    return __metal_get_width_depth_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_height() const thread
  {
    return __metal_get_height_depth_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_samples() const thread
  {
    return __metal_get_num_samples_depth_2d_ms_t(t);
  }

  inline __attribute__((__always_inline__)) uint get_width() const device
  {
    return __metal_get_width_depth_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_height() const device
  {
    return __metal_get_height_depth_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_samples() const device
  {
    return __metal_get_num_samples_depth_2d_ms_t(t);
  }


  inline __attribute__((__always_inline__)) uint get_width() const constant
  {
    return __metal_get_width_depth_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_height() const constant
  {
    return __metal_get_height_depth_2d_ms_t(t);
  }
  inline __attribute__((__always_inline__)) uint get_num_samples() const constant
  {
    return __metal_get_num_samples_depth_2d_ms_t(t);
  }


private:
  depth_2d_ms_t t;


  friend inline __attribute__((__always_inline__)) bool metal::is_null_texture<T, a>(depth2d_ms<T, a>);

};
# 6162 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 3
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(texture1d<T, a> tex)
{
  return __metal_is_null_texture_1d_t(tex.t);
}
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(texture1d_array<T, a> tex)
{
  return __metal_is_null_texture_1d_array_t(tex.t);
}
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(texture2d<T, a> tex)
{
  return __metal_is_null_texture_2d_t(tex.t);
}
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(texture2d_array<T, a> tex)
{
  return __metal_is_null_texture_2d_array_t(tex.t);
}
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(texture3d<T, a> tex)
{
  return __metal_is_null_texture_3d_t(tex.t);
}
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(texturecube<T, a> tex)
{
  return __metal_is_null_texture_cube_t(tex.t);
}

template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(texturecube_array<T, a> tex)
{
  return __metal_is_null_texture_cube_array_t(tex.t);
}

template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(texture2d_ms<T, a> tex)
{
  return __metal_is_null_texture_2d_ms_t(tex.t);
}
# 6218 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 3
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(depth2d<T, a> tex)
{
  return __metal_is_null_depth_2d_t(tex.t);
}
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(depth2d_array<T, a> tex)
{
  return __metal_is_null_depth_2d_array_t(tex.t);
}
template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(depthcube<T, a> tex)
{
  return __metal_is_null_depth_cube_t(tex.t);
}

template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(depthcube_array<T, a> tex)
{
  return __metal_is_null_depth_cube_array_t(tex.t);
}

template <typename T, access a>
inline __attribute__((__always_inline__)) bool is_null_texture(depth2d_ms<T, a> tex)
{
  return __metal_is_null_depth_2d_ms_t(tex.t);
}
# 6254 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_texture" 3
}
#pragma METAL internals : disable
# 23 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 1 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_uniform" 1 3
# 12 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_uniform" 3
#pragma METAL internals : enable
namespace metal {
template <typename T, typename = void>
struct uniform;

template <typename T>
struct _is_uniform_impl : false_type
{
};
template <typename T>
struct _is_uniform_impl<uniform<T>> : true_type
{
};

template <typename T>
struct is_uniform : _is_uniform_impl<remove_cv_t<T>>
{
};
template <typename T>
constexpr constant bool is_uniform_v = is_uniform<T>::value;

template <typename T>
struct remove_uniform
{
  typedef T value_type;
};
template <typename T>
struct remove_uniform<const T>
{
  typedef const typename remove_uniform<T>::value_type value_type;
};
template <typename T>
struct remove_uniform<volatile T>
{
  typedef volatile typename remove_uniform<T>::value_type value_type;
};
template <typename T>
struct remove_uniform<uniform<T>>
{
  typedef T value_type;
};
template <typename T>
using remove_uniform_t = typename remove_uniform<T>::value_type;

template <typename T, typename = void>
struct _is_arg_uniform : _constarg_traits<T>
{
};
template <typename T>
struct _is_arg_uniform<uniform<T>>
{
  static constexpr bool check(const thread uniform<T> &) { return true; }
  static constexpr bool check(const device uniform<T> &) { return true; }
  static constexpr bool check(const constant uniform<T> &) { return true; }
  static constexpr bool check(const threadgroup uniform<T> &) { return true; }
};

template <typename U, typename V>
struct _is_explicit_convertible_impl
{
private:
  template<typename T, typename = decltype(V(T()))>
  static true_type test(thread void *);

  template<typename T>
  static false_type test(...);

public:
  using type = decltype(test<U>(nullptr));
};

template <typename U, typename V>
struct _is_explicit_convertible : _is_explicit_convertible_impl<U, V>::type
{
};
template <typename U, typename V>
constexpr constant bool _is_explicit_convertible_v = _is_explicit_convertible<U, V>::value;




template <typename T>
inline __attribute__((__always_inline__)) constexpr uniform<T> make_uniform(T x)
{
  return uniform<T>(x, uniform<T>::_tag_init);
}

template <typename T>
struct uniform<T, typename enable_if<is_arithmetic_v<T>>::type>
{
  typedef T value_type;

  T __v;

  constexpr uniform() thread = default;

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr uniform(U u) thread __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) : __v(u)
  {
  }

  constexpr uniform() constant = default;

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr uniform(U u) constant __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) : __v(u)
  {
  }

  constexpr uniform() threadgroup = default;

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr uniform(U u) threadgroup __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) : __v(u)
  {
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) operator U() const thread
  {
    __builtin_assume(__metal_is_uniform(__v));
    return U(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) operator uniform<U>() const thread
  {
    return make_uniform<U>(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && !is_convertible_v<T, U> && _is_explicit_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) explicit __attribute__((enable_if(true, ""))) operator U() const thread
  {
    __builtin_assume(__metal_is_uniform(__v));
    return U(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && !is_convertible_v<T, U> && _is_explicit_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) explicit __attribute__((enable_if(true, ""))) operator uniform<U>() const thread
  {
    return make_uniform<U>(U(__v));
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) operator U() const device
  {
    __builtin_assume(__metal_is_uniform(__v));
    return U(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) operator uniform<U>() const device
  {
    return make_uniform<U>(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && !is_convertible_v<T, U> && _is_explicit_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) explicit __attribute__((enable_if(true, ""))) operator U() const device
  {
    __builtin_assume(__metal_is_uniform(__v));
    return U(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && !is_convertible_v<T, U> && _is_explicit_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) explicit __attribute__((enable_if(true, ""))) operator uniform<U>() const device
  {
    return make_uniform<U>(U(__v));
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) operator U() const constant
  {
    __builtin_assume(__metal_is_uniform(__v));
    return U(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) operator uniform<U>() const constant
  {
    return make_uniform<U>(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && !is_convertible_v<T, U> && _is_explicit_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) explicit __attribute__((enable_if(true, ""))) operator U() const constant
  {
    __builtin_assume(__metal_is_uniform(__v));
    return U(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && !is_convertible_v<T, U> && _is_explicit_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) explicit __attribute__((enable_if(true, ""))) operator uniform<U>() const constant
  {
    return make_uniform<U>(U(__v));
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) operator U() const threadgroup
  {
    __builtin_assume(__metal_is_uniform(__v));
    return U(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) operator uniform<U>() const threadgroup
  {
    return make_uniform<U>(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && !is_convertible_v<T, U> && _is_explicit_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) explicit __attribute__((enable_if(true, ""))) operator U() const threadgroup
  {
    __builtin_assume(__metal_is_uniform(__v));
    return U(__v);
  }

  template <typename U, typename = typename enable_if<!is_uniform_v<U> && !is_convertible_v<T, U> && _is_explicit_convertible_v<T, U>>::type>
  constexpr inline __attribute__((__always_inline__)) explicit __attribute__((enable_if(true, ""))) operator uniform<U>() const threadgroup
  {
    return make_uniform<U>(U(__v));
  }


  template <typename U>
  constexpr typename enable_if<is_convertible_v<T, remove_uniform_t<U>>, thread uniform &>::type operator=(U u) thread __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value")))
  {
    __v = remove_uniform_t<U>(u);
    return *this;
  }

  template <typename U>
  constexpr typename enable_if<is_convertible_v<T, remove_uniform_t<U>>, device uniform &>::type operator=(U u) device __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value")))
  {
    __v = remove_uniform_t<U>(u);
    return *this;
  }

  template <typename U>
  constexpr typename enable_if<is_convertible_v<T, remove_uniform_t<U>>, threadgroup uniform &>::type operator=(U u) threadgroup __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value")))
  {
    __v = remove_uniform_t<U>(u);
    return *this;
  }


private:
  enum _tag { _tag_init };
  template <typename U, typename = typename enable_if<!is_uniform_v<U> && is_convertible_v<T, U>>::type>
  constexpr uniform(U u, _tag) thread : __v(u)
  {
  }

  template <typename U>
  friend constexpr uniform<U> make_uniform(U);
};

template <typename U, typename V, template <typename> class P>
using _binop_uniform_constraints_t = typename enable_if<
    (is_uniform_v<U> || is_uniform_v<V>) &&
    P<remove_uniform_t<U>>::value && P<remove_uniform_t<V>>::value &&
    ((is_vector_v<remove_uniform_t<U>> &&
      is_vector_v<remove_uniform_t<V>> &&
      is_convertible_v<remove_uniform_t<U>, remove_uniform_t<V>>) ||
     !is_vector_v<remove_uniform_t<U>> ||
     !is_vector_v<remove_uniform_t<V>>)>::type;

template <typename U, typename V, template <typename> class P>
using _binop_uniform_l_constraints_t = typename enable_if<
    is_uniform_v<U> &&
    P<remove_uniform_t<U>>::value && P<V>::value &&
    ((is_vector_v<remove_uniform_t<U>> && is_vector_v<V> &&
      is_convertible_v<remove_uniform_t<U>, V>) ||
     !is_vector_v<remove_uniform_t<U>> || !is_vector_v<V>)>::type;

template <typename U, typename V, template <typename> class P>
using _binop_uniform_r_constraints_t = typename enable_if<
    is_uniform_v<V> &&
    P<U>::value && P<remove_uniform_t<V>>::value &&
    ((is_vector_v<U> && is_vector_v<remove_uniform_t<V>> &&
      is_convertible_v<U, remove_uniform_t<V>>) ||
     !is_vector_v<V> || !is_vector_v<remove_uniform_t<U>>)>::type;

template <typename U, typename V, template <typename> class P>
using _op_assign_uniform_constraints_t = typename enable_if<
    is_uniform_v<U> && is_same_v<U, remove_cv_t<U>> &&
    P<remove_uniform_t<U>>::value &&
    P<remove_uniform_t<V>>::value &&
    ((is_vector_v<remove_uniform_t<U>> &&
      is_vector_v<remove_uniform_t<V>> &&
      is_convertible_v<remove_uniform_t<U>, remove_uniform_t<V>>) ||
     !is_vector_v<remove_uniform_t<U>> ||
     !is_vector_v<remove_uniform_t<V>>)>::type;

template <typename U, template <typename> class P>
using _unop_uniform_constraints_t =
    typename enable_if<is_uniform_v<U> &&
                       P<remove_uniform_t<U>>::value>::type;

template <typename U>
using _inc_dec_uniform_constraints_t =
    typename enable_if<is_uniform_v<U> &&
                       is_arithmetic_v<remove_uniform_t<U>> &&
                       !is_same_v<make_scalar_t<remove_uniform_t<U>>, bool>>::type;

template <typename T>
using _is_convertible_to_bool = is_convertible<T, bool>;


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() + remove_uniform_t<V>())>
operator+(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() + remove_uniform_t<V>())>(remove_uniform_t<U>(u) + remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() + V())
operator+(U u, V v)
{
  return remove_uniform_t<U>(u) + V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() + remove_uniform_t<V>())
operator+(U u, V v)
{
  return U(u) + remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() - remove_uniform_t<V>())>
operator-(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() - remove_uniform_t<V>())>(remove_uniform_t<U>(u) - remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() - V())
operator-(U u, V v)
{
  return remove_uniform_t<U>(u) - V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() - remove_uniform_t<V>())
operator-(U u, V v)
{
  return U(u) - remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() * remove_uniform_t<V>())>
operator*(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() * remove_uniform_t<V>())>(remove_uniform_t<U>(u) * remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() * V())
operator*(U u, V v)
{
  return remove_uniform_t<U>(u) * V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() * remove_uniform_t<V>())
operator*(U u, V v)
{
  return U(u) * remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() / remove_uniform_t<V>())>
operator/(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() / remove_uniform_t<V>())>(remove_uniform_t<U>(u) / remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() / V())
operator/(U u, V v)
{
  return remove_uniform_t<U>(u) / V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() / remove_uniform_t<V>())
operator/(U u, V v)
{
  return U(u) / remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() % remove_uniform_t<V>())>
operator%(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() % remove_uniform_t<V>())>(remove_uniform_t<U>(u) % remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() % V())
operator%(U u, V v)
{
  return remove_uniform_t<U>(u) % V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(U() % remove_uniform_t<V>())
operator%(U u, V v)
{
  return U(u) % remove_uniform_t<V>(v);
}


template <typename U, typename = _unop_uniform_constraints_t<U, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(+remove_uniform_t<U>())>
operator+(U u) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value")))
{
  return make_uniform<decltype(+remove_uniform_t<U>())>(+remove_uniform_t<U>(u));
}

template <typename U, typename = _unop_uniform_constraints_t<U, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(-remove_uniform_t<U>())>
operator-(U u) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value")))
{
  return make_uniform<decltype(-remove_uniform_t<U>())>(-remove_uniform_t<U>(u));
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() == remove_uniform_t<V>())>
operator==(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() == remove_uniform_t<V>())>(remove_uniform_t<U>(u) == remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() == V())
operator==(U u, V v)
{
  return remove_uniform_t<U>(u) == V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() == remove_uniform_t<V>())
operator==(U u, V v)
{
  return U(u) == remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() != remove_uniform_t<V>())>
operator!=(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() != remove_uniform_t<V>())>(remove_uniform_t<U>(u) != remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() != V())
operator!=(U u, V v)
{
  return remove_uniform_t<U>(u) != V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() != remove_uniform_t<V>())
operator!=(U u, V v)
{
  return U(u) != remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() < remove_uniform_t<V>())>
operator<(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() < remove_uniform_t<V>())>(remove_uniform_t<U>(u) < remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() < V())
operator<(U u, V v)
{
  return remove_uniform_t<U>(u) < V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() < remove_uniform_t<V>())
operator<(U u, V v)
{
  return U(u) < remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() > remove_uniform_t<V>())>
operator>(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() > remove_uniform_t<V>())>(remove_uniform_t<U>(u) > remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() > V())
operator>(U u, V v)
{
  return remove_uniform_t<U>(u) > V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() > remove_uniform_t<V>())
operator>(U u, V v)
{
  return U(u) > remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() <= remove_uniform_t<V>())>
operator<=(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() <= remove_uniform_t<V>())>(remove_uniform_t<U>(u) <= remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() <= V())
operator<=(U u, V v)
{
  return remove_uniform_t<U>(u) <= V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() <= remove_uniform_t<V>())
operator<=(U u, V v)
{
  return U(u) <= remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() >= remove_uniform_t<V>())>
operator>=(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() >= remove_uniform_t<V>())>(remove_uniform_t<U>(u) >= remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() >= V())
operator>=(U u, V v)
{
  return remove_uniform_t<U>(u) >= V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) decltype(U() >= remove_uniform_t<V>())
operator>=(U u, V v)
{
  return U(u) >= remove_uniform_t<V>(v);
}




template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() << remove_uniform_t<V>())>
operator<<(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() << remove_uniform_t<V>())>(remove_uniform_t<U>(u) << remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() << V())
operator<<(U u, V v)
{
  return remove_uniform_t<U>(u) << V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(U() << remove_uniform_t<V>())
operator<<(U u, V v)
{
  return U(u) << remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() >> remove_uniform_t<V>())>
operator>>(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() >> remove_uniform_t<V>())>(remove_uniform_t<U>(u) >> remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() >> V())
operator>>(U u, V v)
{
  return remove_uniform_t<U>(u) >> V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(U() >> remove_uniform_t<V>())
operator>>(U u, V v)
{
  return U(u) >> remove_uniform_t<V>(v);
}




template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, _is_convertible_to_bool>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() && remove_uniform_t<V>())>
operator&&(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() && remove_uniform_t<V>())>(remove_uniform_t<U>(u) && remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, _is_convertible_to_bool>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() && V())
operator&&(U u, V v)
{
  return remove_uniform_t<U>(u) && V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, _is_convertible_to_bool>>
constexpr inline __attribute__((__always_inline__)) decltype(U() && remove_uniform_t<V>())
operator&&(U u, V v)
{
  return U(u) && remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, _is_convertible_to_bool>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() || remove_uniform_t<V>())>
operator||(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() || remove_uniform_t<V>())>(remove_uniform_t<U>(u) || remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, _is_convertible_to_bool>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() || V())
operator||(U u, V v)
{
  return remove_uniform_t<U>(u) || V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, _is_convertible_to_bool>>
constexpr inline __attribute__((__always_inline__)) decltype(U() || remove_uniform_t<V>())
operator||(U u, V v)
{
  return U(u) || remove_uniform_t<V>(v);
}


template <typename U, typename = _unop_uniform_constraints_t<U, _is_convertible_to_bool>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(!remove_uniform_t<U>())>
operator!(U u) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value")))
{
  return make_uniform<decltype(!remove_uniform_t<U>())>(!remove_uniform_t<U>(u));
}



template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() & remove_uniform_t<V>())>
operator&(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() & remove_uniform_t<V>())>(remove_uniform_t<U>(u) & remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() & V())
operator&(U u, V v)
{
  return remove_uniform_t<U>(u) & V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(U() & remove_uniform_t<V>())
operator&(U u, V v)
{
  return U(u) & remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() | remove_uniform_t<V>())>
operator|(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() | remove_uniform_t<V>())>(remove_uniform_t<U>(u) | remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() | V())
operator|(U u, V v)
{
  return remove_uniform_t<U>(u) | V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(U() | remove_uniform_t<V>())
operator|(U u, V v)
{
  return U(u) | remove_uniform_t<V>(v);
}


template <typename U, typename V, typename = _binop_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(remove_uniform_t<U>() ^ remove_uniform_t<V>())>
operator^(U u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value"))) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  return make_uniform<decltype(remove_uniform_t<U>() ^ remove_uniform_t<V>())>(remove_uniform_t<U>(u) ^ remove_uniform_t<V>(v));
}

template <typename U, typename V, typename = _binop_uniform_l_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(remove_uniform_t<U>() ^ V())
operator^(U u, V v)
{
  return remove_uniform_t<U>(u) ^ V(v);
}

template <typename U, typename V, typename = _binop_uniform_r_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) decltype(U() ^ remove_uniform_t<V>())
operator^(U u, V v)
{
  return U(u) ^ remove_uniform_t<V>(v);
}



template <typename U, typename = _unop_uniform_constraints_t<U, is_integral>>
constexpr inline __attribute__((__always_inline__)) uniform<decltype(~remove_uniform_t<U>())>
operator~(U u)__attribute__((enable_if(_is_arg_uniform<decltype(u)>::check(u), "operand " "1" " is not a uniform value")))
{
  return make_uniform<decltype(~remove_uniform_t<U>())>(~remove_uniform_t<U>(u));
}


template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) thread U &operator++(thread U &u)
{
  u.__v = remove_uniform_t<U>(u) + remove_uniform_t<U>(1);
  return u;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) U operator++(thread U &u, int)
{
  U res = u;
  ++u;
  return res;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) thread U &operator--(thread U &u)
{
  u.__v = remove_uniform_t<U>(u) - remove_uniform_t<U>(1);
  return u;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) U operator--(thread U &u, int)
{
  U res = u;
  --u;
  return res;
}


template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) thread U &operator+=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) + remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) thread U &operator-=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) - remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) thread U &operator*=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) * remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) thread U &operator/=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) / remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) thread U &operator%=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) % remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) thread U &operator<<=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) << remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) thread U &operator>>=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) >> remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) thread U &operator&=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) & remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) thread U &operator|=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) | remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) thread U &operator^=(thread U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) ^ remove_uniform_t<V>(v);
  return u;
}


template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) device U &operator++(device U &u)
{
  u.__v = remove_uniform_t<U>(u) + remove_uniform_t<U>(1);
  return u;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) U operator++(device U &u, int)
{
  U res = u;
  ++u;
  return res;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) device U &operator--(device U &u)
{
  u.__v = remove_uniform_t<U>(u) - remove_uniform_t<U>(1);
  return u;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) U operator--(device U &u, int)
{
  U res = u;
  --u;
  return res;
}


template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) device U &operator+=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) + remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) device U &operator-=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) - remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) device U &operator*=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) * remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) device U &operator/=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) / remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) device U &operator%=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) % remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) device U &operator<<=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) << remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) device U &operator>>=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) >> remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) device U &operator&=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) & remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) device U &operator|=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) | remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) device U &operator^=(device U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) ^ remove_uniform_t<V>(v);
  return u;
}


template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator++(threadgroup U &u)
{
  u.__v = remove_uniform_t<U>(u) + remove_uniform_t<U>(1);
  return u;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) U operator++(threadgroup U &u, int)
{
  U res = u;
  ++u;
  return res;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator--(threadgroup U &u)
{
  u.__v = remove_uniform_t<U>(u) - remove_uniform_t<U>(1);
  return u;
}

template <typename U, typename = _inc_dec_uniform_constraints_t<U>>
constexpr inline __attribute__((__always_inline__)) U operator--(threadgroup U &u, int)
{
  U res = u;
  --u;
  return res;
}


template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator+=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) + remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator-=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) - remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator*=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) * remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_arithmetic>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator/=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) / remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator%=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) % remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator<<=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) << remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator>>=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) >> remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator&=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) & remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator|=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) | remove_uniform_t<V>(v);
  return u;
}

template <typename U, typename V, typename = _op_assign_uniform_constraints_t<U, V, is_integral>>
constexpr inline __attribute__((__always_inline__)) threadgroup U &operator^=(threadgroup U &u, V v) __attribute__((enable_if(_is_arg_uniform<decltype(v)>::check(v), "operand " "2" " is not a uniform value")))
{
  u.__v = remove_uniform_t<U>(u) ^ remove_uniform_t<V>(v);
  return u;
}

}
#pragma METAL internals : disable
# 24 "/Applications/Xcode_10.1.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/metal/macos/lib/clang/902.1/include/metal/metal_stdlib" 2 3
# 13 "Ethash.metal" 2




using namespace metal;


# 1 "./ethash.h" 1
# 12 "./ethash.h"
# 1 "./../Ethash.h" 1
# 47 "./../Ethash.h"
extern "C" {


    typedef union ethash_node ethash_node_t;
    typedef struct ethash_h256 ethash_h256_t;
    typedef unsigned int ethash_uint32_t;
    typedef signed int ethash_int32_t;
    typedef unsigned char ethash_uint8_t;

    typedef struct ethash_light ethash_light_t;
    typedef struct ethash_return_value ethash_return_value_t;


    typedef size_t ethash_uint64_t;
# 95 "./../Ethash.h"
    struct ethash_h256 { ethash_uint8_t b[32]; };

    struct ethash_light {

        const device void *cache;
        ethash_uint64_t cache_size;
        ethash_uint64_t block_number;
    };




    struct ethash_return_value {
        ethash_h256_t result;
        ethash_h256_t mix_hash;
        bool success;
    };

    union ethash_node {
        ethash_uint8_t bytes[(64 / 4) * 4];
        ethash_uint32_t words[(64 / 4)];
        ethash_uint64_t double_words[(64 / 4) / 2];
    };


}
# 13 "./ethash.h" 2




static_assert(sizeof(ethash_uint64_t) == 8, "Invalid uint64 size");
# 20 "Ethash.metal" 2
# 1 "./../data_sizes.h" 1
# 29 "./../data_sizes.h"
extern "C" {
# 49 "./../data_sizes.h"
    constant static const ethash_uint64_t dag_sizes[2048] = {
        1073739904U, 1082130304U, 1090514816U, 1098906752U, 1107293056U,
        1115684224U, 1124070016U, 1132461952U, 1140849536U, 1149232768U,
        1157627776U, 1166013824U, 1174404736U, 1182786944U, 1191180416U,
        1199568512U, 1207958912U, 1216345216U, 1224732032U, 1233124736U,
        1241513344U, 1249902464U, 1258290304U, 1266673792U, 1275067264U,
        1283453312U, 1291844992U, 1300234112U, 1308619904U, 1317010048U,
        1325397376U, 1333787776U, 1342176128U, 1350561664U, 1358954368U,
        1367339392U, 1375731584U, 1384118144U, 1392507008U, 1400897408U,
        1409284736U, 1417673344U, 1426062464U, 1434451072U, 1442839168U,
        1451229056U, 1459615616U, 1468006016U, 1476394112U, 1484782976U,
        1493171584U, 1501559168U, 1509948032U, 1518337664U, 1526726528U,
        1535114624U, 1543503488U, 1551892096U, 1560278656U, 1568669056U,
        1577056384U, 1585446272U, 1593831296U, 1602219392U, 1610610304U,
        1619000192U, 1627386752U, 1635773824U, 1644164224U, 1652555648U,
        1660943488U, 1669332608U, 1677721216U, 1686109312U, 1694497664U,
        1702886272U, 1711274624U, 1719661184U, 1728047744U, 1736434816U,
        1744829056U, 1753218944U, 1761606272U, 1769995904U, 1778382464U,
        1786772864U, 1795157888U, 1803550592U, 1811937664U, 1820327552U,
        1828711552U, 1837102976U, 1845488768U, 1853879936U, 1862269312U,
        1870656896U, 1879048064U, 1887431552U, 1895825024U, 1904212096U,
        1912601216U, 1920988544U, 1929379456U, 1937765504U, 1946156672U,
        1954543232U, 1962932096U, 1971321728U, 1979707264U, 1988093056U,
        1996487552U, 2004874624U, 2013262208U, 2021653888U, 2030039936U,
        2038430848U, 2046819968U, 2055208576U, 2063596672U, 2071981952U,
        2080373632U, 2088762752U, 2097149056U, 2105539712U, 2113928576U,
        2122315136U, 2130700672U, 2139092608U, 2147483264U, 2155872128U,
        2164257664U, 2172642176U, 2181035392U, 2189426048U, 2197814912U,
        2206203008U, 2214587264U, 2222979712U, 2231367808U, 2239758208U,
        2248145024U, 2256527744U, 2264922752U, 2273312128U, 2281701248U,
        2290086272U, 2298476672U, 2306867072U, 2315251072U, 2323639168U,
        2332032128U, 2340420224U, 2348808064U, 2357196416U, 2365580416U,
        2373966976U, 2382363008U, 2390748544U, 2399139968U, 2407530368U,
        2415918976U, 2424307328U, 2432695424U, 2441084288U, 2449472384U,
        2457861248U, 2466247808U, 2474637184U, 2483026816U, 2491414144U,
        2499803776U, 2508191872U, 2516582272U, 2524970368U, 2533359232U,
        2541743488U, 2550134144U, 2558525056U, 2566913408U, 2575301504U,
        2583686528U, 2592073856U, 2600467328U, 2608856192U, 2617240448U,
        2625631616U, 2634022016U, 2642407552U, 2650796416U, 2659188352U,
        2667574912U, 2675965312U, 2684352896U, 2692738688U, 2701130624U,
        2709518464U, 2717907328U, 2726293376U, 2734685056U, 2743073152U,
        2751462016U, 2759851648U, 2768232832U, 2776625536U, 2785017728U,
        2793401984U, 2801794432U, 2810182016U, 2818571648U, 2826959488U,
        2835349376U, 2843734144U, 2852121472U, 2860514432U, 2868900992U,
        2877286784U, 2885676928U, 2894069632U, 2902451584U, 2910843008U,
        2919234688U, 2927622784U, 2936011648U, 2944400768U, 2952789376U,
        2961177728U, 2969565568U, 2977951616U, 2986338944U, 2994731392U,
        3003120256U, 3011508352U, 3019895936U, 3028287104U, 3036675968U,
        3045063808U, 3053452928U, 3061837696U, 3070228352U, 3078615424U,
        3087003776U, 3095394944U, 3103782272U, 3112173184U, 3120562048U,
        3128944768U, 3137339264U, 3145725056U, 3154109312U, 3162505088U,
        3170893184U, 3179280256U, 3187669376U, 3196056704U, 3204445568U,
        3212836736U, 3221224064U, 3229612928U, 3238002304U, 3246391168U,
        3254778496U, 3263165824U, 3271556224U, 3279944576U, 3288332416U,
        3296719232U, 3305110912U, 3313500032U, 3321887104U, 3330273152U,
        3338658944U, 3347053184U, 3355440512U, 3363827072U, 3372220288U,
        3380608384U, 3388997504U, 3397384576U, 3405774208U, 3414163072U,
        3422551936U, 3430937984U, 3439328384U, 3447714176U, 3456104576U,
        3464493952U, 3472883584U, 3481268864U, 3489655168U, 3498048896U,
        3506434432U, 3514826368U, 3523213952U, 3531603584U, 3539987072U,
        3548380288U, 3556763264U, 3565157248U, 3573545344U, 3581934464U,
        3590324096U, 3598712704U, 3607098752U, 3615488384U, 3623877248U,
        3632265856U, 3640646528U, 3649043584U, 3657430144U, 3665821568U,
        3674207872U, 3682597504U, 3690984832U, 3699367808U, 3707764352U,
        3716152448U, 3724541056U, 3732925568U, 3741318016U, 3749706368U,
        3758091136U, 3766481536U, 3774872704U, 3783260032U, 3791650432U,
        3800036224U, 3808427648U, 3816815488U, 3825204608U, 3833592704U,
        3841981568U, 3850370432U, 3858755968U, 3867147904U, 3875536256U,
        3883920512U, 3892313728U, 3900702592U, 3909087872U, 3917478784U,
        3925868416U, 3934256512U, 3942645376U, 3951032192U, 3959422336U,
        3967809152U, 3976200064U, 3984588416U, 3992974976U, 4001363584U,
        4009751168U, 4018141312U, 4026530432U, 4034911616U, 4043308928U,
        4051695488U, 4060084352U, 4068472448U, 4076862848U, 4085249408U,
        4093640576U, 4102028416U, 4110413696U, 4118805632U, 4127194496U,
        4135583104U, 4143971968U, 4152360832U, 4160746112U, 4169135744U,
        4177525888U, 4185912704U, 4194303616U, 4202691968U, 4211076736U,
        4219463552U, 4227855488U, 4236246656U, 4244633728U, 4253022848U,
        4261412224U, 4269799808U, 4278184832U, 4286578048U, 4294962304U,
        4303349632U, 4311743104U, 4320130432U, 4328521088U, 4336909184U,
        4345295488U, 4353687424U, 4362073472U, 4370458496U, 4378852736U,
        4387238528U, 4395630208U, 4404019072U, 4412407424U, 4420790656U,
        4429182848U, 4437571456U, 4445962112U, 4454344064U, 4462738048U,
        4471119232U, 4479516544U, 4487904128U, 4496289664U, 4504682368U,
        4513068416U, 4521459584U, 4529846144U, 4538232704U, 4546619776U,
        4555010176U, 4563402112U, 4571790208U, 4580174464U, 4588567936U,
        4596957056U, 4605344896U, 4613734016U, 4622119808U, 4630511488U,
        4638898816U, 4647287936U, 4655675264U, 4664065664U, 4672451968U,
        4680842624U, 4689231488U, 4697620352U, 4706007424U, 4714397056U,
        4722786176U, 4731173248U, 4739562368U, 4747951744U, 4756340608U,
        4764727936U, 4773114496U, 4781504384U, 4789894784U, 4798283648U,
        4806667648U, 4815059584U, 4823449472U, 4831835776U, 4840226176U,
        4848612224U, 4857003392U, 4865391488U, 4873780096U, 4882169728U,
        4890557312U, 4898946944U, 4907333248U, 4915722368U, 4924110976U,
        4932499328U, 4940889728U, 4949276032U, 4957666432U, 4966054784U,
        4974438016U, 4982831488U, 4991221376U, 4999607168U, 5007998848U,
        5016386432U, 5024763776U, 5033164672U, 5041544576U, 5049941888U,
        5058329728U, 5066717056U, 5075107456U, 5083494272U, 5091883904U,
        5100273536U, 5108662144U, 5117048192U, 5125436032U, 5133827456U,
        5142215296U, 5150605184U, 5158993024U, 5167382144U, 5175769472U,
        5184157568U, 5192543872U, 5200936064U, 5209324928U, 5217711232U,
        5226102656U, 5234490496U, 5242877312U, 5251263872U, 5259654016U,
        5268040832U, 5276434304U, 5284819328U, 5293209728U, 5301598592U,
        5309986688U, 5318374784U, 5326764416U, 5335151488U, 5343542144U,
        5351929472U, 5360319872U, 5368706944U, 5377096576U, 5385484928U,
        5393871232U, 5402263424U, 5410650496U, 5419040384U, 5427426944U,
        5435816576U, 5444205952U, 5452594816U, 5460981376U, 5469367936U,
        5477760896U, 5486148736U, 5494536832U, 5502925952U, 5511315328U,
        5519703424U, 5528089984U, 5536481152U, 5544869504U, 5553256064U,
        5561645696U, 5570032768U, 5578423936U, 5586811264U, 5595193216U,
        5603585408U, 5611972736U, 5620366208U, 5628750464U, 5637143936U,
        5645528192U, 5653921408U, 5662310272U, 5670694784U, 5679082624U,
        5687474048U, 5695864448U, 5704251008U, 5712641408U, 5721030272U,
        5729416832U, 5737806208U, 5746194304U, 5754583936U, 5762969984U,
        5771358592U, 5779748224U, 5788137856U, 5796527488U, 5804911232U,
        5813300608U, 5821692544U, 5830082176U, 5838468992U, 5846855552U,
        5855247488U, 5863636096U, 5872024448U, 5880411008U, 5888799872U,
        5897186432U, 5905576832U, 5913966976U, 5922352768U, 5930744704U,
        5939132288U, 5947522432U, 5955911296U, 5964299392U, 5972688256U,
        5981074304U, 5989465472U, 5997851008U, 6006241408U, 6014627968U,
        6023015552U, 6031408256U, 6039796096U, 6048185216U, 6056574848U,
        6064963456U, 6073351808U, 6081736064U, 6090128768U, 6098517632U,
        6106906496U, 6115289216U, 6123680896U, 6132070016U, 6140459648U,
        6148849024U, 6157237376U, 6165624704U, 6174009728U, 6182403712U,
        6190792064U, 6199176064U, 6207569792U, 6215952256U, 6224345216U,
        6232732544U, 6241124224U, 6249510272U, 6257899136U, 6266287744U,
        6274676864U, 6283065728U, 6291454336U, 6299843456U, 6308232064U,
        6316620928U, 6325006208U, 6333395584U, 6341784704U, 6350174848U,
        6358562176U, 6366951296U, 6375337856U, 6383729536U, 6392119168U,
        6400504192U, 6408895616U, 6417283456U, 6425673344U, 6434059136U,
        6442444672U, 6450837376U, 6459223424U, 6467613056U, 6476004224U,
        6484393088U, 6492781952U, 6501170048U, 6509555072U, 6517947008U,
        6526336384U, 6534725504U, 6543112832U, 6551500672U, 6559888768U,
        6568278656U, 6576662912U, 6585055616U, 6593443456U, 6601834112U,
        6610219648U, 6618610304U, 6626999168U, 6635385472U, 6643777408U,
        6652164224U, 6660552832U, 6668941952U, 6677330048U, 6685719424U,
        6694107776U, 6702493568U, 6710882176U, 6719274112U, 6727662976U,
        6736052096U, 6744437632U, 6752825984U, 6761213824U, 6769604224U,
        6777993856U, 6786383488U, 6794770816U, 6803158144U, 6811549312U,
        6819937664U, 6828326528U, 6836706176U, 6845101696U, 6853491328U,
        6861880448U, 6870269312U, 6878655104U, 6887046272U, 6895433344U,
        6903822208U, 6912212864U, 6920596864U, 6928988288U, 6937377152U,
        6945764992U, 6954149248U, 6962544256U, 6970928768U, 6979317376U,
        6987709312U, 6996093824U, 7004487296U, 7012875392U, 7021258624U,
        7029652352U, 7038038912U, 7046427776U, 7054818944U, 7063207808U,
        7071595136U, 7079980928U, 7088372608U, 7096759424U, 7105149824U,
        7113536896U, 7121928064U, 7130315392U, 7138699648U, 7147092352U,
        7155479168U, 7163865728U, 7172249984U, 7180648064U, 7189036672U,
        7197424768U, 7205810816U, 7214196608U, 7222589824U, 7230975104U,
        7239367552U, 7247755904U, 7256145536U, 7264533376U, 7272921472U,
        7281308032U, 7289694848U, 7298088832U, 7306471808U, 7314864512U,
        7323253888U, 7331643008U, 7340029568U, 7348419712U, 7356808832U,
        7365196672U, 7373585792U, 7381973888U, 7390362752U, 7398750592U,
        7407138944U, 7415528576U, 7423915648U, 7432302208U, 7440690304U,
        7449080192U, 7457472128U, 7465860992U, 7474249088U, 7482635648U,
        7491023744U, 7499412608U, 7507803008U, 7516192384U, 7524579968U,
        7532967296U, 7541358464U, 7549745792U, 7558134656U, 7566524032U,
        7574912896U, 7583300992U, 7591690112U, 7600075136U, 7608466816U,
        7616854912U, 7625244544U, 7633629824U, 7642020992U, 7650410368U,
        7658794112U, 7667187328U, 7675574912U, 7683961984U, 7692349568U,
        7700739712U, 7709130368U, 7717519232U, 7725905536U, 7734295424U,
        7742683264U, 7751069056U, 7759457408U, 7767849088U, 7776238208U,
        7784626816U, 7793014912U, 7801405312U, 7809792128U, 7818179968U,
        7826571136U, 7834957184U, 7843347328U, 7851732352U, 7860124544U,
        7868512384U, 7876902016U, 7885287808U, 7893679744U, 7902067072U,
        7910455936U, 7918844288U, 7927230848U, 7935622784U, 7944009344U,
        7952400256U, 7960786048U, 7969176704U, 7977565312U, 7985953408U,
        7994339968U, 8002730368U, 8011119488U, 8019508096U, 8027896192U,
        8036285056U, 8044674688U, 8053062272U, 8061448832U, 8069838464U,
        8078227328U, 8086616704U, 8095006592U, 8103393664U, 8111783552U,
        8120171392U, 8128560256U, 8136949376U, 8145336704U, 8153726848U,
        8162114944U, 8170503296U, 8178891904U, 8187280768U, 8195669632U,
        8204058496U, 8212444544U, 8220834176U, 8229222272U, 8237612672U,
        8246000768U, 8254389376U, 8262775168U, 8271167104U, 8279553664U,
        8287944064U, 8296333184U, 8304715136U, 8313108352U, 8321497984U,
        8329885568U, 8338274432U, 8346663296U, 8355052928U, 8363441536U,
        8371828352U, 8380217984U, 8388606592U, 8396996224U, 8405384576U,
        8413772672U, 8422161536U, 8430549376U, 8438939008U, 8447326592U,
        8455715456U, 8464104832U, 8472492928U, 8480882048U, 8489270656U,
        8497659776U, 8506045312U, 8514434944U, 8522823808U, 8531208832U,
        8539602304U, 8547990656U, 8556378752U, 8564768384U, 8573154176U,
        8581542784U, 8589933952U, 8598322816U, 8606705024U, 8615099264U,
        8623487872U, 8631876992U, 8640264064U, 8648653952U, 8657040256U,
        8665430656U, 8673820544U, 8682209152U, 8690592128U, 8698977152U,
        8707374464U, 8715763328U, 8724151424U, 8732540032U, 8740928384U,
        8749315712U, 8757704576U, 8766089344U, 8774480768U, 8782871936U,
        8791260032U, 8799645824U, 8808034432U, 8816426368U, 8824812928U,
        8833199488U, 8841591424U, 8849976448U, 8858366336U, 8866757248U,
        8875147136U, 8883532928U, 8891923328U, 8900306816U, 8908700288U,
        8917088384U, 8925478784U, 8933867392U, 8942250368U, 8950644608U,
        8959032704U, 8967420544U, 8975809664U, 8984197504U, 8992584064U,
        9000976256U, 9009362048U, 9017752448U, 9026141312U, 9034530688U,
        9042917504U, 9051307904U, 9059694208U, 9068084864U, 9076471424U,
        9084861824U, 9093250688U, 9101638528U, 9110027648U, 9118416512U,
        9126803584U, 9135188096U, 9143581312U, 9151969664U, 9160356224U,
        9168747136U, 9177134464U, 9185525632U, 9193910144U, 9202302848U,
        9210690688U, 9219079552U, 9227465344U, 9235854464U, 9244244864U,
        9252633472U, 9261021824U, 9269411456U, 9277799296U, 9286188928U,
        9294574208U, 9302965888U, 9311351936U, 9319740032U, 9328131968U,
        9336516736U, 9344907392U, 9353296768U, 9361685888U, 9370074752U,
        9378463616U, 9386849408U, 9395239808U, 9403629184U, 9412016512U,
        9420405376U, 9428795008U, 9437181568U, 9445570688U, 9453960832U,
        9462346624U, 9470738048U, 9479121536U, 9487515008U, 9495903616U,
        9504289664U, 9512678528U, 9521067904U, 9529456256U, 9537843584U,
        9546233728U, 9554621312U, 9563011456U, 9571398784U, 9579788672U,
        9588178304U, 9596567168U, 9604954496U, 9613343104U, 9621732992U,
        9630121856U, 9638508416U, 9646898816U, 9655283584U, 9663675776U,
        9672061312U, 9680449664U, 9688840064U, 9697230464U, 9705617536U,
        9714003584U, 9722393984U, 9730772608U, 9739172224U, 9747561088U,
        9755945344U, 9764338816U, 9772726144U, 9781116544U, 9789503872U,
        9797892992U, 9806282624U, 9814670464U, 9823056512U, 9831439232U,
        9839833984U, 9848224384U, 9856613504U, 9865000576U, 9873391232U,
        9881772416U, 9890162816U, 9898556288U, 9906940544U, 9915333248U,
        9923721088U, 9932108672U, 9940496512U, 9948888448U, 9957276544U,
        9965666176U, 9974048384U, 9982441088U, 9990830464U, 9999219584U,
        10007602816U, 10015996544U, 10024385152U, 10032774016U, 10041163648U,
        10049548928U, 10057940096U, 10066329472U, 10074717824U, 10083105152U,
        10091495296U, 10099878784U, 10108272256U, 10116660608U, 10125049216U,
        10133437312U, 10141825664U, 10150213504U, 10158601088U, 10166991232U,
        10175378816U, 10183766144U, 10192157312U, 10200545408U, 10208935552U,
        10217322112U, 10225712768U, 10234099328U, 10242489472U, 10250876032U,
        10259264896U, 10267656064U, 10276042624U, 10284429184U, 10292820352U,
        10301209472U, 10309598848U, 10317987712U, 10326375296U, 10334763392U,
        10343153536U, 10351541632U, 10359930752U, 10368318592U, 10376707456U,
        10385096576U, 10393484672U, 10401867136U, 10410262144U, 10418647424U,
        10427039104U, 10435425664U, 10443810176U, 10452203648U, 10460589952U,
        10468982144U, 10477369472U, 10485759104U, 10494147712U, 10502533504U,
        10510923392U, 10519313536U, 10527702656U, 10536091264U, 10544478592U,
        10552867712U, 10561255808U, 10569642368U, 10578032768U, 10586423168U,
        10594805632U, 10603200128U, 10611588992U, 10619976064U, 10628361344U,
        10636754048U, 10645143424U, 10653531776U, 10661920384U, 10670307968U,
        10678696832U, 10687086464U, 10695475072U, 10703863168U, 10712246144U,
        10720639616U, 10729026688U, 10737414784U, 10745806208U, 10754190976U,
        10762581376U, 10770971264U, 10779356288U, 10787747456U, 10796135552U,
        10804525184U, 10812915584U, 10821301888U, 10829692288U, 10838078336U,
        10846469248U, 10854858368U, 10863247232U, 10871631488U, 10880023424U,
        10888412032U, 10896799616U, 10905188992U, 10913574016U, 10921964672U,
        10930352768U, 10938742912U, 10947132544U, 10955518592U, 10963909504U,
        10972298368U, 10980687488U, 10989074816U, 10997462912U, 11005851776U,
        11014241152U, 11022627712U, 11031017344U, 11039403904U, 11047793024U,
        11056184704U, 11064570752U, 11072960896U, 11081343872U, 11089737856U,
        11098128256U, 11106514816U, 11114904448U, 11123293568U, 11131680128U,
        11140065152U, 11148458368U, 11156845696U, 11165236864U, 11173624192U,
        11182013824U, 11190402688U, 11198790784U, 11207179136U, 11215568768U,
        11223957376U, 11232345728U, 11240734592U, 11249122688U, 11257511296U,
        11265899648U, 11274285952U, 11282675584U, 11291065472U, 11299452544U,
        11307842432U, 11316231296U, 11324616832U, 11333009024U, 11341395584U,
        11349782656U, 11358172288U, 11366560384U, 11374950016U, 11383339648U,
        11391721856U, 11400117376U, 11408504192U, 11416893568U, 11425283456U,
        11433671552U, 11442061184U, 11450444672U, 11458837888U, 11467226752U,
        11475611776U, 11484003968U, 11492392064U, 11500780672U, 11509169024U,
        11517550976U, 11525944448U, 11534335616U, 11542724224U, 11551111808U,
        11559500672U, 11567890304U, 11576277376U, 11584667008U, 11593056128U,
        11601443456U, 11609830016U, 11618221952U, 11626607488U, 11634995072U,
        11643387776U, 11651775104U, 11660161664U, 11668552576U, 11676940928U,
        11685330304U, 11693718656U, 11702106496U, 11710496128U, 11718882688U,
        11727273088U, 11735660416U, 11744050048U, 11752437376U, 11760824704U,
        11769216128U, 11777604736U, 11785991296U, 11794381952U, 11802770048U,
        11811157888U, 11819548544U, 11827932544U, 11836324736U, 11844713344U,
        11853100928U, 11861486464U, 11869879936U, 11878268032U, 11886656896U,
        11895044992U, 11903433088U, 11911822976U, 11920210816U, 11928600448U,
        11936987264U, 11945375872U, 11953761152U, 11962151296U, 11970543488U,
        11978928512U, 11987320448U, 11995708288U, 12004095104U, 12012486272U,
        12020875136U, 12029255552U, 12037652096U, 12046039168U, 12054429568U,
        12062813824U, 12071206528U, 12079594624U, 12087983744U, 12096371072U,
        12104759936U, 12113147264U, 12121534592U, 12129924992U, 12138314624U,
        12146703232U, 12155091584U, 12163481216U, 12171864704U, 12180255872U,
        12188643968U, 12197034112U, 12205424512U, 12213811328U, 12222199424U,
        12230590336U, 12238977664U, 12247365248U, 12255755392U, 12264143488U,
        12272531584U, 12280920448U, 12289309568U, 12297694592U, 12306086528U,
        12314475392U, 12322865024U, 12331253632U, 12339640448U, 12348029312U,
        12356418944U, 12364805248U, 12373196672U, 12381580928U, 12389969024U,
        12398357632U, 12406750592U, 12415138432U, 12423527552U, 12431916416U,
        12440304512U, 12448692352U, 12457081216U, 12465467776U, 12473859968U,
        12482245504U, 12490636672U, 12499025536U, 12507411584U, 12515801728U,
        12524190592U, 12532577152U, 12540966272U, 12549354368U, 12557743232U,
        12566129536U, 12574523264U, 12582911872U, 12591299456U, 12599688064U,
        12608074624U, 12616463488U, 12624845696U, 12633239936U, 12641631616U,
        12650019968U, 12658407296U, 12666795136U, 12675183232U, 12683574656U,
        12691960192U, 12700350592U, 12708740224U, 12717128576U, 12725515904U,
        12733906816U, 12742295168U, 12750680192U, 12759071872U, 12767460736U,
        12775848832U, 12784236928U, 12792626816U, 12801014656U, 12809404288U,
        12817789312U, 12826181504U, 12834568832U, 12842954624U, 12851345792U,
        12859732352U, 12868122496U, 12876512128U, 12884901248U, 12893289088U,
        12901672832U, 12910067584U, 12918455168U, 12926842496U, 12935232896U,
        12943620736U, 12952009856U, 12960396928U, 12968786816U, 12977176192U,
        12985563776U, 12993951104U, 13002341504U, 13010730368U, 13019115392U,
        13027506304U, 13035895168U, 13044272512U, 13052673152U, 13061062528U,
        13069446272U, 13077838976U, 13086227072U, 13094613632U, 13103000192U,
        13111393664U, 13119782528U, 13128157568U, 13136559232U, 13144945024U,
        13153329536U, 13161724288U, 13170111872U, 13178502784U, 13186884736U,
        13195279744U, 13203667072U, 13212057472U, 13220445824U, 13228832128U,
        13237221248U, 13245610624U, 13254000512U, 13262388352U, 13270777472U,
        13279166336U, 13287553408U, 13295943296U, 13304331904U, 13312719488U,
        13321108096U, 13329494656U, 13337885824U, 13346274944U, 13354663808U,
        13363051136U, 13371439232U, 13379825024U, 13388210816U, 13396605056U,
        13404995456U, 13413380224U, 13421771392U, 13430159744U, 13438546048U,
        13446937216U, 13455326848U, 13463708288U, 13472103808U, 13480492672U,
        13488875648U, 13497269888U, 13505657728U, 13514045312U, 13522435712U,
        13530824576U, 13539210112U, 13547599232U, 13555989376U, 13564379008U,
        13572766336U, 13581154432U, 13589544832U, 13597932928U, 13606320512U,
        13614710656U, 13623097472U, 13631477632U, 13639874944U, 13648264064U,
        13656652928U, 13665041792U, 13673430656U, 13681818496U, 13690207616U,
        13698595712U, 13706982272U, 13715373184U, 13723762048U, 13732150144U,
        13740536704U, 13748926592U, 13757316224U, 13765700992U, 13774090112U,
        13782477952U, 13790869376U, 13799259008U, 13807647872U, 13816036736U,
        13824425344U, 13832814208U, 13841202304U, 13849591424U, 13857978752U,
        13866368896U, 13874754688U, 13883145344U, 13891533184U, 13899919232U,
        13908311168U, 13916692096U, 13925085056U, 13933473152U, 13941866368U,
        13950253696U, 13958643584U, 13967032192U, 13975417216U, 13983807616U,
        13992197504U, 14000582272U, 14008973696U, 14017363072U, 14025752192U,
        14034137984U, 14042528384U, 14050918016U, 14059301504U, 14067691648U,
        14076083584U, 14084470144U, 14092852352U, 14101249664U, 14109635968U,
        14118024832U, 14126407552U, 14134804352U, 14143188608U, 14151577984U,
        14159968384U, 14168357248U, 14176741504U, 14185127296U, 14193521024U,
        14201911424U, 14210301824U, 14218685056U, 14227067264U, 14235467392U,
        14243855488U, 14252243072U, 14260630144U, 14269021568U, 14277409408U,
        14285799296U, 14294187904U, 14302571392U, 14310961792U, 14319353728U,
        14327738752U, 14336130944U, 14344518784U, 14352906368U, 14361296512U,
        14369685376U, 14378071424U, 14386462592U, 14394848128U, 14403230848U,
        14411627392U, 14420013952U, 14428402304U, 14436793472U, 14445181568U,
        14453569664U, 14461959808U, 14470347904U, 14478737024U, 14487122816U,
        14495511424U, 14503901824U, 14512291712U, 14520677504U, 14529064832U,
        14537456768U, 14545845632U, 14554234496U, 14562618496U, 14571011456U,
        14579398784U, 14587789184U, 14596172672U, 14604564608U, 14612953984U,
        14621341312U, 14629724288U, 14638120832U, 14646503296U, 14654897536U,
        14663284864U, 14671675264U, 14680061056U, 14688447616U, 14696835968U,
        14705228416U, 14713616768U, 14722003328U, 14730392192U, 14738784128U,
        14747172736U, 14755561088U, 14763947648U, 14772336512U, 14780725376U,
        14789110144U, 14797499776U, 14805892736U, 14814276992U, 14822670208U,
        14831056256U, 14839444352U, 14847836032U, 14856222848U, 14864612992U,
        14872997504U, 14881388672U, 14889775744U, 14898165376U, 14906553472U,
        14914944896U, 14923329664U, 14931721856U, 14940109696U, 14948497024U,
        14956887424U, 14965276544U, 14973663616U, 14982053248U, 14990439808U,
        14998830976U, 15007216768U, 15015605888U, 15023995264U, 15032385152U,
        15040768384U, 15049154944U, 15057549184U, 15065939072U, 15074328448U,
        15082715008U, 15091104128U, 15099493504U, 15107879296U, 15116269184U,
        15124659584U, 15133042304U, 15141431936U, 15149824384U, 15158214272U,
        15166602368U, 15174991232U, 15183378304U, 15191760512U, 15200154496U,
        15208542592U, 15216931712U, 15225323392U, 15233708416U, 15242098048U,
        15250489216U, 15258875264U, 15267265408U, 15275654528U, 15284043136U,
        15292431488U, 15300819584U, 15309208192U, 15317596544U, 15325986176U,
        15334374784U, 15342763648U, 15351151744U, 15359540608U, 15367929728U,
        15376318336U, 15384706432U, 15393092992U, 15401481856U, 15409869952U,
        15418258816U, 15426649984U, 15435037568U, 15443425664U, 15451815296U,
        15460203392U, 15468589184U, 15476979328U, 15485369216U, 15493755776U,
        15502146944U, 15510534272U, 15518924416U, 15527311232U, 15535699072U,
        15544089472U, 15552478336U, 15560866688U, 15569254528U, 15577642624U,
        15586031488U, 15594419072U, 15602809472U, 15611199104U, 15619586432U,
        15627975296U, 15636364928U, 15644753792U, 15653141888U, 15661529216U,
        15669918848U, 15678305152U, 15686696576U, 15695083136U, 15703474048U,
        15711861632U, 15720251264U, 15728636288U, 15737027456U, 15745417088U,
        15753804928U, 15762194048U, 15770582656U, 15778971008U, 15787358336U,
        15795747712U, 15804132224U, 15812523392U, 15820909696U, 15829300096U,
        15837691264U, 15846071936U, 15854466944U, 15862855808U, 15871244672U,
        15879634816U, 15888020608U, 15896409728U, 15904799104U, 15913185152U,
        15921577088U, 15929966464U, 15938354816U, 15946743424U, 15955129472U,
        15963519872U, 15971907968U, 15980296064U, 15988684928U, 15997073024U,
        16005460864U, 16013851264U, 16022241152U, 16030629248U, 16039012736U,
        16047406976U, 16055794816U, 16064181376U, 16072571264U, 16080957824U,
        16089346688U, 16097737856U, 16106125184U, 16114514816U, 16122904192U,
        16131292544U, 16139678848U, 16148066944U, 16156453504U, 16164839552U,
        16173236096U, 16181623424U, 16190012032U, 16198401152U, 16206790528U,
        16215177344U, 16223567744U, 16231956352U, 16240344704U, 16248731008U,
        16257117824U, 16265504384U, 16273898624U, 16282281856U, 16290668672U,
        16299064192U, 16307449216U, 16315842176U, 16324230016U, 16332613504U,
        16341006464U, 16349394304U, 16357783168U, 16366172288U, 16374561664U,
        16382951296U, 16391337856U, 16399726208U, 16408116352U, 16416505472U,
        16424892032U, 16433282176U, 16441668224U, 16450058624U, 16458448768U,
        16466836864U, 16475224448U, 16483613056U, 16492001408U, 16500391808U,
        16508779648U, 16517166976U, 16525555328U, 16533944192U, 16542330752U,
        16550719616U, 16559110528U, 16567497088U, 16575888512U, 16584274816U,
        16592665472U, 16601051008U, 16609442944U, 16617832064U, 16626218624U,
        16634607488U, 16642996096U, 16651385728U, 16659773824U, 16668163712U,
        16676552576U, 16684938112U, 16693328768U, 16701718144U, 16710095488U,
        16718492288U, 16726883968U, 16735272832U, 16743661184U, 16752049792U,
        16760436608U, 16768827008U, 16777214336U, 16785599104U, 16793992832U,
        16802381696U, 16810768768U, 16819151744U, 16827542656U, 16835934848U,
        16844323712U, 16852711552U, 16861101952U, 16869489536U, 16877876864U,
        16886265728U, 16894653056U, 16903044736U, 16911431296U, 16919821696U,
        16928207488U, 16936592768U, 16944987776U, 16953375616U, 16961763968U,
        16970152832U, 16978540928U, 16986929536U, 16995319168U, 17003704448U,
        17012096896U, 17020481152U, 17028870784U, 17037262208U, 17045649536U,
        17054039936U, 17062426496U, 17070814336U, 17079205504U, 17087592064U,
        17095978112U, 17104369024U, 17112759424U, 17121147776U, 17129536384U,
        17137926016U, 17146314368U, 17154700928U, 17163089792U, 17171480192U,
        17179864192U, 17188256896U, 17196644992U, 17205033856U, 17213423488U,
        17221811072U, 17230198912U, 17238588032U, 17246976896U, 17255360384U,
        17263754624U, 17272143232U, 17280530048U, 17288918912U, 17297309312U,
        17305696384U, 17314085504U, 17322475136U, 17330863744U, 17339252096U,
        17347640192U, 17356026496U, 17364413824U, 17372796544U, 17381190016U,
        17389583488U, 17397972608U, 17406360704U, 17414748544U, 17423135872U,
        17431527296U, 17439915904U, 17448303232U, 17456691584U, 17465081728U,
        17473468288U, 17481857408U, 17490247552U, 17498635904U, 17507022464U,
        17515409024U, 17523801728U, 17532189824U, 17540577664U, 17548966016U,
        17557353344U, 17565741184U, 17574131584U, 17582519168U, 17590907008U,
        17599296128U, 17607687808U, 17616076672U, 17624455808U, 17632852352U,
        17641238656U, 17649630848U, 17658018944U, 17666403968U, 17674794112U,
        17683178368U, 17691573376U, 17699962496U, 17708350592U, 17716739968U,
        17725126528U, 17733517184U, 17741898112U, 17750293888U, 17758673024U,
        17767070336U, 17775458432U, 17783848832U, 17792236928U, 17800625536U,
        17809012352U, 17817402752U, 17825785984U, 17834178944U, 17842563968U,
        17850955648U, 17859344512U, 17867732864U, 17876119424U, 17884511872U,
        17892900224U, 17901287296U, 17909677696U, 17918058112U, 17926451072U,
        17934843776U, 17943230848U, 17951609216U, 17960008576U, 17968397696U,
        17976784256U, 17985175424U, 17993564032U, 18001952128U, 18010339712U,
        18018728576U, 18027116672U, 18035503232U, 18043894144U, 18052283264U,
        18060672128U, 18069056384U, 18077449856U, 18085837184U, 18094225792U,
        18102613376U, 18111004544U, 18119388544U, 18127781248U, 18136170368U,
        18144558976U, 18152947328U, 18161336192U, 18169724288U, 18178108544U,
        18186498944U, 18194886784U, 18203275648U, 18211666048U, 18220048768U,
        18228444544U, 18236833408U, 18245220736U
    };
# 478 "./../data_sizes.h"
    constant static const ethash_uint64_t cache_sizes[2048] = {
        16776896U, 16907456U, 17039296U, 17170112U, 17301056U, 17432512U, 17563072U,
        17693888U, 17824192U, 17955904U, 18087488U, 18218176U, 18349504U, 18481088U,
        18611392U, 18742336U, 18874304U, 19004224U, 19135936U, 19267264U, 19398208U,
        19529408U, 19660096U, 19791424U, 19922752U, 20053952U, 20184896U, 20315968U,
        20446912U, 20576576U, 20709184U, 20840384U, 20971072U, 21102272U, 21233216U,
        21364544U, 21494848U, 21626816U, 21757376U, 21887552U, 22019392U, 22151104U,
        22281536U, 22412224U, 22543936U, 22675264U, 22806464U, 22935872U, 23068096U,
        23198272U, 23330752U, 23459008U, 23592512U, 23723968U, 23854912U, 23986112U,
        24116672U, 24247616U, 24378688U, 24509504U, 24640832U, 24772544U, 24903488U,
        25034432U, 25165376U, 25296704U, 25427392U, 25558592U, 25690048U, 25820096U,
        25951936U, 26081728U, 26214208U, 26345024U, 26476096U, 26606656U, 26737472U,
        26869184U, 26998208U, 27131584U, 27262528U, 27393728U, 27523904U, 27655744U,
        27786688U, 27917888U, 28049344U, 28179904U, 28311488U, 28441792U, 28573504U,
        28700864U, 28835648U, 28966208U, 29096768U, 29228608U, 29359808U, 29490752U,
        29621824U, 29752256U, 29882816U, 30014912U, 30144448U, 30273728U, 30406976U,
        30538432U, 30670784U, 30799936U, 30932672U, 31063744U, 31195072U, 31325248U,
        31456192U, 31588288U, 31719232U, 31850432U, 31981504U, 32110784U, 32243392U,
        32372672U, 32505664U, 32636608U, 32767808U, 32897344U, 33029824U, 33160768U,
        33289664U, 33423296U, 33554368U, 33683648U, 33816512U, 33947456U, 34076992U,
        34208704U, 34340032U, 34471744U, 34600256U, 34734016U, 34864576U, 34993984U,
        35127104U, 35258176U, 35386688U, 35518528U, 35650624U, 35782336U, 35910976U,
        36044608U, 36175808U, 36305728U, 36436672U, 36568384U, 36699968U, 36830656U,
        36961984U, 37093312U, 37223488U, 37355072U, 37486528U, 37617472U, 37747904U,
        37879232U, 38009792U, 38141888U, 38272448U, 38403392U, 38535104U, 38660672U,
        38795584U, 38925632U, 39059264U, 39190336U, 39320768U, 39452096U, 39581632U,
        39713984U, 39844928U, 39974848U, 40107968U, 40238144U, 40367168U, 40500032U,
        40631744U, 40762816U, 40894144U, 41023552U, 41155904U, 41286208U, 41418304U,
        41547712U, 41680448U, 41811904U, 41942848U, 42073792U, 42204992U, 42334912U,
        42467008U, 42597824U, 42729152U, 42860096U, 42991552U, 43122368U, 43253696U,
        43382848U, 43515712U, 43646912U, 43777088U, 43907648U, 44039104U, 44170432U,
        44302144U, 44433344U, 44564288U, 44694976U, 44825152U, 44956864U, 45088448U,
        45219008U, 45350464U, 45481024U, 45612608U, 45744064U, 45874496U, 46006208U,
        46136768U, 46267712U, 46399424U, 46529344U, 46660672U, 46791488U, 46923328U,
        47053504U, 47185856U, 47316928U, 47447872U, 47579072U, 47710144U, 47839936U,
        47971648U, 48103232U, 48234176U, 48365248U, 48496192U, 48627136U, 48757312U,
        48889664U, 49020736U, 49149248U, 49283008U, 49413824U, 49545152U, 49675712U,
        49807168U, 49938368U, 50069056U, 50200256U, 50331584U, 50462656U, 50593472U,
        50724032U, 50853952U, 50986048U, 51117632U, 51248576U, 51379904U, 51510848U,
        51641792U, 51773248U, 51903296U, 52035136U, 52164032U, 52297664U, 52427968U,
        52557376U, 52690112U, 52821952U, 52952896U, 53081536U, 53213504U, 53344576U,
        53475776U, 53608384U, 53738816U, 53870528U, 54000832U, 54131776U, 54263744U,
        54394688U, 54525248U, 54655936U, 54787904U, 54918592U, 55049152U, 55181248U,
        55312064U, 55442752U, 55574336U, 55705024U, 55836224U, 55967168U, 56097856U,
        56228672U, 56358592U, 56490176U, 56621888U, 56753728U, 56884928U, 57015488U,
        57146816U, 57278272U, 57409216U, 57540416U, 57671104U, 57802432U, 57933632U,
        58064576U, 58195264U, 58326976U, 58457408U, 58588864U, 58720192U, 58849984U,
        58981696U, 59113024U, 59243456U, 59375552U, 59506624U, 59637568U, 59768512U,
        59897792U, 60030016U, 60161984U, 60293056U, 60423872U, 60554432U, 60683968U,
        60817216U, 60948032U, 61079488U, 61209664U, 61341376U, 61471936U, 61602752U,
        61733696U, 61865792U, 61996736U, 62127808U, 62259136U, 62389568U, 62520512U,
        62651584U, 62781632U, 62910784U, 63045056U, 63176128U, 63307072U, 63438656U,
        63569216U, 63700928U, 63831616U, 63960896U, 64093888U, 64225088U, 64355392U,
        64486976U, 64617664U, 64748608U, 64879424U, 65009216U, 65142464U, 65273792U,
        65402816U, 65535424U, 65666752U, 65797696U, 65927744U, 66060224U, 66191296U,
        66321344U, 66453056U, 66584384U, 66715328U, 66846656U, 66977728U, 67108672U,
        67239104U, 67370432U, 67501888U, 67631296U, 67763776U, 67895104U, 68026304U,
        68157248U, 68287936U, 68419264U, 68548288U, 68681408U, 68811968U, 68942912U,
        69074624U, 69205568U, 69337024U, 69467584U, 69599168U, 69729472U, 69861184U,
        69989824U, 70122944U, 70253888U, 70385344U, 70515904U, 70647232U, 70778816U,
        70907968U, 71040832U, 71171648U, 71303104U, 71432512U, 71564992U, 71695168U,
        71826368U, 71958464U, 72089536U, 72219712U, 72350144U, 72482624U, 72613568U,
        72744512U, 72875584U, 73006144U, 73138112U, 73268672U, 73400128U, 73530944U,
        73662272U, 73793344U, 73924544U, 74055104U, 74185792U, 74316992U, 74448832U,
        74579392U, 74710976U, 74841664U, 74972864U, 75102784U, 75233344U, 75364544U,
        75497024U, 75627584U, 75759296U, 75890624U, 76021696U, 76152256U, 76283072U,
        76414144U, 76545856U, 76676672U, 76806976U, 76937792U, 77070016U, 77200832U,
        77331392U, 77462464U, 77593664U, 77725376U, 77856448U, 77987776U, 78118336U,
        78249664U, 78380992U, 78511424U, 78642496U, 78773056U, 78905152U, 79033664U,
        79166656U, 79297472U, 79429568U, 79560512U, 79690816U, 79822784U, 79953472U,
        80084672U, 80214208U, 80346944U, 80477632U, 80608576U, 80740288U, 80870848U,
        81002048U, 81133504U, 81264448U, 81395648U, 81525952U, 81657536U, 81786304U,
        81919808U, 82050112U, 82181312U, 82311616U, 82443968U, 82573376U, 82705984U,
        82835776U, 82967744U, 83096768U, 83230528U, 83359552U, 83491264U, 83622464U,
        83753536U, 83886016U, 84015296U, 84147776U, 84277184U, 84409792U, 84540608U,
        84672064U, 84803008U, 84934336U, 85065152U, 85193792U, 85326784U, 85458496U,
        85589312U, 85721024U, 85851968U, 85982656U, 86112448U, 86244416U, 86370112U,
        86506688U, 86637632U, 86769344U, 86900672U, 87031744U, 87162304U, 87293632U,
        87424576U, 87555392U, 87687104U, 87816896U, 87947968U, 88079168U, 88211264U,
        88341824U, 88473152U, 88603712U, 88735424U, 88862912U, 88996672U, 89128384U,
        89259712U, 89390272U, 89521984U, 89652544U, 89783872U, 89914816U, 90045376U,
        90177088U, 90307904U, 90438848U, 90569152U, 90700096U, 90832832U, 90963776U,
        91093696U, 91223744U, 91356992U, 91486784U, 91618496U, 91749824U, 91880384U,
        92012224U, 92143552U, 92273344U, 92405696U, 92536768U, 92666432U, 92798912U,
        92926016U, 93060544U, 93192128U, 93322816U, 93453632U, 93583936U, 93715136U,
        93845056U, 93977792U, 94109504U, 94240448U, 94371776U, 94501184U, 94632896U,
        94764224U, 94895552U, 95023424U, 95158208U, 95287744U, 95420224U, 95550016U,
        95681216U, 95811904U, 95943872U, 96075328U, 96203584U, 96337856U, 96468544U,
        96599744U, 96731072U, 96860992U, 96992576U, 97124288U, 97254848U, 97385536U,
        97517248U, 97647808U, 97779392U, 97910464U, 98041408U, 98172608U, 98303168U,
        98434496U, 98565568U, 98696768U, 98827328U, 98958784U, 99089728U, 99220928U,
        99352384U, 99482816U, 99614272U, 99745472U, 99876416U, 100007104U,
        100138048U, 100267072U, 100401088U, 100529984U, 100662592U, 100791872U,
        100925248U, 101056064U, 101187392U, 101317952U, 101449408U, 101580608U,
        101711296U, 101841728U, 101973824U, 102104896U, 102235712U, 102366016U,
        102498112U, 102628672U, 102760384U, 102890432U, 103021888U, 103153472U,
        103284032U, 103415744U, 103545152U, 103677248U, 103808576U, 103939648U,
        104070976U, 104201792U, 104332736U, 104462528U, 104594752U, 104725952U,
        104854592U, 104988608U, 105118912U, 105247808U, 105381184U, 105511232U,
        105643072U, 105774784U, 105903296U, 106037056U, 106167872U, 106298944U,
        106429504U, 106561472U, 106691392U, 106822592U, 106954304U, 107085376U,
        107216576U, 107346368U, 107478464U, 107609792U, 107739712U, 107872192U,
        108003136U, 108131392U, 108265408U, 108396224U, 108527168U, 108657344U,
        108789568U, 108920384U, 109049792U, 109182272U, 109312576U, 109444928U,
        109572928U, 109706944U, 109837888U, 109969088U, 110099648U, 110230976U,
        110362432U, 110492992U, 110624704U, 110755264U, 110886208U, 111017408U,
        111148864U, 111279296U, 111410752U, 111541952U, 111673024U, 111803456U,
        111933632U, 112066496U, 112196416U, 112328512U, 112457792U, 112590784U,
        112715968U, 112852672U, 112983616U, 113114944U, 113244224U, 113376448U,
        113505472U, 113639104U, 113770304U, 113901376U, 114031552U, 114163264U,
        114294592U, 114425536U, 114556864U, 114687424U, 114818624U, 114948544U,
        115080512U, 115212224U, 115343296U, 115473472U, 115605184U, 115736128U,
        115867072U, 115997248U, 116128576U, 116260288U, 116391488U, 116522944U,
        116652992U, 116784704U, 116915648U, 117046208U, 117178304U, 117308608U,
        117440192U, 117569728U, 117701824U, 117833024U, 117964096U, 118094656U,
        118225984U, 118357312U, 118489024U, 118617536U, 118749632U, 118882112U,
        119012416U, 119144384U, 119275328U, 119406016U, 119537344U, 119668672U,
        119798464U, 119928896U, 120061376U, 120192832U, 120321728U, 120454336U,
        120584512U, 120716608U, 120848192U, 120979136U, 121109056U, 121241408U,
        121372352U, 121502912U, 121634752U, 121764416U, 121895744U, 122027072U,
        122157632U, 122289088U, 122421184U, 122550592U, 122682944U, 122813888U,
        122945344U, 123075776U, 123207488U, 123338048U, 123468736U, 123600704U,
        123731264U, 123861952U, 123993664U, 124124608U, 124256192U, 124386368U,
        124518208U, 124649024U, 124778048U, 124911296U, 125041088U, 125173696U,
        125303744U, 125432896U, 125566912U, 125696576U, 125829056U, 125958592U,
        126090304U, 126221248U, 126352832U, 126483776U, 126615232U, 126746432U,
        126876608U, 127008704U, 127139392U, 127270336U, 127401152U, 127532224U,
        127663552U, 127794752U, 127925696U, 128055232U, 128188096U, 128319424U,
        128449856U, 128581312U, 128712256U, 128843584U, 128973632U, 129103808U,
        129236288U, 129365696U, 129498944U, 129629888U, 129760832U, 129892288U,
        130023104U, 130154048U, 130283968U, 130416448U, 130547008U, 130678336U,
        130807616U, 130939456U, 131071552U, 131202112U, 131331776U, 131464384U,
        131594048U, 131727296U, 131858368U, 131987392U, 132120256U, 132250816U,
        132382528U, 132513728U, 132644672U, 132774976U, 132905792U, 133038016U,
        133168832U, 133299392U, 133429312U, 133562048U, 133692992U, 133823296U,
        133954624U, 134086336U, 134217152U, 134348608U, 134479808U, 134607296U,
        134741056U, 134872384U, 135002944U, 135134144U, 135265472U, 135396544U,
        135527872U, 135659072U, 135787712U, 135921472U, 136052416U, 136182848U,
        136313792U, 136444864U, 136576448U, 136707904U, 136837952U, 136970048U,
        137099584U, 137232064U, 137363392U, 137494208U, 137625536U, 137755712U,
        137887424U, 138018368U, 138149824U, 138280256U, 138411584U, 138539584U,
        138672832U, 138804928U, 138936128U, 139066688U, 139196864U, 139328704U,
        139460032U, 139590208U, 139721024U, 139852864U, 139984576U, 140115776U,
        140245696U, 140376512U, 140508352U, 140640064U, 140769856U, 140902336U,
        141032768U, 141162688U, 141294016U, 141426496U, 141556544U, 141687488U,
        141819584U, 141949888U, 142080448U, 142212544U, 142342336U, 142474432U,
        142606144U, 142736192U, 142868288U, 142997824U, 143129408U, 143258944U,
        143392448U, 143523136U, 143653696U, 143785024U, 143916992U, 144045632U,
        144177856U, 144309184U, 144440768U, 144570688U, 144701888U, 144832448U,
        144965056U, 145096384U, 145227584U, 145358656U, 145489856U, 145620928U,
        145751488U, 145883072U, 146011456U, 146144704U, 146275264U, 146407232U,
        146538176U, 146668736U, 146800448U, 146931392U, 147062336U, 147193664U,
        147324224U, 147455936U, 147586624U, 147717056U, 147848768U, 147979456U,
        148110784U, 148242368U, 148373312U, 148503232U, 148635584U, 148766144U,
        148897088U, 149028416U, 149159488U, 149290688U, 149420224U, 149551552U,
        149683136U, 149814976U, 149943616U, 150076352U, 150208064U, 150338624U,
        150470464U, 150600256U, 150732224U, 150862784U, 150993088U, 151125952U,
        151254976U, 151388096U, 151519168U, 151649728U, 151778752U, 151911104U,
        152042944U, 152174144U, 152304704U, 152435648U, 152567488U, 152698816U,
        152828992U, 152960576U, 153091648U, 153222976U, 153353792U, 153484096U,
        153616192U, 153747008U, 153878336U, 154008256U, 154139968U, 154270912U,
        154402624U, 154533824U, 154663616U, 154795712U, 154926272U, 155057984U,
        155188928U, 155319872U, 155450816U, 155580608U, 155712064U, 155843392U,
        155971136U, 156106688U, 156237376U, 156367424U, 156499264U, 156630976U,
        156761536U, 156892352U, 157024064U, 157155008U, 157284416U, 157415872U,
        157545536U, 157677248U, 157810496U, 157938112U, 158071744U, 158203328U,
        158334656U, 158464832U, 158596288U, 158727616U, 158858048U, 158988992U,
        159121216U, 159252416U, 159381568U, 159513152U, 159645632U, 159776192U,
        159906496U, 160038464U, 160169536U, 160300352U, 160430656U, 160563008U,
        160693952U, 160822208U, 160956352U, 161086784U, 161217344U, 161349184U,
        161480512U, 161611456U, 161742272U, 161873216U, 162002752U, 162135872U,
        162266432U, 162397888U, 162529216U, 162660032U, 162790976U, 162922048U,
        163052096U, 163184576U, 163314752U, 163446592U, 163577408U, 163707968U,
        163839296U, 163969984U, 164100928U, 164233024U, 164364224U, 164494912U,
        164625856U, 164756672U, 164887616U, 165019072U, 165150016U, 165280064U,
        165412672U, 165543104U, 165674944U, 165805888U, 165936832U, 166067648U,
        166198336U, 166330048U, 166461248U, 166591552U, 166722496U, 166854208U,
        166985408U, 167116736U, 167246656U, 167378368U, 167508416U, 167641024U,
        167771584U, 167903168U, 168034112U, 168164032U, 168295744U, 168427456U,
        168557632U, 168688448U, 168819136U, 168951616U, 169082176U, 169213504U,
        169344832U, 169475648U, 169605952U, 169738048U, 169866304U, 169999552U,
        170131264U, 170262464U, 170393536U, 170524352U, 170655424U, 170782016U,
        170917696U, 171048896U, 171179072U, 171310784U, 171439936U, 171573184U,
        171702976U, 171835072U, 171966272U, 172097216U, 172228288U, 172359232U,
        172489664U, 172621376U, 172747712U, 172883264U, 173014208U, 173144512U,
        173275072U, 173407424U, 173539136U, 173669696U, 173800768U, 173931712U,
        174063424U, 174193472U, 174325696U, 174455744U, 174586816U, 174718912U,
        174849728U, 174977728U, 175109696U, 175242688U, 175374272U, 175504832U,
        175636288U, 175765696U, 175898432U, 176028992U, 176159936U, 176291264U,
        176422592U, 176552512U, 176684864U, 176815424U, 176946496U, 177076544U,
        177209152U, 177340096U, 177470528U, 177600704U, 177731648U, 177864256U,
        177994816U, 178126528U, 178257472U, 178387648U, 178518464U, 178650176U,
        178781888U, 178912064U, 179044288U, 179174848U, 179305024U, 179436736U,
        179568448U, 179698496U, 179830208U, 179960512U, 180092608U, 180223808U,
        180354752U, 180485696U, 180617152U, 180748096U, 180877504U, 181009984U,
        181139264U, 181272512U, 181402688U, 181532608U, 181663168U, 181795136U,
        181926592U, 182057536U, 182190016U, 182320192U, 182451904U, 182582336U,
        182713792U, 182843072U, 182976064U, 183107264U, 183237056U, 183368384U,
        183494848U, 183631424U, 183762752U, 183893824U, 184024768U, 184154816U,
        184286656U, 184417984U, 184548928U, 184680128U, 184810816U, 184941248U,
        185072704U, 185203904U, 185335616U, 185465408U, 185596352U, 185727296U,
        185859904U, 185989696U, 186121664U, 186252992U, 186383552U, 186514112U,
        186645952U, 186777152U, 186907328U, 187037504U, 187170112U, 187301824U,
        187429184U, 187562048U, 187693504U, 187825472U, 187957184U, 188087104U,
        188218304U, 188349376U, 188481344U, 188609728U, 188743616U, 188874304U,
        189005248U, 189136448U, 189265088U, 189396544U, 189528128U, 189660992U,
        189791936U, 189923264U, 190054208U, 190182848U, 190315072U, 190447424U,
        190577984U, 190709312U, 190840768U, 190971328U, 191102656U, 191233472U,
        191364032U, 191495872U, 191626816U, 191758016U, 191888192U, 192020288U,
        192148928U, 192282176U, 192413504U, 192542528U, 192674752U, 192805952U,
        192937792U, 193068608U, 193198912U, 193330496U, 193462208U, 193592384U,
        193723456U, 193854272U, 193985984U, 194116672U, 194247232U, 194379712U,
        194508352U, 194641856U, 194772544U, 194900672U, 195035072U, 195166016U,
        195296704U, 195428032U, 195558592U, 195690304U, 195818176U, 195952576U,
        196083392U, 196214336U, 196345792U, 196476736U, 196607552U, 196739008U,
        196869952U, 197000768U, 197130688U, 197262784U, 197394368U, 197523904U,
        197656384U, 197787584U, 197916608U, 198049472U, 198180544U, 198310208U,
        198442432U, 198573632U, 198705088U, 198834368U, 198967232U, 199097792U,
        199228352U, 199360192U, 199491392U, 199621696U, 199751744U, 199883968U,
        200014016U, 200146624U, 200276672U, 200408128U, 200540096U, 200671168U,
        200801984U, 200933312U, 201062464U, 201194944U, 201326144U, 201457472U,
        201588544U, 201719744U, 201850816U, 201981632U, 202111552U, 202244032U,
        202374464U, 202505152U, 202636352U, 202767808U, 202898368U, 203030336U,
        203159872U, 203292608U, 203423296U, 203553472U, 203685824U, 203816896U,
        203947712U, 204078272U, 204208192U, 204341056U, 204472256U, 204603328U,
        204733888U, 204864448U, 204996544U, 205125568U, 205258304U, 205388864U,
        205517632U, 205650112U, 205782208U, 205913536U, 206044736U, 206176192U,
        206307008U, 206434496U, 206569024U, 206700224U, 206831168U, 206961856U,
        207093056U, 207223616U, 207355328U, 207486784U, 207616832U, 207749056U,
        207879104U, 208010048U, 208141888U, 208273216U, 208404032U, 208534336U,
        208666048U, 208796864U, 208927424U, 209059264U, 209189824U, 209321792U,
        209451584U, 209582656U, 209715136U, 209845568U, 209976896U, 210106432U,
        210239296U, 210370112U, 210501568U, 210630976U, 210763712U, 210894272U,
        211024832U, 211156672U, 211287616U, 211418176U, 211549376U, 211679296U,
        211812032U, 211942592U, 212074432U, 212204864U, 212334016U, 212467648U,
        212597824U, 212727616U, 212860352U, 212991424U, 213120832U, 213253952U,
        213385024U, 213515584U, 213645632U, 213777728U, 213909184U, 214040128U,
        214170688U, 214302656U, 214433728U, 214564544U, 214695232U, 214826048U,
        214956992U, 215089088U, 215219776U, 215350592U, 215482304U, 215613248U,
        215743552U, 215874752U, 216005312U, 216137024U, 216267328U, 216399296U,
        216530752U, 216661696U, 216790592U, 216923968U, 217054528U, 217183168U,
        217316672U, 217448128U, 217579072U, 217709504U, 217838912U, 217972672U,
        218102848U, 218233024U, 218364736U, 218496832U, 218627776U, 218759104U,
        218888896U, 219021248U, 219151936U, 219281728U, 219413056U, 219545024U,
        219675968U, 219807296U, 219938624U, 220069312U, 220200128U, 220331456U,
        220461632U, 220592704U, 220725184U, 220855744U, 220987072U, 221117888U,
        221249216U, 221378368U, 221510336U, 221642048U, 221772736U, 221904832U,
        222031808U, 222166976U, 222297536U, 222428992U, 222559936U, 222690368U,
        222820672U, 222953152U, 223083968U, 223213376U, 223345984U, 223476928U,
        223608512U, 223738688U, 223869376U, 224001472U, 224132672U, 224262848U,
        224394944U, 224524864U, 224657344U, 224788288U, 224919488U, 225050432U,
        225181504U, 225312704U, 225443776U, 225574592U, 225704768U, 225834176U,
        225966784U, 226097216U, 226229824U, 226360384U, 226491712U, 226623424U,
        226754368U, 226885312U, 227015104U, 227147456U, 227278528U, 227409472U,
        227539904U, 227669696U, 227802944U, 227932352U, 228065216U, 228196288U,
        228326464U, 228457792U, 228588736U, 228720064U, 228850112U, 228981056U,
        229113152U, 229243328U, 229375936U, 229505344U, 229636928U, 229769152U,
        229894976U, 230030272U, 230162368U, 230292416U, 230424512U, 230553152U,
        230684864U, 230816704U, 230948416U, 231079616U, 231210944U, 231342016U,
        231472448U, 231603776U, 231733952U, 231866176U, 231996736U, 232127296U,
        232259392U, 232388672U, 232521664U, 232652608U, 232782272U, 232914496U,
        233043904U, 233175616U, 233306816U, 233438528U, 233569984U, 233699776U,
        233830592U, 233962688U, 234092224U, 234221888U, 234353984U, 234485312U,
        234618304U, 234749888U, 234880832U, 235011776U, 235142464U, 235274048U,
        235403456U, 235535936U, 235667392U, 235797568U, 235928768U, 236057152U,
        236190272U, 236322752U, 236453312U, 236583616U, 236715712U, 236846528U,
        236976448U, 237108544U, 237239104U, 237371072U, 237501632U, 237630784U,
        237764416U, 237895232U, 238026688U, 238157632U, 238286912U, 238419392U,
        238548032U, 238681024U, 238812608U, 238941632U, 239075008U, 239206336U,
        239335232U, 239466944U, 239599168U, 239730496U, 239861312U, 239992384U,
        240122816U, 240254656U, 240385856U, 240516928U, 240647872U, 240779072U,
        240909632U, 241040704U, 241171904U, 241302848U, 241433408U, 241565248U,
        241696192U, 241825984U, 241958848U, 242088256U, 242220224U, 242352064U,
        242481856U, 242611648U, 242744896U, 242876224U, 243005632U, 243138496U,
        243268672U, 243400384U, 243531712U, 243662656U, 243793856U, 243924544U,
        244054592U, 244187072U, 244316608U, 244448704U, 244580032U, 244710976U,
        244841536U, 244972864U, 245104448U, 245233984U, 245365312U, 245497792U,
        245628736U, 245759936U, 245889856U, 246021056U, 246152512U, 246284224U,
        246415168U, 246545344U, 246675904U, 246808384U, 246939584U, 247070144U,
        247199552U, 247331648U, 247463872U, 247593536U, 247726016U, 247857088U,
        247987648U, 248116928U, 248249536U, 248380736U, 248512064U, 248643008U,
        248773312U, 248901056U, 249036608U, 249167552U, 249298624U, 249429184U,
        249560512U, 249692096U, 249822784U, 249954112U, 250085312U, 250215488U,
        250345792U, 250478528U, 250608704U, 250739264U, 250870976U, 251002816U,
        251133632U, 251263552U, 251395136U, 251523904U, 251657792U, 251789248U,
        251919424U, 252051392U, 252182464U, 252313408U, 252444224U, 252575552U,
        252706624U, 252836032U, 252968512U, 253099712U, 253227584U, 253361728U,
        253493056U, 253623488U, 253754432U, 253885504U, 254017216U, 254148032U,
        254279488U, 254410432U, 254541376U, 254672576U, 254803264U, 254933824U,
        255065792U, 255196736U, 255326528U, 255458752U, 255589952U, 255721408U,
        255851072U, 255983296U, 256114624U, 256244416U, 256374208U, 256507712U,
        256636096U, 256768832U, 256900544U, 257031616U, 257162176U, 257294272U,
        257424448U, 257555776U, 257686976U, 257818432U, 257949632U, 258079552U,
        258211136U, 258342464U, 258473408U, 258603712U, 258734656U, 258867008U,
        258996544U, 259127744U, 259260224U, 259391296U, 259522112U, 259651904U,
        259784384U, 259915328U, 260045888U, 260175424U, 260308544U, 260438336U,
        260570944U, 260700992U, 260832448U, 260963776U, 261092672U, 261226304U,
        261356864U, 261487936U, 261619648U, 261750592U, 261879872U, 262011968U,
        262143424U, 262274752U, 262404416U, 262537024U, 262667968U, 262799296U,
        262928704U, 263061184U, 263191744U, 263322944U, 263454656U, 263585216U,
        263716672U, 263847872U, 263978944U, 264108608U, 264241088U, 264371648U,
        264501184U, 264632768U, 264764096U, 264895936U, 265024576U, 265158464U,
        265287488U, 265418432U, 265550528U, 265681216U, 265813312U, 265943488U,
        266075968U, 266206144U, 266337728U, 266468032U, 266600384U, 266731072U,
        266862272U, 266993344U, 267124288U, 267255616U, 267386432U, 267516992U,
        267648704U, 267777728U, 267910592U, 268040512U, 268172096U, 268302784U,
        268435264U, 268566208U, 268696256U, 268828096U, 268959296U, 269090368U,
        269221312U, 269352256U, 269482688U, 269614784U, 269745856U, 269876416U,
        270007616U, 270139328U, 270270272U, 270401216U, 270531904U, 270663616U,
        270791744U, 270924736U, 271056832U, 271186112U, 271317184U, 271449536U,
        271580992U, 271711936U, 271843136U, 271973056U, 272105408U, 272236352U,
        272367296U, 272498368U, 272629568U, 272759488U, 272891456U, 273022784U,
        273153856U, 273284672U, 273415616U, 273547072U, 273677632U, 273808448U,
        273937088U, 274071488U, 274200896U, 274332992U, 274463296U, 274595392U,
        274726208U, 274857536U, 274988992U, 275118656U, 275250496U, 275382208U,
        275513024U, 275643968U, 275775296U, 275906368U, 276037184U, 276167872U,
        276297664U, 276429376U, 276560576U, 276692672U, 276822976U, 276955072U,
        277085632U, 277216832U, 277347008U, 277478848U, 277609664U, 277740992U,
        277868608U, 278002624U, 278134336U, 278265536U, 278395328U, 278526784U,
        278657728U, 278789824U, 278921152U, 279052096U, 279182912U, 279313088U,
        279443776U, 279576256U, 279706048U, 279838528U, 279969728U, 280099648U,
        280230976U, 280361408U, 280493632U, 280622528U, 280755392U, 280887104U,
        281018176U, 281147968U, 281278912U, 281411392U, 281542592U, 281673152U,
        281803712U, 281935552U, 282066496U, 282197312U, 282329024U, 282458816U,
        282590272U, 282720832U, 282853184U, 282983744U, 283115072U, 283246144U,
        283377344U, 283508416U, 283639744U, 283770304U, 283901504U, 284032576U,
        284163136U, 284294848U, 284426176U, 284556992U, 284687296U, 284819264U,
        284950208U, 285081536U
    };


}
# 21 "Ethash.metal" 2

# 1 "./../CPP/internal.hpp" 1
# 15 "./../CPP/internal.hpp"
# 1 "./../CPP/mem.hpp" 1
# 36 "./../CPP/mem.hpp"
static inline void mem_clear_device(
                                    device void *b,
                                    ethash_uint64_t size)
{
    device ethash_uint32_t *buffer_32 = (device ethash_uint32_t *)b;
    device ethash_uint8_t *buffer_8 = (device ethash_uint8_t *)b;

    if (size % 4 == 0) { ethash_uint64_t size_64 = size / 4; do { for (ethash_uint64_t i = 0; i < size_64; i += 1) { buffer_32[i] = 0; } } while (0); } else { do { for (ethash_uint64_t i = 0; i < size; i += 1) { buffer_8[i] = 0; } } while(0); }
}

static inline void mem_clear_thread(
                                    thread void *b,
                                    ethash_uint64_t size)
{
    thread ethash_uint32_t *buffer_32 = (thread ethash_uint32_t *)b;
    thread ethash_uint8_t *buffer_8 = (thread ethash_uint8_t *)b;

    if (size % 4 == 0) { ethash_uint64_t size_64 = size / 4; do { for (ethash_uint64_t i = 0; i < size_64; i += 1) { buffer_32[i] = 0; } } while (0); } else { do { for (ethash_uint64_t i = 0; i < size; i += 1) { buffer_8[i] = 0; } } while(0); }
}
# 74 "./../CPP/mem.hpp"
static inline void mem_copy_device_to_thread(
                               device void *src,
                               thread void *dst,
                               ethash_uint64_t len)
{
    device ethash_uint32_t *in_buffer_32 = (device ethash_uint32_t *)src;
    thread ethash_uint32_t *out_buffer_32 = (thread ethash_uint32_t *)dst;
    device ethash_uint8_t *in_buffer_8 = (device ethash_uint8_t *)src;
    thread ethash_uint8_t *out_buffer_8 = (thread ethash_uint8_t *)dst;

    if (len % 4 == 0) { ethash_uint64_t len_32 = len / 4; do { for (ethash_uint64_t i = 0; i < len_32; i += 1) { out_buffer_32[i] = in_buffer_32[i]; } } while (0); } else { do { for (ethash_uint64_t i = 0; i < len; i += 1) { out_buffer_8[i] = in_buffer_8[i]; } } while(0); }
}

static inline void mem_copy_device(
                            device void *src,
                            device void *dst,
                            ethash_uint64_t len)
{
    device ethash_uint32_t *in_buffer_32 = (device ethash_uint32_t *)src;
    device ethash_uint32_t *out_buffer_32 = (device ethash_uint32_t *)dst;
    device ethash_uint32_t *in_buffer_8 = (device ethash_uint32_t *)src;
    device ethash_uint32_t *out_buffer_8 = (device ethash_uint32_t *)dst;

    if (len % 4 == 0) { ethash_uint64_t len_32 = len / 4; do { for (ethash_uint64_t i = 0; i < len_32; i += 1) { out_buffer_32[i] = in_buffer_32[i]; } } while (0); } else { do { for (ethash_uint64_t i = 0; i < len; i += 1) { out_buffer_8[i] = in_buffer_8[i]; } } while(0); }
}

static inline void mem_copy_thread_to_device(
                                thread void *src,
                                device void *dst,
                                ethash_uint64_t len)
{
    thread ethash_uint32_t *in_buffer_32 = (thread ethash_uint32_t *)src;
    device ethash_uint32_t *out_buffer_32 = (device ethash_uint32_t *)dst;
    thread ethash_uint32_t *in_buffer_8 = (thread ethash_uint32_t *)src;
    device ethash_uint32_t *out_buffer_8 = (device ethash_uint32_t *)dst;

    if (len % 4 == 0) { ethash_uint64_t len_32 = len / 4; do { for (ethash_uint64_t i = 0; i < len_32; i += 1) { out_buffer_32[i] = in_buffer_32[i]; } } while (0); } else { do { for (ethash_uint64_t i = 0; i < len; i += 1) { out_buffer_8[i] = in_buffer_8[i]; } } while(0); }
}

static inline void mem_copy_thread(
                                   thread void *src,
                                   thread void *dst,
                                   ethash_uint64_t len)
{
    thread ethash_uint32_t *in_buffer_32 = (thread ethash_uint32_t *)src;
    thread ethash_uint32_t *out_buffer_32 = (thread ethash_uint32_t *)dst;
    thread ethash_uint32_t *in_buffer_8 = (thread ethash_uint32_t *)src;
    thread ethash_uint32_t *out_buffer_8 = (thread ethash_uint32_t *)dst;

    if (len % 4 == 0) { ethash_uint64_t len_32 = len / 4; do { for (ethash_uint64_t i = 0; i < len_32; i += 1) { out_buffer_32[i] = in_buffer_32[i]; } } while (0); } else { do { for (ethash_uint64_t i = 0; i < len; i += 1) { out_buffer_8[i] = in_buffer_8[i]; } } while(0); }
}
# 16 "./../CPP/internal.hpp" 2

static inline ethash_uint32_t fnv_hash_32(ethash_uint32_t x, ethash_uint32_t y)
{
    return x * 0x01000193 ^ y;
}

static inline void ethash_h256_reset_thread(thread ethash_h256_t *hash)
{
    mem_clear_thread(hash, sizeof(ethash_h256_t));
}

static inline void ethash_h256_reset_device(device ethash_h256_t *hash)
{
    mem_clear_device(hash, sizeof(ethash_h256_t));
}

static inline void ethash_node_reset_device(device ethash_node_t *node)
{
    mem_clear_device(node, sizeof(ethash_node_t));
}

static inline void ethash_node_reset_thread(thread ethash_node_t *node)
{
    mem_clear_thread(node, sizeof(ethash_node_t));
}

static ethash_uint64_t ethash_get_epoch_number(ethash_uint64_t block_number)
{

    return block_number / 30000U;
}

static ethash_uint64_t ethash_get_datasize(ethash_uint64_t block_number)
{

    return dag_sizes[block_number / 30000U];
}

static ethash_uint64_t ethash_get_cachesize(ethash_uint64_t block_number)
{

    return cache_sizes[block_number / 30000U];
}

static ethash_uint32_t ethash_get_cache_node_number(ethash_uint64_t block_number)
{
    ethash_uint64_t cache_size = ethash_get_cachesize(block_number);

    ethash_uint32_t num_nodes = (ethash_uint32_t) (cache_size / sizeof(ethash_node_t));
    return num_nodes;
}

void ethash_get_seedhash_device(
                                ethash_uint64_t block_number,
                                device ethash_h256_t *ret
                                );

void ethash_get_seedhash_thread(
                                ethash_uint64_t block_number,
                                thread ethash_h256_t *ret
                                );

bool ethash_compute_cache_nodes_device(
                                       device ethash_node_t *nodes,
                                       ethash_uint64_t cache_size,
                                       device ethash_h256_t *seed
                                       );

bool ethash_compute_cache_nodes_device_and_thread(
                                                  device ethash_node_t *nodes,
                                                  ethash_uint64_t cache_size,
                                                  thread ethash_h256_t *seed
                                                  );

void ethash_light_new_with_cache(
                                 ethash_uint64_t block_number,
                                 device ethash_node_t *nodes,
                                 ethash_uint64_t cache_size,
                                 device ethash_light_t *ret
                                 );

void ethash_calculate_dag_item_device(
                                      device ethash_node_t *ret,
                                      ethash_uint32_t node_index,
                                      device ethash_light_t *light
                                      );

void ethash_calculate_dag_item_thread(
                                      thread ethash_node_t *ret,
                                      ethash_uint32_t node_index,
                                      device ethash_light_t *light
                                      );

void ethash_light_compute(
                          device ethash_light_t *light,
                          ethash_h256_t header_hash,
                          ethash_uint64_t nonce,
                          device ethash_return_value_t *ret
                          );
# 23 "Ethash.metal" 2
# 1 "./../CPP/keccak.hpp" 1
# 20 "./../CPP/keccak.hpp"
constant static const ethash_uint8_t rho[24] = {
     1, 3, 6, 10, 15, 21, 28, 36,
    45, 55, 2, 14, 27, 41, 56, 8,
    25, 43, 62, 18, 39, 61, 20, 44
};

constant static const ethash_uint8_t keccak_pi[24] = {
    10, 7, 11, 17, 18, 3, 5, 16,
     8, 21, 24, 4, 15, 23, 19, 13,
    12, 2, 20, 14, 22, 9, 6, 1
};

constant static const ethash_uint64_t RC[24] = {
    0x0000000000000001, 0x0000000000008082, 0x800000000000808a, 0x8000000080008000,
    0x000000000000808b, 0x0000000080000001, 0x8000000080008081, 0x8000000000008009,
    0x000000000000008a, 0x0000000000000088, 0x0000000080008009, 0x000000008000000a,
    0x000000008000808b, 0x800000000000008b, 0x8000000000008089, 0x8000000000008003,
    0x8000000000008002, 0x8000000000000080, 0x000000000000800a, 0x800000008000000a,
    0x8000000080008081, 0x8000000000008080, 0x0000000080000001, 0x8000000080008008
};

ethash_int32_t keccak_256_device(
                                 device ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 device ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 );

ethash_int32_t keccak_256_thread(
                                 thread ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 thread ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 );

ethash_int32_t keccak_256_thread_to_device(
                                 thread ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 device ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 );

ethash_int32_t keccak_256_device_to_thread(
                                 device ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 thread ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 );

ethash_int32_t keccak_512_device(
                                 device ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 device ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 );

ethash_int32_t keccak_512_thread(
                                 thread ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 thread ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 );

ethash_int32_t keccak_512_device_to_thread(
                                 device ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 thread ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 );

ethash_int32_t keccak_512_thread_to_device(
                                 thread ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 device ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 );
# 24 "Ethash.metal" 2


# 1 "./../CPP/keccak.cpp" 1
# 51 "./../CPP/keccak.cpp"
static inline void keccakf_thread(thread void *state) {
    thread ethash_uint64_t *a = (thread ethash_uint64_t *)state;

    ethash_uint64_t b[5] = {0}; ethash_uint64_t t = 0; ethash_uint8_t x, y; for (int i = 0; i < 24; i++) { x = 0; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; x = 0; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; t = a[1]; x = 0; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; y = 0; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; a[0] ^= RC[i]; }
}

static inline void keccakf_device(device void *state) {
    device ethash_uint64_t *a = (device ethash_uint64_t *)state;

    ethash_uint64_t b[5] = {0}; ethash_uint64_t t = 0; ethash_uint8_t x, y; for (int i = 0; i < 24; i++) { x = 0; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; b[x] = 0; y = 0; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5; b[x] ^= a[x + y];; y += 5;; x += 1; x = 0; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; y = 0; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5; a[y + x] ^= b[(x + 4) % 5] ^ (((b[(x + 1) % 5]) << 1) | ((b[(x + 1) % 5]) >> (64 - 1)));; y += 5;; x += 1; t = a[1]; x = 0; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; b[0] = a[keccak_pi[x]]; a[keccak_pi[x]] = (((t) << rho[x]) | ((t) >> (64 - rho[x]))); t = b[0]; x++; y = 0; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; x = 0; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; b[x] = a[y + x];; x += 1; x = 0; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1; a[y + x] = b[x] ^ ((~b[(x + 1) % 5]) & b[(x + 2) % 5]);; x += 1;; y += 5; a[0] ^= RC[i]; }
}
# 88 "./../CPP/keccak.cpp"
static inline void xorin_device_to_thread(
                                          device ethash_uint8_t *src,
                                          thread ethash_uint8_t *dst,
                                          ethash_uint64_t len)
{
    device ethash_uint32_t *in_buffer = (device ethash_uint32_t *)src;
    thread ethash_uint32_t *out_buffer = (thread ethash_uint32_t *)dst;

    if (len % 4 == 0) { ethash_uint64_t len_64 = len / 4; do { for (ethash_uint64_t i = 0; i < len_64; i += 1) { out_buffer[i] ^= in_buffer[i]; } } while (0); } else { do { for (ethash_uint64_t i = 0; i < len; i += 1) { dst[i] ^= src[i]; } } while (0); }
}

static inline void xorin_thread(
                                thread ethash_uint8_t *src,
                                thread ethash_uint8_t *dst,
                                ethash_uint64_t len)
{
    thread ethash_uint32_t *in_buffer = (thread ethash_uint32_t *)src;
    thread ethash_uint32_t *out_buffer = (thread ethash_uint32_t *)dst;

    if (len % 4 == 0) { ethash_uint64_t len_64 = len / 4; do { for (ethash_uint64_t i = 0; i < len_64; i += 1) { out_buffer[i] ^= in_buffer[i]; } } while (0); } else { do { for (ethash_uint64_t i = 0; i < len; i += 1) { dst[i] ^= src[i]; } } while (0); }
}

static inline void setout_thread_to_device(
                                           thread ethash_uint8_t *src,
                                           device ethash_uint8_t *dst,
                                           ethash_uint64_t len)
{
    mem_copy_thread_to_device(src, dst, len);
}

static inline void setout_thread(
                                 thread ethash_uint8_t *src,
                                 thread ethash_uint8_t *dst,
                                 ethash_uint64_t len)
{
    mem_copy_thread(src, dst, len);
}

static inline void mem_clear_200_thread(
                                        thread ethash_uint8_t *b)
{
    mem_clear_thread(b, 200);
}
# 158 "./../CPP/keccak.cpp"
static inline ethash_int32_t hash_device(
                                  device ethash_uint8_t *in,
                                  ethash_uint64_t inlen,
                                  device ethash_uint8_t *out,
                                  ethash_uint64_t outlen,
                                  ethash_uint64_t rate,
                                  ethash_uint8_t delim)
{
    if ((out == nullptr) || ((in == nullptr) && inlen != 0) || (rate >= 200)) { return -1; } ethash_uint8_t a[200] = {0}; while (inlen >= rate) { xorin_device_to_thread(in, a, rate); keccakf_thread(a); in += rate; inlen -= rate; } a[inlen] ^= delim; a[rate - 1] ^= 0x80; xorin_device_to_thread(in, a, inlen); keccakf_thread(a); while (outlen >= rate) { setout_thread_to_device(a, out, rate); keccakf_thread(a); out += rate; outlen -= rate; } setout_thread_to_device(a, out, outlen); mem_clear_200_thread(a); return 0;
}

static inline ethash_int32_t hash_thread(
                                         thread ethash_uint8_t *in,
                                         ethash_uint64_t inlen,
                                         thread ethash_uint8_t *out,
                                         ethash_uint64_t outlen,
                                         ethash_uint64_t rate,
                                         ethash_uint8_t delim)
{
    if ((out == nullptr) || ((in == nullptr) && inlen != 0) || (rate >= 200)) { return -1; } ethash_uint8_t a[200] = {0}; while (inlen >= rate) { xorin_thread(in, a, rate); keccakf_thread(a); in += rate; inlen -= rate; } a[inlen] ^= delim; a[rate - 1] ^= 0x80; xorin_thread(in, a, inlen); keccakf_thread(a); while (outlen >= rate) { setout_thread(a, out, rate); keccakf_thread(a); out += rate; outlen -= rate; } setout_thread(a, out, outlen); mem_clear_200_thread(a); return 0;
}

static inline ethash_int32_t hash_device_to_thread(
                                         device ethash_uint8_t *in,
                                         ethash_uint64_t inlen,
                                         thread ethash_uint8_t *out,
                                         ethash_uint64_t outlen,
                                         ethash_uint64_t rate,
                                         ethash_uint8_t delim)
{
    if ((out == nullptr) || ((in == nullptr) && inlen != 0) || (rate >= 200)) { return -1; } ethash_uint8_t a[200] = {0}; while (inlen >= rate) { xorin_device_to_thread(in, a, rate); keccakf_thread(a); in += rate; inlen -= rate; } a[inlen] ^= delim; a[rate - 1] ^= 0x80; xorin_device_to_thread(in, a, inlen); keccakf_thread(a); while (outlen >= rate) { setout_thread(a, out, rate); keccakf_thread(a); out += rate; outlen -= rate; } setout_thread(a, out, outlen); mem_clear_200_thread(a); return 0;
}

static inline ethash_int32_t hash_thread_to_device(
                                         thread ethash_uint8_t *in,
                                         ethash_uint64_t inlen,
                                         device ethash_uint8_t *out,
                                         ethash_uint64_t outlen,
                                         ethash_uint64_t rate,
                                         ethash_uint8_t delim)
{
    if ((out == nullptr) || ((in == nullptr) && inlen != 0) || (rate >= 200)) { return -1; } ethash_uint8_t a[200] = {0}; while (inlen >= rate) { xorin_thread(in, a, rate); keccakf_thread(a); in += rate; inlen -= rate; } a[inlen] ^= delim; a[rate - 1] ^= 0x80; xorin_thread(in, a, inlen); keccakf_thread(a); while (outlen >= rate) { setout_thread_to_device(a, out, rate); keccakf_thread(a); out += rate; outlen -= rate; } setout_thread_to_device(a, out, outlen); mem_clear_200_thread(a); return 0;
}

ethash_int32_t keccak_256_device(
                                 device ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 device ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 )
{
    if (outlen > (256/8)) {
        return -1;
    }
    return hash_device(in, inlen, out, outlen, 200 - (256 / 4), 0x01);
}

ethash_int32_t keccak_256_device_to_thread(
                                           device ethash_uint8_t *in,
                                           ethash_uint64_t inlen,
                                           thread ethash_uint8_t *out,
                                           ethash_uint64_t outlen
                                           )
{
    if (outlen > (256/8)) {
        return -1;
    }
    return hash_device_to_thread(in, inlen, out, outlen, 200 - (256 / 4), 0x01);
}

ethash_int32_t keccak_256_thread_to_device(
                                           thread ethash_uint8_t *in,
                                           ethash_uint64_t inlen,
                                           device ethash_uint8_t *out,
                                           ethash_uint64_t outlen
                                           )
{
    if (outlen > (256/8)) {
        return -1;
    }
    return hash_thread_to_device(in, inlen, out, outlen, 200 - (256 / 4), 0x01);
}

ethash_int32_t keccak_256_thread(
                                 thread ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 thread ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 )
{
    if (outlen > (256/8)) {
        return -1;
    }
    return hash_thread(in, inlen, out, outlen, 200 - (256 / 4), 0x01);
}

ethash_int32_t keccak_512_device(
                                 device ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 device ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 )
{
    if (outlen > (512/8)) {
        return -1;
    }
    return hash_device(in, inlen, out, outlen, 200 - (512 / 4), 0x01);
}

ethash_int32_t keccak_512_device_to_thread(
                                           device ethash_uint8_t *in,
                                           ethash_uint64_t inlen,
                                           thread ethash_uint8_t *out,
                                           ethash_uint64_t outlen
                                           )
{
    if (outlen > (512/8)) {
        return -1;
    }
    return hash_device_to_thread(in, inlen, out, outlen, 200 - (512 / 4), 0x01);
}

ethash_int32_t keccak_512_thread_to_device(
                                           thread ethash_uint8_t *in,
                                           ethash_uint64_t inlen,
                                           device ethash_uint8_t *out,
                                           ethash_uint64_t outlen
                                           )
{
    if (outlen > (512/8)) {
        return -1;
    }
    return hash_thread_to_device(in, inlen, out, outlen, 200 - (512 / 4), 0x01);
}

ethash_int32_t keccak_512_thread(
                                 thread ethash_uint8_t *in,
                                 ethash_uint64_t inlen,
                                 thread ethash_uint8_t *out,
                                 ethash_uint64_t outlen
                                 )
{
    if (outlen > (512/8)) {
        return -1;
    }
    return hash_thread(in, inlen, out, outlen, 200 - (512 / 4), 0x01);
}
# 27 "Ethash.metal" 2
# 1 "./../CPP/internal.cpp" 1
# 29 "./../CPP/internal.cpp"
void ethash_get_seedhash_device(ethash_uint64_t block_number, device ethash_h256_t *ret)
{
    ethash_h256_reset_device(ret); size_t size = sizeof(ethash_h256_t); ethash_uint64_t epochs = ethash_get_epoch_number(block_number); for (ethash_uint64_t i = 0; i < epochs; i++) { keccak_256_device((device ethash_uint8_t *)ret, size, (device ethash_uint8_t *)ret, size); }
}

void ethash_get_seedhash_thread(ethash_uint64_t block_number, thread ethash_h256_t *ret)
{
    ethash_h256_reset_thread(ret); size_t size = sizeof(ethash_h256_t); ethash_uint64_t epochs = ethash_get_epoch_number(block_number); for (ethash_uint64_t i = 0; i < epochs; i++) { keccak_256_thread((thread ethash_uint8_t *)ret, size, (thread ethash_uint8_t *)ret, size); }
}
# 74 "./../CPP/internal.cpp"
bool ethash_compute_cache_nodes_device(
                                device ethash_node_t *nodes,
                                ethash_uint64_t cache_size,
                                device ethash_h256_t *seed
                                )
{
    if (cache_size % sizeof(ethash_node_t) != 0) { return false; } ethash_uint32_t num_nodes = (ethash_uint32_t) (cache_size / sizeof(ethash_node_t)); keccak_512_device((device ethash_uint8_t *)seed, 32, nodes[0].bytes, 64); for (ethash_uint32_t i = 1; i != num_nodes; ++i) { keccak_512_device(nodes[i - 1].bytes, 64, nodes[i].bytes, 64); } for (ethash_uint32_t j = 0; j != 3; j++) { for (ethash_uint32_t i = 0; i != num_nodes; i++) { ethash_uint32_t idx = nodes[i].words[0] % num_nodes; ethash_node_t data; ethash_node_reset_thread(&data); keccak_512_thread_to_device(data.bytes, sizeof(ethash_node_t), nodes[i].bytes, 64); } } return true;
}

bool ethash_compute_cache_nodes_device_and_thread(
                                       device ethash_node_t *nodes,
                                       ethash_uint64_t cache_size,
                                       thread ethash_h256_t *seed
                                       )
{
    if (cache_size % sizeof(ethash_node_t) != 0) { return false; }
    ethash_uint32_t num_nodes = (ethash_uint32_t) (cache_size / sizeof(ethash_node_t));
    keccak_512_thread_to_device((thread ethash_uint8_t *)seed, 32, nodes[0].bytes, 64);
    for (ethash_uint32_t i = 1; i != num_nodes; ++i) {
        keccak_512_device(nodes[i - 1].bytes, 64, nodes[i].bytes, 64);
    }
    for (ethash_uint32_t j = 0; j != 3; j++) {
        for (ethash_uint32_t i = 0; i != num_nodes; i++) {
            ethash_uint32_t idx = nodes[i].words[0] % num_nodes;
            ethash_node_t data;
            ethash_node_reset_thread(&data);
            keccak_512_thread_to_device(data.bytes, sizeof(ethash_node_t), nodes[i].bytes, 64);
        }
    }
    return true;
}

void ethash_light_new_with_cache(
                                             ethash_uint64_t block_number,
                                             device ethash_node_t *nodes,
                                             ethash_uint64_t cache_size,
                                             device ethash_light_t *ret)
{
    ethash_uint64_t calculated_size = ethash_get_cachesize(block_number);
    if (calculated_size != cache_size) {
        return;
    }

    ret->cache = nodes;
    ret->cache_size = cache_size;
    ret->block_number = block_number;
}
# 124 "./../CPP/internal.cpp"
void ethash_calculate_dag_item_device(
                               device ethash_node_t *ret,
                               ethash_uint32_t node_index,
                               device ethash_light_t *light
                               )
{
    ethash_uint32_t num_parent_nodes = (ethash_uint32_t) (light->cache_size / sizeof(ethash_node_t)); device ethash_node_t *cache_nodes = (device ethash_node_t *) light->cache; device ethash_node_t *init = &cache_nodes[node_index % num_parent_nodes]; mem_copy_device(init, ret, sizeof(ethash_node_t)); ret->words[0] ^= node_index; keccak_512_device(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64); for (ethash_uint32_t i = 0; i != 256; ++i) { ethash_uint32_t parent_index = fnv_hash_32(node_index ^ i, ret->words[i % (64 / 4)]) % num_parent_nodes; device ethash_node_t *parent = &cache_nodes[parent_index]; for (unsigned w = 0; w != (64 / 4); ++w) { ret->words[w] = fnv_hash_32(ret->words[w], parent->words[w]); } } keccak_512_device(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);
# 149 "./../CPP/internal.cpp"
}

void ethash_calculate_dag_item_thread(
                                      thread ethash_node_t *ret,
                                      ethash_uint32_t node_index,
                                      device ethash_light_t *light
                                      )
{
    ethash_uint32_t num_parent_nodes = (ethash_uint32_t) (light->cache_size / sizeof(ethash_node_t));
    device ethash_node_t *cache_nodes = (device ethash_node_t *) light->cache;
    device ethash_node_t *init = &cache_nodes[node_index % num_parent_nodes];

    mem_copy_device_to_thread(init, ret, sizeof(ethash_node_t));
    ret->words[0] ^= node_index;
    keccak_512_thread(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);


    for (ethash_uint32_t i = 0; i != 256; ++i) {
        ethash_uint32_t parent_index = fnv_hash_32(node_index ^ i, ret->words[i % (64 / 4)]) % num_parent_nodes;
        device ethash_node_t *parent = &cache_nodes[parent_index];

        for (unsigned w = 0; w != (64 / 4); ++w) {
            ret->words[w] = fnv_hash_32(ret->words[w], parent->words[w]);
        }
    }
    keccak_512_thread(ret->bytes, sizeof(ethash_node_t), ret->bytes, 64);
}

bool ethash_hash(
                 device ethash_return_value_t *ret,
                 device ethash_light_t * light,
                 ethash_uint64_t full_size,
                 ethash_h256_t header_hash,
                 ethash_uint64_t nonce
                 )
{
    if (full_size % (128 / 4) != 0) {
        return false;
    }



    ethash_node_t s_mix[((128 / 4) / (64 / 4)) + 1]; // 3
    mem_copy_thread(&header_hash, s_mix[0].bytes, 32);

    s_mix[0].double_words[4] = nonce;


    keccak_512_thread(s_mix->bytes, 40, s_mix->bytes, 64);

                                        ;

    thread ethash_node_t *mix = s_mix + 1;
    for (ethash_uint32_t w = 0; w != 32; ++w) {
        mix->words[w] = s_mix[0].words[w % (64 / 4)];
    }

    unsigned int page_size = sizeof(ethash_uint32_t) * (128 / 4);
    unsigned int num_full_pages = (unsigned) (full_size / page_size);

    for (unsigned i = 0; i != 64; ++i) {
        ethash_uint32_t index = fnv_hash_32(s_mix->words[0] ^ i, mix->words[i % (128 / 4)]) % num_full_pages;

        for (unsigned n = 0; n != 2; ++n) {
            thread ethash_node_t *dag_node;
            ethash_node_t tmp_node;
            ethash_calculate_dag_item_thread(&tmp_node, index * ((128 / 4) / (64 / 4)) + n, light);
            dag_node = &tmp_node;

            for (unsigned w = 0; w != 16; ++w) {
                mix[n].words[w] = fnv_hash_32(mix[n].words[w], dag_node->words[w]);
            }
        }
    }


    for (ethash_uint32_t w = 0; w != (128 / 4); w += 4) {
        ethash_uint32_t reduction = mix->words[w + 0];
        reduction = reduction * 0x01000193 ^ mix->words[w + 1];
        reduction = reduction * 0x01000193 ^ mix->words[w + 2];
        reduction = reduction * 0x01000193 ^ mix->words[w + 3];
        mix->words[w / 4] = reduction;
    }

                                               ;
    mem_copy_thread_to_device(mix->bytes, &ret->mix_hash, 32);

    keccak_256_thread_to_device(s_mix->bytes, (64 + 32), (device ethash_uint8_t *)&ret->result, 32);
    return true;
}

void ethash_light_compute(
                                           device ethash_light_t *light,
                                           ethash_h256_t header_hash,
                                           ethash_uint64_t nonce,
                                           device ethash_return_value_t *ret
                                           )
{
    ethash_uint64_t full_size = ethash_get_datasize(light->block_number);
    ret->success = ethash_hash(ret, light, full_size, header_hash, nonce);
}
# 28 "Ethash.metal" 2

ethash_uint64_t join_blocknumber(
                                 ethash_uint32_t lower_blocknumber,
                                 ethash_uint32_t upper_blocknumber)
{
    ethash_uint64_t block_number = 0;
    block_number = (ethash_uint64_t)upper_blocknumber << 32 | (ethash_uint64_t)lower_blocknumber;
    return block_number;
}


kernel void ethash_keccak_256(
                              device ethash_uint8_t *in [[ buffer(0) ]],
                              device ethash_uint32_t &size [[ buffer(1) ]],
                              device ethash_h256_t *ret [[ buffer(2) ]],
                              device ethash_int32_t *result [[ buffer(3) ]],
                              ethash_uint32_t id [[ thread_position_in_grid ]]
                              )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_h256_t);
    *result = keccak_256_device(in, size, (device ethash_uint8_t *)ret, out_bytes);
}

kernel void ethash_keccak_512(
                              device ethash_uint8_t *in [[ buffer(0) ]],
                              device ethash_uint32_t &size [[ buffer(1) ]],
                              device ethash_uint8_t *ret [[ buffer(2) ]],
                              device ethash_int32_t *result [[ buffer(3) ]],
                              ethash_uint32_t id [[ thread_position_in_grid ]]
                              )
{
    *result = -1;
    const size_t out_bytes = sizeof(ethash_node_t);
    *result = keccak_512_device(in, size, (device ethash_uint8_t *)ret, out_bytes);
}

kernel void ethash_get_seedhash(
                                device ethash_uint32_t &lower_blocknumber [[ buffer(0) ]],
                                device ethash_uint32_t &upper_blocknumber [[ buffer(1) ]],
                                device ethash_h256_t *ret [[ buffer(2) ]],
                                ethash_uint32_t id [[ thread_position_in_grid ]]
                                )
{
    ethash_uint32_t lower = lower_blocknumber;
    ethash_uint32_t upper = upper_blocknumber;
    ethash_uint64_t block_number = 486382;
    ethash_get_seedhash_device(block_number, ret);
}

kernel void ethash_compute_cache_nodes(
                                       device ethash_uint32_t &lower_blocknumber [[ buffer(0) ]],
                                       device ethash_uint32_t &upper_blocknumber [[ buffer(1) ]],
                                       device ethash_uint8_t *nodes [[ buffer(2) ]],
                                       ethash_uint32_t id [[ thread_position_in_grid ]]
                                       )
{
    ethash_uint32_t lower = lower_blocknumber;
    ethash_uint32_t upper = upper_blocknumber;
    ethash_uint64_t block_number = 486382;
    ethash_uint64_t cache_size = 18874304;
    ethash_h256_t seed = {241, 175, 44, 134, 39, 121, 245, 239, 228, 236, 43, 160, 195, 152, 46, 7, 199, 5, 253, 147, 241, 206, 98, 43, 3, 104, 17, 40, 192, 79, 106, 162};

    device ethash_node_t *const device_nodes = (device ethash_node_t *const)nodes;
    thread ethash_h256_t *const seed_ptr = &seed;
    ethash_compute_cache_nodes_device_and_thread(device_nodes, cache_size, seed_ptr);
}
