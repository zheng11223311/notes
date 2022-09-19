.class Lcom/youdo/renderers/video/VideoAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/renderers/video/VideoAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/renderers/video/VideoAdView;


# direct methods
.method constructor <init>(Lcom/youdo/renderers/video/VideoAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    const-string v0, "VideoAdView"

    const-string v1, "OnPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->PREPARED:Lorg/openad/constants/IOpenAdContants$VideoState;

    invoke-static {v0, v1}, Lcom/youdo/renderers/video/VideoAdView;->access$002(Lcom/youdo/renderers/video/VideoAdView;Lorg/openad/constants/IOpenAdContants$VideoState;)Lorg/openad/constants/IOpenAdContants$VideoState;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$400(Lcom/youdo/renderers/video/VideoAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$300(Lcom/youdo/renderers/video/VideoAdView;)Lcom/youdo/renderers/video/VideoAdRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdViewLoaded()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$500(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v1, v0}, Lcom/youdo/renderers/video/VideoAdView;->seekTo(I)V

    :cond_1
    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdView;->access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdView;->access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdView;->access$600(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdView;->access$700(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v1}, Lcom/youdo/renderers/video/VideoAdView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v2}, Lcom/youdo/renderers/video/VideoAdView;->access$600(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v2

    iget-object v3, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v3}, Lcom/youdo/renderers/video/VideoAdView;->access$700(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdView;->access$800(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v1

    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v2}, Lcom/youdo/renderers/video/VideoAdView;->access$600(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdView;->access$900(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v1

    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v2}, Lcom/youdo/renderers/video/VideoAdView;->access$700(Lcom/youdo/renderers/video/VideoAdView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdView;->access$100(Lcom/youdo/renderers/video/VideoAdView;)Lorg/openad/constants/IOpenAdContants$VideoState;

    move-result-object v1

    sget-object v2, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYING:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->start()V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$300(Lcom/youdo/renderers/video/VideoAdView;)Lcom/youdo/renderers/video/VideoAdRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdViewMediaPrepared()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v1}, Lcom/youdo/renderers/video/VideoAdView;->isInPlaybackState()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdView;->access$1000(Lcom/youdo/renderers/video/VideoAdView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->getPlayheadTime()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$100(Lcom/youdo/renderers/video/VideoAdView;)Lorg/openad/constants/IOpenAdContants$VideoState;

    move-result-object v0

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->PLAYING:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$2;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->start()V

    goto :goto_1
.end method
