.class Lcom/youdo/renderers/video/VideoAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/youdo/renderers/video/VideoAdView$1;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "VideoAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$1;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    invoke-static {v0, v1}, Lcom/youdo/renderers/video/VideoAdView;->access$002(Lcom/youdo/renderers/video/VideoAdView;Lorg/openad/constants/IOpenAdContants$VideoState;)Lorg/openad/constants/IOpenAdContants$VideoState;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$1;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$VideoState;->ERROR:Lorg/openad/constants/IOpenAdContants$VideoState;

    invoke-static {v0, v1}, Lcom/youdo/renderers/video/VideoAdView;->access$102(Lcom/youdo/renderers/video/VideoAdView;Lorg/openad/constants/IOpenAdContants$VideoState;)Lorg/openad/constants/IOpenAdContants$VideoState;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$1;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$1;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$200(Lcom/youdo/renderers/video/VideoAdView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    const-string v0, "INFO_KEY_ERROR_CODE"

    const-string v2, "ERROR_UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "The video is streamed and its container is not valid for progressive playback i.e the video\'s index (e.g moov atom) is not at the start of the file."

    :goto_0
    const-string v2, "INFO_KEY_ERROR_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdView$1;->this$0:Lcom/youdo/renderers/video/VideoAdView;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdView;->access$300(Lcom/youdo/renderers/video/VideoAdView;)Lcom/youdo/renderers/video/VideoAdRenderer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->onAdVideoViewError(Landroid/os/Bundle;)V

    return v3

    :cond_1
    if-ne p2, v3, :cond_2

    const-string v0, "INFO_KEY_ERROR_CODE"

    const-string v2, "ERROR_UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media file format is not recognized."

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    const-string v0, "INFO_KEY_ERROR_CODE"

    const-string v2, "ERROR_IO"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media server has gone away."

    goto :goto_0

    :cond_3
    const-string v0, "INFO_KEY_ERROR_CODE"

    const-string v2, "ERROR_IO"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unknown common IO error."

    goto :goto_0
.end method
