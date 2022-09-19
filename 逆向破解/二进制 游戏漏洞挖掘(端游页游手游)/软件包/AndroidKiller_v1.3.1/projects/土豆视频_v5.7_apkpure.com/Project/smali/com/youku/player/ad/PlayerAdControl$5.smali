.class Lcom/youku/player/ad/PlayerAdControl$5;
.super Ljava/lang/Object;
.source "PlayerAdControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/PlayerAdControl;->interuptAD()V
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
    .line 586
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl$5;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl$5;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v0}, Lcom/youku/player/ad/PlayerAdControl;->access$500(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/ad/api/IAdControlListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl$5;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v0}, Lcom/youku/player/ad/PlayerAdControl;->access$500(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/ad/api/IAdControlListener;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/youku/player/ad/api/IAdControlListener;->updatePlugin(I)V

    .line 593
    :cond_0
    return-void
.end method
