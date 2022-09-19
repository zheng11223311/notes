.class public Lcom/tudou/android/Youku;
.super Landroid/support/multidex/MultiDexApplication;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/android/Youku$NetState;,
        Lcom/tudou/android/Youku$VideoType;,
        Lcom/tudou/android/Youku$FromType;,
        Lcom/tudou/android/Youku$Type;
    }
.end annotation


# static fields
.field public static ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean; = null

.field public static final API_LEVEL:I

.field public static APN_NAME:Ljava/lang/String; = null

.field public static final AUTH:Ljava/lang/String; = "ZThiMGNhM2M3ZDVmNTAxM2Y5ZDQxNzMyZDQzZTkxMDI="

.field public static COOKIE:Ljava/lang/String; = null

.field private static final CORE_POOL_SIZE:I = 0x1

.field public static final Channel_caifu:I = 0x18

.field public static final Channel_chengshi:I = 0x68

.field public static final Channel_dianshiju:I = 0x1e

.field public static final Channel_dianying:I = 0x16

.field public static final Channel_dongman:I = 0x9

.field public static final Channel_fengshang:I = 0x20

.field public static final Channel_gaoxiao:I = 0x5

.field public static final Channel_jiankang:I = 0x21

.field public static final Channel_jiaoyu:I = 0x19

.field public static final Channel_jilupian:I = 0x1c

.field public static final Channel_keji:I = 0x15

.field public static final Channel_lehuo:I = 0x3

.field public static final Channel_meirong:I = 0x22

.field public static final Channel_nvxing:I = 0x1b

.field public static final Channel_qiche:I = 0x1a

.field public static final Channel_redian:I = 0x1d

.field public static final Channel_tiyu:I = 0xf

.field public static final Channel_yinyue:I = 0xe

.field public static final Channel_youxi:I = 0xa

.field public static final Channel_yuanchuang:I = 0x63

.field public static final Channel_yulei:I = 0x1

.field public static final Channel_zongyi:I = 0x1f

.field public static DIRECTORY_PICTURES:Ljava/io/File; = null

.field public static final FORMAT_3GP:Ljava/lang/String; = "2"

.field public static final FORMAT_3GPHD:Ljava/lang/String; = "4"

.field public static final FORMAT_3GPHD_INT:I = 0x4

.field public static final FORMAT_3GP_INT:I = 0x2

.field public static final FORMAT_F4V:Ljava/lang/String; = "10"

.field public static final FORMAT_F4V_INT:I = 0xa

.field public static final FORMAT_FLV:Ljava/lang/String; = "5"

.field public static final FORMAT_FLV_INT:I = 0x5

.field public static final FORMAT_HD2:Ljava/lang/String; = "7"

.field public static final FORMAT_HD2_INT:I = 0x7

.field public static final FORMAT_M3U8:Ljava/lang/String; = "6"

.field public static final FORMAT_M3U8_INT:I = 0x6

.field public static final FORMAT_MP4:Ljava/lang/String; = "1"

.field public static final FORMAT_MP4_INT:I = 0x1

.field private static final GET_STATUS_BAR_HEIGHT:I = 0xc8

.field public static GUID:Ljava/lang/String; = null

.field public static HTTP_CONNECT_TIMEOUT_3G:I = 0x0

.field public static HTTP_CONNECT_TIMEOUT_WIFI:I = 0x0

.field public static HTTP_READ_TIMEOUT_3G:I = 0x0

.field public static HTTP_READ_TIMEOUT_WIFI:I = 0x0

.field private static final INIT_SDK:I = 0xb

.field public static IS_NEED_TO_UPDATE:Z = false

.field private static final KEEP_ALIVE_TIME:I = 0x3

.field public static final LAIFENG_CPS_DEFAULT:Ljava/lang/String; = "00014643"

.field public static final LAIFENG_HANXIU:Ljava/lang/String; = "00014644"

.field private static final MAXIMUM_POOL_SIZE:I = 0x1

.field public static MAX_PIXELS:I = 0x0

.field public static final MENU_ITEM_SECONDARY_STRINGS:[Ljava/lang/String;

.field public static final MIX_API_LEVEL:I = 0x12

.field public static final MSG_DATA_CONNECTED:I = 0x27b

.field private static final MSG_DATA_DISCONNECTED:I = 0x16d

.field private static final MSG_START_IKU_SERVER:I = 0x6f

.field private static final MSG_UPLOAD_TIPS:I = 0x29a

.field public static final NET_WORK_CHANGE_TIPS_DELAYED:I = 0x1388

.field public static NO_WLAN_DOWNLOAD_FLG:Ljava/lang/String; = null

.field public static NO_WLAN_UPLOAD_FLG:Ljava/lang/String; = null

.field public static final PID:Ljava/lang/String; = "XMTAyOA=="

.field public static POSTER_CHANNELIMAGE_COUNT:I = 0x0

.field public static POSTER_IMAGE_COUNT:I = 0x0

.field public static PUSH_FLG:Ljava/lang/String; = null

.field public static final ShareImg:I = 0x4

.field public static final ShareOther:I = 0x2

.field public static final ShareShortVideo:I = 0x5

.field public static final ShareSince:I = 0x1

.field public static final ShareUrl:I = 0x3

.field public static final ShareVide:I = 0x6

.field public static final TAG_3G:I = 0x3

.field public static final TAG_GLOBAL:Ljava/lang/String; = "Youku"

.field public static final TAG_NET:I = 0x2

.field public static final TIMEOUT:I = 0x7530

.field public static URLCacheDataPath:Ljava/lang/String; = null

.field public static User_Agent:Ljava/lang/String; = null

.field private static final WORK_QUEUE_SIZE:I = 0xc8

.field public static advertMiddleStr:Ljava/lang/String; = null

.field public static advertPauseStr:Ljava/lang/String; = null

.field public static advertPreStr:Ljava/lang/String; = null

.field public static appName:Ljava/lang/String; = null

.field public static channelList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/Channel;",
            ">;"
        }
    .end annotation
.end field

.field public static channelPoster:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;"
        }
    .end annotation
.end field

.field public static channelSelection:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelSelection;",
            ">;"
        }
    .end annotation
.end field

.field public static final chatS:Ljava/lang/String; = "sharedpreferences_chat"

.field public static context:Landroid/content/Context;

.field private static volatile downloadQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static fileTypeTudou:I

.field public static filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Filter;",
            ">;"
        }
    .end annotation
.end field

.field public static flags:I

.field public static freq:I

.field public static homeChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/HomeChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static isApp_market_control:Z

.field public static isCloudSoftDecoderEnable:Z

.field public static isContainNewvideo:Z

.field public static isContainPodcast:Z

.field public static isGame_Show:Z

.field public static isHighEnd:Z

.field public static isKuwo_show:Z

.field private static isLoadDex:Z

.field private static isNetRecerverRegist:Z

.field public static isPad:Z

.field public static isParse:Z

.field public static isQQLogined:Z

.field public static isShowNetWorkChange:Z

.field public static isSinaLogined:Z

.field public static isYoukuVideo:Z

.field public static loginAccount:Ljava/lang/String;

.field private static mChatSharedPreferences:Landroid/content/SharedPreferences;

.field public static mCurrentNetState:Lcom/tudou/android/Youku$NetState;

.field private static mDownloadSharedPreferences:Landroid/content/SharedPreferences;

.field public static mHistoryNetState:Lcom/tudou/android/Youku$NetState;

.field public static mInitial:Lcom/youku/vo/Initial;

.field private static mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field public static msgHandler:Landroid/os/Handler;

.field public static openStatusBar:Z

.field public static orders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Order;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static poster:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Poster;",
            ">;"
        }
    .end annotation
.end field

.field public static sPageStillExist:Z

.field public static sortBean:Lcom/youku/vo/ChannelSortBean;

.field public static statusBarHeight:I

.field private static tudouActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public static userName:Ljava/lang/String;

.field public static userprofile:Lcom/youku/vo/UserProfile;

.field public static versionName:Ljava/lang/String;

.field public static videoInfoItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/VideoInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public static video_quality:I


# instance fields
.field private handler:Landroid/os/Handler;

.field public mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v1, 0xbb8

    const/4 v4, 0x7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 174
    sput-boolean v9, Lcom/tudou/android/Youku;->openStatusBar:Z

    .line 180
    sput v3, Lcom/tudou/android/Youku;->video_quality:I

    .line 187
    sput v1, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_3G:I

    .line 189
    const/16 v0, 0x1f40

    sput v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_3G:I

    .line 191
    sput v1, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    .line 193
    const/16 v0, 0x1f40

    sput v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tudou/android/Youku;->poster:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tudou/android/Youku;->channelPoster:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tudou/android/Youku;->orders:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tudou/android/Youku;->filters:Ljava/util/ArrayList;

    .line 244
    const-string v0, ""

    sput-object v0, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    .line 249
    sput-boolean v9, Lcom/tudou/android/Youku;->isContainPodcast:Z

    .line 250
    sput-boolean v9, Lcom/tudou/android/Youku;->isContainNewvideo:Z

    .line 257
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/android/Youku;->loginAccount:Ljava/lang/String;

    .line 258
    sput-boolean v9, Lcom/tudou/android/Youku;->isQQLogined:Z

    .line 259
    sput-boolean v9, Lcom/tudou/android/Youku;->isSinaLogined:Z

    .line 260
    const-string v0, ""

    sput-object v0, Lcom/tudou/android/Youku;->userName:Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/android/Youku;->COOKIE:Ljava/lang/String;

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/tudou/android/Youku;->API_LEVEL:I

    .line 266
    sput-boolean v2, Lcom/tudou/android/Youku;->isCloudSoftDecoderEnable:Z

    .line 269
    sput-boolean v2, Lcom/tudou/android/Youku;->isKuwo_show:Z

    .line 272
    const-string v0, "nowlandownload"

    sput-object v0, Lcom/tudou/android/Youku;->NO_WLAN_DOWNLOAD_FLG:Ljava/lang/String;

    .line 274
    const-string v0, "nowlanupload"

    sput-object v0, Lcom/tudou/android/Youku;->NO_WLAN_UPLOAD_FLG:Ljava/lang/String;

    .line 276
    const-string/jumbo v0, "video_notifi"

    sput-object v0, Lcom/tudou/android/Youku;->PUSH_FLG:Ljava/lang/String;

    .line 294
    sput-boolean v9, Lcom/tudou/android/Youku;->isPad:Z

    .line 298
    sput-boolean v9, Lcom/tudou/android/Youku;->isShowNetWorkChange:Z

    .line 300
    sput-boolean v9, Lcom/tudou/android/Youku;->isParse:Z

    .line 303
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "\u97f3\u4e50"

    aput-object v1, v0, v9

    const-string/jumbo v1, "\u7efc\u827a"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u52a8\u6f2b"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v3, "\u6392\u884c\u699c"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "\u7535\u89c6\u5267"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v3, "\u7535\u5f71"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v3, "\u89c6\u9891"

    aput-object v3, v0, v1

    sput-object v0, Lcom/tudou/android/Youku;->MENU_ITEM_SECONDARY_STRINGS:[Ljava/lang/String;

    .line 317
    sput v4, Lcom/tudou/android/Youku;->flags:I

    .line 333
    const-string v0, ""

    sput-object v0, Lcom/tudou/android/Youku;->URLCacheDataPath:Ljava/lang/String;

    .line 335
    sput v9, Lcom/tudou/android/Youku;->statusBarHeight:I

    .line 349
    sput-boolean v9, Lcom/tudou/android/Youku;->sPageStillExist:Z

    .line 362
    const-string v0, ""

    sput-object v0, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    .line 363
    const-string v0, ""

    sput-object v0, Lcom/tudou/android/Youku;->advertMiddleStr:Ljava/lang/String;

    .line 364
    const-string v0, ""

    sput-object v0, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;

    .line 883
    sput-boolean v9, Lcom/tudou/android/Youku;->isNetRecerverRegist:Z

    .line 925
    new-instance v0, Lcom/tudou/android/Youku$6;

    invoke-direct {v0}, Lcom/tudou/android/Youku$6;-><init>()V

    sput-object v0, Lcom/tudou/android/Youku;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1002
    sput-boolean v2, Lcom/tudou/android/Youku;->isYoukuVideo:Z

    .line 1007
    sput v2, Lcom/tudou/android/Youku;->fileTypeTudou:I

    .line 1009
    const-string v0, ""

    sput-object v0, Lcom/tudou/android/Youku;->APN_NAME:Ljava/lang/String;

    .line 1228
    new-instance v0, Lcom/tudou/android/Youku$8;

    invoke-direct {v0}, Lcom/tudou/android/Youku$8;-><init>()V

    sput-object v0, Lcom/tudou/android/Youku;->msgHandler:Landroid/os/Handler;

    .line 1282
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/tudou/android/Youku;->downloadQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1284
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/tudou/android/Youku;->downloadQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/tudou/android/Youku;->poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1439
    sput-boolean v9, Lcom/tudou/android/Youku;->IS_NEED_TO_UPDATE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 775
    new-instance v0, Lcom/tudou/android/Youku$5;

    invoke-direct {v0, p0}, Lcom/tudou/android/Youku$5;-><init>(Lcom/tudou/android/Youku;)V

    iput-object v0, p0, Lcom/tudou/android/Youku;->handler:Landroid/os/Handler;

    return-void
.end method

.method private InitAnalyticsAgent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    const-string v0, "Tudou"

    .line 595
    .local v0, "processName":Ljava/lang/String;
    const-string v1, "com.tudou.android:download"

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/tudou/android/Youku;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    const-string v0, "Tudou Download"

    .line 599
    :cond_0
    invoke-static {v3}, Lcom/youku/analytics/AnalyticsAgent;->setDebugMode(Z)V

    .line 600
    invoke-static {v3}, Lcom/youku/analytics/AnalyticsAgent;->setTestHost(Z)V

    .line 601
    invoke-static {v3}, Lcom/youku/analytics/AnalyticsAgent;->setTest(Z)V

    .line 602
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    sget-object v2, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/youku/analytics/AnalyticsAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-wide/32 v2, 0x493e0

    invoke-static {v2, v3}, Lcom/youku/analytics/AnalyticsAgent;->setContinueSessionMillis(J)V

    .line 605
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/android/Youku;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/Youku;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initPlayer()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/android/Youku;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/Youku;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initPushSDK()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/android/Youku;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/Youku;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/tudou/android/Youku;->startPushSDK()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/android/Youku;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/Youku;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initLaiFengSDK()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/android/Youku;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/Youku;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initOneSDK()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/android/Youku;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/android/Youku;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initBianKanBianLiao()V

    return-void
.end method

.method private autoLogin()V
    .locals 0

    .prologue
    .line 525
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->autoLogin()V

    .line 526
    return-void
.end method

.method private static cancelNotification()V
    .locals 3

    .prologue
    .line 1046
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1048
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x1700

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1049
    const/16 v1, 0x1ae8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1050
    sget v1, Lcom/tudou/service/chat/ChatManager;->NOTIFY_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1051
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->cancelDownloadThread()V

    .line 1052
    return-void
.end method

.method private dexTool()V
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 796
    sget-boolean v19, Lcom/tudou/android/Youku;->isLoadDex:Z

    if-nez v19, :cond_0

    .line 797
    const/16 v19, 0x1

    sput-boolean v19, Lcom/tudou/android/Youku;->isLoadDex:Z

    .line 798
    const-string v4, "libs.apk"

    .line 799
    .local v4, "SECONDARY_DEX_NAME":Ljava/lang/String;
    const-string v19, "dex"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/tudou/android/Youku;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 800
    .local v9, "dexDir":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v19, "libs.apk"

    move-object/from16 v0, v19

    invoke-direct {v10, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    .local v10, "dexFile":Ljava/io/File;
    const-string v19, "dexopt"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/tudou/android/Youku;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v11

    .line 802
    .local v11, "dexOpt":Ljava/io/File;
    const/4 v15, 0x1

    .line 804
    .local v15, "hasDexFile":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/android/Youku;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "libs.apk"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 805
    .local v16, "ins":Ljava/io/InputStream;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_2

    .line 806
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 807
    .local v14, "fos":Ljava/io/FileOutputStream;
    const/16 v19, 0x1000

    move/from16 v0, v19

    new-array v6, v0, [B

    .line 809
    .local v6, "buf":[B
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .local v17, "l":I
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 810
    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v14, v6, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    .end local v6    # "buf":[B
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "ins":Ljava/io/InputStream;
    .end local v17    # "l":I
    :catch_0
    move-exception v12

    .line 816
    .local v12, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 817
    const-string v19, "dex"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v15, :cond_0

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/android/Youku;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 822
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v18, 0x0

    .line 823
    .local v18, "nativeLibraryDir":Ljava/lang/String;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 824
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 828
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/android/Youku;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 829
    .local v7, "cl":Ljava/lang/ClassLoader;
    new-instance v8, Ldalvik/system/DexClassLoader;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-char v22, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/vendor/lib"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-char v22, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/system/lib"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v8, v0, v1, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 835
    .local v8, "dcl":Ldalvik/system/DexClassLoader;
    :try_start_1
    const-class v19, Ljava/lang/ClassLoader;

    const-string v20, "parent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 837
    .local v13, "f":Ljava/lang/reflect/Field;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 838
    invoke-virtual {v13, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 845
    .end local v4    # "SECONDARY_DEX_NAME":Ljava/lang/String;
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    .end local v8    # "dcl":Ldalvik/system/DexClassLoader;
    .end local v9    # "dexDir":Ljava/io/File;
    .end local v10    # "dexFile":Ljava/io/File;
    .end local v11    # "dexOpt":Ljava/io/File;
    .end local v13    # "f":Ljava/lang/reflect/Field;
    .end local v15    # "hasDexFile":Z
    .end local v18    # "nativeLibraryDir":Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 812
    .restart local v4    # "SECONDARY_DEX_NAME":Ljava/lang/String;
    .restart local v6    # "buf":[B
    .restart local v9    # "dexDir":Ljava/io/File;
    .restart local v10    # "dexFile":Ljava/io/File;
    .restart local v11    # "dexOpt":Ljava/io/File;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "hasDexFile":Z
    .restart local v16    # "ins":Ljava/io/InputStream;
    .restart local v17    # "l":I
    :cond_1
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 814
    .end local v6    # "buf":[B
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "l":I
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 826
    .end local v16    # "ins":Ljava/io/InputStream;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "nativeLibraryDir":Ljava/lang/String;
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/data/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/lib/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 839
    .restart local v7    # "cl":Ljava/lang/ClassLoader;
    .restart local v8    # "dcl":Ldalvik/system/DexClassLoader;
    :catch_1
    move-exception v12

    .line 840
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v19, "dex"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static exit()V
    .locals 3

    .prologue
    .line 1020
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string/jumbo v1, "which"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1024
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->stopAllTask()V

    .line 1028
    invoke-static {}, Lcom/tudou/android/Youku;->cancelNotification()V

    .line 1030
    invoke-static {}, Lcom/tudou/android/Youku;->unRegisterNetReceiver()V

    .line 1031
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->unregister()V

    .line 1037
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/analytics/AnalyticsAgent;->onKillProcess(Landroid/content/Context;Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1041
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tudou/android/Youku;->unregisterTudouActivityLifecycleCallbacks(Landroid/content/Context;)V

    .line 1043
    return-void
.end method

.method private static fistVVstart()V
    .locals 8

    .prologue
    .line 1554
    invoke-static {}, Lcom/tudou/android/Youku;->initShuMeng()V

    .line 1555
    const-string v3, "fist start"

    invoke-static {v3}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1556
    const-string v3, "fist start"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1557
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1558
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, "phoneId":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1560
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string v4, "initial"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    const-string/jumbo v3, "wt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    const-string v3, "ht"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    const-string v3, "mobile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    const-string/jumbo v3, "time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const-string/jumbo v3, "\u9996\u6b21\u542f\u52a8"

    const-class v4, Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\u542f\u52a8\u9875"

    invoke-static {v3, v4, v5, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1567
    :cond_0
    return-void
.end method

.method public static getCPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1130
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 1138
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 1134
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCPreferenceInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 1142
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 768
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getChatPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 880
    sget-object v0, Lcom/tudou/android/Youku;->mChatSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 851
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 852
    .local v3, "pid":I
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 854
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 856
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v3, :cond_0

    .line 857
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 860
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getCurrentNetState()Lcom/tudou/android/Youku$NetState;
    .locals 1

    .prologue
    .line 1318
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    sget-object v0, Lcom/tudou/android/Youku$NetState;->NONE:Lcom/tudou/android/Youku$NetState;

    .line 1324
    :goto_0
    return-object v0

    .line 1321
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1322
    sget-object v0, Lcom/tudou/android/Youku$NetState;->WiFi:Lcom/tudou/android/Youku$NetState;

    goto :goto_0

    .line 1324
    :cond_1
    sget-object v0, Lcom/tudou/android/Youku$NetState;->ThreeG:Lcom/tudou/android/Youku$NetState;

    goto :goto_0
.end method

.method public static getIsNotShowTips()Z
    .locals 1

    .prologue
    .line 1151
    sget-boolean v0, Lcom/youku/config/Profile;->isGongxinbu:Z

    if-eqz v0, :cond_0

    .line 1152
    const-string v0, "not_show_tips"

    invoke-static {v0}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1071
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 1075
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1067
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 1099
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPreferenceInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1079
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreferenceInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 1083
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPreferenceLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1087
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPreferenceLong(Ljava/lang/String;J)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # J

    .prologue
    .line 1091
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1362
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusBarHeight()V
    .locals 2

    .prologue
    .line 1355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1356
    .local v0, "currentapiVersion":I
    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 1357
    invoke-static {}, Lcom/tudou/android/Youku;->getstatHeight()I

    move-result v1

    sput v1, Lcom/tudou/android/Youku;->statusBarHeight:I

    .line 1359
    :cond_0
    return-void
.end method

.method private getTudouSwitches()V
    .locals 5

    .prologue
    .line 1369
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1371
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getTudouSwitchesUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1374
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/android/Youku$9;

    invoke-direct {v2, p0}, Lcom/tudou/android/Youku$9;-><init>(Lcom/tudou/android/Youku;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1435
    return-void
.end method

.method public static getstatHeight()I
    .locals 7

    .prologue
    .line 1335
    const/4 v0, 0x0

    .line 1336
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1337
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1338
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    .local v5, "x":I
    const/4 v4, 0x0

    .line 1340
    .local v4, "sbar":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1341
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 1342
    const-string/jumbo v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1343
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1344
    sget-object v6, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1348
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return v4

    .line 1345
    :catch_0
    move-exception v1

    .line 1346
    .local v1, "e1":Ljava/lang/Exception;
    const-string v6, "get status bar height fail"

    invoke-static {v6}, Lcom/youku/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initBaseProject()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 678
    invoke-static {v0}, Lcom/baseproject/utils/Logger;->setDebugMode(Z)V

    .line 679
    sput-boolean v0, Lcom/baseproject/utils/Profile;->DEBUG:Z

    .line 680
    sput-boolean v0, Lcom/baseproject/utils/Profile;->LOG:Z

    .line 681
    sget-object v0, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    sput-object v0, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    .line 682
    const/4 v0, 0x1

    const-string v1, "Tudou"

    sget-object v2, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/baseproject/utils/Profile;->initProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 683
    return-void
.end method

.method private initBianKanBianLiao()V
    .locals 0

    .prologue
    .line 1608
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initRongyunSdk()V

    .line 1609
    invoke-direct {p0}, Lcom/tudou/android/Youku;->startChatService()V

    .line 1610
    return-void
.end method

.method private initCookie()V
    .locals 1

    .prologue
    .line 498
    new-instance v0, Lcom/tudou/android/Youku$1;

    invoke-direct {v0, p0}, Lcom/tudou/android/Youku$1;-><init>(Lcom/tudou/android/Youku;)V

    invoke-virtual {v0}, Lcom/tudou/android/Youku$1;->start()V

    .line 511
    return-void
.end method

.method private initGongXinBu()V
    .locals 4

    .prologue
    .line 608
    invoke-static {}, Lcom/tudou/android/Youku;->getIsNotShowTips()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 609
    invoke-static {}, Lcom/tudou/android/Youku;->getCurrentNetState()Lcom/tudou/android/Youku$NetState;

    move-result-object v2

    sput-object v2, Lcom/tudou/android/Youku;->mHistoryNetState:Lcom/tudou/android/Youku$NetState;

    .line 610
    invoke-static {}, Lcom/tudou/android/Youku;->getCurrentNetState()Lcom/tudou/android/Youku$NetState;

    move-result-object v2

    sput-object v2, Lcom/tudou/android/Youku;->mCurrentNetState:Lcom/tudou/android/Youku$NetState;

    .line 612
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/tudou/android/Youku;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/service/tracker/TrackerImpl;->startNewSession(Landroid/content/Context;)V

    .line 615
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/data/SQLiteManagerTudou;->readDatabase(Landroid/content/Context;)V

    .line 616
    invoke-direct {p0}, Lcom/tudou/android/Youku;->getTudouSwitches()V

    .line 619
    :cond_0
    const-class v2, Lcom/youku/service/device/IDevice;

    invoke-static {v2}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/service/device/IDevice;

    invoke-interface {v2}, Lcom/youku/service/device/IDevice;->init()V

    .line 621
    const-string v2, "guid"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    .line 622
    sget-object v2, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    invoke-static {}, Lcom/youku/util/Util;->getGUID()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "guid":Ljava/lang/String;
    sput-object v0, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    .line 625
    const-string v2, "guid"

    invoke-static {v2, v0}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/youku/vo/DeviceInfo;->ACTIVE_TIME:Ljava/lang/String;

    .line 629
    const-string v2, "active_time"

    sget-object v3, Lcom/youku/vo/DeviceInfo;->ACTIVE_TIME:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v0    # "guid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/youku/http/URLContainer;->getStatisticsParameter()V

    .line 632
    invoke-direct {p0}, Lcom/tudou/android/Youku;->InitAnalyticsAgent()V

    .line 640
    .end local v1    # "processName":Ljava/lang/String;
    :goto_0
    return-void

    .line 634
    :cond_2
    const-string v2, "guid"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    .line 635
    sget-object v2, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 636
    invoke-static {}, Lcom/youku/util/Util;->getGUID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tudou/android/Youku;->GUID:Ljava/lang/String;

    .line 638
    :cond_3
    invoke-static {}, Lcom/youku/http/URLContainer;->getStatisticsParameter()V

    goto :goto_0
.end method

.method private initHost()V
    .locals 1

    .prologue
    .line 709
    const-string v0, "http://api.3g.tudou.com"

    sput-object v0, Lcom/youku/http/TudouURLContainer;->TUDOU_HOST:Ljava/lang/String;

    .line 710
    const-string v0, "http://vl.api.3g.tudou.com"

    sput-object v0, Lcom/youku/http/TudouURLContainer;->PLAYLIST_HOST:Ljava/lang/String;

    .line 711
    sget-object v0, Lcom/youku/http/TudouURLContainer;->OFFICIAL_PLAY_HOST:Ljava/lang/String;

    sput-object v0, Lcom/youku/http/TudouURLContainer;->PLAY_HOST:Ljava/lang/String;

    .line 712
    sget-object v0, Lcom/youku/http/TudouURLContainer;->OFFICIAL_PLAY_HOST:Ljava/lang/String;

    sput-object v0, Lcom/youku/http/TudouURLContainer;->CACHE_HOST:Ljava/lang/String;

    .line 713
    sget-object v0, Lcom/youku/http/TudouURLContainer;->OFFICIAL_SEARCH_HOST:Ljava/lang/String;

    sput-object v0, Lcom/youku/http/TudouURLContainer;->SEARCH_HOST:Ljava/lang/String;

    .line 714
    sget-object v0, Lcom/youku/http/TudouURLContainer;->OFFICIAL_USER_HOST:Ljava/lang/String;

    sput-object v0, Lcom/youku/http/TudouURLContainer;->USER_HOST:Ljava/lang/String;

    .line 715
    const-string v0, "http://discover.api.3g.tudou.com"

    sput-object v0, Lcom/youku/http/TudouURLContainer;->DISCOVERY_HOST:Ljava/lang/String;

    .line 716
    const-string v0, "http://api.3g.youku.com/openapi-wireless/"

    sput-object v0, Lcom/youku/http/URLContainer;->YOUKU_WIRELESS_DOMAIN:Ljava/lang/String;

    .line 717
    const-string v0, "http://statis.api.3g.youku.com/"

    sput-object v0, Lcom/youku/http/URLContainer;->YOUKU_STATIC_DOMAIN:Ljava/lang/String;

    .line 718
    const-string v0, "http://push.m.youku.com/"

    sput-object v0, Lcom/youku/http/URLContainer;->YOUKU_PUSH_DOMAIN:Ljava/lang/String;

    .line 719
    const-string v0, "http://valf.atm.youku.com/sdkconfig.xml"

    sput-object v0, Lcom/youku/http/URLContainer;->MMA_CONFIG_HOST:Ljava/lang/String;

    .line 720
    const-string v0, "http://ad.api.3g.tudou.com"

    sput-object v0, Lcom/youku/http/URLContainer;->TUDOU_AD_DOMAIN:Ljava/lang/String;

    .line 721
    const-string v0, "http://rec.api.3g.tudou.com"

    sput-object v0, Lcom/youku/http/TudouURLContainer;->RECOMMEND_HOST:Ljava/lang/String;

    .line 722
    const-string v0, "http://api.3g.tudou.com"

    sput-object v0, Lcom/youku/http/TudouURLContainer;->STATISTICS_HOST:Ljava/lang/String;

    .line 723
    const-string v0, "http://dm.api.3g.tudou.com"

    sput-object v0, Lcom/youku/http/TudouURLContainer;->DANMU_HOST:Ljava/lang/String;

    .line 724
    const-string v0, "http://co.thirdpart.api.3g.tudou.com"

    sput-object v0, Lcom/youku/http/TudouURLContainer;->THIRD_PARTY_HOST:Ljava/lang/String;

    .line 743
    return-void
.end method

.method private initImageLoader()V
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baseproject/image/ImageLoaderManager;->initImageLoaderConfigurationTudou(Landroid/content/Context;)V

    .line 703
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 704
    return-void
.end method

.method private initLaiFengSDK()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    .line 531
    const/4 v0, 0x1

    invoke-static {p0, v0}, Llfsdk/LFSdkManager;->init(Landroid/app/Application;Z)V

    .line 532
    const/4 v0, 0x0

    invoke-static {v0}, Llfsdk/LFSdkManager;->setOpenSilentDownload(Z)V

    .line 533
    new-instance v0, Lcom/tudou/android/Youku$2;

    invoke-direct {v0, p0}, Lcom/tudou/android/Youku$2;-><init>(Lcom/tudou/android/Youku;)V

    invoke-static {v0}, Llfsdk/LFSdkManager;->setCallBack(Llfsdk/LFSdkManager$LFSdkCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initMediaPlayerType()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 581
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    sput-boolean v1, Lcom/tudou/android/Youku;->isHighEnd:Z

    .line 584
    const-string v0, "isSoftwareDecode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 585
    const/4 v0, 0x5

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youku/player/goplay/Profile;->setVideoType_and_PlayerType(ILandroid/content/Context;)V

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_0
    const/4 v0, 0x4

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youku/player/goplay/Profile;->setVideoType_and_PlayerType(ILandroid/content/Context;)V

    goto :goto_0
.end method

.method private initOneSDK()V
    .locals 1

    .prologue
    .line 565
    new-instance v0, Lcom/tudou/android/Youku$3;

    invoke-direct {v0, p0}, Lcom/tudou/android/Youku$3;-><init>(Lcom/tudou/android/Youku;)V

    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/AlibabaSDK;->asyncInit(Landroid/content/Context;Lcom/alibaba/sdk/android/callback/InitResultCallback;)V

    .line 578
    return-void
.end method

.method private initPID()V
    .locals 2

    .prologue
    .line 673
    const-string/jumbo v0, "wireless_pid"

    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/statistics/GameTrack;->setPid(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method private initPlayer()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 466
    const-string v1, ""

    .line 467
    .local v1, "path":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 468
    .local v2, "size":J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 470
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tudou"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 474
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tudou/video_cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    const-string v4, "Youku"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExternalCacheDir().getAbsolutePath():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getSdAvailableSize()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    div-double/2addr v4, v8

    double-to-long v2, v4

    .line 477
    const-string v4, "Youku"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    const-string v4, "Youku"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Youku.User_Agent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/youku/player/PlayerNetCache;->getInstance()Lcom/youku/player/PlayerNetCache;

    move-result-object v4

    sget-object v5, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/player/PlayerNetCache;->setUserAgent(Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/youku/player/PlayerNetCache;->getInstance()Lcom/youku/player/PlayerNetCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/PlayerNetCache;->dnsPreParse()V

    .line 483
    invoke-static {}, Lcom/youku/player/PlayerNetCache;->getInstance()Lcom/youku/player/PlayerNetCache;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/youku/player/PlayerNetCache;->start(Ljava/lang/String;J)I

    .line 484
    return-void

    .line 479
    :cond_1
    const-string v4, "Youku"

    const-string v5, "not mounted"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initPrctureCachePath()V
    .locals 3

    .prologue
    .line 691
    sget v0, Lcom/tudou/android/Youku;->API_LEVEL:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 692
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tudou/android/Youku;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    .line 699
    :goto_0
    return-void

    .line 694
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files/Pictures"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 864
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_cache"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    .line 867
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 870
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string/jumbo v2, "sharedpreferences_chat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/Youku;->mChatSharedPreferences:Landroid/content/SharedPreferences;

    .line 871
    return-void

    .line 864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPushSDK()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 686
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youku/pushsdk/control/PushManager;->setDebugMode(Landroid/content/Context;Z)V

    .line 687
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youku/pushsdk/control/PushManager;->setTestHost(Landroid/content/Context;Z)V

    .line 688
    return-void
.end method

.method private initRongyunSdk()V
    .locals 3

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/android/Youku;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1586
    const-string v1, "byron"

    const-string/jumbo v2, "rongyun sdk init."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    invoke-static {p0}, Lio/rong/imkit/RongIM;->init(Landroid/content/Context;)V

    .line 1588
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v0

    .line 1589
    .local v0, "manager":Lcom/tudou/android/chat/ChatManager;
    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->init()V

    .line 1590
    invoke-virtual {v0}, Lcom/tudou/android/chat/ChatManager;->getChatNameAndIcon()V

    .line 1592
    .end local v0    # "manager":Lcom/tudou/android/chat/ChatManager;
    :cond_0
    return-void
.end method

.method private initSearchManager()V
    .locals 0

    .prologue
    .line 521
    invoke-static {p0}, Lcom/tudou/ui/fragment/SearchManager;->setOtherSiteData(Landroid/content/Context;)V

    .line 522
    return-void
.end method

.method private static initShuMeng()V
    .locals 4

    .prologue
    .line 1572
    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/shuzilm/core/Main;->go(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1573
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1574
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initStaticsTrack()V
    .locals 1

    .prologue
    .line 1162
    new-instance v0, Lcom/tudou/android/Youku$7;

    invoke-direct {v0, p0}, Lcom/tudou/android/Youku$7;-><init>(Lcom/tudou/android/Youku;)V

    invoke-virtual {v0}, Lcom/tudou/android/Youku$7;->start()V

    .line 1226
    return-void
.end method

.method private initTimeOutConfig()V
    .locals 2

    .prologue
    .line 514
    const-string v0, "HTTP_CONNET_TIMEOUT_3G"

    sget v1, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_3G:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_3G:I

    .line 515
    const-string v0, "HTTP_READ_TIMEOUT_3G"

    sget v1, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_3G:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_3G:I

    .line 516
    const-string v0, "HTTP_CONNECT_TIMEOUT_WIFI"

    sget v1, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    .line 517
    const-string v0, "HTTP_READ_TIMEOUT_WIFI"

    sget v1, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    .line 518
    return-void
.end method

.method private initURLCacheDataPath()V
    .locals 2

    .prologue
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tudou/android/Youku;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cacheData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/Youku;->URLCacheDataPath:Ljava/lang/String;

    .line 765
    return-void
.end method

.method private initUserAgent()V
    .locals 2

    .prologue
    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tudou;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    .line 670
    return-void
.end method

.method private initVersionInfo()V
    .locals 4

    .prologue
    .line 747
    :try_start_0
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    .line 749
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/youku/config/Profile;->VER_CODE:I

    .line 751
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    sput-object v1, Lcom/tudou/android/Youku;->appName:Ljava/lang/String;

    .line 753
    sget-object v1, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/youku/config/Profile;->VER:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "5.0"

    sput-object v1, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    .line 756
    sget-object v1, Lcom/tudou/android/Youku;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    .line 757
    const/16 v1, 0x39

    sput v1, Lcom/youku/config/Profile;->VER_CODE:I

    .line 758
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static registerNetReceiver()V
    .locals 5

    .prologue
    .line 891
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 892
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string/jumbo v2, "upload_3g_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tudou/android/Youku;->isNetRecerverRegist:Z

    .line 896
    :try_start_0
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    sget-object v3, Lcom/tudou/android/Youku;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    return-void

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "regist failed===="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_0

    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static registerTudouActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1614
    :try_start_0
    sget-object v0, Lcom/tudou/android/Youku;->tudouActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 1615
    new-instance v0, Lcom/tudou/service/chat/TudouActivityLifecycleCallbacks;

    invoke-direct {v0}, Lcom/tudou/service/chat/TudouActivityLifecycleCallbacks;-><init>()V

    sput-object v0, Lcom/tudou/android/Youku;->tudouActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1616
    :cond_0
    check-cast p0, Lcom/tudou/android/Youku;

    .end local p0    # "context":Landroid/content/Context;
    sget-object v0, Lcom/tudou/android/Youku;->tudouActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/tudou/android/Youku;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    :goto_0
    return-void

    .line 1617
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static savaChatPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 876
    sget-object v0, Lcom/tudou/android/Youku;->mChatSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 877
    return-void
.end method

.method public static saveCPreference(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1113
    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1118
    :goto_0
    return-void

    .line 1116
    :cond_0
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1122
    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1127
    :goto_0
    return-void

    .line 1125
    :cond_0
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveCPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1104
    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1109
    :goto_0
    return-void

    .line 1107
    :cond_0
    sget-object v0, Lcom/tudou/android/Youku;->mDownloadSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static savePreference(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 1059
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1060
    return-void
.end method

.method public static savePreference(Ljava/lang/String;J)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 1095
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1096
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 1063
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1064
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1055
    sget-object v0, Lcom/tudou/android/Youku;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1056
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1290
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1291
    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 1295
    :goto_0
    return-void

    .line 1293
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .prologue
    .line 1298
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1299
    const/16 v0, 0x64

    invoke-static {p0, p1, v0, p2, p3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 1303
    :goto_0
    return-void

    .line 1301
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1307
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1308
    invoke-static {p0}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    .line 1309
    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I

    .prologue
    .line 1313
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1314
    invoke-static {p0, p3, p4}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;II)V

    .line 1315
    return-void
.end method

.method private startChatService()V
    .locals 2

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/android/Youku;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tudou/service/chat/ListenClipboardService;->start(Landroid/content/Context;)V

    .line 1601
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/android/Youku;->registerTudouActivityLifecycleCallbacks(Landroid/content/Context;)V

    .line 1603
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/service/chat/ChatManager;->getInstance(Landroid/content/Context;)Lcom/tudou/service/chat/ChatManager;

    .line 1605
    :cond_0
    return-void
.end method

.method private startPushSDK()V
    .locals 4

    .prologue
    .line 644
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tudou/android/Youku;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    new-instance v1, Lcom/tudou/android/Youku$4;

    invoke-direct {v1, p0}, Lcom/tudou/android/Youku$4;-><init>(Lcom/tudou/android/Youku;)V

    .line 658
    .local v1, "mNetworkStateReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 659
    .local v0, "i":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0, v1, v0}, Lcom/tudou/android/Youku;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 662
    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/youku/pushsdk/control/PushManager;->startWork(Landroid/content/Context;)V

    .line 664
    .end local v0    # "i":Landroid/content/IntentFilter;
    .end local v1    # "mNetworkStateReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method public static unRegisterNetReceiver()V
    .locals 4

    .prologue
    .line 904
    sget-boolean v1, Lcom/tudou/android/Youku;->isNetRecerverRegist:Z

    if-eqz v1, :cond_0

    .line 905
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tudou/android/Youku;->isNetRecerverRegist:Z

    .line 907
    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    sget-object v2, Lcom/tudou/android/Youku;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 908
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 909
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregist failed===="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static unregisterTudouActivityLifecycleCallbacks(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1623
    :try_start_0
    sget-object v0, Lcom/tudou/android/Youku;->tudouActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 1624
    check-cast p0, Lcom/tudou/android/Youku;

    .end local p0    # "context":Landroid/content/Context;
    sget-object v0, Lcom/tudou/android/Youku;->tudouActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/tudou/android/Youku;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    :cond_0
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public excuteInitTask()V
    .locals 8

    .prologue
    .line 1445
    const-class v5, Lcom/youku/network/IHttpRequest;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1446
    .local v1, "mInitHttpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getInitURL()Ljava/lang/String;

    move-result-object v4

    .line 1447
    .local v4, "urlString":Ljava/lang/String;
    const-string v5, "TAG_TUDOU"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u521d\u59cb\u5316\u63a5\u53e3\u8bf7\u6c42\u63a5\u53e3======"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1450
    .local v2, "mInitStartTime":J
    invoke-static {}, Lcom/tudou/android/Youku;->fistVVstart()V

    .line 1451
    new-instance v5, Lcom/tudou/android/Youku$10;

    invoke-direct {v5, p0, v2, v3}, Lcom/tudou/android/Youku$10;-><init>(Lcom/tudou/android/Youku;J)V

    invoke-interface {v1, v0, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1550
    return-void
.end method

.method public getImageWorker(Landroid/support/v4/app/FragmentActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 1
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 916
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getSdAvailableSize()J
    .locals 8

    .prologue
    .line 487
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 488
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 489
    .local v5, "statFs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 490
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 491
    .local v0, "availableBlocks":J
    mul-long v6, v2, v0

    return-wide v6
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 407
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 408
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    .line 410
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tudou/android/Youku;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "processName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initCookie()V

    .line 414
    invoke-direct {p0}, Lcom/tudou/android/Youku;->dexTool()V

    .line 416
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initPreferences()V

    .line 418
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    sput v1, Lcom/tudou/android/Youku;->flags:I

    .line 420
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initURLCacheDataPath()V

    .line 422
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initVersionInfo()V

    .line 424
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initHost()V

    .line 426
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initStaticsTrack()V

    .line 428
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initImageLoader()V

    .line 430
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initPrctureCachePath()V

    .line 432
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initUserAgent()V

    .line 434
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initBaseProject()V

    .line 436
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initTimeOutConfig()V

    .line 438
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initPID()V

    .line 440
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initGongXinBu()V

    .line 442
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initMediaPlayerType()V

    .line 444
    invoke-direct {p0}, Lcom/tudou/android/Youku;->autoLogin()V

    .line 446
    invoke-direct {p0}, Lcom/tudou/android/Youku;->initSearchManager()V

    .line 448
    invoke-static {p0}, Lcom/youku/player/util/PlayerPreference;->init(Landroid/content/Context;)V

    .line 451
    iget-object v1, p0, Lcom/tudou/android/Youku;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/tudou/android/Youku;->excuteInitTask()V

    .line 463
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 972
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onLowMemory()V

    .line 973
    const-string v0, "----------LowMemory----------"

    invoke-static {v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 974
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 975
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 922
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 923
    return-void
.end method
