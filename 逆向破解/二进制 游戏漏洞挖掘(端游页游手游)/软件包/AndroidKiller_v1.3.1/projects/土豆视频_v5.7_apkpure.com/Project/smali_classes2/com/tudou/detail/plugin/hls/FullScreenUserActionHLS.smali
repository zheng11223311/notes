.class public Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;
.super Ljava/lang/Object;
.source "FullScreenUserActionHLS.java"


# instance fields
.field protected final MAX_CONTROLLER_SHOWTIME:I

.field protected lastInteractTime:J

.field private mHandler:Landroid/os/Handler;

.field private pluginFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

.field private popupHide:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 2
    .param p1, "mHandler"    # Landroid/os/Handler;
    .param p2, "pluginFullScreenPlay"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x1388

    iput v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->MAX_CONTROLLER_SHOWTIME:I

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->lastInteractTime:J

    .line 19
    new-instance v0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS$1;-><init>(Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->popupHide:Ljava/lang/Runnable;

    .line 11
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->mHandler:Landroid/os/Handler;

    .line 12
    iput-object p2, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->pluginFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;)Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->pluginFullScreenPlay:Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    return-object v0
.end method


# virtual methods
.method public userAction()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->popupHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->popupHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_0
    return-void
.end method
