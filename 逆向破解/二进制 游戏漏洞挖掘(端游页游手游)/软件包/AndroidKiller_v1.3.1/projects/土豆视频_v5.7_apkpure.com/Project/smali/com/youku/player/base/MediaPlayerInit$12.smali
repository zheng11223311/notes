.class Lcom/youku/player/base/MediaPlayerInit$12;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnADCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit;->execute(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IAdPlayerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/MediaPlayerInit;

.field final synthetic val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

.field final synthetic val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field final synthetic val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IAdPlayerCallback;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$12;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$12;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    iput-object p3, p0, Lcom/youku/player/base/MediaPlayerInit$12;->val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    iput-object p4, p0, Lcom/youku/player/base/MediaPlayerInit$12;->val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountUpdate(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$12;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$12;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setAdPausedPosition(I)V

    .line 463
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$12;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$12;->val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$12;->val$midAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IAdPlayerCallback;->onADCountUpdate(I)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$12;->val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$12;->val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IAdPlayerCallback;->onADCountUpdate(I)V

    goto :goto_0
.end method
