.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;
.super Ljava/lang/Object;
.source "FullScreenUserAction.java"


# instance fields
.field protected final MAX_CONTROLLER_SHOWTIME:I

.field protected lastInteractTime:J

.field private mHandler:Landroid/os/Handler;

.field private pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

.field private popupHide:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 2
    .param p1, "mHandler"    # Landroid/os/Handler;
    .param p2, "innerView"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->MAX_CONTROLLER_SHOWTIME:I

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->lastInteractTime:J

    .line 19
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->popupHide:Ljava/lang/Runnable;

    .line 11
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->mHandler:Landroid/os/Handler;

    .line 12
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .line 13
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    return-object v0
.end method


# virtual methods
.method public userAction()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->popupHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->popupHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    :cond_0
    return-void
.end method
