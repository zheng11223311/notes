.class public Lcom/tudou/ui/fragment/MoreFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;,
        Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;,
        Lcom/tudou/ui/fragment/MoreFragment$goLogoutThread;,
        Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x1f4

.field private static final Download:I = 0x2

.field private static final KEY_FIST_SET:Ljava/lang/String; = "fist_set"

.field public static final PWD_REQUEST_CODE:I = 0x12d

.field public static final PWD_SUCESS:I = 0x12e

.field private static final Play:I = 0x0

.field public static final ResolutionItem:[Ljava/lang/String;

.field public static final ResolutionSave:Ljava/lang/String; = "resolution_save"

.field private static final Upload:I = 0x1

.field public static final VERTION_SAVE_FAILED:J = 0x0L

.field private static final WAY_CLEAR:I = 0x2

.field private static final WAY_SET:I = 0x1

.field private static buffer:[B = null

.field private static checkVersionRequest:Lcom/youku/network/IHttpRequest; = null

.field private static downloadUrl:Ljava/lang/String; = null

.field private static fileLen:J = 0x0L

.field private static fileName:Ljava/lang/String; = null

.field private static fileNameDel:Ljava/lang/String; = null

.field private static filePath:Ljava/lang/String; = null

.field public static isDownloading:Z = false

.field public static mIsShowNotification:Z = false

.field public static mMoreFragment:Lcom/tudou/ui/fragment/MoreFragment; = null

.field private static mNotificationManager:Landroid/app/NotificationManager; = null

.field private static final mRotateTime:J = 0x64L

.field private static max:I

.field private static notification:Landroid/app/Notification;

.field private static nowSize:I

.field private static updateVertion:Ljava/lang/String;


# instance fields
.field private Total_mem:Ljava/lang/String;

.field private Yiyong_mem:Ljava/lang/String;

.field private broadCastReceiver:Landroid/content/BroadcastReceiver;

.field private curWhere:Landroid/widget/TextView;

.field private downloadHandler:Landroid/os/Handler;

.field private goClearCache:Landroid/view/View;

.field private goClearCache_num:Landroid/widget/TextView;

.field private goClearCache_title:Landroid/widget/TextView;

.field private goLogout:Landroid/view/View;

.field private goUpdateslayout:Landroid/view/View;

.field private goabout:Landroid/view/View;

.field private godownloadToSDCard:Landroid/view/View;

.field private gofeedback:Landroid/view/View;

.field private isdownload:Landroid/widget/ImageView;

.field private isupload:Landroid/widget/ImageView;

.field private mAccessToken:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private mGetCacheHandler:Landroid/os/Handler;

.field private mGuidePage:Landroid/view/View;

.field private mImgDownloadTag:Landroid/widget/ImageView;

.field private mImgIsPlay3G:Landroid/widget/ImageView;

.field private mImgIsPushed:Landroid/widget/ImageView;

.field private mImgNotDisturb:Landroid/widget/ImageView;

.field private mImgResolutionTag:Landroid/widget/ImageView;

.field private mLayoutResolutionContent:Landroid/widget/LinearLayout;

.field private mLayoutVideoResolution:Landroid/view/View;

.field private mLine1:Landroid/view/View;

.field private mLine2:Landroid/view/View;

.field private mLineLogout:Landroid/view/View;

.field private mPwdSetLayout:Landroid/view/View;

.field private mReverseRotateAnimationDownloadSet:Landroid/view/animation/Animation;

.field private mReverseRotateAnimationResolutionSet:Landroid/view/animation/Animation;

.field private mRotateAnimationDownloadSet:Landroid/view/animation/Animation;

.field private mRotateAnimationResolutionSet:Landroid/view/animation/Animation;

.field private mSavePathSetContent:Landroid/widget/LinearLayout;

.field private mTopMargin:Landroid/view/View;

.field private mTxtLogout:Landroid/view/View;

.field private mTxtResolutionLocation:Landroid/widget/TextView;

.field private mTxtShareState:Landroid/widget/TextView;

.field private mUpdates_tips:Landroid/widget/ImageView;

.field private mUserName:Landroid/widget/TextView;

.field private mUserPic:Landroid/widget/ImageView;

.field private more:Landroid/view/View;

.field onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

.field private paths:[Ljava/lang/String;

.field private sp:Landroid/content/SharedPreferences;

.field private tempIndex:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u8d85\u6e05"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u9ad8\u6e05"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "\u6807\u6e05"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment;->ResolutionItem:[Ljava/lang/String;

    .line 1096
    sput-object v5, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    .line 1097
    sput-object v5, Lcom/tudou/ui/fragment/MoreFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1134
    const-string v0, "apkDownload.apk"

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment;->fileName:Ljava/lang/String;

    .line 1135
    const-string v0, "apkDownloadDel.apk"

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment;->fileNameDel:Ljava/lang/String;

    .line 1136
    const-string v0, "apkDownload"

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment;->filePath:Ljava/lang/String;

    .line 1137
    sput v3, Lcom/tudou/ui/fragment/MoreFragment;->max:I

    .line 1138
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tudou/ui/fragment/MoreFragment;->fileLen:J

    .line 1139
    sput v3, Lcom/tudou/ui/fragment/MoreFragment;->nowSize:I

    .line 1140
    const-string v0, ""

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment;->downloadUrl:Ljava/lang/String;

    .line 1141
    const-string v0, ""

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment;->updateVertion:Ljava/lang/String;

    .line 1146
    const/high16 v0, 0x100000

    new-array v0, v0, [B

    sput-object v0, Lcom/tudou/ui/fragment/MoreFragment;->buffer:[B

    .line 1147
    sput-boolean v3, Lcom/tudou/ui/fragment/MoreFragment;->isDownloading:Z

    .line 1148
    sput-boolean v4, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->time:J

    .line 120
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    .line 633
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MoreFragment$7;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mGetCacheHandler:Landroid/os/Handler;

    .line 1076
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MoreFragment$9;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->downloadHandler:Landroid/os/Handler;

    .line 1904
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$17;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MoreFragment$17;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->sendBroadCast()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->isupload:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPushed:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgNotDisturb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPlay3G:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->setSpeedLogout()V

    return-void
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/MoreFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MoreFragment;->setPwdSetVisible(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/MoreFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MoreFragment;->getImageCache(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->checkVersionTask()V

    return-void
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment;->updateVertion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 83
    sput-object p0, Lcom/tudou/ui/fragment/MoreFragment;->updateVertion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 83
    sput-object p0, Lcom/tudou/ui/fragment/MoreFragment;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mUpdates_tips:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/tudou/ui/fragment/MoreFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MoreFragment;->checkInternet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->godownloadToSDCard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLine2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/tudou/ui/fragment/MoreFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MoreFragment;->setCachePathView(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2900()V
    .locals 0

    .prologue
    .line 83
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->startUpdateDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/MoreFragment;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MoreFragment;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3000()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .param p0, "x0"    # Landroid/app/NotificationManager;

    .prologue
    .line 83
    sput-object p0, Lcom/tudou/ui/fragment/MoreFragment;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$3100()V
    .locals 0

    .prologue
    .line 83
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->showNotification()V

    return-void
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/tudou/ui/fragment/MoreFragment;->max:I

    return v0
.end method

.method static synthetic access$3202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 83
    sput p0, Lcom/tudou/ui/fragment/MoreFragment;->max:I

    return p0
.end method

.method static synthetic access$3300()J
    .locals 2

    .prologue
    .line 83
    sget-wide v0, Lcom/tudou/ui/fragment/MoreFragment;->fileLen:J

    return-wide v0
.end method

.method static synthetic access$3302(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 83
    sput-wide p0, Lcom/tudou/ui/fragment/MoreFragment;->fileLen:J

    return-wide p0
.end method

.method static synthetic access$3400()[B
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment;->buffer:[B

    return-object v0
.end method

.method static synthetic access$3500()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/tudou/ui/fragment/MoreFragment;->nowSize:I

    return v0
.end method

.method static synthetic access$3502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 83
    sput p0, Lcom/tudou/ui/fragment/MoreFragment;->nowSize:I

    return p0
.end method

.method static synthetic access$3512(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 83
    sget v0, Lcom/tudou/ui/fragment/MoreFragment;->nowSize:I

    add-int/2addr v0, p0

    sput v0, Lcom/tudou/ui/fragment/MoreFragment;->nowSize:I

    return v0
.end method

.method static synthetic access$3600()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification;

    .prologue
    .line 83
    sput-object p0, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mSavePathSetContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mGetCacheHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mReverseRotateAnimationDownloadSet:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgDownloadTag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mRotateAnimationDownloadSet:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->curWhere:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLayoutResolutionContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mTxtResolutionLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mReverseRotateAnimationResolutionSet:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgResolutionTag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mRotateAnimationResolutionSet:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->downloadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->goClearCache_num:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/tudou/ui/fragment/MoreFragment;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment;->paths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/tudou/ui/fragment/MoreFragment;Lcom/tudou/service/download/SDCardManager$SDCardInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;
    .param p1, "x1"    # Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MoreFragment;->setProgressValues(Lcom/tudou/service/download/SDCardManager$SDCardInfo;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getCachePathRun()V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->goClearCache_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->goClearCache:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->isdownload:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/MoreFragment;Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MoreFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/MoreFragment;->show3G_Dialog(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private addSavePathItem(Lcom/tudou/service/download/SDCardManager$SDCardInfo;I)V
    .locals 7
    .param p1, "info"    # Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    .param p2, "size"    # I

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03024c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1629
    .local v3, "itemView":Landroid/view/View;
    const v4, 0x7f0c0b19

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1630
    .local v1, "desc":Landroid/widget/TextView;
    const v4, 0x7f0c0b1a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1631
    .local v2, "img_choice":Landroid/widget/ImageView;
    const v4, 0x7f0c0b1b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1633
    .local v0, "bar":Landroid/widget/ProgressBar;
    iget-object v4, p1, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1634
    iget v4, p1, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->userProgress:I

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1635
    const/4 v4, 0x1

    if-le p2, v4, :cond_1

    .line 1636
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1637
    iget-boolean v4, p1, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isSelected:Z

    if-eqz v4, :cond_0

    .line 1638
    const v4, 0x7f0207fe

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1646
    :goto_0
    iget-boolean v4, p1, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isSelected:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1647
    new-instance v4, Lcom/tudou/ui/fragment/MoreFragment$13;

    invoke-direct {v4, p0, p1}, Lcom/tudou/ui/fragment/MoreFragment$13;-><init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/tudou/service/download/SDCardManager$SDCardInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1685
    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment;->mSavePathSetContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1686
    return-void

    .line 1640
    :cond_0
    const v4, 0x7f0207ff

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1643
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static cancelDownloadThread()V
    .locals 2

    .prologue
    .line 1500
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u5220\u9664\u4e0b\u8f7d\u65b0\u7248\u672c\u7ebf\u7a0b"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->getInstance()Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->Destroy()V

    .line 1502
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->cancelNotification()V

    .line 1503
    return-void
.end method

.method public static cancelNotification()V
    .locals 3

    .prologue
    .line 1506
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1508
    .local v0, "manager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1509
    return-void
.end method

.method private checkInternet(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1151
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 1154
    .local v0, "updateDialog":Lcom/youku/widget/TudouDialog;
    const v1, 0x7f0d01db

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(I)V

    .line 1155
    const v1, 0x7f0d0108

    new-instance v2, Lcom/tudou/ui/fragment/MoreFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/MoreFragment$10;-><init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 1190
    const v1, 0x7f0d010a

    new-instance v2, Lcom/tudou/ui/fragment/MoreFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/MoreFragment$11;-><init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 1198
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 1203
    .end local v0    # "updateDialog":Lcom/youku/widget/TudouDialog;
    :goto_0
    return-void

    .line 1200
    :cond_0
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->startUpdateDownload()V

    goto :goto_0
.end method

.method private checkVersionTask()V
    .locals 3

    .prologue
    .line 985
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 986
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 1074
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d00b9

    invoke-static {v1, v2}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 992
    const-class v1, Lcom/youku/network/IHttpRequest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    sput-object v1, Lcom/tudou/ui/fragment/MoreFragment;->checkVersionRequest:Lcom/youku/network/IHttpRequest;

    .line 994
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {}, Lcom/youku/config/Profile;->getPid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/youku/http/TudouURLContainer;->checkVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 997
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    sget-object v1, Lcom/tudou/ui/fragment/MoreFragment;->checkVersionRequest:Lcom/youku/network/IHttpRequest;

    new-instance v2, Lcom/tudou/ui/fragment/MoreFragment$8;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MoreFragment$8;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public static createNewApkFile()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1272
    invoke-static {}, Lcom/youku/util/Util;->hasSDCard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1273
    sget-boolean v3, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v3, :cond_0

    .line 1274
    const v3, 0x7f0d01ed

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    :cond_0
    move-object v1, v4

    .line 1301
    .local v2, "subDir":Ljava/io/File;
    :goto_0
    return-object v1

    .line 1279
    .end local v2    # "subDir":Ljava/io/File;
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    sget-object v5, Lcom/tudou/ui/fragment/MoreFragment;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1280
    .restart local v2    # "subDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1281
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1283
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/tudou/ui/fragment/MoreFragment;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1284
    .local v1, "file":Ljava/io/File;
    const-string v3, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u521b\u5efa\u65b0\u6587\u4ef6===subDir=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "===fileName===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tudou/ui/fragment/MoreFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1289
    const-string v3, "TAG_TUDOU"

    const-string/jumbo v5, "\u539f\u6587\u4ef6\u5b58\u5728=======\u5220\u9664\u8be5\u6587\u4ef6"

    invoke-static {v3, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1294
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1296
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1297
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u521b\u5efa\u6587\u4ef6\u51fa\u9519======="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_4

    const-string v3, "null"

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1301
    goto :goto_0

    .line 1292
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string v3, "TAG_TUDOU"

    const-string/jumbo v5, "\u539f\u6587\u4ef6\u5df2\u4e0d\u5b58\u5728"

    invoke-static {v3, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1297
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getCachePathRun()V
    .locals 1

    .prologue
    .line 1757
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 1758
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$16;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MoreFragment$16;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MoreFragment$16;->start()V

    .line 1815
    return-void
.end method

.method private getFileSize(Ljava/io/File;)J
    .locals 8
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 662
    const-wide/16 v2, 0x0

    .line 663
    .local v2, "size":J
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 664
    .local v0, "flist":[Ljava/io/File;
    if-nez v0, :cond_0

    move-wide v4, v2

    .line 679
    .end local v2    # "size":J
    .local v4, "size":J
    :goto_0
    return-wide v4

    .line 667
    .end local v4    # "size":J
    .restart local v2    # "size":J
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 668
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 674
    aget-object v6, v0, v1

    invoke-direct {p0, v6}, Lcom/tudou/ui/fragment/MoreFragment;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 667
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 676
    :cond_1
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_2

    :cond_2
    move-wide v4, v2

    .line 679
    .end local v2    # "size":J
    .restart local v4    # "size":J
    goto :goto_0
.end method

.method private getImageCache(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 616
    new-instance v0, Lcom/tudou/ui/fragment/MoreFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/tudou/ui/fragment/MoreFragment$6;-><init>(Lcom/tudou/ui/fragment/MoreFragment;I)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MoreFragment$6;->run()V

    .line 631
    return-void
.end method

.method private hideAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1951
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1953
    .local v0, "an":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1954
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 1955
    return-object v0
.end method

.method private initResolution()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1692
    const-string/jumbo v6, "resolution_save"

    sget-object v7, Lcom/tudou/ui/fragment/MoreFragment;->ResolutionItem:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v6, v7}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1693
    .local v3, "lastSelectItem":Ljava/lang/String;
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment;->mTxtResolutionLocation:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v6, Lcom/tudou/ui/fragment/MoreFragment;->ResolutionItem:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 1695
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0302b5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1697
    .local v2, "itemView":Landroid/view/View;
    const v6, 0x7f0c0c59

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1698
    .local v4, "resolutionTitle":Landroid/widget/TextView;
    const v6, 0x7f0c0b1a

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1700
    .local v1, "img_choice":Landroid/widget/ImageView;
    sget-object v6, Lcom/tudou/ui/fragment/MoreFragment;->ResolutionItem:[Ljava/lang/String;

    aget-object v5, v6, v0

    .line 1701
    .local v5, "titleItem":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1703
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1704
    const v6, 0x7f0207fe

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1709
    :goto_1
    new-instance v6, Lcom/tudou/ui/fragment/MoreFragment$14;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/MoreFragment$14;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1737
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLayoutResolutionContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1706
    :cond_0
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1707
    const v6, 0x7f0207ff

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1740
    .end local v1    # "img_choice":Landroid/widget/ImageView;
    .end local v2    # "itemView":Landroid/view/View;
    .end local v4    # "resolutionTitle":Landroid/widget/TextView;
    .end local v5    # "titleItem":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLayoutVideoResolution:Landroid/view/View;

    new-instance v7, Lcom/tudou/ui/fragment/MoreFragment$15;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/MoreFragment$15;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1754
    return-void
.end method

.method private initReverseRotateAnimation()Landroid/view/animation/RotateAnimation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 1997
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2000
    .local v0, "reverseRotateAnimation":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2001
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 2002
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 2003
    return-object v0
.end method

.method private initRotateAnimation()Landroid/view/animation/RotateAnimation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 1987
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1990
    .local v0, "rotateAnimation":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1991
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1992
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1993
    return-object v0
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 206
    iget-object v3, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 209
    iget-object v3, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    .local v2, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    const v3, 0x7f0d0261

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v3, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    .local v0, "img_back":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    new-instance v3, Lcom/tudou/ui/fragment/MoreFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/MoreFragment$1;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-void
.end method

.method private initView()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x1

    const v11, 0x7f0205ec

    const v10, 0x7f0205ea

    const/4 v9, 0x0

    .line 231
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c053f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->isdownload:Landroid/widget/ImageView;

    .line 232
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c053d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->isupload:Landroid/widget/ImageView;

    .line 233
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0536

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPushed:Landroid/widget/ImageView;

    .line 234
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0539

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgNotDisturb:Landroid/widget/ImageView;

    .line 235
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c053b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPlay3G:Landroid/widget/ImageView;

    .line 237
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0546

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLayoutVideoResolution:Landroid/view/View;

    .line 238
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0548

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mTxtResolutionLocation:Landroid/widget/TextView;

    .line 239
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0549

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgResolutionTag:Landroid/widget/ImageView;

    .line 240
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c054a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLayoutResolutionContent:Landroid/widget/LinearLayout;

    .line 242
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0551

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->gofeedback:Landroid/view/View;

    .line 243
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0540

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->godownloadToSDCard:Landroid/view/View;

    .line 244
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0542

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->curWhere:Landroid/widget/TextView;

    .line 245
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0545

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mSavePathSetContent:Landroid/widget/LinearLayout;

    .line 246
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0552

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goabout:Landroid/view/View;

    .line 249
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0555

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goUpdateslayout:Landroid/view/View;

    .line 250
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0557

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mUpdates_tips:Landroid/widget/ImageView;

    .line 252
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0530

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mTopMargin:Landroid/view/View;

    .line 253
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0531

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mPwdSetLayout:Landroid/view/View;

    .line 254
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0534

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLine1:Landroid/view/View;

    .line 255
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0544

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLine2:Landroid/view/View;

    .line 258
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c052f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLineLogout:Landroid/view/View;

    .line 262
    sget-boolean v7, Lcom/tudou/android/Youku;->IS_NEED_TO_UPDATE:Z

    if-eqz v7, :cond_0

    .line 263
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mUpdates_tips:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :cond_0
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c054b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goClearCache:Landroid/view/View;

    .line 266
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c054c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goClearCache_title:Landroid/widget/TextView;

    .line 268
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c054d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goClearCache_num:Landroid/widget/TextView;

    .line 269
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goClearCache_title:Landroid/widget/TextView;

    const v8, 0x7f0d0254

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 271
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c054e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mGuidePage:Landroid/view/View;

    .line 272
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mGuidePage:Landroid/view/View;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-direct {p0, v12}, Lcom/tudou/ui/fragment/MoreFragment;->getImageCache(I)V

    .line 292
    sget-object v7, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/youku/pushsdk/control/PushManager;->getPushSwitch(Landroid/content/Context;)Z

    move-result v4

    .line 294
    .local v4, "isPush":Z
    if-eqz v4, :cond_1

    .line 295
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPushed:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    :goto_0
    const-string v7, "app_disturb"

    invoke-static {v7, v12}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 302
    .local v3, "isDisturb":Z
    if-eqz v3, :cond_2

    .line 303
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgNotDisturb:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    :goto_1
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->sp:Landroid/content/SharedPreferences;

    sget-object v8, Lcom/tudou/android/Youku;->NO_WLAN_UPLOAD_FLG:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 309
    .local v1, "allowONline3G":Z
    if-eqz v1, :cond_3

    .line 310
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->isupload:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    :goto_2
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    .line 315
    .local v0, "allowCache3G":Z
    if-eqz v0, :cond_4

    .line 316
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->isdownload:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    :goto_3
    const-string v7, "allowONline3G"

    invoke-static {v7, v9}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 323
    .local v2, "allowPlayONline3G":Z
    if-eqz v2, :cond_5

    .line 324
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPlay3G:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    :goto_4
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c052c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goLogout:Landroid/view/View;

    .line 331
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goLogout:Landroid/view/View;

    const v8, 0x7f0c0436

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mUserPic:Landroid/widget/ImageView;

    .line 332
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goLogout:Landroid/view/View;

    const v8, 0x7f0c052e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mUserName:Landroid/widget/TextView;

    .line 333
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goLogout:Landroid/view/View;

    const v8, 0x7f0c052d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mTxtLogout:Landroid/view/View;

    .line 334
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    .line 335
    .local v6, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 336
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goLogout:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLineLogout:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    invoke-virtual {v6}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/tudou/ui/fragment/MoreFragment;->mUserPic:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 375
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mTxtLogout:Landroid/view/View;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :goto_5
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0543

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgDownloadTag:Landroid/widget/ImageView;

    .line 451
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->isdownload:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->isupload:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPushed:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgNotDisturb:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPlay3G:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->gofeedback:Landroid/view/View;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goUpdateslayout:Landroid/view/View;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goabout:Landroid/view/View;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goClearCache:Landroid/view/View;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mPwdSetLayout:Landroid/view/View;

    iget-object v8, p0, Lcom/tudou/ui/fragment/MoreFragment;->onimageclick:Lcom/tudou/ui/fragment/MoreFragment$OnImageClick;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    const v8, 0x7f0c0094

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 472
    .local v5, "statusBarView":Landroid/view/View;
    invoke-static {v5}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 473
    return-void

    .line 297
    .end local v0    # "allowCache3G":Z
    .end local v1    # "allowONline3G":Z
    .end local v2    # "allowPlayONline3G":Z
    .end local v3    # "isDisturb":Z
    .end local v5    # "statusBarView":Landroid/view/View;
    .end local v6    # "userBean":Lcom/youku/vo/UserBean;
    :cond_1
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPushed:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 305
    .restart local v3    # "isDisturb":Z
    :cond_2
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgNotDisturb:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 312
    .restart local v1    # "allowONline3G":Z
    :cond_3
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->isupload:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 318
    .restart local v0    # "allowCache3G":Z
    :cond_4
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->isdownload:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 326
    .restart local v2    # "allowPlayONline3G":Z
    :cond_5
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mImgIsPlay3G:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 377
    .restart local v6    # "userBean":Lcom/youku/vo/UserBean;
    :cond_6
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->goLogout:Landroid/view/View;

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v7, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLineLogout:Landroid/view/View;

    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public static installApk()V
    .locals 6

    .prologue
    .line 1513
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    sget-object v5, Lcom/tudou/ui/fragment/MoreFragment;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/ui/fragment/MoreFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v1, "mFile":Ljava/io/File;
    sget-object v2, Lcom/tudou/ui/fragment/MoreFragment;->fileName:Ljava/lang/String;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1517
    .local v0, "install":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1518
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1523
    .end local v0    # "install":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static isCurrentVertionDownloaded(Ljava/lang/String;)Z
    .locals 11
    .param p0, "vertion"    # Ljava/lang/String;

    .prologue
    .line 1244
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1245
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    sget-object v10, Lcom/tudou/ui/fragment/MoreFragment;->filePath:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tudou/ui/fragment/MoreFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v1, "mFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1248
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1249
    .local v2, "len":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-nez v7, :cond_0

    .line 1250
    const/4 v7, 0x0

    .line 1268
    .end local v1    # "mFile":Ljava/io/File;
    .end local v2    # "len":J
    :goto_0
    return v7

    .line 1253
    .restart local v1    # "mFile":Ljava/io/File;
    .restart local v2    # "len":J
    :cond_0
    const-wide/16 v8, 0x0

    :try_start_0
    invoke-static {p0, v8, v9}, Lcom/tudou/android/Youku;->getPreferenceLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 1255
    .local v4, "vertionState":J
    cmp-long v7, v4, v2

    if-nez v7, :cond_1

    .line 1256
    const/4 v7, 0x1

    goto :goto_0

    .line 1258
    .end local v4    # "vertionState":J
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v6

    .line 1261
    .local v6, "vertionState2":I
    int-to-long v8, v6

    cmp-long v7, v8, v2

    if-nez v7, :cond_1

    .line 1262
    const/4 v7, 0x1

    goto :goto_0

    .line 1268
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "mFile":Ljava/io/File;
    .end local v2    # "len":J
    .end local v6    # "vertionState2":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private sendBroadCast()V
    .locals 2

    .prologue
    .line 1576
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "upload_3g_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1578
    return-void
.end method

.method private setCachePathView(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/SDCardManager$SDCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1582
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/SDCardManager$SDCardInfo;>;"
    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment;->mSavePathSetContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1583
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1584
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 1585
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1621
    :goto_1
    return-void

    .line 1588
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    .line 1589
    .local v2, "sInfo":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    iget-object v1, v2, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    .line 1591
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tudou/service/download/DownloadManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1593
    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment;->curWhere:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->descCurPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isSelected:Z

    .line 1598
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/tudou/ui/fragment/MoreFragment;->addSavePathItem(Lcom/tudou/service/download/SDCardManager$SDCardInfo;I)V

    .line 1584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1596
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->isSelected:Z

    goto :goto_2

    .line 1602
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "sInfo":Lcom/tudou/service/download/SDCardManager$SDCardInfo;
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/MoreFragment;->godownloadToSDCard:Landroid/view/View;

    new-instance v5, Lcom/tudou/ui/fragment/MoreFragment$12;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/MoreFragment$12;-><init>(Lcom/tudou/ui/fragment/MoreFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private setProgressValues(Lcom/tudou/service/download/SDCardManager$SDCardInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    .prologue
    .line 1888
    new-instance v0, Lcom/tudou/service/download/SDCardManager;

    iget-object v1, p1, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 1889
    .local v0, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1901
    :goto_0
    return-void

    .line 1892
    :cond_0
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getTotalSize()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-static {v1}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->Total_mem:Ljava/lang/String;

    .line 1895
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v1, v2

    invoke-static {v1}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->Yiyong_mem:Ljava/lang/String;

    .line 1896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment;->Yiyong_mem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment;->Total_mem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->desc:Ljava/lang/String;

    .line 1897
    invoke-virtual {v0}, Lcom/tudou/service/download/SDCardManager;->getUsedProgrss()I

    move-result v1

    iput v1, p1, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->userProgress:I

    goto :goto_0
.end method

.method private setPwdSetVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 924
    if-eqz p1, :cond_0

    .line 925
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mTopMargin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mPwdSetLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLine1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 934
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mTopMargin:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mPwdSetLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->mLine1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSpeedLogout()V
    .locals 4

    .prologue
    .line 952
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 953
    .local v0, "userbean":Lcom/youku/vo/UserBean;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setLogin(Z)V

    .line 954
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setUserId(Ljava/lang/String;)V

    .line 955
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/MyTudouFragment;->mNeedToRefresh:Z

    .line 958
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tudou.subscribe.UPDATE_COUNT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    return-void
.end method

.method private show3G_Dialog(Landroid/widget/ImageView;I)V
    .locals 3
    .param p1, "aImageView"    # Landroid/widget/ImageView;
    .param p2, "type"    # I

    .prologue
    .line 558
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 559
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const v1, 0x7f0d00b2

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/MoreFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/MoreFragment$4;-><init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 567
    const v1, 0x7f0d00c9

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/MoreFragment$5;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/tudou/ui/fragment/MoreFragment$5;-><init>(Lcom/tudou/ui/fragment/MoreFragment;Landroid/widget/ImageView;ILcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 597
    packed-switch p2, :pswitch_data_0

    .line 608
    :goto_0
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 609
    return-void

    .line 599
    :pswitch_0
    const v1, 0x7f0d025d

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :pswitch_1
    const v1, 0x7f0d025e

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :pswitch_2
    const v1, 0x7f0d025c

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1961
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1963
    .local v0, "an":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1964
    return-object v0
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 511
    new-instance v0, Lcom/youku/widget/TudouDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/youku/widget/TudouDialog$TYPE;->normal:Lcom/youku/widget/TudouDialog$TYPE;

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;Lcom/youku/widget/TudouDialog$TYPE;)V

    .line 512
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    const v1, 0x7f0d00b2

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/MoreFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/MoreFragment$2;-><init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 520
    const v1, 0x7f0d00c9

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/MoreFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/tudou/ui/fragment/MoreFragment$3;-><init>(Lcom/tudou/ui/fragment/MoreFragment;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 546
    const v1, 0x7f0d00a2

    invoke-virtual {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 548
    return-void
.end method

.method private static showNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1100
    const-string v2, "notification"

    .line 1101
    .local v2, "ns":Ljava/lang/String;
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    sput-object v4, Lcom/tudou/ui/fragment/MoreFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1103
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    sput-object v4, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    .line 1104
    sget-object v4, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1105
    sget-object v4, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    const/4 v5, -0x1

    iput v5, v4, Landroid/app/Notification;->defaults:I

    .line 1106
    sget-object v4, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    const v5, 0x7f020435

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 1107
    sget-object v4, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v6, 0x7f0d008b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1109
    sget-object v4, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    .line 1119
    new-instance v1, Landroid/widget/RemoteViews;

    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030249

    invoke-direct {v1, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1121
    .local v1, "mRemoteViews":Landroid/widget/RemoteViews;
    const v4, 0x7f0c0b12

    sget-object v5, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const v6, 0x7f0d008a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1123
    const v4, 0x7f0c0b14

    const-string/jumbo v5, "\u5df2\u4e0b\u8f7d:0%"

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1124
    sget-object v4, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    iput-object v1, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1127
    .local v0, "i":Landroid/content/Intent;
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v8, v0, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1129
    .local v3, "pi":Landroid/app/PendingIntent;
    sget-object v4, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1130
    sget-object v4, Lcom/tudou/ui/fragment/MoreFragment;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/tudou/ui/fragment/MoreFragment;->notification:Landroid/app/Notification;

    invoke-virtual {v4, v8, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1132
    return-void
.end method

.method private static startUpdateDownload()V
    .locals 3

    .prologue
    .line 1240
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment;->updateVertion:Ljava/lang/String;

    sget-object v1, Lcom/tudou/ui/fragment/MoreFragment;->downloadUrl:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/MoreFragment;->startUpdateDownload(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1241
    return-void
.end method

.method public static startUpdateDownload(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "vertion"    # Ljava/lang/String;
    .param p1, "aDownloadUrl"    # Ljava/lang/String;
    .param p2, "isShowNotificaton"    # Z

    .prologue
    .line 1207
    const-string v0, "TAG_TUDOU"

    const-string/jumbo v1, "\u5c1d\u8bd5\u4e0b\u8f7d\u65b0\u7248\u672c"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1209
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    sget-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->isDownloading:Z

    if-eqz v0, :cond_3

    .line 1214
    sget-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v0, :cond_2

    .line 1215
    const v0, 0x7f0d008a

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1218
    if-eqz p2, :cond_0

    .line 1222
    :cond_2
    sput-boolean p2, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    goto :goto_0

    .line 1224
    :cond_3
    sput-object p1, Lcom/tudou/ui/fragment/MoreFragment;->downloadUrl:Ljava/lang/String;

    .line 1225
    sput-object p0, Lcom/tudou/ui/fragment/MoreFragment;->updateVertion:Ljava/lang/String;

    .line 1226
    sput-boolean p2, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    .line 1227
    sget-object v0, Lcom/tudou/ui/fragment/MoreFragment;->updateVertion:Ljava/lang/String;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->isCurrentVertionDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1228
    sget-boolean v0, Lcom/tudou/ui/fragment/MoreFragment;->mIsShowNotification:Z

    if-eqz v0, :cond_0

    .line 1229
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->installApk()V

    goto :goto_0

    .line 1234
    :cond_4
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->getInstance()Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MoreFragment$DownloadThread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public deleteFile(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 687
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 690
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 691
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 692
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 693
    .local v1, "childFile":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-eqz v5, :cond_0

    .line 696
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 697
    .local v2, "f":Ljava/io/File;
    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/MoreFragment;->deleteFile(Ljava/io/File;)V

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 939
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x12e

    if-ne p2, v0, :cond_0

    .line 940
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/youku/vo/UserBean;->setNeedSetPwd(Z)V

    .line 942
    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MoreFragment;->setPwdSetVisible(Z)V

    .line 944
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/youku/ui/YoukuFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 945
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 946
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 169
    sput-object p0, Lcom/tudou/ui/fragment/MoreFragment;->mMoreFragment:Lcom/tudou/ui/fragment/MoreFragment;

    .line 170
    const v1, 0x7f030128

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    .line 171
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->sp:Landroid/content/SharedPreferences;

    .line 172
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->initRotateAnimation()Landroid/view/animation/RotateAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->mRotateAnimationDownloadSet:Landroid/view/animation/Animation;

    .line 173
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->initReverseRotateAnimation()Landroid/view/animation/RotateAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->mReverseRotateAnimationDownloadSet:Landroid/view/animation/Animation;

    .line 175
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->initRotateAnimation()Landroid/view/animation/RotateAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->mRotateAnimationResolutionSet:Landroid/view/animation/Animation;

    .line 176
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->initReverseRotateAnimation()Landroid/view/animation/RotateAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->mReverseRotateAnimationResolutionSet:Landroid/view/animation/Animation;

    .line 178
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->initView()V

    .line 179
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->initTitle()V

    .line 180
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->initResolution()V

    .line 181
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getCachePathRun()V

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "com.tudou.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->more:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iput-object v2, p0, Lcom/tudou/ui/fragment/MoreFragment;->broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    :cond_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 201
    sput-object v2, Lcom/tudou/ui/fragment/MoreFragment;->mMoreFragment:Lcom/tudou/ui/fragment/MoreFragment;

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1922
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isNeedSetPwd()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MoreFragment;->setPwdSetVisible(Z)V

    .line 1944
    :goto_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 1945
    return-void

    .line 1940
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MoreFragment;->setPwdSetVisible(Z)V

    goto :goto_0
.end method
