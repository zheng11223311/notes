.class public Lcom/youku/player/AudioManage;
.super Ljava/lang/Object;
.source "AudioManage.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    iget-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addSound(I)I
    .locals 4
    .param p1, "add"    # I

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/youku/player/AudioManage;->getSound()I

    move-result v1

    add-int v0, v1, p1

    .line 68
    .local v0, "sou":I
    invoke-virtual {p0}, Lcom/youku/player/AudioManage;->getmaxVolume()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 71
    invoke-virtual {p0}, Lcom/youku/player/AudioManage;->getSound()I

    move-result v1

    return v1
.end method

.method public destory(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    sget v0, Lcom/youku/player/goplay/Profile;->API_LEVEL:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getSound()I
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "nowSound":I
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 46
    :goto_0
    return v0

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getmaxVolume()I
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public setVolume(I)V
    .locals 3
    .param p1, "sound"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/youku/player/AudioManage;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method
