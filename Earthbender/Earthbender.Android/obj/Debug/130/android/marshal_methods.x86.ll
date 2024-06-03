; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [252 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 24
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 78
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 107
	i32 45214116, ; 3: Earthbender.Android.dll => 0x2b1e9a4 => 0
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 102
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 92
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 121
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 92
	i32 159306688, ; 8: System.ComponentModel.Annotations => 0x97ed3c0 => 117
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 59
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 93
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 57
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 6
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 73
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 115
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 62
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 77
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 71
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 49
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 41
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 75
	i32 347068432, ; 21: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 33
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 40
	i32 441335492, ; 23: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 61
	i32 442521989, ; 24: Xamarin.Essentials => 0x1a605985 => 101
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 70
	i32 465846621, ; 27: mscorlib => 0x1bc4415d => 30
	i32 469710990, ; 28: System.dll => 0x1bff388e => 39
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 71
	i32 486930444, ; 30: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 82
	i32 513247710, ; 31: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 28
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 109
	i32 539058512, ; 33: Microsoft.Extensions.Logging => 0x20216150 => 26
	i32 545304856, ; 34: System.Runtime.Extensions => 0x2080b118 => 123
	i32 548916678, ; 35: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 12
	i32 605376203, ; 36: System.IO.Compression.FileSystem => 0x24154ecb => 113
	i32 627497175, ; 37: Earthbender.Android => 0x2566d8d7 => 0
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 66
	i32 662205335, ; 39: System.Text.Encodings.Web.dll => 0x27787397 => 45
	i32 663517072, ; 40: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 98
	i32 666292255, ; 41: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 54
	i32 672442732, ; 42: System.Collections.Concurrent => 0x2814a96c => 3
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 48
	i32 748832960, ; 44: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 31
	i32 775507847, ; 45: System.IO.Compression => 0x2e394f87 => 112
	i32 789151979, ; 46: Microsoft.Extensions.Options => 0x2f0980eb => 27
	i32 809851609, ; 47: System.Drawing.Common.dll => 0x30455ad9 => 111
	i32 843511501, ; 48: Xamarin.AndroidX.Print => 0x3246f6cd => 89
	i32 928116545, ; 49: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 107
	i32 967690846, ; 50: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 75
	i32 974778368, ; 51: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 975236339, ; 52: System.Diagnostics.Tracing => 0x3a20ecf3 => 119
	i32 992768348, ; 53: System.Collections.dll => 0x3b2c715c => 4
	i32 1012816738, ; 54: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 91
	i32 1028951442, ; 55: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 22
	i32 1035644815, ; 56: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 53
	i32 1042160112, ; 57: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 104
	i32 1052210849, ; 58: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 79
	i32 1098259244, ; 59: System => 0x41761b2c => 39
	i32 1099692271, ; 60: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 14
	i32 1157931901, ; 61: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 15
	i32 1175144683, ; 62: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 96
	i32 1178241025, ; 63: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 86
	i32 1202000627, ; 64: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 15
	i32 1204270330, ; 65: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 54
	i32 1204575371, ; 66: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 20
	i32 1267360935, ; 67: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 97
	i32 1292207520, ; 68: SQLitePCLRaw.core.dll => 0x4d0585a0 => 32
	i32 1293217323, ; 69: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 68
	i32 1365406463, ; 70: System.ServiceModel.Internals.dll => 0x516272ff => 116
	i32 1376866003, ; 71: Xamarin.AndroidX.SavedState => 0x52114ed3 => 91
	i32 1379779777, ; 72: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 73: Xamarin.AndroidX.Media.dll => 0x5333188f => 83
	i32 1406073936, ; 74: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 63
	i32 1411638395, ; 75: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 43
	i32 1457743152, ; 76: System.Runtime.Extensions.dll => 0x56e36530 => 123
	i32 1460219004, ; 77: Xamarin.Forms.Xaml => 0x57092c7c => 105
	i32 1461234159, ; 78: System.Collections.Immutable.dll => 0x5718a9ef => 36
	i32 1462112819, ; 79: System.IO.Compression.dll => 0x57261233 => 112
	i32 1469204771, ; 80: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 52
	i32 1470490898, ; 81: Microsoft.Extensions.Primitives => 0x57a5e912 => 28
	i32 1479771757, ; 82: System.Collections.Immutable => 0x5833866d => 36
	i32 1490351284, ; 83: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 13
	i32 1582372066, ; 84: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 67
	i32 1592978981, ; 85: System.Runtime.Serialization.dll => 0x5ef2ee25 => 8
	i32 1622152042, ; 86: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 81
	i32 1624863272, ; 87: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 100
	i32 1636350590, ; 88: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 65
	i32 1639515021, ; 89: System.Net.Http.dll => 0x61b9038d => 7
	i32 1657153582, ; 90: System.Runtime => 0x62c6282e => 44
	i32 1658241508, ; 91: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 94
	i32 1658251792, ; 92: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 106
	i32 1670060433, ; 93: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 62
	i32 1688112883, ; 94: Microsoft.Data.Sqlite => 0x649e8ef3 => 13
	i32 1689493916, ; 95: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 16
	i32 1701541528, ; 96: System.Diagnostics.Debug.dll => 0x656b7698 => 6
	i32 1711441057, ; 97: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 33
	i32 1726116996, ; 98: System.Reflection.dll => 0x66e27484 => 120
	i32 1729485958, ; 99: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 58
	i32 1766324549, ; 100: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 93
	i32 1770582343, ; 101: Microsoft.Extensions.Logging.dll => 0x6988f147 => 26
	i32 1776026572, ; 102: System.Core.dll => 0x69dc03cc => 37
	i32 1788241197, ; 103: Xamarin.AndroidX.Fragment => 0x6a96652d => 70
	i32 1796167890, ; 104: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 12
	i32 1808609942, ; 105: Xamarin.AndroidX.Loader => 0x6bcd3296 => 81
	i32 1813201214, ; 106: Xamarin.Google.Android.Material => 0x6c13413e => 106
	i32 1818569960, ; 107: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 87
	i32 1828688058, ; 108: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 25
	i32 1867746548, ; 109: Xamarin.Essentials.dll => 0x6f538cf4 => 101
	i32 1878053835, ; 110: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 105
	i32 1885316902, ; 111: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 55
	i32 1886040351, ; 112: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 18
	i32 1894524299, ; 113: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 14
	i32 1900610850, ; 114: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 115: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 84
	i32 2011961780, ; 116: System.Buffers.dll => 0x77ec19b4 => 35
	i32 2014489277, ; 117: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 18
	i32 2019465201, ; 118: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 79
	i32 2055257422, ; 119: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 76
	i32 2079903147, ; 120: System.Runtime.dll => 0x7bf8cdab => 44
	i32 2090596640, ; 121: System.Numerics.Vectors => 0x7c9bf920 => 42
	i32 2097448633, ; 122: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 72
	i32 2103459038, ; 123: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 34
	i32 2126786730, ; 124: Xamarin.Forms.Platform.Android => 0x7ec430aa => 103
	i32 2181898931, ; 125: Microsoft.Extensions.Options.dll => 0x820d22b3 => 27
	i32 2192057212, ; 126: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 25
	i32 2197979891, ; 127: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 24
	i32 2201231467, ; 128: System.Net.Http => 0x8334206b => 7
	i32 2217644978, ; 129: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 96
	i32 2244775296, ; 130: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 82
	i32 2252897993, ; 131: Microsoft.EntityFrameworkCore => 0x86487ec9 => 16
	i32 2256548716, ; 132: Xamarin.AndroidX.MultiDex => 0x8680336c => 84
	i32 2261435625, ; 133: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 74
	i32 2266799131, ; 134: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 21
	i32 2279755925, ; 135: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 90
	i32 2315684594, ; 136: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 50
	i32 2409053734, ; 137: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 88
	i32 2435904999, ; 138: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 118
	i32 2465273461, ; 139: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 31
	i32 2465532216, ; 140: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 61
	i32 2471841756, ; 141: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 142: Java.Interop.dll => 0x93918882 => 11
	i32 2490993605, ; 143: System.AppContext.dll => 0x94798bc5 => 122
	i32 2501346920, ; 144: System.Data.DataSetExtensions => 0x95178668 => 110
	i32 2505896520, ; 145: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 78
	i32 2570120770, ; 146: System.Text.Encodings.Web => 0x9930ee42 => 45
	i32 2581819634, ; 147: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 97
	i32 2620871830, ; 148: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 65
	i32 2624644809, ; 149: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 69
	i32 2633051222, ; 150: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 77
	i32 2634653062, ; 151: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 17
	i32 2701096212, ; 152: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 94
	i32 2732626843, ; 153: Xamarin.AndroidX.Activity => 0xa2e0939b => 49
	i32 2737747696, ; 154: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 52
	i32 2766581644, ; 155: Xamarin.Forms.Core => 0xa4e6af8c => 102
	i32 2778768386, ; 156: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 99
	i32 2810250172, ; 157: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 63
	i32 2819470561, ; 158: System.Xml.dll => 0xa80db4e1 => 47
	i32 2847789619, ; 159: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 17
	i32 2853208004, ; 160: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 99
	i32 2855708567, ; 161: Xamarin.AndroidX.Transition => 0xaa36a797 => 95
	i32 2901442782, ; 162: System.Reflection => 0xacf080de => 120
	i32 2903344695, ; 163: System.ComponentModel.Composition => 0xad0d8637 => 114
	i32 2905242038, ; 164: mscorlib.dll => 0xad2a79b6 => 30
	i32 2916838712, ; 165: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 100
	i32 2919462931, ; 166: System.Numerics.Vectors.dll => 0xae037813 => 42
	i32 2921128767, ; 167: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 51
	i32 2947191386, ; 168: Earthbender => 0xafaa925a => 9
	i32 2978675010, ; 169: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 68
	i32 3024354802, ; 170: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 73
	i32 3044182254, ; 171: FormsViewGroup => 0xb57288ee => 10
	i32 3057625584, ; 172: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 85
	i32 3069363400, ; 173: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 19
	i32 3111772706, ; 174: System.Runtime.Serialization => 0xb979e222 => 8
	i32 3124832203, ; 175: System.Threading.Tasks.Extensions => 0xba4127cb => 125
	i32 3147165239, ; 176: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 119
	i32 3195844289, ; 177: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 19
	i32 3204380047, ; 178: System.Data.dll => 0xbefef58f => 108
	i32 3211777861, ; 179: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 67
	i32 3220365878, ; 180: System.Threading => 0xbff2e236 => 5
	i32 3247949154, ; 181: Mono.Security => 0xc197c562 => 124
	i32 3258312781, ; 182: Xamarin.AndroidX.CardView => 0xc235e84d => 58
	i32 3265893370, ; 183: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 125
	i32 3267021929, ; 184: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 56
	i32 3280506390, ; 185: System.ComponentModel.Annotations.dll => 0xc3888e16 => 117
	i32 3317135071, ; 186: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 66
	i32 3317144872, ; 187: System.Data => 0xc5b79d28 => 108
	i32 3340431453, ; 188: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 55
	i32 3346324047, ; 189: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 86
	i32 3353484488, ; 190: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 72
	i32 3358260929, ; 191: System.Text.Json => 0xc82afec1 => 46
	i32 3360279109, ; 192: SQLitePCLRaw.core => 0xc849ca45 => 32
	i32 3362522851, ; 193: Xamarin.AndroidX.Core => 0xc86c06e3 => 64
	i32 3366347497, ; 194: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 195: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 90
	i32 3395150330, ; 196: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 43
	i32 3404865022, ; 197: System.ServiceModel.Internals => 0xcaf21dfe => 116
	i32 3428513518, ; 198: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 23
	i32 3429136800, ; 199: System.Xml => 0xcc6479a0 => 47
	i32 3430777524, ; 200: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 201: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 69
	i32 3476120550, ; 202: Mono.Android => 0xcf3163e6 => 29
	i32 3485117614, ; 203: System.Text.Json.dll => 0xcfbaacae => 46
	i32 3486566296, ; 204: System.Transactions => 0xcfd0c798 => 109
	i32 3493954962, ; 205: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 60
	i32 3501239056, ; 206: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 56
	i32 3509114376, ; 207: System.Xml.Linq => 0xd128d608 => 48
	i32 3536029504, ; 208: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 103
	i32 3567349600, ; 209: System.ComponentModel.Composition.dll => 0xd4a16f60 => 114
	i32 3618140916, ; 210: Xamarin.AndroidX.Preference => 0xd7a872f4 => 88
	i32 3627220390, ; 211: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 89
	i32 3632359727, ; 212: Xamarin.Forms.Platform => 0xd881692f => 104
	i32 3633644679, ; 213: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 51
	i32 3641597786, ; 214: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 76
	i32 3645089577, ; 215: System.ComponentModel.DataAnnotations => 0xd943a729 => 118
	i32 3657292374, ; 216: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 21
	i32 3672681054, ; 217: Mono.Android.dll => 0xdae8aa5e => 29
	i32 3676310014, ; 218: System.Web.Services.dll => 0xdb2009fe => 115
	i32 3680078794, ; 219: Earthbender.dll => 0xdb598bca => 9
	i32 3682565725, ; 220: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 57
	i32 3684561358, ; 221: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 60
	i32 3689375977, ; 222: System.Drawing.Common => 0xdbe768e9 => 111
	i32 3718780102, ; 223: Xamarin.AndroidX.Annotation => 0xdda814c6 => 50
	i32 3724971120, ; 224: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 85
	i32 3748608112, ; 225: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 38
	i32 3754567612, ; 226: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 34
	i32 3758932259, ; 227: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 74
	i32 3786282454, ; 228: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 59
	i32 3822602673, ; 229: Xamarin.AndroidX.Media => 0xe3d849b1 => 83
	i32 3829621856, ; 230: System.Numerics.dll => 0xe4436460 => 41
	i32 3841636137, ; 231: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 22
	i32 3849253459, ; 232: System.Runtime.InteropServices.dll => 0xe56ef253 => 121
	i32 3885922214, ; 233: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 95
	i32 3896106733, ; 234: System.Collections.Concurrent.dll => 0xe839deed => 3
	i32 3896760992, ; 235: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 64
	i32 3920810846, ; 236: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 113
	i32 3921031405, ; 237: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 98
	i32 3931092270, ; 238: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 87
	i32 3945713374, ; 239: System.Data.DataSetExtensions.dll => 0xeb2ecede => 110
	i32 3955647286, ; 240: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 53
	i32 4025784931, ; 241: System.Memory => 0xeff49a63 => 40
	i32 4073602200, ; 242: System.Threading.dll => 0xf2ce3c98 => 5
	i32 4101842092, ; 243: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 20
	i32 4105002889, ; 244: Mono.Security.dll => 0xf4ad5f89 => 124
	i32 4126470640, ; 245: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 23
	i32 4130442656, ; 246: System.AppContext => 0xf6318da0 => 122
	i32 4151237749, ; 247: System.Core => 0xf76edc75 => 37
	i32 4182413190, ; 248: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 80
	i32 4213026141, ; 249: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 38
	i32 4260525087, ; 250: System.Buffers => 0xfdf2741f => 35
	i32 4292120959 ; 251: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 80
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [252 x i32] [
	i32 24, i32 78, i32 107, i32 0, i32 102, i32 92, i32 121, i32 92, ; 0..7
	i32 117, i32 59, i32 93, i32 57, i32 6, i32 73, i32 115, i32 62, ; 8..15
	i32 77, i32 71, i32 49, i32 41, i32 75, i32 33, i32 40, i32 61, ; 16..23
	i32 101, i32 4, i32 70, i32 30, i32 39, i32 71, i32 82, i32 28, ; 24..31
	i32 109, i32 26, i32 123, i32 12, i32 113, i32 0, i32 66, i32 45, ; 32..39
	i32 98, i32 54, i32 3, i32 48, i32 31, i32 112, i32 27, i32 111, ; 40..47
	i32 89, i32 107, i32 75, i32 10, i32 119, i32 4, i32 91, i32 22, ; 48..55
	i32 53, i32 104, i32 79, i32 39, i32 14, i32 15, i32 96, i32 86, ; 56..63
	i32 15, i32 54, i32 20, i32 97, i32 32, i32 68, i32 116, i32 91, ; 64..71
	i32 2, i32 83, i32 63, i32 43, i32 123, i32 105, i32 36, i32 112, ; 72..79
	i32 52, i32 28, i32 36, i32 13, i32 67, i32 8, i32 81, i32 100, ; 80..87
	i32 65, i32 7, i32 44, i32 94, i32 106, i32 62, i32 13, i32 16, ; 88..95
	i32 6, i32 33, i32 120, i32 58, i32 93, i32 26, i32 37, i32 70, ; 96..103
	i32 12, i32 81, i32 106, i32 87, i32 25, i32 101, i32 105, i32 55, ; 104..111
	i32 18, i32 14, i32 2, i32 84, i32 35, i32 18, i32 79, i32 76, ; 112..119
	i32 44, i32 42, i32 72, i32 34, i32 103, i32 27, i32 25, i32 24, ; 120..127
	i32 7, i32 96, i32 82, i32 16, i32 84, i32 74, i32 21, i32 90, ; 128..135
	i32 50, i32 88, i32 118, i32 31, i32 61, i32 1, i32 11, i32 122, ; 136..143
	i32 110, i32 78, i32 45, i32 97, i32 65, i32 69, i32 77, i32 17, ; 144..151
	i32 94, i32 49, i32 52, i32 102, i32 99, i32 63, i32 47, i32 17, ; 152..159
	i32 99, i32 95, i32 120, i32 114, i32 30, i32 100, i32 42, i32 51, ; 160..167
	i32 9, i32 68, i32 73, i32 10, i32 85, i32 19, i32 8, i32 125, ; 168..175
	i32 119, i32 19, i32 108, i32 67, i32 5, i32 124, i32 58, i32 125, ; 176..183
	i32 56, i32 117, i32 66, i32 108, i32 55, i32 86, i32 72, i32 46, ; 184..191
	i32 32, i32 64, i32 11, i32 90, i32 43, i32 116, i32 23, i32 47, ; 192..199
	i32 1, i32 69, i32 29, i32 46, i32 109, i32 60, i32 56, i32 48, ; 200..207
	i32 103, i32 114, i32 88, i32 89, i32 104, i32 51, i32 76, i32 118, ; 208..215
	i32 21, i32 29, i32 115, i32 9, i32 57, i32 60, i32 111, i32 50, ; 216..223
	i32 85, i32 38, i32 34, i32 74, i32 59, i32 83, i32 41, i32 22, ; 224..231
	i32 121, i32 95, i32 3, i32 64, i32 113, i32 98, i32 87, i32 110, ; 232..239
	i32 53, i32 40, i32 5, i32 20, i32 124, i32 23, i32 122, i32 37, ; 240..247
	i32 80, i32 38, i32 35, i32 80 ; 248..251
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
