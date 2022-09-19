.class Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;
.super Ljava/lang/Object;
.source "PluginImageAD.java"

# interfaces
.implements Lcom/youku/player/ad/imagead/IImageAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/PluginImageAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginImageAD;


# direct methods
.method private constructor <init>(Lcom/youku/player/plugin/PluginImageAD;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/plugin/PluginImageAD;Lcom/youku/player/plugin/PluginImageAD$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/plugin/PluginImageAD;
    .param p2, "x1"    # Lcom/youku/player/plugin/PluginImageAD$1;

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;-><init>(Lcom/youku/player/plugin/PluginImageAD;)V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public onAdClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$100(Lcom/youku/player/plugin/PluginImageAD;)Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginImageAD;->access$200(Lcom/youku/player/plugin/PluginImageAD;Z)V

    .line 504
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginImageAD;->access$302(Lcom/youku/player/plugin/PluginImageAD;Z)Z

    .line 505
    invoke-static {}, Lcom/youku/player/Track;->onImageAdEnd()V

    .line 506
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$400(Lcom/youku/player/plugin/PluginImageAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$400(Lcom/youku/player/plugin/PluginImageAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 508
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$400(Lcom/youku/player/plugin/PluginImageAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 511
    :cond_0
    return-void
.end method

.method public onAdDismiss()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V

    .line 541
    return-void
.end method

.method public onAdFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginImageAD;->access$200(Lcom/youku/player/plugin/PluginImageAD;Z)V

    .line 531
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginImageAD;->access$302(Lcom/youku/player/plugin/PluginImageAD;Z)Z

    .line 532
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginImageAD;->access$800(Lcom/youku/player/plugin/PluginImageAD;I)V

    .line 533
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$400(Lcom/youku/player/plugin/PluginImageAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$400(Lcom/youku/player/plugin/PluginImageAD;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 536
    :cond_0
    return-void
.end method

.method public onAdPresent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 515
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$500(Lcom/youku/player/plugin/PluginImageAD;)V

    .line 516
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$600(Lcom/youku/player/plugin/PluginImageAD;)V

    .line 517
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0, v2}, Lcom/youku/player/plugin/PluginImageAD;->access$200(Lcom/youku/player/plugin/PluginImageAD;Z)V

    .line 518
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginImageAD;->access$700(Lcom/youku/player/plugin/PluginImageAD;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginImageAD;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v0, v1}, Lcom/youku/player/Track;->onImageAdStart(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 519
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0, v2}, Lcom/youku/player/plugin/PluginImageAD;->setVisible(Z)V

    .line 520
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$ImageAdCallback;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginImageAD;->setVisibility(I)V

    .line 521
    return-void
.end method
