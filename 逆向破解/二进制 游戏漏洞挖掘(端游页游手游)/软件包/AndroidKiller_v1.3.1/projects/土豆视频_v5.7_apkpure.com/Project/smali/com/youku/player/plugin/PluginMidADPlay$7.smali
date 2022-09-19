.class Lcom/youku/player/plugin/PluginMidADPlay$7;
.super Ljava/lang/Object;
.source "PluginMidADPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginMidADPlay;->onADCountUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginMidADPlay;

.field final synthetic val$count:I

.field final synthetic val$currentPosition:I


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginMidADPlay;II)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iput p2, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->val$count:I

    iput p3, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->val$currentPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iget v1, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->val$count:I

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginMidADPlay;->notifyUpdate(I)V

    .line 227
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginMidADPlay;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginMidADPlay;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/ad/MidAdModel;->getCurrentAdv()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->val$currentPosition:I

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSU(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;I)V

    .line 230
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginMidADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->RST:Ljava/lang/String;

    const-string v1, "hvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iget v1, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->val$currentPosition:I

    iget-object v2, p0, Lcom/youku/player/plugin/PluginMidADPlay$7;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    invoke-virtual {v2}, Lcom/youku/player/plugin/PluginMidADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v2

    iget v2, v2, Lcom/youku/player/goplay/AdvInfo;->AL:I

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginMidADPlay;->setInteractiveAdPlayheadTime(II)V

    .line 233
    :cond_0
    return-void
.end method
