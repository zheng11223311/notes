.class public Lcom/youku/player/ad/AdGetInfo;
.super Ljava/lang/Object;
.source "AdGetInfo.java"


# instance fields
.field public ev:Ljava/lang/String;

.field public isFullscreen:Z

.field public isOfflineAd:Z

.field public isvert:I

.field public noqt:I

.field public paid:I

.field public playlistCode:Ljava/lang/String;

.field public playlistId:Ljava/lang/String;

.field public position:I

.field public ps:I

.field public pt:D

.field public trailType:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;IDZ)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "p"    # I
    .param p3, "isFull"    # Z
    .param p4, "isOffline"    # Z
    .param p5, "playlistId"    # Ljava/lang/String;
    .param p6, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p7, "ps"    # I
    .param p8, "pt"    # D
    .param p10, "isvert"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/ad/AdGetInfo;->playlistCode:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/player/ad/AdGetInfo;->playlistId:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/youku/player/ad/AdGetInfo;->isvert:I

    .line 34
    iput-object p1, p0, Lcom/youku/player/ad/AdGetInfo;->vid:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/youku/player/ad/AdGetInfo;->position:I

    .line 36
    iput-boolean p3, p0, Lcom/youku/player/ad/AdGetInfo;->isFullscreen:Z

    .line 37
    iput-boolean p4, p0, Lcom/youku/player/ad/AdGetInfo;->isOfflineAd:Z

    .line 38
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/youku/player/ad/AdGetInfo;->noqt:I

    .line 39
    iput p7, p0, Lcom/youku/player/ad/AdGetInfo;->ps:I

    .line 40
    iput-wide p8, p0, Lcom/youku/player/ad/AdGetInfo;->pt:D

    .line 41
    if-eqz p6, :cond_1

    .line 42
    iget-object v0, p6, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p6, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget v0, v0, Lcom/youku/player/module/PayInfo;->paid:I

    iput v0, p0, Lcom/youku/player/ad/AdGetInfo;->paid:I

    .line 44
    iget-object v0, p6, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p6, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ad/AdGetInfo;->trailType:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v0, p6, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p6, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 51
    iget-object v0, p6, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/ad/AdGetInfo;->playlistCode:Ljava/lang/String;

    .line 54
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    iput-object p5, p0, Lcom/youku/player/ad/AdGetInfo;->playlistId:Ljava/lang/String;

    .line 56
    :cond_2
    if-eqz p10, :cond_4

    :goto_1
    iput v2, p0, Lcom/youku/player/ad/AdGetInfo;->isvert:I

    .line 57
    return-void

    :cond_3
    move v0, v2

    .line 38
    goto :goto_0

    :cond_4
    move v2, v1

    .line 56
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;Z)V
    .locals 13
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "p"    # I
    .param p3, "isFull"    # Z
    .param p4, "isOffline"    # Z
    .param p5, "ev"    # Ljava/lang/String;
    .param p6, "playlistId"    # Ljava/lang/String;
    .param p7, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p8, "isvert"    # Z

    .prologue
    .line 28
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/youku/player/ad/AdGetInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;Lcom/youku/player/module/VideoUrlInfo;IDZ)V

    .line 29
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/youku/player/ad/AdGetInfo;->ev:Ljava/lang/String;

    .line 30
    return-void
.end method
