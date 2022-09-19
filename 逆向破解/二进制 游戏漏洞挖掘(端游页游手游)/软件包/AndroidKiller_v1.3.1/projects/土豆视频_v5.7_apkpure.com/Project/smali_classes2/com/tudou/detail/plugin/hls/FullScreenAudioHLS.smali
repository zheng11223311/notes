.class public Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;
.super Ljava/lang/Object;
.source "FullScreenAudioHLS.java"


# instance fields
.field private am:Landroid/media/AudioManager;

.field private containerView:Landroid/view/View;

.field private context:Lcom/youku/player/base/YoukuBasePlayerActivity;

.field private currentSound:I

.field private isMute:Z

.field private soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

.field private soundIcon:Landroid/widget/ImageView;

.field private userAction:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

.field private zoom:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/youku/player/base/YoukuBasePlayerActivity;Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;I)V
    .locals 2
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "context"    # Lcom/youku/player/base/YoukuBasePlayerActivity;
    .param p3, "userAction"    # Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;
    .param p4, "zoom"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->containerView:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->context:Lcom/youku/player/base/YoukuBasePlayerActivity;

    .line 22
    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->userAction:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    .line 38
    iput-boolean v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->isMute:Z

    .line 39
    iput v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->currentSound:I

    .line 41
    const/16 v0, 0xf

    iput v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    .line 25
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->containerView:Landroid/view/View;

    .line 26
    iput-object p2, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->context:Lcom/youku/player/base/YoukuBasePlayerActivity;

    .line 27
    iput-object p3, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->userAction:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    .line 28
    iput p4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    .line 29
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->initSettingRight()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->userAction:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    .prologue
    .line 18
    iget v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    return v0
.end method

.method static synthetic access$200(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->isMute:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->isMute:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    .prologue
    .line 18
    iget v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->currentSound:I

    return v0
.end method

.method static synthetic access$402(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->currentSound:I

    return p1
.end method

.method static synthetic access$500(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    return-object v0
.end method


# virtual methods
.method public initSettingRight()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 44
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->containerView:Landroid/view/View;

    const v5, 0x7f0c0b4c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .local v0, "contain":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    sget-object v4, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    .line 53
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->containerView:Landroid/view/View;

    const v5, 0x7f0c0b4d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundIcon:Landroid/widget/ImageView;

    .line 55
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->context:Lcom/youku/player/base/YoukuBasePlayerActivity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/youku/player/base/YoukuBasePlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 57
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030325

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 58
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    const v4, 0x7f0c0db4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    iput-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    .line 60
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    iget v5, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    invoke-virtual {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setKeyProgressIncrement(I)V

    .line 61
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    iget-object v5, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    iget v6, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    mul-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setMax(I)V

    .line 62
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    new-instance v5, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$1;

    invoke-direct {v5, p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$1;-><init>(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)V

    invoke-virtual {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 77
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundIcon:Landroid/widget/ImageView;

    new-instance v5, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;

    invoke-direct {v5, p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS$2;-><init>(Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 104
    .local v2, "soundSize":I
    if-lez v2, :cond_1

    .line 105
    iput-boolean v7, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->isMute:Z

    .line 107
    :cond_1
    iget-boolean v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->isMute:Z

    if-eqz v4, :cond_3

    .line 108
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    invoke-virtual {v4, v8, v7, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 109
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    invoke-virtual {v4, v7}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 113
    :goto_1
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->isMute:Z

    if-nez v4, :cond_2

    .line 114
    iput-boolean v7, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->isMute:Z

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 117
    return-void

    .line 111
    :cond_3
    iget-object v4, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    iget v5, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    mul-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    goto :goto_1

    .line 48
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "soundSize":I
    .end local v3    # "view":Landroid/view/View;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public initVolume(III)V
    .locals 1
    .param p1, "max"    # I
    .param p2, "cur"    # I
    .param p3, "zoom"    # I

    .prologue
    .line 151
    iput p3, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    .line 152
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    invoke-virtual {v0, p3}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setKeyProgressIncrement(I)V

    .line 154
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setMax(I)V

    .line 155
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    invoke-virtual {v0, p2}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 158
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 148
    return-void
.end method

.method public onVolumnChange(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 143
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 144
    return-void
.end method

.method public onVolumnDown()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 137
    .local v0, "cur":I
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    iget v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 138
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 139
    return-void
.end method

.method public onVolumnUp()V
    .locals 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 131
    .local v0, "cur":I
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    iget v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 132
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 133
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->updateVolumnIcon()V

    .line 163
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 164
    .local v0, "cur":I
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 165
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundBar:Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;

    iget v2, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->zoom:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VerticalSeekBar;->setProgressAndThumb(I)V

    .line 167
    .end local v0    # "cur":I
    :cond_0
    return-void
.end method

.method public updateVolumnIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 120
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundIcon:Landroid/widget/ImageView;

    const v1, 0x7f020671

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->isMute:Z

    .line 124
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->am:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->currentSound:I

    .line 125
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->soundIcon:Landroid/widget/ImageView;

    const v1, 0x7f020689

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
