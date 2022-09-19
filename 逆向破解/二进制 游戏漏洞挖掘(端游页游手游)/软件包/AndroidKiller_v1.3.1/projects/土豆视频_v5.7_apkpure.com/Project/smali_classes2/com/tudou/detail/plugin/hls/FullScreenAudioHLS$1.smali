.class Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$1;
.super Ljava/lang/Object;
.source "FullScreenAudioHLS.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 62
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$000(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;->userAction()V

    .line 73
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$200(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-static {v2}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->access$100(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)I

    move-result v2

    div-int v2, p2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 74
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$1;->this$0:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 75
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 69
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 65
    return-void
.end method
