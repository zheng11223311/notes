.class public Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;
.super Ljava/lang/Object;
.source "FullScreenBrightHLS.java"


# instance fields
.field private brightBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

.field private brightIcon:Landroid/widget/ImageView;

.field private containerView:Landroid/view/View;

.field private context:Landroid/app/Activity;

.field private max:I

.field private play_controller_center_bright:Lcom/youku/widget/RoundImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 2
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->containerView:Landroid/view/View;

    .line 15
    iput-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->context:Landroid/app/Activity;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->max:I

    .line 26
    iput-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->brightIcon:Landroid/widget/ImageView;

    .line 28
    iput-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->brightBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    .line 30
    iput-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->play_controller_center_bright:Lcom/youku/widget/RoundImageView;

    .line 19
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->containerView:Landroid/view/View;

    .line 20
    iput-object p2, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->context:Landroid/app/Activity;

    .line 22
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->initSettingBright()V

    .line 23
    return-void
.end method

.method private setFormatString(I)V
    .locals 3
    .param p1, "cur"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->play_controller_center_bright:Lcom/youku/widget/RoundImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->max:I

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->play_controller_center_bright:Lcom/youku/widget/RoundImageView;

    mul-int/lit8 v1, p1, 0x64

    iget v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->max:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/widget/RoundImageView;->setCurSize(I)V

    .line 97
    :cond_0
    return-void
.end method

.method private updateVolumnIcon()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->brightIcon:Landroid/widget/ImageView;

    const v1, 0x7f02064b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public initBrightness(II)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "cur"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->max:I

    .line 90
    invoke-direct {p0, p2}, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->setFormatString(I)V

    .line 91
    return-void
.end method

.method public initSettingBright()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/RoundImageView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->play_controller_center_bright:Lcom/youku/widget/RoundImageView;

    .line 73
    return-void
.end method

.method public onBrightChange(I)V
    .locals 0
    .param p1, "bright"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->setFormatString(I)V

    .line 80
    return-void
.end method
