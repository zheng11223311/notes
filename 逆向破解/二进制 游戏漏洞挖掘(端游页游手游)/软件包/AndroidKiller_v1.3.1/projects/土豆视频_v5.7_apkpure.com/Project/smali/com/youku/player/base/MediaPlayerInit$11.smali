.class Lcom/youku/player/base/MediaPlayerInit$11;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnADPlayListener;


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

.field final synthetic val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IAdPlayerCallback;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$11;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$11;->val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndPlayAD(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 450
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "onEndPlayAD"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$11;->val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$11;->val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IAdPlayerCallback;->onAdEnd(I)Z

    move-result v0

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartPlayAD(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 440
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "onstartPlayAD"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {v0}, Lcom/youku/player/Track;->setOnPaused(Z)V

    .line 442
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$11;->val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    if-eqz v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$11;->val$preAdCallback:Lcom/youku/player/apiservice/IAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/youku/player/apiservice/IAdPlayerCallback;->onAdStart(I)Z

    move-result v0

    .line 445
    :cond_0
    return v0
.end method
