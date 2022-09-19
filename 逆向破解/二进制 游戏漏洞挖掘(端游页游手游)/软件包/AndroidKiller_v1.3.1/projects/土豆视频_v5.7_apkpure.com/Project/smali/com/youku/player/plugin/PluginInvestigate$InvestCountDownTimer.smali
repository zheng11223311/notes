.class Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "PluginInvestigate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/PluginInvestigate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvestCountDownTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginInvestigate;


# direct methods
.method public constructor <init>(Lcom/youku/player/plugin/PluginInvestigate;JJ)V
    .locals 2
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 531
    iput-object p1, p0, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    .line 532
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 533
    long-to-int v0, p2

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {p1, v0}, Lcom/youku/player/plugin/PluginInvestigate;->access$202(Lcom/youku/player/plugin/PluginInvestigate;I)I

    .line 534
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer$1;-><init>(Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 545
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 549
    long-to-float v2, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    .line 550
    .local v1, "time":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 551
    .local v0, "count":I
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginInvestigate;->access$200(Lcom/youku/player/plugin/PluginInvestigate;)I

    move-result v2

    if-eq v2, v0, :cond_0

    if-lez v0, :cond_0

    .line 552
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-static {v2, v0}, Lcom/youku/player/plugin/PluginInvestigate;->access$202(Lcom/youku/player/plugin/PluginInvestigate;I)I

    .line 554
    :cond_0
    return-void
.end method
