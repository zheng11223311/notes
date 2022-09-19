.class Lcom/youku/player/ad/PlayerAdControl$4;
.super Ljava/lang/Object;
.source "PlayerAdControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/PlayerAdControl;->showInvestigate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/PlayerAdControl;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/PlayerAdControl;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl$4;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl$4;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v0}, Lcom/youku/player/ad/PlayerAdControl;->access$400(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/plugin/PluginInvestigate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl$4;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v0}, Lcom/youku/player/ad/PlayerAdControl;->access$400(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/plugin/PluginInvestigate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate;->show()V

    .line 511
    :cond_0
    return-void
.end method
