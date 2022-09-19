.class Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer$1;
.super Ljava/lang/Object;
.source "PluginInvestigate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer$1;->this$1:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer$1;->this$1:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginInvestigate;->access$000(Lcom/youku/player/plugin/PluginInvestigate;)V

    .line 543
    return-void
.end method
