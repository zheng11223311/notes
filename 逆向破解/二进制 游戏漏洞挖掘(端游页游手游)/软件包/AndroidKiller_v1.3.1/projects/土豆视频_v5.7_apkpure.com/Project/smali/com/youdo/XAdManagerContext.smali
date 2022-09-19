.class public Lcom/youdo/XAdManagerContext;
.super Ljava/lang/Object;


# instance fields
.field public ACCEPTABLE_MAX_NATIVE_AD_NUM:I

.field public final XADSDK_VERSION:Ljava/lang/String;

.field public avs:Ljava/lang/String;

.field public cachedAdNum:I

.field public channelID:Ljava/lang/String;

.field public cookie:Ljava/lang/String;

.field public displayMockAdServer:Ljava/lang/String;

.field public mApplicationContext:Landroid/content/Context;

.field public mNativeASResponsePath:Ljava/lang/String;

.field public mNativeAdAssetsFolderPath:Ljava/lang/String;

.field public mNativeTrackingPath:Ljava/lang/String;

.field public mOpenUDID:Ljava/lang/String;

.field public mScreenDensity:I

.field public mScreenSize:Lorg/openad/gemo/CGSize;

.field public mockFolderName:Ljava/lang/String;

.field public mockInterval:J

.field public mock_FORMAT_NATIVE_RESPONSE:Ljava/lang/Boolean;

.field public mock_MAX_NATIVE_VIDEO_AD_NUM:I

.field public mock_MIN_FREE_SIZE:I

.field public nativeContentNum:I

.field public pauserollMockAdServer:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public prerollMockAdServer:Ljava/lang/String;

.field public px:Ljava/lang/String;

.field public rst:Ljava/lang/String;

.field public site:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;

.field public videoDuration:I

.field public videoID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "master"

    iput-object v0, p0, Lcom/youdo/XAdManagerContext;->XADSDK_VERSION:Ljava/lang/String;

    iput v2, p0, Lcom/youdo/XAdManagerContext;->nativeContentNum:I

    iput-object v3, p0, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/youdo/XAdManagerContext;->mNativeASResponsePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/youdo/XAdManagerContext;->mNativeTrackingPath:Ljava/lang/String;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/youdo/XAdManagerContext;->mockInterval:J

    const/16 v0, 0x64

    iput v0, p0, Lcom/youdo/XAdManagerContext;->mock_MAX_NATIVE_VIDEO_AD_NUM:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/youdo/XAdManagerContext;->mock_MIN_FREE_SIZE:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/XAdManagerContext;->mock_FORMAT_NATIVE_RESPONSE:Ljava/lang/Boolean;

    new-instance v0, Lorg/openad/gemo/CGSize;

    invoke-direct {v0, v2, v2}, Lorg/openad/gemo/CGSize;-><init>(II)V

    iput-object v0, p0, Lcom/youdo/XAdManagerContext;->mScreenSize:Lorg/openad/gemo/CGSize;

    iput v2, p0, Lcom/youdo/XAdManagerContext;->mScreenDensity:I

    iput-object v3, p0, Lcom/youdo/XAdManagerContext;->channelID:Ljava/lang/String;

    iput-object v3, p0, Lcom/youdo/XAdManagerContext;->videoID:Ljava/lang/String;

    iput v2, p0, Lcom/youdo/XAdManagerContext;->videoDuration:I

    return-void
.end method
