; ModuleID = 'obj\Release\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [146 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 19
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 65
	i32 45214116, ; 2: Earthbender.Android.dll => 0x2b1e9a4 => 0
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 60
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 56
	i32 318968648, ; 5: Xamarin.AndroidX.Activity.dll => 0x13031348 => 40
	i32 321597661, ; 6: System.Numerics => 0x132b30dd => 35
	i32 342366114, ; 7: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 50
	i32 347068432, ; 8: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 28
	i32 442521989, ; 9: Xamarin.Essentials => 0x1a605985 => 59
	i32 450948140, ; 10: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 48
	i32 465846621, ; 11: mscorlib => 0x1bc4415d => 25
	i32 469710990, ; 12: System.dll => 0x1bff388e => 34
	i32 513247710, ; 13: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 23
	i32 526420162, ; 14: System.Transactions.dll => 0x1f6088c2 => 67
	i32 539058512, ; 15: Microsoft.Extensions.Logging => 0x20216150 => 21
	i32 548916678, ; 16: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 7
	i32 627497175, ; 17: Earthbender.Android => 0x2566d8d7 => 0
	i32 627609679, ; 18: Xamarin.AndroidX.CustomView => 0x2568904f => 46
	i32 662205335, ; 19: System.Text.Encodings.Web.dll => 0x27787397 => 37
	i32 748832960, ; 20: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 26
	i32 789151979, ; 21: Microsoft.Extensions.Options => 0x2f0980eb => 22
	i32 809851609, ; 22: System.Drawing.Common.dll => 0x30455ad9 => 68
	i32 928116545, ; 23: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 65
	i32 967690846, ; 24: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 50
	i32 974778368, ; 25: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 1012816738, ; 26: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 55
	i32 1028951442, ; 27: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 17
	i32 1035644815, ; 28: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 42
	i32 1042160112, ; 29: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 62
	i32 1052210849, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 52
	i32 1098259244, ; 31: System => 0x41761b2c => 34
	i32 1099692271, ; 32: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 9
	i32 1157931901, ; 33: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 10
	i32 1202000627, ; 34: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 10
	i32 1204575371, ; 35: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 15
	i32 1214827643, ; 36: CommunityToolkit.Mvvm => 0x4868cc7b => 3
	i32 1292207520, ; 37: SQLitePCLRaw.core.dll => 0x4d0585a0 => 27
	i32 1293217323, ; 38: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 47
	i32 1365406463, ; 39: System.ServiceModel.Internals.dll => 0x516272ff => 69
	i32 1376866003, ; 40: Xamarin.AndroidX.SavedState => 0x52114ed3 => 55
	i32 1406073936, ; 41: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 44
	i32 1411638395, ; 42: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 36
	i32 1460219004, ; 43: Xamarin.Forms.Xaml => 0x57092c7c => 63
	i32 1461234159, ; 44: System.Collections.Immutable.dll => 0x5718a9ef => 31
	i32 1469204771, ; 45: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 41
	i32 1470490898, ; 46: Microsoft.Extensions.Primitives => 0x57a5e912 => 23
	i32 1479771757, ; 47: System.Collections.Immutable => 0x5833866d => 31
	i32 1490351284, ; 48: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 8
	i32 1592978981, ; 49: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 50: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 53
	i32 1639515021, ; 51: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 52: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 64
	i32 1688112883, ; 53: Microsoft.Data.Sqlite => 0x649e8ef3 => 8
	i32 1689493916, ; 54: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 11
	i32 1711441057, ; 55: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 28
	i32 1729485958, ; 56: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 43
	i32 1766324549, ; 57: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 56
	i32 1770582343, ; 58: Microsoft.Extensions.Logging.dll => 0x6988f147 => 21
	i32 1776026572, ; 59: System.Core.dll => 0x69dc03cc => 32
	i32 1788241197, ; 60: Xamarin.AndroidX.Fragment => 0x6a96652d => 48
	i32 1796167890, ; 61: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 7
	i32 1808609942, ; 62: Xamarin.AndroidX.Loader => 0x6bcd3296 => 53
	i32 1813201214, ; 63: Xamarin.Google.Android.Material => 0x6c13413e => 64
	i32 1828688058, ; 64: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 20
	i32 1867746548, ; 65: Xamarin.Essentials.dll => 0x6f538cf4 => 59
	i32 1878053835, ; 66: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 63
	i32 1886040351, ; 67: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 13
	i32 1894524299, ; 68: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 9
	i32 2011961780, ; 69: System.Buffers.dll => 0x77ec19b4 => 30
	i32 2014489277, ; 70: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 13
	i32 2019465201, ; 71: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 52
	i32 2055257422, ; 72: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 51
	i32 2097448633, ; 73: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 49
	i32 2103459038, ; 74: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 29
	i32 2126786730, ; 75: Xamarin.Forms.Platform.Android => 0x7ec430aa => 61
	i32 2181898931, ; 76: Microsoft.Extensions.Options.dll => 0x820d22b3 => 22
	i32 2192057212, ; 77: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 20
	i32 2197979891, ; 78: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 19
	i32 2201231467, ; 79: System.Net.Http => 0x8334206b => 1
	i32 2252897993, ; 80: Microsoft.EntityFrameworkCore => 0x86487ec9 => 11
	i32 2266799131, ; 81: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 16
	i32 2279755925, ; 82: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 54
	i32 2435904999, ; 83: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 70
	i32 2465273461, ; 84: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 26
	i32 2475788418, ; 85: Java.Interop.dll => 0x93918882 => 6
	i32 2570120770, ; 86: System.Text.Encodings.Web => 0x9930ee42 => 37
	i32 2634653062, ; 87: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 12
	i32 2732626843, ; 88: Xamarin.AndroidX.Activity => 0xa2e0939b => 40
	i32 2737747696, ; 89: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 41
	i32 2766581644, ; 90: Xamarin.Forms.Core => 0xa4e6af8c => 60
	i32 2778768386, ; 91: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 57
	i32 2810250172, ; 92: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 44
	i32 2819470561, ; 93: System.Xml.dll => 0xa80db4e1 => 39
	i32 2847789619, ; 94: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 12
	i32 2853208004, ; 95: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 57
	i32 2905242038, ; 96: mscorlib.dll => 0xad2a79b6 => 25
	i32 2947191386, ; 97: Earthbender => 0xafaa925a => 4
	i32 2978675010, ; 98: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 47
	i32 3044182254, ; 99: FormsViewGroup => 0xb57288ee => 5
	i32 3069363400, ; 100: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 14
	i32 3111772706, ; 101: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3124832203, ; 102: System.Threading.Tasks.Extensions => 0xba4127cb => 72
	i32 3195844289, ; 103: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 14
	i32 3204380047, ; 104: System.Data.dll => 0xbefef58f => 66
	i32 3247949154, ; 105: Mono.Security => 0xc197c562 => 71
	i32 3258312781, ; 106: Xamarin.AndroidX.CardView => 0xc235e84d => 43
	i32 3265893370, ; 107: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 72
	i32 3317135071, ; 108: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 46
	i32 3317144872, ; 109: System.Data => 0xc5b79d28 => 66
	i32 3353484488, ; 110: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 49
	i32 3353544232, ; 111: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 58
	i32 3358260929, ; 112: System.Text.Json => 0xc82afec1 => 38
	i32 3360279109, ; 113: SQLitePCLRaw.core => 0xc849ca45 => 27
	i32 3362522851, ; 114: Xamarin.AndroidX.Core => 0xc86c06e3 => 45
	i32 3366347497, ; 115: Java.Interop => 0xc8a662e9 => 6
	i32 3374999561, ; 116: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 54
	i32 3395150330, ; 117: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 36
	i32 3404865022, ; 118: System.ServiceModel.Internals => 0xcaf21dfe => 69
	i32 3407215217, ; 119: Xamarin.CommunityToolkit => 0xcb15fa71 => 58
	i32 3428513518, ; 120: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 18
	i32 3429136800, ; 121: System.Xml => 0xcc6479a0 => 39
	i32 3476120550, ; 122: Mono.Android => 0xcf3163e6 => 24
	i32 3485117614, ; 123: System.Text.Json.dll => 0xcfbaacae => 38
	i32 3486566296, ; 124: System.Transactions => 0xcfd0c798 => 67
	i32 3536029504, ; 125: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 61
	i32 3632359727, ; 126: Xamarin.Forms.Platform => 0xd881692f => 62
	i32 3641597786, ; 127: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 51
	i32 3645089577, ; 128: System.ComponentModel.DataAnnotations => 0xd943a729 => 70
	i32 3657292374, ; 129: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 16
	i32 3672681054, ; 130: Mono.Android.dll => 0xdae8aa5e => 24
	i32 3680078794, ; 131: Earthbender.dll => 0xdb598bca => 4
	i32 3689375977, ; 132: System.Drawing.Common => 0xdbe768e9 => 68
	i32 3748608112, ; 133: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 33
	i32 3754567612, ; 134: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 29
	i32 3829621856, ; 135: System.Numerics.dll => 0xe4436460 => 35
	i32 3841636137, ; 136: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 17
	i32 3896760992, ; 137: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 45
	i32 3955647286, ; 138: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 42
	i32 4101842092, ; 139: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 15
	i32 4105002889, ; 140: Mono.Security.dll => 0xf4ad5f89 => 71
	i32 4126470640, ; 141: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 18
	i32 4151237749, ; 142: System.Core => 0xf76edc75 => 32
	i32 4213026141, ; 143: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 33
	i32 4260525087, ; 144: System.Buffers => 0xfdf2741f => 30
	i32 4274623895 ; 145: CommunityToolkit.Mvvm.dll => 0xfec99597 => 3
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [146 x i32] [
	i32 19, i32 65, i32 0, i32 60, i32 56, i32 40, i32 35, i32 50, ; 0..7
	i32 28, i32 59, i32 48, i32 25, i32 34, i32 23, i32 67, i32 21, ; 8..15
	i32 7, i32 0, i32 46, i32 37, i32 26, i32 22, i32 68, i32 65, ; 16..23
	i32 50, i32 5, i32 55, i32 17, i32 42, i32 62, i32 52, i32 34, ; 24..31
	i32 9, i32 10, i32 10, i32 15, i32 3, i32 27, i32 47, i32 69, ; 32..39
	i32 55, i32 44, i32 36, i32 63, i32 31, i32 41, i32 23, i32 31, ; 40..47
	i32 8, i32 2, i32 53, i32 1, i32 64, i32 8, i32 11, i32 28, ; 48..55
	i32 43, i32 56, i32 21, i32 32, i32 48, i32 7, i32 53, i32 64, ; 56..63
	i32 20, i32 59, i32 63, i32 13, i32 9, i32 30, i32 13, i32 52, ; 64..71
	i32 51, i32 49, i32 29, i32 61, i32 22, i32 20, i32 19, i32 1, ; 72..79
	i32 11, i32 16, i32 54, i32 70, i32 26, i32 6, i32 37, i32 12, ; 80..87
	i32 40, i32 41, i32 60, i32 57, i32 44, i32 39, i32 12, i32 57, ; 88..95
	i32 25, i32 4, i32 47, i32 5, i32 14, i32 2, i32 72, i32 14, ; 96..103
	i32 66, i32 71, i32 43, i32 72, i32 46, i32 66, i32 49, i32 58, ; 104..111
	i32 38, i32 27, i32 45, i32 6, i32 54, i32 36, i32 69, i32 58, ; 112..119
	i32 18, i32 39, i32 24, i32 38, i32 67, i32 61, i32 62, i32 51, ; 120..127
	i32 70, i32 16, i32 24, i32 4, i32 68, i32 33, i32 29, i32 35, ; 128..135
	i32 17, i32 45, i32 42, i32 15, i32 71, i32 18, i32 32, i32 33, ; 136..143
	i32 30, i32 3 ; 144..145
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
