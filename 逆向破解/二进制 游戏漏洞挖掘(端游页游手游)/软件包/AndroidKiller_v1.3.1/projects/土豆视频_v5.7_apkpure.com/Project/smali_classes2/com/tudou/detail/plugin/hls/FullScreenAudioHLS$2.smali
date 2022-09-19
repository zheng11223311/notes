.class Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;
.super Ljava/lang/Object;
.source "FullScreenAudioHLS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->initSettingRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;


# direct methods
.method constructor <init>(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$000(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->userAction()V

    .line 82
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$300(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$302(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;Z)Z

    .line 84
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v1}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$200(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$402(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;I)I

    .line 85
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$200(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 86
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$500(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 99
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0, v3}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$302(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;Z)Z

    .line 89
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$400(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$200(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v1}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$400(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 91
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$500(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v1}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$400(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v2}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$100(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 92
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0, v3}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$402(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;I)I

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$200(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v1}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$200(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 95
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$500(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v1}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$200(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v2}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$100(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    goto :goto_0
.end method
