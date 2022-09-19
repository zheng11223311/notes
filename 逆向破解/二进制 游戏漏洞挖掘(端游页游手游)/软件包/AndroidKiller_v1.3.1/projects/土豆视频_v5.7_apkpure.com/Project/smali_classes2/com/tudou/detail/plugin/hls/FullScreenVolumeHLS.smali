.class public Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;
.super Ljava/lang/Object;
.source "FullScreenVolumeHLS.java"


# instance fields
.field private am:Landroid/media/AudioManager;

.field private containerView:Landroid/view/View;

.field private max:I

.field private play_controller_center_volume:Lcom/youku/widget/RoundImageView;

.field private zoom:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "zoom"    # I

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->containerView:Landroid/view/View;

    .line 15
    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->play_controller_center_volume:Lcom/youku/widget/RoundImageView;

    .line 25
    const/16 v0, 0xf

    iput v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->zoom:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->max:I

    .line 18
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->containerView:Landroid/view/View;

    .line 19
    iput p2, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->zoom:I

    .line 20
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->initSettingVolume()V

    .line 21
    return-void
.end method

.method private setFormatString(I)V
    .locals 3
    .param p1, "cur"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->play_controller_center_volume:Lcom/youku/widget/RoundImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->max:I

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->play_controller_center_volume:Lcom/youku/widget/RoundImageView;

    mul-int/lit8 v1, p1, 0x64

    iget v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->max:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundImageView;->setCurSize(I)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public initSettingVolume()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->am:Landroid/media/AudioManager;

    .line 30
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/RoundImageView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->play_controller_center_volume:Lcom/youku/widget/RoundImageView;

    .line 31
    return-void
.end method

.method public initVolume(III)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "cur"    # I
    .param p3, "zoom"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->max:I

    .line 59
    iput p3, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->zoom:I

    .line 65
    invoke-direct {p0, p2}, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->setFormatString(I)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->updateVolumnIcon(I)V

    .line 67
    return-void
.end method

.method public onVolumnChange(I)V
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->max:I

    if-le p1, v0, :cond_0

    .line 47
    iget p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->max:I

    .line 49
    :cond_0
    if-gez p1, :cond_1

    .line 50
    const/4 p1, 0x0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->am:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->zoom:I

    div-int v2, p1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 53
    invoke-direct {p0, p1}, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->setFormatString(I)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->updateVolumnIcon(I)V

    .line 55
    return-void
.end method

.method public updateVolumnIcon(I)V
    .locals 2
    .param p1, "cur"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->play_controller_center_volume:Lcom/youku/widget/RoundImageView;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->am:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->play_controller_center_volume:Lcom/youku/widget/RoundImageView;

    const v1, 0x7f02064f

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundImageView;->setImageResource(I)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->play_controller_center_volume:Lcom/youku/widget/RoundImageView;

    const v1, 0x7f02064e

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundImageView;->setImageResource(I)V

    goto :goto_0
.end method
