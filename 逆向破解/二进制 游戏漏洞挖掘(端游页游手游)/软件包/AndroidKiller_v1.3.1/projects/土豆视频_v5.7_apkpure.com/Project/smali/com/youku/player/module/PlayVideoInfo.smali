.class public Lcom/youku/player/module/PlayVideoInfo;
.super Ljava/lang/Object;
.source "PlayVideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/module/PlayVideoInfo$1;,
        Lcom/youku/player/module/PlayVideoInfo$Builder;
    }
.end annotation


# instance fields
.field private adExt:Ljava/lang/String;

.field private adMid:Ljava/lang/String;

.field private adPause:Ljava/lang/String;

.field public albumID:Ljava/lang/String;

.field public autoPlay:I

.field public isCache:Z

.field public isFromYouku:Z

.field private isLocal:Z

.field public isTudouAlbum:Z

.field private isWaterMark:Z

.field public languageCode:Ljava/lang/String;

.field private mPlayType:Lcom/youku/player/base/PlayType;

.field private mSource:Ljava/lang/String;

.field public noAdv:Z

.field public password:Ljava/lang/String;

.field public playlistCode:Ljava/lang/String;

.field public playlistId:Ljava/lang/String;

.field public point:I

.field private title:Ljava/lang/String;

.field public tudouquality:I

.field public url:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public videoStage:I

.field private waterMarkType:I


# direct methods
.method private constructor <init>(Lcom/youku/player/module/PlayVideoInfo$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$000(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->vid:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$100(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->password:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$200(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo;->isCache:Z

    .line 40
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$300(Lcom/youku/player/module/PlayVideoInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/PlayVideoInfo;->point:I

    .line 41
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$400(Lcom/youku/player/module/PlayVideoInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/PlayVideoInfo;->videoStage:I

    .line 42
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$500(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo;->noAdv:Z

    .line 43
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$600(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo;->isFromYouku:Z

    .line 44
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$700(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo;->isTudouAlbum:Z

    .line 45
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$800(Lcom/youku/player/module/PlayVideoInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/PlayVideoInfo;->tudouquality:I

    .line 46
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$900(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->playlistCode:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1000(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->playlistId:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1100(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->albumID:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1200(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->languageCode:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1300(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo;->isLocal:Z

    .line 51
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1400(Lcom/youku/player/module/PlayVideoInfo$Builder;)Lcom/youku/player/base/PlayType;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->mPlayType:Lcom/youku/player/base/PlayType;

    .line 52
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1500(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->mSource:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1600(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->adExt:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1700(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->adMid:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1800(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->adPause:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$1900(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->url:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$2000(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo;->isWaterMark:Z

    .line 58
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$2100(Lcom/youku/player/module/PlayVideoInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/PlayVideoInfo;->waterMarkType:I

    .line 59
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$2200(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->title:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->access$2300(Lcom/youku/player/module/PlayVideoInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/youku/player/module/PlayVideoInfo;->autoPlay:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/module/PlayVideoInfo$Builder;Lcom/youku/player/module/PlayVideoInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;
    .param p2, "x1"    # Lcom/youku/player/module/PlayVideoInfo$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/youku/player/module/PlayVideoInfo;-><init>(Lcom/youku/player/module/PlayVideoInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getAdExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->adExt:Ljava/lang/String;

    return-object v0
.end method

.method public getAdMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->adMid:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->adPause:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayType()Lcom/youku/player/base/PlayType;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->mPlayType:Lcom/youku/player/base/PlayType;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWaterMarkType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/youku/player/module/PlayVideoInfo;->waterMarkType:I

    return v0
.end method

.method public isLocalPlay()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo;->isLocal:Z

    return v0
.end method

.method public waterMark()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo;->isWaterMark:Z

    return v0
.end method
