; ModuleID = 'obj\Release\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [146 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 9
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 23
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 24
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 55
	i64 702024105029695270, ; 4: System.Drawing.Common => 0x9be17343c0e7726 => 68
	i64 720058930071658100, ; 5: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 49
	i64 870603111519317375, ; 6: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 28
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 47
	i64 940822596282819491, ; 8: System.Transactions => 0xd0e792aa81923a3 => 67
	i64 996343623809489702, ; 9: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 62
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 71
	i64 1120440138749646132, ; 11: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 64
	i64 1301485588176585670, ; 12: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 27
	i64 1425944114962822056, ; 13: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1518315023656898250, ; 14: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 29
	i64 1624659445732251991, ; 15: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 41
	i64 1672383392659050004, ; 16: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 8
	i64 1795316252682057001, ; 17: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 42
	i64 1836611346387731153, ; 18: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 55
	i64 1865037103900624886, ; 19: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 7
	i64 1930726298510463061, ; 20: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 3
	i64 1981742497975770890, ; 21: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 52
	i64 1986553961460820075, ; 22: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 58
	i64 2040001226662520565, ; 23: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 72
	i64 2192948757939169934, ; 24: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 10
	i64 2262844636196693701, ; 25: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 47
	i64 2287887973817120656, ; 26: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 70
	i64 2329709569556905518, ; 27: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 51
	i64 2335503487726329082, ; 28: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 37
	i64 2337758774805907496, ; 29: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 36
	i64 2470498323731680442, ; 30: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 44
	i64 2547086958574651984, ; 31: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 40
	i64 2592350477072141967, ; 32: System.Xml.dll => 0x23f9e10627330e8f => 39
	i64 2624866290265602282, ; 33: mscorlib.dll => 0x246d65fbde2db8ea => 25
	i64 2656907746661064104, ; 34: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 18
	i64 2783046991838674048, ; 35: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 36
	i64 2960931600190307745, ; 36: Xamarin.Forms.Core => 0x2917579a49927da1 => 60
	i64 3017704767998173186, ; 37: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 64
	i64 3289520064315143713, ; 38: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 50
	i64 3522470458906976663, ; 39: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 56
	i64 3523004241079211829, ; 40: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 15
	i64 3531994851595924923, ; 41: System.Numerics => 0x31042a9aade235bb => 35
	i64 3638003163729360188, ; 42: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 16
	i64 3727469159507183293, ; 43: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 54
	i64 3869221888984012293, ; 44: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 21
	i64 4337444564132831293, ; 45: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 26
	i64 4513320955448359355, ; 46: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 12
	i64 4525561845656915374, ; 47: System.ServiceModel.Internals => 0x3ece06856b710dae => 69
	i64 4612482779465751747, ; 48: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 10
	i64 4794310189461587505, ; 49: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 40
	i64 4795410492532947900, ; 50: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 56
	i64 5129462924058778861, ; 51: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 8
	i64 5142919913060024034, ; 52: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 61
	i64 5203618020066742981, ; 53: Xamarin.Essentials => 0x4836f704f0e652c5 => 59
	i64 5507995362134886206, ; 54: System.Core.dll => 0x4c705499688c873e => 32
	i64 6085203216496545422, ; 55: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 62
	i64 6086316965293125504, ; 56: FormsViewGroup.dll => 0x5476f10882baef80 => 5
	i64 6183170893902868313, ; 57: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 26
	i64 6222399776351216807, ; 58: System.Text.Json.dll => 0x565a67a0ffe264a7 => 38
	i64 6401687960814735282, ; 59: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 51
	i64 6548213210057960872, ; 60: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 46
	i64 6560151584539558821, ; 61: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 22
	i64 6659513131007730089, ; 62: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 49
	i64 6731780007171502960, ; 63: Earthbender.Android.dll => 0x5d6c16400188b370 => 0
	i64 7473077275758116397, ; 64: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 9
	i64 7635363394907363464, ; 65: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 60
	i64 7637365915383206639, ; 66: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 59
	i64 7654504624184590948, ; 67: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7820441508502274321, ; 68: System.Data => 0x6c87ca1e14ff8111 => 66
	i64 7836164640616011524, ; 69: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 41
	i64 7972383140441761405, ; 70: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 14
	i64 8083354569033831015, ; 71: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 50
	i64 8087206902342787202, ; 72: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 33
	i64 8167236081217502503, ; 73: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 6
	i64 8318905602908530212, ; 74: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 70
	i64 8518412311883997971, ; 75: System.Collections.Immutable => 0x76377add7c28e313 => 31
	i64 8626175481042262068, ; 76: Java.Interop => 0x77b654e585b55834 => 6
	i64 8725526185868997716, ; 77: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 33
	i64 9111603110219107042, ; 78: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 15
	i64 9250544137016314866, ; 79: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 11
	i64 9324707631942237306, ; 80: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 42
	i64 9662334977499516867, ; 81: System.Numerics.dll => 0x8617827802b0cfc3 => 35
	i64 9678050649315576968, ; 82: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 44
	i64 9808709177481450983, ; 83: Mono.Android.dll => 0x881f890734e555e7 => 24
	i64 9834056768316610435, ; 84: System.Transactions.dll => 0x8879968718899783 => 67
	i64 9864956466380592553, ; 85: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 13
	i64 9998632235833408227, ; 86: Mono.Security => 0x8ac2470b209ebae3 => 71
	i64 10038780035334861115, ; 87: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10229024438826829339, ; 88: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 46
	i64 10430153318873392755, ; 89: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 45
	i64 10447083246144586668, ; 90: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 7
	i64 10811915265162633087, ; 91: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 12
	i64 11002576679268595294, ; 92: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 20
	i64 11023048688141570732, ; 93: System.Core => 0x98f9bc61168392ac => 32
	i64 11037814507248023548, ; 94: System.Xml => 0x992e31d0412bf7fc => 39
	i64 11122995063473561350, ; 95: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 58
	i64 11162124722117608902, ; 96: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 57
	i64 11226290749488709958, ; 97: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 22
	i64 11398376662953476300, ; 98: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 13
	i64 11529969570048099689, ; 99: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 57
	i64 11530571088791430846, ; 100: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 21
	i64 12102847907131387746, ; 101: System.Buffers => 0xa7f5f40c43256f62 => 30
	i64 12145679461940342714, ; 102: System.Text.Json => 0xa88e1f1ebcb62fba => 38
	i64 12269460666702402136, ; 103: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 31
	i64 12279246230491828964, ; 104: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 29
	i64 12451044538927396471, ; 105: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 48
	i64 12466513435562512481, ; 106: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 53
	i64 12538491095302438457, ; 107: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 43
	i64 12843321153144804894, ; 108: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 23
	i64 12963446364377008305, ; 109: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 68
	i64 13370592475155966277, ; 110: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13454009404024712428, ; 111: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 65
	i64 13572454107664307259, ; 112: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 54
	i64 13647894001087880694, ; 113: System.Data.dll => 0xbd670f48cb071df6 => 66
	i64 13955418299340266673, ; 114: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 19
	i64 13959074834287824816, ; 115: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 48
	i64 13967638549803255703, ; 116: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 61
	i64 14124974489674258913, ; 117: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 43
	i64 14133832980772275001, ; 118: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 11
	i64 14222361056902958141, ; 119: Earthbender.dll => 0xc55ffa07280ccc3d => 4
	i64 14551742072151931844, ; 120: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 37
	i64 14669215534098758659, ; 121: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 18
	i64 14792063746108907174, ; 122: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 65
	i64 14954917835170835695, ; 123: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 17
	i64 15159005494301078990, ; 124: Earthbender.Android => 0xd25f9b2e6402b5ce => 0
	i64 15227001540531775957, ; 125: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 16
	i64 15370334346939861994, ; 126: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 45
	i64 15391712275433856905, ; 127: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 17
	i64 15609085926864131306, ; 128: System.dll => 0xd89e9cf3334914ea => 34
	i64 15620595871140898079, ; 129: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 19
	i64 15810740023422282496, ; 130: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 63
	i64 15963349826457351533, ; 131: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 72
	i64 16154507427712707110, ; 132: System => 0xe03056ea4e39aa26 => 34
	i64 16321164108206115771, ; 133: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 20
	i64 16324688364014460083, ; 134: Earthbender => 0xe28cf1933e08dcb3 => 4
	i64 16648892297579399389, ; 135: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 3
	i64 16755018182064898362, ; 136: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 27
	i64 16833383113903931215, ; 137: mscorlib => 0xe99c30c1484d7f4f => 25
	i64 17704177640604968747, ; 138: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 53
	i64 17710060891934109755, ; 139: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 52
	i64 17838668724098252521, ; 140: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 30
	i64 17882897186074144999, ; 141: FormsViewGroup => 0xf82cd03e3ac830e7 => 5
	i64 17892495832318972303, ; 142: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 63
	i64 18017743553296241350, ; 143: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 14
	i64 18129453464017766560, ; 144: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 69
	i64 18370042311372477656 ; 145: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 28
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [146 x i32] [
	i32 9, i32 23, i32 24, i32 55, i32 68, i32 49, i32 28, i32 47, ; 0..7
	i32 67, i32 62, i32 71, i32 64, i32 27, i32 2, i32 29, i32 41, ; 8..15
	i32 8, i32 42, i32 55, i32 7, i32 3, i32 52, i32 58, i32 72, ; 16..23
	i32 10, i32 47, i32 70, i32 51, i32 37, i32 36, i32 44, i32 40, ; 24..31
	i32 39, i32 25, i32 18, i32 36, i32 60, i32 64, i32 50, i32 56, ; 32..39
	i32 15, i32 35, i32 16, i32 54, i32 21, i32 26, i32 12, i32 69, ; 40..47
	i32 10, i32 40, i32 56, i32 8, i32 61, i32 59, i32 32, i32 62, ; 48..55
	i32 5, i32 26, i32 38, i32 51, i32 46, i32 22, i32 49, i32 0, ; 56..63
	i32 9, i32 60, i32 59, i32 1, i32 66, i32 41, i32 14, i32 50, ; 64..71
	i32 33, i32 6, i32 70, i32 31, i32 6, i32 33, i32 15, i32 11, ; 72..79
	i32 42, i32 35, i32 44, i32 24, i32 67, i32 13, i32 71, i32 1, ; 80..87
	i32 46, i32 45, i32 7, i32 12, i32 20, i32 32, i32 39, i32 58, ; 88..95
	i32 57, i32 22, i32 13, i32 57, i32 21, i32 30, i32 38, i32 31, ; 96..103
	i32 29, i32 48, i32 53, i32 43, i32 23, i32 68, i32 2, i32 65, ; 104..111
	i32 54, i32 66, i32 19, i32 48, i32 61, i32 43, i32 11, i32 4, ; 112..119
	i32 37, i32 18, i32 65, i32 17, i32 0, i32 16, i32 45, i32 17, ; 120..127
	i32 34, i32 19, i32 63, i32 72, i32 34, i32 20, i32 4, i32 3, ; 128..135
	i32 27, i32 25, i32 53, i32 52, i32 30, i32 5, i32 63, i32 14, ; 136..143
	i32 69, i32 28 ; 144..145
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
