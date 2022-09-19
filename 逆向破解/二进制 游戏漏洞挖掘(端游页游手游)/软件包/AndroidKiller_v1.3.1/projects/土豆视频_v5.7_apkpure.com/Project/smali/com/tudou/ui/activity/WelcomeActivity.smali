.class public Lcom/tudou/ui/activity/WelcomeActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/youku/util/IAlertThree;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/activity/WelcomeActivity$WelHandler;
    }
.end annotation


# static fields
.field private static final BLACK_LIST:[Ljava/lang/String;

.field private static final BitmapUrl:Ljava/lang/String; = "bitmap_url"

.field public static final CONFIG_URL:Ljava/lang/String; = "http://admaster.mobi/sdkconfig.xml"

.field public static final GO_HOME_WAY:Ljava/lang/String; = "home_way"

.field private static final MSG_AD_IMAGE_RETURN:I = 0xf

.field private static final MSG_AD_IMAGE_RETURN_SHOW:I = 0x11

.field private static final MSG_AFTER_AD_GO_HOME:I = 0x16

.field private static final MSG_AFTER_AD_GO_HOME_CLIK:I = 0x18

.field private static final MSG_JUMP_TO_HOME:I = 0xc8

.field private static final MSG_NO_AD_GO_HOME:I = 0x17

.field private static final MSG_SPLASH_FINISH:I = 0x8

.field public static final PID_FOR_10010:Ljava/lang/String; = "b6389615e2b06e7e"

.field public static final PID_FOR_360:Ljava/lang/String; = "92489ba036f1b52c"

.field public static final PID_FOR_91:Ljava/lang/String; = "7771efefb87d2b39"

.field public static final PID_FOR_ANDROID:Ljava/lang/String; = "0c3413d115184379"

.field public static final PID_FOR_ANZHI:Ljava/lang/String; = "7f966bfb6b4d8981"

.field public static final PID_FOR_BAIDU:Ljava/lang/String; = "35a871d7c541ba6b"

.field public static final PID_FOR_BBG:Ljava/lang/String; = "cfe07c190e8440d7"

.field public static final PID_FOR_HUAWEI:Ljava/lang/String; = "67f63b07ad78d517"

.field public static final PID_FOR_JIFENG:Ljava/lang/String; = "a663900d328a2cb6"

.field public static final PID_FOR_JINSHAN:Ljava/lang/String; = "9ce157427673f94a"

.field public static final PID_FOR_JL:Ljava/lang/String; = "33959be428f9aef7"

.field public static final PID_FOR_KP:Ljava/lang/String; = "13c07ee9ba534ce0"

.field public static final PID_FOR_LX:Ljava/lang/String; = "68f50c0d420f4505"

.field public static final PID_FOR_MEIZU:Ljava/lang/String; = "748b4252d2ac08b3"

.field public static final PID_FOR_OPPO:Ljava/lang/String; = "aa762afab86798dc"

.field public static final PID_FOR_QQ:Ljava/lang/String; = "7b979ca489bcc36e"

.field public static final PID_FOR_SOUGOU:Ljava/lang/String; = "bef44f212213dbf7"

.field public static final PID_FOR_SOUGOU_SHICHANG:Ljava/lang/String; = "8f1e78436184eebc"

.field public static final PID_FOR_TAOBAO:Ljava/lang/String; = "16cc0f065faf52d9"

.field public static final PID_FOR_TIANYI:Ljava/lang/String; = "bed98d4a6546316a"

.field public static final PID_FOR_TIANYU:Ljava/lang/String; = "cb9534abd4f52a19"

.field public static final PID_FOR_UC:Ljava/lang/String; = "1fb3447d3f481dae"

.field public static final PID_FOR_WANDOUJIA:Ljava/lang/String; = "086746d4c72b9f19"

.field public static final PID_FOR_WANDOUJIA1:Ljava/lang/String; = "3ea1a2aa6939dc88"

.field public static final PID_FOR_XM:Ljava/lang/String; = "d388af1027ad9100"

.field public static final PID_FOR_YIDONGMM:Ljava/lang/String; = "ebd52ff0abc7b7c6"

.field public static final PID_FOR_YINGYONGHUI:Ljava/lang/String; = "052c0c78ceb5798e"

.field public static final PID_FOR_YUNOS:Ljava/lang/String; = "56f46e142b846cbd"

.field private static final RETAIN_APP_SHOWTIME_MAX:I = 0xbb8

.field private static final SEPRATER:Ljava/lang/String; = "$"

.field private static final SPLASH_TIME:I = 0x1388

.field private static final Shot_Cut:Ljava/lang/String; = "shot_cut"

.field private static final TASK_DATA_LOAD:I = 0x2

.field private static final TASK_INIT:I = 0x1

.field public static final TEST_TRACKING_URL:Ljava/lang/String; = "http://admaster.mobi/android/log/a222,c123,b132,"

.field public static isHomeDataReturn:Z

.field public static isLoadIndexAdvance:Z

.field private static mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private static mInitStartTime:J


# instance fields
.field private final DIALOG_CONTINUE_DATAFLOW:I

.field private RETAIN_APP_SHOWTIME:I

.field private isAdAPINoImage:Z

.field private isAdImageReturn:Z

.field private isFromKuWo:Z

.field private isGoHome:Z

.field private isPageVisible:Z

.field private isSplashFinish:Z

.field private logo:Landroid/widget/ImageView;

.field private logoTop:Landroid/widget/ImageView;

.field private mADPicStart:J

.field private mADStartTime:J

.field private final mAdStartpage:Lcom/youku/vo/AdStartpage;

.field private mHomePageStart:J

.field private mImgChannel:Landroid/widget/ImageView;

.field private mIsGoNextStep:Z

.field private mIsKnowMoreClick:Z

.field private mIsOnResumeValue:Z

.field private mIsShowingSus:Z

.field private mKnowMoreLayout:Landroid/view/View;

.field private mOnCreateTime:J

.field private mRealRootView:Landroid/view/View;

.field private mRootview:Landroid/widget/ImageView;

.field private mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

.field private mTxtKnowMore:Landroid/widget/TextView;

.field private mTxtKnowMoreContent:Landroid/widget/TextView;

.field private mTxtSkipIn:Landroid/widget/TextView;

.field private mViewBottomMargin:I

.field private mViewTopMargin:I

.field private mVisibleHeight:I

.field private mWelHandler:Landroid/os/Handler;

.field private manager:Lcom/tudou/guide/SplashSubManager;

.field private posterBitmap:Landroid/graphics/Bitmap;

.field private startExcuteTaskTime:J

.field private startLogo:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tudou/ui/activity/WelcomeActivity;->mInitStartTime:J

    .line 167
    sput-boolean v2, Lcom/tudou/ui/activity/WelcomeActivity;->isLoadIndexAdvance:Z

    .line 168
    sput-boolean v2, Lcom/tudou/ui/activity/WelcomeActivity;->isHomeDataReturn:Z

    .line 1058
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AMOI"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "samsung"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tudou/ui/activity/WelcomeActivity;->BLACK_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 136
    iput v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->DIALOG_CONTINUE_DATAFLOW:I

    .line 141
    new-instance v0, Lcom/youku/vo/AdStartpage;

    invoke-direct {v0}, Lcom/youku/vo/AdStartpage;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    .line 161
    iput-wide v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mADStartTime:J

    .line 162
    iput-wide v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mADPicStart:J

    .line 163
    iput-wide v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mHomePageStart:J

    .line 164
    iput-boolean v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsShowingSus:Z

    .line 174
    iput-boolean v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsKnowMoreClick:Z

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsOnResumeValue:Z

    .line 379
    iput-boolean v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsGoNextStep:Z

    .line 381
    iput-wide v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mOnCreateTime:J

    .line 382
    iput-boolean v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isFromKuWo:Z

    .line 397
    iput v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mVisibleHeight:I

    .line 398
    iput v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewBottomMargin:I

    .line 399
    iput v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewTopMargin:I

    .line 571
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->RETAIN_APP_SHOWTIME:I

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/activity/WelcomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isSplashFinish:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/activity/WelcomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isSplashFinish:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/activity/WelcomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isGoHome:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/activity/WelcomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isPageVisible:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/activity/WelcomeActivity;)Lcom/youku/vo/AdStartpage;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRealRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/activity/WelcomeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mVisibleHeight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/tudou/ui/activity/WelcomeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mVisibleHeight:I

    return p1
.end method

.method static synthetic access$1402(Lcom/tudou/ui/activity/WelcomeActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewBottomMargin:I

    return p1
.end method

.method static synthetic access$1500(Lcom/tudou/ui/activity/WelcomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->judgeNet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->goNextStep()V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/activity/WelcomeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mADStartTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->adApiNoImage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->showSUS()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/activity/WelcomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isAdAPINoImage:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->excutePosterTask()V

    return-void
.end method

.method static synthetic access$2100(Lcom/tudou/ui/activity/WelcomeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mADPicStart:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/tudou/ui/activity/WelcomeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessage(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->onKnowMoreClick()V

    return-void
.end method

.method static synthetic access$2400(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->goHome()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/activity/WelcomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isAdImageReturn:Z

    return v0
.end method

.method static synthetic access$402(Lcom/tudou/ui/activity/WelcomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isAdImageReturn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->excuteADTask()V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/activity/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->loadFistPage()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/activity/WelcomeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->startExcuteTaskTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/activity/WelcomeActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->posterBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/activity/WelcomeActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->posterBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/activity/WelcomeActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/activity/WelcomeActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->RETAIN_APP_SHOWTIME:I

    return v0
.end method

.method private adApiNoImage()V
    .locals 2

    .prologue
    .line 1490
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u6ca1\u6709\u5e7f\u544a\u6216\u5e7f\u544a\u63a5\u53e3\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isAdAPINoImage:Z

    .line 1492
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessage(I)V

    .line 1502
    return-void
.end method

.method private addShortcut()V
    .locals 9

    .prologue
    .line 1061
    const-string v6, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u624b\u673a\u578b\u53f7\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string/jumbo v6, "shot_cut"

    invoke-static {v6}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1063
    .local v3, "isAdd":Z
    if-eqz v3, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->hasShortcut()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1068
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v5, "shortcutIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.tudou.ui.activity.WelcomeActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1072
    const/high16 v6, 0x10200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1073
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1074
    .local v0, "addShortcut":Landroid/content/Intent;
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1075
    const-string v6, "android.intent.extra.shortcut.NAME"

    const v7, 0x7f0d009b

    invoke-virtual {p0, v7}, Lcom/tudou/ui/activity/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const v6, 0x7f0203ee

    invoke-static {p0, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 1079
    .local v2, "icon":Landroid/os/Parcelable;
    const-string v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1080
    const-string v6, "duplicate"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1081
    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1084
    const-string/jumbo v6, "shot_cut"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1086
    const/4 v4, 0x0

    .line 1087
    .local v4, "isBlack":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/tudou/ui/activity/WelcomeActivity;->BLACK_LIST:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 1088
    sget-object v6, Lcom/tudou/ui/activity/WelcomeActivity;->BLACK_LIST:[Ljava/lang/String;

    aget-object v6, v6, v1

    sget-object v7, Lcom/youku/vo/DeviceInfo;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1089
    const/4 v4, 0x1

    .line 1090
    const-string v6, "TAG"

    const-string/jumbo v7, "\u4f7f\u7528\u7cfb\u7edf\u63d0\u793a"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :cond_2
    const-string v6, "L55t"

    sget-object v7, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1095
    const/4 v4, 0x1

    .line 1097
    :cond_3
    if-nez v4, :cond_0

    .line 1098
    const v6, 0x7f0d0439

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(I)V

    goto/16 :goto_0

    .line 1087
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private cancelTask(Lcom/youku/network/IHttpRequest;)V
    .locals 0
    .param p1, "iHttpRequest"    # Lcom/youku/network/IHttpRequest;

    .prologue
    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-interface {p1}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 611
    :cond_0
    return-void
.end method

.method private excuteADTask()V
    .locals 5

    .prologue
    .line 1377
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

    .line 1379
    sget v2, Lcom/youku/analytics/data/Device;->wt:I

    sget v3, Lcom/youku/analytics/data/Device;->ht:I

    invoke-static {v2, v3}, Lcom/youku/http/URLContainer;->getAdStartpageUrl(II)Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v1}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5e7f\u544a\u8bf7\u6c42url====="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mADStartTime:J

    .line 1383
    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

    new-instance v3, Lcom/tudou/ui/activity/WelcomeActivity$7;

    invoke-direct {v3, p0}, Lcom/tudou/ui/activity/WelcomeActivity$7;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-interface {v2, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1487
    return-void
.end method

.method private excutePosterTask()V
    .locals 5

    .prologue
    .line 1508
    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v2, v2, Lcom/youku/vo/AdStartpage;->RS:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "bitmap_url"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v3, v3, Lcom/youku/vo/AdStartpage;->RS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1510
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->loadAdImage()V

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    const-string v2, "bitmap_url"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v3, v3, Lcom/youku/vo/AdStartpage;->RS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1513
    const-string v2, "bitmap_url"

    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->getPosterImgUrlTrait(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1515
    .local v1, "imageFileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/youku/http/LoadImgPosterThread;->POSTER_DIR:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    .local v0, "imageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1518
    const-string v2, "TAG_TUDOU"

    const-string/jumbo v3, "\u5e7f\u544a\u56fe\u7247\u672c\u5730\u5df2\u5b58\u5728\uff0c\u52a0\u8f7d\u672c\u5730\u56fe\u7247"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageFile.getAbsolutePath()==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/youku/http/LoadImgPosterThread;->POSTER_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->posterBitmap:Landroid/graphics/Bitmap;

    .line 1524
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isAdImageReturn:Z

    .line 1525
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessage(I)V

    goto :goto_0

    .line 1528
    :cond_2
    const-string v2, "TAG_TUDOU"

    const-string/jumbo v3, "\u5e7f\u544a\u56fe\u7247\u672c\u5730\u672a\u4fdd\u5b58\u6210\u529f\uff0c\u52a0\u8f7d\u7f51\u7edc\u56fe\u7247"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageFile.getAbsolutePath()==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v2, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageFile.exists()==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",imageFile.isFile()==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    const-string v2, "bitmap_url"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->loadAdImage()V

    goto/16 :goto_0
.end method

.method private excuteUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1746
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, "GET"

    invoke-direct {v0, p1, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1749
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$12;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/WelcomeActivity$12;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1764
    return-void
.end method

.method private static getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "aCallBack"    # Lcom/baseproject/image/ImageCallback;

    .prologue
    .line 2040
    sget-object v0, Lcom/tudou/ui/activity/WelcomeActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v1, Lcom/tudou/ui/activity/WelcomeActivity$27;

    invoke-direct {v1, p1, p0}, Lcom/tudou/ui/activity/WelcomeActivity$27;-><init>(Lcom/baseproject/image/ImageCallback;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 2069
    return-void
.end method

.method private getIndexGuessInfo()V
    .locals 4

    .prologue
    .line 1818
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getIndexGuess()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1820
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1822
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$14;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/WelcomeActivity$14;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1836
    return-void
.end method

.method private getIndexNet()V
    .locals 4

    .prologue
    .line 1792
    const-string v2, "TAG_TUDOU"

    const-string/jumbo v3, "\u5f00\u59cb\u9884\u52a0\u8f7d\u9996\u9875\u6570\u636e"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getHomeV5()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 1795
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 1797
    .local v1, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$13;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/WelcomeActivity$13;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 1815
    return-void
.end method

.method private getUriData()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1016
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 1017
    .local v2, "mUri":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1019
    :try_start_0
    const-string v4, "adext"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "mUriStr":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "advertList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-le v4, v6, :cond_0

    .line 1022
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sput-object v4, Lcom/tudou/android/Youku;->advertPreStr:Ljava/lang/String;

    .line 1024
    const/4 v4, 0x2

    aget-object v4, v0, v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sput-object v4, Lcom/tudou/android/Youku;->advertPauseStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    .end local v0    # "advertList":[Ljava/lang/String;
    .end local v3    # "mUriStr":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v1

    .line 1027
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getVisiableHeight()V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRealRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 474
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/tudou/ui/activity/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/WelcomeActivity$1;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 490
    return-void
.end method

.method private goHome()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    .line 500
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isGoHome:Z

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->startExcuteTaskTime:J

    sub-long v0, v2, v4

    .line 502
    .local v0, "fareTime":J
    iget v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->RETAIN_APP_SHOWTIME:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 503
    invoke-direct {p0, v6}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessage(I)V

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    iget v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->RETAIN_APP_SHOWTIME:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    invoke-direct {p0, v6, v2, v3}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessageDelayed(IJ)V

    goto :goto_0
.end method

.method private goNextStep()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 895
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsGoNextStep:Z

    if-eqz v0, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iput-boolean v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsGoNextStep:Z

    .line 900
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->startExcuteTaskTime:J

    .line 905
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u5f00\u59cb======goNextStep"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-direct {p0, v3}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessage(I)V

    .line 907
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v2, v0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessageDelayed(IJ)V

    .line 909
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 614
    const v1, 0x7f0c0240

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRootview:Landroid/widget/ImageView;

    .line 615
    const v1, 0x7f0c0242

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    .line 616
    const v1, 0x7f0c0243

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logoTop:Landroid/widget/ImageView;

    .line 619
    const v1, 0x7f0c0241

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->startLogo:Landroid/widget/ImageView;

    .line 620
    const v1, 0x7f0c0246

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtKnowMore:Landroid/widget/TextView;

    .line 622
    const v1, 0x7f0c0247

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mKnowMoreLayout:Landroid/view/View;

    .line 623
    const v1, 0x7f0c0248

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtKnowMoreContent:Landroid/widget/TextView;

    .line 624
    const v1, 0x7f0c024a

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtSkipIn:Landroid/widget/TextView;

    .line 640
    const v1, 0x7f0c0244

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mImgChannel:Landroid/widget/ImageView;

    .line 642
    invoke-static {}, Lcom/youku/util/UIUtils;->hasKitKat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mImgChannel:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 645
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 646
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 650
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-static {p0}, Lcom/youku/util/Util;->getvirtualkeyHeight(Landroid/app/Activity;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 652
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mImgChannel:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "92489ba036f1b52c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mImgChannel:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mImgChannel:Landroid/widget/ImageView;

    const v2, 0x7f0203f0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mImgChannel:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private judgeNet()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 927
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u5f53\u524d\u662fwifi\u7f51\u7edc"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/4 v0, 0x1

    .line 945
    :goto_0
    return v0

    .line 933
    :cond_0
    const-string v1, "TAG_TUDOU"

    const-string/jumbo v2, "\u5f53\u524d\u662f3G\u7f51\u7edc"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const v1, 0x7f0d02c6

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d046c

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, p0, v3}, Lcom/youku/util/Util;->alertDelete(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlertThree;I)V

    goto :goto_0

    .line 940
    :cond_1
    const-string v1, "TAG_TUDOU"

    const-string/jumbo v2, "\u5f53\u524d\u65e0\u7f51"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const v1, 0x7f0d02bc

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d02a1

    invoke-virtual {p0, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, p0, v3}, Lcom/youku/util/Util;->alertDelete(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlertThree;I)V

    goto :goto_0
.end method

.method private loadAdImage()V
    .locals 4

    .prologue
    .line 1568
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e0b\u8f7d\u5e7f\u544a\u56fe\u7247====="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v3, v3, Lcom/youku/vo/AdStartpage;->RS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mADPicStart:J

    .line 1570
    new-instance v0, Lcom/youku/http/LoadImgPosterThread;

    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v1, v1, Lcom/youku/vo/AdStartpage;->RS:Ljava/lang/String;

    sget-object v2, Lcom/youku/http/LoadImgPosterThread;->POSTER_DIR:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/youku/http/LoadImgPosterThread;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    .local v0, "loadPosterThread":Lcom/youku/http/LoadImgPosterThread;
    new-instance v1, Lcom/tudou/ui/activity/WelcomeActivity$8;

    invoke-direct {v1, p0}, Lcom/tudou/ui/activity/WelcomeActivity$8;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/youku/http/LoadImgPosterThread;->setImageCallBack(Lcom/youku/http/LoadImgPosterThread$ImageCallBack;)V

    .line 1591
    invoke-virtual {v0}, Lcom/youku/http/LoadImgPosterThread;->start()V

    .line 1592
    return-void
.end method

.method private loadFistPage()V
    .locals 2

    .prologue
    .line 1365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mHomePageStart:J

    .line 1367
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/activity/WelcomeActivity;->isLoadIndexAdvance:Z

    .line 1368
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getIndexGuessInfo()V

    .line 1370
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getIndexNet()V

    .line 1371
    return-void
.end method

.method public static loadStartImage()V
    .locals 4

    .prologue
    .line 1845
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->display_method:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1846
    :cond_0
    const-string/jumbo v1, "type_show"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    .local v0, "saveInfo":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1849
    .end local v0    # "saveInfo":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v2, v2, Lcom/youku/vo/Initial$StartPage;->display_method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v2, v2, Lcom/youku/vo/Initial$StartPage;->keep_time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1850
    .restart local v0    # "saveInfo":Ljava/lang/String;
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save type==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v3, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v3, v3, Lcom/youku/vo/Initial$StartPage;->display_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "===save pos===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v3, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v3, v3, Lcom/youku/vo/Initial$StartPage;->fg_image_pos:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    const-string v1, "normal"

    sget-object v2, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v2, v2, Lcom/youku/vo/Initial$StartPage;->display_method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1852
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->bg_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->fg_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1855
    const-string/jumbo v1, "type_show"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v3, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v3, v3, Lcom/youku/vo/Initial$StartPage;->bg_image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v3, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v3, v3, Lcom/youku/vo/Initial$StartPage;->fg_image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v3, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v3, v3, Lcom/youku/vo/Initial$StartPage;->fg_image_pos:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->bg_image:Ljava/lang/String;

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$15;

    invoke-direct {v2}, Lcom/tudou/ui/activity/WelcomeActivity$15;-><init>()V

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    .line 1862
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->fg_image:Ljava/lang/String;

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$16;

    invoke-direct {v2}, Lcom/tudou/ui/activity/WelcomeActivity$16;-><init>()V

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_0

    .line 1868
    :cond_3
    const-string v1, "bg_only"

    sget-object v2, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v2, v2, Lcom/youku/vo/Initial$StartPage;->display_method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1869
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->bg_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1872
    const-string/jumbo v1, "type_show"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v3, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v3, v3, Lcom/youku/vo/Initial$StartPage;->bg_image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->bg_image:Ljava/lang/String;

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$17;

    invoke-direct {v2}, Lcom/tudou/ui/activity/WelcomeActivity$17;-><init>()V

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_0

    .line 1879
    :cond_4
    const-string v1, "fg_only"

    sget-object v2, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v2, v2, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v2, v2, Lcom/youku/vo/Initial$StartPage;->display_method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1880
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->fg_image:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1883
    const-string/jumbo v1, "type_show"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v3, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v3, v3, Lcom/youku/vo/Initial$StartPage;->fg_image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v3, v3, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v3, v3, Lcom/youku/vo/Initial$StartPage;->fg_image_pos:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    sget-object v1, Lcom/tudou/android/Youku;->mInitial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->start_page:Lcom/youku/vo/Initial$StartPage;

    iget-object v1, v1, Lcom/youku/vo/Initial$StartPage;->fg_image:Ljava/lang/String;

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$18;

    invoke-direct {v2}, Lcom/tudou/ui/activity/WelcomeActivity$18;-><init>()V

    invoke-static {v1, v2}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_0
.end method

.method private onKnowMoreClick()V
    .locals 8

    .prologue
    const/16 v6, 0x16

    const/4 v7, 0x1

    .line 1671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1672
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->TI:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1673
    const-string/jumbo v4, "title"

    iget-object v5, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v5, v5, Lcom/youku/vo/AdStartpage;->TI:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    :cond_0
    const-string/jumbo v4, "t1.firstscreen_sadvert.advertclick"

    invoke-static {v4, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1676
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1677
    const v4, 0x7f0d02c3

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 1717
    :cond_1
    :goto_0
    return-void

    .line 1680
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget v4, v4, Lcom/youku/vo/AdStartpage;->CUF:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 1681
    new-instance v3, Lcom/youku/vo/SkipInfo;

    invoke-direct {v3}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 1682
    .local v3, "skipInfo":Lcom/youku/vo/SkipInfo;
    const-string/jumbo v4, "video"

    iput-object v4, v3, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 1683
    iput-boolean v7, v3, Lcom/youku/vo/SkipInfo;->isGoAD:Z

    .line 1684
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CUU:Ljava/lang/String;

    invoke-static {v4}, Lcom/youku/util/Util;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1685
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CUU:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    .line 1689
    :goto_1
    invoke-virtual {v3, p0}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 1690
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_5

    .line 1693
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    array-length v2, v4

    .line 1694
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 1695
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CUMSDK:[I

    aget v4, v4, v1

    if-ne v4, v7, :cond_4

    .line 1696
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v5, v5, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    .line 1694
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1687
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CUU:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_1

    .line 1698
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_4
    new-instance v4, Lcom/youku/network/ExposureAdHttpTask;

    iget-object v5, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v5, v5, Lcom/youku/vo/AdStartpage;->CUM:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "ad_cookie"

    invoke-direct {v4, v5, v6}, Lcom/youku/network/ExposureAdHttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/youku/network/ExposureAdHttpTask;->start()V

    goto :goto_3

    .line 1703
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_5
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1704
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/tudou/ui/activity/WelcomeActivity;->excuteUrl(Ljava/lang/String;)V

    .line 1706
    :cond_6
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsKnowMoreClick:Z

    .line 1707
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->finish()V

    goto/16 :goto_0

    .line 1710
    .end local v3    # "skipInfo":Lcom/youku/vo/SkipInfo;
    :cond_7
    iput-boolean v7, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsKnowMoreClick:Z

    .line 1713
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 1714
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1715
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private sendEmptyMessage(I)V
    .locals 1
    .param p1, "mes"    # I

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1775
    :cond_0
    return-void
.end method

.method private sendEmptyMessageDelayed(IJ)V
    .locals 2
    .param p1, "mes"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1781
    :cond_0
    return-void
.end method

.method private setImageGone()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 755
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->startLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mImgChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logoTop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStartPageTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "keepTime"    # Ljava/lang/String;

    .prologue
    .line 2028
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2029
    .local v0, "time":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/16 v1, 0xbb8

    if-gt v0, v1, :cond_0

    .line 2030
    iput v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->RETAIN_APP_SHOWTIME:I

    .line 2031
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set_net_time===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->RETAIN_APP_SHOWTIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    .end local v0    # "time":I
    :cond_0
    :goto_0
    return-void

    .line 2033
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setState(Ljava/lang/String;)V
    .locals 1
    .param p1, "aState"    # Ljava/lang/String;

    .prologue
    .line 1768
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1769
    return-void
.end method

.method private showDataflowTipsDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1295
    new-instance v0, Lcom/youku/widget/YoukuDialog;

    sget-object v1, Lcom/youku/widget/YoukuDialog$TYPE;->attention:Lcom/youku/widget/YoukuDialog$TYPE;

    invoke-direct {v0, p0, v1}, Lcom/youku/widget/YoukuDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/YoukuDialog$TYPE;)V

    .line 1296
    .local v0, "dialog":Lcom/youku/widget/YoukuDialog;
    const v1, 0x7f0d00d4

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/activity/WelcomeActivity$5;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/YoukuDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 1304
    const v1, 0x7f0d00d3

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity$6;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;Lcom/youku/widget/YoukuDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/YoukuDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 1358
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuDialog;->setCancelable(Z)V

    .line 1359
    const v1, 0x7f0d0322

    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/YoukuDialog;->setMessage(Ljava/lang/String;)V

    .line 1360
    return-object v0
.end method

.method private showKnowMore()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 1625
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->showSkipButton()V

    .line 1627
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->CU:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1628
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->TI:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 1630
    .local v0, "isShowLayout":Z
    :goto_0
    iget v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewBottomMargin:I

    if-lez v4, :cond_0

    .line 1631
    if-eqz v0, :cond_3

    .line 1632
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mKnowMoreLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1633
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewBottomMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1634
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mKnowMoreLayout:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1644
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    .line 1645
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtKnowMore:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1646
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mKnowMoreLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1647
    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtKnowMoreContent:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v4, v4, Lcom/youku/vo/AdStartpage;->TI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mKnowMoreLayout:Landroid/view/View;

    new-instance v4, Lcom/tudou/ui/activity/WelcomeActivity$9;

    invoke-direct {v4, p0}, Lcom/tudou/ui/activity/WelcomeActivity$9;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1666
    .end local v0    # "isShowLayout":Z
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v3

    .line 1628
    goto :goto_0

    .line 1636
    .restart local v0    # "isShowLayout":Z
    :cond_3
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0307

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 1637
    .local v2, "margin":I
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtKnowMore:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1638
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1639
    iget v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewBottomMargin:I

    add-int/2addr v4, v2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1640
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtKnowMore:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1655
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "margin":I
    :cond_4
    iget-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtKnowMore:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1656
    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mKnowMoreLayout:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtKnowMore:Landroid/widget/TextView;

    new-instance v4, Lcom/tudou/ui/activity/WelcomeActivity$10;

    invoke-direct {v4, p0}, Lcom/tudou/ui/activity/WelcomeActivity$10;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private showSUS()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1545
    iput-boolean v6, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsShowingSus:Z

    .line 1546
    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v3, v3, Lcom/youku/vo/AdStartpage;->SUS:[Ljava/lang/String;

    array-length v2, v3

    .line 1547
    .local v2, "susLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1549
    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v3, v3, Lcom/youku/vo/AdStartpage;->SUS:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 1550
    .local v0, "exposeUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    iget-object v3, v3, Lcom/youku/vo/AdStartpage;->SUSSDK:[I

    aget v3, v3, v1

    if-ne v3, v6, :cond_0

    .line 1551
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u53d1\u9001====Countly.sharedInstance().onExpose===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    .line 1547
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1556
    :cond_0
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u53d1\u9001====new DisposableHttpTask===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    new-instance v3, Lcom/youku/network/ExposureAdHttpTask;

    const-string v4, "ad_cookie"

    invoke-direct {v3, v0, v4}, Lcom/youku/network/ExposureAdHttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/youku/network/ExposureAdHttpTask;->start()V

    goto :goto_1

    .line 1561
    .end local v0    # "exposeUrl":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsShowingSus:Z

    .line 1562
    return-void
.end method

.method private showSkipButton()V
    .locals 4

    .prologue
    .line 1720
    invoke-static {}, Lcom/tudou/android/Youku;->getstatHeight()I

    move-result v2

    iput v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewTopMargin:I

    .line 1721
    iget v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewTopMargin:I

    if-lez v2, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 1723
    .local v1, "margin":I
    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtSkipIn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1724
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1725
    iget v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mViewTopMargin:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1726
    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtSkipIn:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1728
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "margin":I
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtSkipIn:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1729
    iget-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mTxtSkipIn:Landroid/widget/TextView;

    new-instance v3, Lcom/tudou/ui/activity/WelcomeActivity$11;

    invoke-direct {v3, p0}, Lcom/tudou/ui/activity/WelcomeActivity$11;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1743
    return-void
.end method

.method private stateJudge()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 843
    const-string v1, "Slate+21"

    sget-object v2, Lcom/youku/vo/DeviceInfo;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 845
    .local v0, "ab":Lcom/youku/widget/TudouDialog;
    const-string/jumbo v1, "\u6b22\u8fce\u4f7f\u7528\u571f\u8c46\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setTitle(Ljava/lang/String;)V

    .line 846
    const-string/jumbo v1, "\u60a8\u597d\uff0c\u8be5\u5e94\u7528\u6682\u65f6\u4e0d\u652f\u6301\u5728\u60a8\u7684\u8bbe\u5907\u4e0a\u8fd0\u884c\uff0c\u4e3a\u4e86\u60a8\u80fd\u6709\u66f4\u597d\u7684\u4f53\u9a8c\uff0c\u8bf7\u60a8\u5728\u5e94\u7528\u5546\u5e97\u4e0b\u8f7d\u5e76\u4f7f\u7528\u571f\u8c46HD\u7248\u672c\u8fdb\u884c\u89c2\u770b\u3002\u8c22\u8c22\u3002"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, v3}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 848
    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity$2;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 855
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 892
    .end local v0    # "ab":Lcom/youku/widget/TudouDialog;
    :goto_0
    return-void

    .line 856
    :cond_0
    invoke-static {}, Lcom/tudou/android/Youku;->getIsNotShowTips()Z

    move-result v1

    if-nez v1, :cond_1

    .line 857
    invoke-virtual {p0, v3}, Lcom/tudou/ui/activity/WelcomeActivity;->showDialog(I)V

    goto :goto_0

    .line 859
    :cond_1
    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fe65cd8419c50510"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "isNeedalert"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 861
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-direct {v0, p0}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 862
    .restart local v0    # "ab":Lcom/youku/widget/TudouDialog;
    const-string/jumbo v1, "\u6b22\u8fce\u4f7f\u7528\u571f\u8c46\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setTitle(Ljava/lang/String;)V

    .line 863
    const-string/jumbo v1, "\u6b22\u8fce\u4f7f\u7528\u571f\u8c46\u89c6\u9891\u5ba2\u6237\u7aef\uff01\r\n\u672c\u8f6f\u4ef6\u5b8c\u5168\u514d\u8d39\uff0c\u6211\u4eec\u5c06\u4e3a\u60a8\u63d0\u4f9b\u4f18\u8d28\u7684\u89c6\u9891\u5185\u5bb9\uff0c\u5728\u4f7f\u7528\u8fc7\u7a0b\u4e2d\u4f1a\u4ea7\u751f\u6d41\u91cf\u8d39\uff0c\u63a5\u5165\u4e92\u8054\u7f51\u6240\u4ea7\u751f\u7684\u8d39\u7528\u7531\u8fd0\u8425\u5546\u6536\u53d6\u3002WLAN/3G\u6d41\u91cf\u8d39\u7528\u8bf7\u54a8\u8be2\u5f53\u5730\u8fd0\u8425\u5546\u3002\u82e5\u540c\u610f\u5efa\u7acb\u8fde\u63a5\u8bf7\u70b9\u51fb\u786e\u5b9a\u3002\r\n\u786e\u5b9a\u540e\uff0c\u6211\u4eec\u5c06\u4f7f\u7528\u60a8\u7684\u7f51\u7edc\u901a\u8baf\u3001\u5b58\u50a8\u5668\u3001\u6444\u50cf\u5934\u3001\u7535\u8bdd\u3001\u7cfb\u7edf\u5de5\u5177\u7b49\u529f\u80fd\uff0c\u4ee5\u4fbf\u66f4\u597d\u7684\u4e3a\u60a8\u670d\u52a1\u3002"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0, v3}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 865
    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity$3;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 876
    const-string/jumbo v1, "\u9000\u51fa\u5e94\u7528"

    new-instance v2, Lcom/tudou/ui/activity/WelcomeActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity$4;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 882
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    goto :goto_0

    .line 889
    .end local v0    # "ab":Lcom/youku/widget/TudouDialog;
    :cond_2
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->goNextStep()V

    goto :goto_0
.end method

.method private test()V
    .locals 6

    .prologue
    .line 1033
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v3, "shortcutIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string/jumbo v4, "tudou://albumid=85643"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1037
    .local v1, "content_url":Landroid/net/Uri;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1041
    const/high16 v4, 0x50200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1047
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1048
    .local v0, "addShortcut":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1049
    const-string v4, "android.intent.extra.shortcut.NAME"

    const-string/jumbo v5, "\u89c6\u9891\u70b9\u64ad"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1050
    const v4, 0x7f0203ee

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 1052
    .local v2, "icon":Landroid/os/Parcelable;
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1053
    const-string v4, "duplicate"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1054
    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    invoke-virtual {p0, v0}, Lcom/tudou/ui/activity/WelcomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1056
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 1784
    const-class v0, Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    return-void
.end method


# virtual methods
.method public alertNegative(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 975
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 976
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->finish()V

    .line 978
    :cond_1
    return-void
.end method

.method public alertNegativeMiddle(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    const/4 v1, 0x3

    .line 968
    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 969
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->goHome(I)V

    .line 971
    :cond_1
    return-void
.end method

.method public alertPositive(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 952
    if-nez p1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 955
    const-string v1, "TAG_TUDOU"

    const-string/jumbo v2, "\u8bbe\u7f6e\u7f51\u7edc"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 958
    .local v0, "wifiSettingsIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 959
    .end local v0    # "wifiSettingsIntent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 960
    const-string v1, "TAG_TUDOU"

    const-string v2, "3G\u7f51\u7edc\u7ee7\u7eed\u4f7f\u7528"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->goNextStep()V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 819
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 820
    const-string v0, "TAG_TUDOU"

    const-string v1, "WelcomActivity finish()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public declared-synchronized goHome(I)V
    .locals 4
    .param p1, "homeWay"    # I

    .prologue
    .line 984
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->addShortcut()V

    .line 985
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 987
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1000
    .local v0, "bd":Landroid/os/Bundle;
    iget-boolean v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsKnowMoreClick:Z

    if-eqz v2, :cond_0

    .line 1001
    const-class v2, Lcom/youku/vo/AdStartpage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAdStartpage:Lcom/youku/vo/AdStartpage;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1003
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1004
    const-string v2, "home_way"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsOnResumeValue:Z

    .line 1008
    iget-boolean v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isFromKuWo:Z

    if-nez v2, :cond_1

    .line 1009
    invoke-virtual {p0, v1}, Lcom/tudou/ui/activity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1011
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->finish()V

    .line 1012
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    monitor-exit p0

    return-void

    .line 984
    .end local v0    # "bd":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public hasShortcut()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1115
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    .local v7, "uriSb":Ljava/lang/StringBuilder;
    const-string v2, "content://com.android."

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 1118
    const-string v2, "launcher"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :goto_0
    const-string v2, ".settings/favorites?notify=true"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1127
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1128
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const-string/jumbo v3, "title = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v10, 0x7f0d009b

    invoke-virtual {p0, v10}, Lcom/tudou/ui/activity/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1131
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1132
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v2, v8

    .line 1140
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "uriSb":Ljava/lang/StringBuilder;
    :goto_1
    return v2

    .line 1122
    .restart local v7    # "uriSb":Ljava/lang/StringBuilder;
    :cond_0
    const-string v2, "launcher2"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1138
    .end local v7    # "uriSb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    :cond_1
    :goto_2
    move v2, v9

    .line 1140
    goto :goto_1

    .line 1135
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "uriSb":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v6, :cond_1

    .line 1136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsShowingSus:Z

    if-eqz v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 545
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

    if-eqz v0, :cond_2

    .line 550
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u9000\u51fa\u5ba2\u6237\u7aef \u5220\u9664\u5e7f\u544a\u7684\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 552
    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

    .line 554
    :cond_2
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 403
    new-instance v4, Lcom/tudou/ui/activity/WelcomeActivity$WelHandler;

    invoke-direct {v4, p0}, Lcom/tudou/ui/activity/WelcomeActivity$WelHandler;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    iput-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    .line 404
    invoke-static {}, Lcom/tudou/android/Youku;->getIsNotShowTips()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    invoke-static {}, Lcom/tudou/android/Youku;->registerNetReceiver()V

    .line 406
    invoke-static {}, Lcom/tudou/ui/fragment/LoginFragment;->updateCookie()V

    .line 407
    invoke-static {p0}, Lcom/youku/util/Util;->init(Landroid/app/Activity;)V

    .line 410
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/mma/mobile/tracking/api/Countly;->getSdk()Lcn/com/mma/mobile/tracking/domain/SDK;

    move-result-object v4

    if-nez v4, :cond_0

    .line 412
    const/4 v4, 0x0

    sput-boolean v4, Lcn/com/mma/mobile/tracking/api/Countly;->LOG:Z

    .line 413
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/youku/http/URLContainer;->MMA_CONFIG_HOST:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcn/com/mma/mobile/tracking/api/Countly;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lcn/com/mma/mobile/tracking/api/Countly;->setTrackLocation(ZLandroid/content/Context;)V

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    .line 421
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mOnCreateTime:J

    .line 422
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 423
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string v4, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WelcomeActivity====onCreate()====time===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mOnCreateTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iput-boolean v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mAjust:Z

    .line 427
    const-string v4, "Youku"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dpi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " density = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/youku/util/UIUtils;->hasKitKat()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 432
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 439
    :cond_2
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 440
    invoke-virtual {p0, v8}, Lcom/tudou/ui/activity/WelcomeActivity;->requestWindowFeature(I)Z

    .line 441
    const v4, 0x7f030069

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/WelcomeActivity;->setContentView(I)V

    .line 442
    const v4, 0x7f0c0153

    invoke-virtual {p0, v4}, Lcom/tudou/ui/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRealRootView:Landroid/view/View;

    .line 443
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getVisiableHeight()V

    .line 444
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->initView()V

    .line 445
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->setStartPageImage()V

    .line 448
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getUriData()V

    .line 459
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "http://admaster.mobi/sdkconfig.xml"

    invoke-virtual {v4, v5, v6}, Lcn/com/mma/mobile/tracking/api/Countly;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 461
    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 462
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 463
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "cooperateName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "kuwo":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v4, "kuwo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 465
    iput-boolean v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isFromKuWo:Z

    .line 466
    invoke-static {p0, v2}, Lcom/tudou/android/TudouApi;->goDetailFromKuWo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 469
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "kuwo":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1283
    const/4 v0, 0x0

    .line 1284
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 1291
    :goto_0
    return-object v0

    .line 1286
    :pswitch_0
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->showDataflowTipsDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1287
    goto :goto_0

    .line 1284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onDestroy()V

    .line 516
    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRootview:Landroid/widget/ImageView;

    .line 517
    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    .line 518
    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->startLogo:Landroid/widget/ImageView;

    .line 520
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->posterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->posterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->posterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 522
    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->posterBitmap:Landroid/graphics/Bitmap;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

    if-eqz v0, :cond_1

    .line 525
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u9000\u51fa\u5ba2\u6237\u7aef \u5220\u9664\u5e7f\u544a\u7684\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 527
    iput-object v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mStartpageHttpRequest:Lcom/youku/network/IHttpRequest;

    .line 529
    :cond_1
    const-string v0, "TAG_TUDOU"

    const-string v1, "WelcomeActivity onDestroy!"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 916
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onPause()V

    .line 917
    const-string v0, "TAG_TUDOU"

    const-string v1, "WelcomeActivity=======onPause"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/youku/util/Util;->dismissDialog()V

    .line 924
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isPageVisible:Z

    .line 799
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onRestart()V

    .line 800
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 826
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onResume()V

    .line 827
    const-string v0, "TAG_TUDOU"

    const-string v1, "WelcomeActivity=======onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsOnResumeValue:Z

    if-eqz v0, :cond_0

    .line 830
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->stateJudge()V

    .line 832
    :cond_0
    iget-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mIsOnResumeValue:Z

    if-eqz v0, :cond_1

    .line 833
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WelcomeActivity====OnResume====end \u5230OnResume\u7ed3\u675f\u603b\u65f6\u95f4===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mOnCreateTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 8

    .prologue
    .line 774
    const-string v0, "TAG_TUDOU"

    const-string v1, "WelcomeActivity=======onStart"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isPageVisible:Z

    .line 776
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStart()V

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 778
    .local v6, "endTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 779
    .local v5, "extenalHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 780
    const-string v0, "pltype"

    const-string v1, "appload"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string/jumbo v0, "st"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mOnCreateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v0, "et"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string/jumbo v0, "s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mOnCreateTime:J

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-static {}, Lcom/tudou/android/Youku;->getIsNotShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const-string v1, "app\u542f\u52a8"

    const-class v0, Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app\u542f\u52a8"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 789
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->isPageVisible:Z

    .line 810
    const-string v0, "TAG_TUDOU"

    const-string v1, "WelcomeActivity=======onStop"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStop()V

    .line 812
    return-void
.end method

.method public sendExposeMsg(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 496
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v0

    const-string v1, "http://admaster.mobi/android/log/a222,c123,b132,"

    invoke-virtual {v0, v1}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public setPosterImage()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 1600
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRootview:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1622
    :goto_0
    return-void

    .line 1603
    :cond_0
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->setImageGone()V

    .line 1612
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRootview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tudou/ui/activity/WelcomeActivity;->posterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1613
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRootview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1614
    invoke-direct {p0}, Lcom/tudou/ui/activity/WelcomeActivity;->showKnowMore()V

    .line 1615
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mWelHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1618
    :cond_1
    const/16 v0, 0x16

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v0, v2, v3}, Lcom/tudou/ui/activity/WelcomeActivity;->sendEmptyMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public setStartPageImage()V
    .locals 11

    .prologue
    .line 1894
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    sput-object v8, Lcom/tudou/ui/activity/WelcomeActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 1895
    const-string/jumbo v8, "type_show"

    invoke-static {v8}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1896
    .local v4, "showInfo":Ljava/lang/String;
    const-string v8, "TAG_TUDOU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showInfo==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1898
    const-string v8, "\\$"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1899
    .local v5, "spit":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v5

    if-ge v3, v8, :cond_0

    .line 1900
    const-string v8, "TAG_TUDOU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "spit=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1902
    :cond_0
    array-length v8, v5

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    .line 2024
    .end local v3    # "i":I
    .end local v5    # "spit":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1906
    .restart local v3    # "i":I
    .restart local v5    # "spit":[Ljava/lang/String;
    :cond_2
    const-string v8, "normal"

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1907
    array-length v8, v5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_1

    .line 1908
    const-string v8, "bg_image_url"

    invoke-static {v8}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1909
    .local v6, "urlBg":Ljava/lang/String;
    const-string v8, "fg_image_url"

    invoke-static {v8}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1910
    .local v7, "urlFg":Ljava/lang/String;
    const-string v8, "TAG_TUDOU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bgUrl==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "fgUrl==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1912
    sget-object v8, Lcom/tudou/ui/activity/WelcomeActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v8, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1913
    .local v1, "bitmapBg":Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 1914
    const/4 v8, 0x2

    aget-object v8, v5, v8

    new-instance v9, Lcom/tudou/ui/activity/WelcomeActivity$19;

    invoke-direct {v9, p0}, Lcom/tudou/ui/activity/WelcomeActivity$19;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto :goto_1

    .line 1922
    :cond_3
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRootview:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1924
    sget-object v8, Lcom/tudou/ui/activity/WelcomeActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v8, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1925
    .local v2, "bitmapFg":Landroid/graphics/Bitmap;
    if-nez v2, :cond_4

    .line 1926
    const/4 v8, 0x3

    aget-object v8, v5, v8

    new-instance v9, Lcom/tudou/ui/activity/WelcomeActivity$20;

    invoke-direct {v9, p0}, Lcom/tudou/ui/activity/WelcomeActivity$20;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto :goto_1

    .line 1936
    :cond_4
    const-string v8, "middle"

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1937
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1938
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logoTop:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1939
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1945
    :goto_2
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/tudou/ui/activity/WelcomeActivity;->setStartPageTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1941
    :cond_5
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1942
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logoTop:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1943
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logoTop:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 1946
    .end local v1    # "bitmapBg":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapFg":Landroid/graphics/Bitmap;
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1947
    const/4 v8, 0x2

    aget-object v8, v5, v8

    new-instance v9, Lcom/tudou/ui/activity/WelcomeActivity$21;

    invoke-direct {v9, p0}, Lcom/tudou/ui/activity/WelcomeActivity$21;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_1

    .line 1953
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1954
    const/4 v8, 0x3

    aget-object v8, v5, v8

    new-instance v9, Lcom/tudou/ui/activity/WelcomeActivity$22;

    invoke-direct {v9, p0}, Lcom/tudou/ui/activity/WelcomeActivity$22;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_1

    .line 1961
    .end local v6    # "urlBg":Ljava/lang/String;
    .end local v7    # "urlFg":Ljava/lang/String;
    :cond_8
    const-string v8, "bg_only"

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1962
    array-length v8, v5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 1963
    const-string v8, "bg_image_url"

    invoke-static {v8}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1964
    .restart local v6    # "urlBg":Ljava/lang/String;
    const-string v8, "TAG_TUDOU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bgUrl==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1966
    sget-object v8, Lcom/tudou/ui/activity/WelcomeActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v8, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1967
    .local v0, "bimapBg":Landroid/graphics/Bitmap;
    if-nez v0, :cond_9

    .line 1968
    const/4 v8, 0x2

    aget-object v8, v5, v8

    new-instance v9, Lcom/tudou/ui/activity/WelcomeActivity$23;

    invoke-direct {v9, p0}, Lcom/tudou/ui/activity/WelcomeActivity$23;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_1

    .line 1976
    :cond_9
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->mRootview:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1977
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1978
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/tudou/ui/activity/WelcomeActivity;->setStartPageTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1979
    .end local v0    # "bimapBg":Landroid/graphics/Bitmap;
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1980
    const/4 v8, 0x2

    aget-object v8, v5, v8

    new-instance v9, Lcom/tudou/ui/activity/WelcomeActivity$24;

    invoke-direct {v9, p0}, Lcom/tudou/ui/activity/WelcomeActivity$24;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_1

    .line 1987
    .end local v6    # "urlBg":Ljava/lang/String;
    :cond_b
    const-string v8, "fg_only"

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1988
    array-length v8, v5

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 1989
    const-string v8, "fg_image_url"

    invoke-static {v8}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1990
    .restart local v7    # "urlFg":Ljava/lang/String;
    const-string v8, "TAG_TUDOU"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fgUrl==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1992
    sget-object v8, Lcom/tudou/ui/activity/WelcomeActivity;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v8, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1993
    .restart local v2    # "bitmapFg":Landroid/graphics/Bitmap;
    if-nez v2, :cond_c

    .line 1994
    const/4 v8, 0x2

    aget-object v8, v5, v8

    new-instance v9, Lcom/tudou/ui/activity/WelcomeActivity$25;

    invoke-direct {v9, p0}, Lcom/tudou/ui/activity/WelcomeActivity$25;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_1

    .line 2002
    :cond_c
    const-string v8, "middle"

    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2003
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2004
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logoTop:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2005
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2012
    :goto_3
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {p0, v8}, Lcom/tudou/ui/activity/WelcomeActivity;->setStartPageTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2007
    :cond_d
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logo:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2008
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logoTop:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2009
    iget-object v8, p0, Lcom/tudou/ui/activity/WelcomeActivity;->logoTop:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 2013
    .end local v2    # "bitmapFg":Landroid/graphics/Bitmap;
    :cond_e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2014
    const/4 v8, 0x2

    aget-object v8, v5, v8

    new-instance v9, Lcom/tudou/ui/activity/WelcomeActivity$26;

    invoke-direct {v9, p0}, Lcom/tudou/ui/activity/WelcomeActivity$26;-><init>(Lcom/tudou/ui/activity/WelcomeActivity;)V

    invoke-static {v8, v9}, Lcom/tudou/ui/activity/WelcomeActivity;->getBitmap(Ljava/lang/String;Lcom/baseproject/image/ImageCallback;)V

    goto/16 :goto_1
.end method
