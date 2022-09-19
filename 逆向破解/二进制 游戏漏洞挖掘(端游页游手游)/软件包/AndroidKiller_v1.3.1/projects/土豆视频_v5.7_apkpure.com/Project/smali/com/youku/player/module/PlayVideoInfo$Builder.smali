.class public Lcom/youku/player/module/PlayVideoInfo$Builder;
.super Ljava/lang/Object;
.source "PlayVideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/module/PlayVideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adExt:Ljava/lang/String;

.field private adMid:Ljava/lang/String;

.field private adPause:Ljava/lang/String;

.field private albumID:Ljava/lang/String;

.field private autoPlay:I

.field private isCache:Z

.field private isFromYouku:Z

.field private isLocal:Z

.field private isTudouAlbum:Z

.field private isWaterMark:Z

.field private languageCode:Ljava/lang/String;

.field private mPlayType:Lcom/youku/player/base/PlayType;

.field private mSource:Ljava/lang/String;

.field private noAdv:Z

.field private password:Ljava/lang/String;

.field private playlistCode:Ljava/lang/String;

.field private playlistId:Ljava/lang/String;

.field private point:I

.field private title:Ljava/lang/String;

.field private tudouQuality:I

.field private url:Ljava/lang/String;

.field private vid:Ljava/lang/String;

.field private videoStage:I

.field private waterMarkType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isFromYouku:Z

    .line 118
    sget-object v0, Lcom/youku/player/base/PlayType;->ONLINE:Lcom/youku/player/base/PlayType;

    iput-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->mPlayType:Lcom/youku/player/base/PlayType;

    .line 130
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->vid:Ljava/lang/String;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->vid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->albumID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isLocal:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/youku/player/module/PlayVideoInfo$Builder;)Lcom/youku/player/base/PlayType;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->mPlayType:Lcom/youku/player/base/PlayType;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->adExt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->adMid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->adPause:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isCache:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isWaterMark:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/youku/player/module/PlayVideoInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->waterMarkType:I

    return v0
.end method

.method static synthetic access$2200(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/youku/player/module/PlayVideoInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->autoPlay:I

    return v0
.end method

.method static synthetic access$300(Lcom/youku/player/module/PlayVideoInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->point:I

    return v0
.end method

.method static synthetic access$400(Lcom/youku/player/module/PlayVideoInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->videoStage:I

    return v0
.end method

.method static synthetic access$500(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->noAdv:Z

    return v0
.end method

.method static synthetic access$600(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isFromYouku:Z

    return v0
.end method

.method static synthetic access$700(Lcom/youku/player/module/PlayVideoInfo$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isTudouAlbum:Z

    return v0
.end method

.method static synthetic access$800(Lcom/youku/player/module/PlayVideoInfo$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->tudouQuality:I

    return v0
.end method

.method static synthetic access$900(Lcom/youku/player/module/PlayVideoInfo$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/module/PlayVideoInfo$Builder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->playlistCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/youku/player/module/PlayVideoInfo;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/player/module/PlayVideoInfo;-><init>(Lcom/youku/player/module/PlayVideoInfo$Builder;Lcom/youku/player/module/PlayVideoInfo$1;)V

    return-object v0
.end method

.method public setAdExt(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "adExt"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->adExt:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public setAdMid(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "adMid"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->adMid:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public setAdPause(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "adPause"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->adPause:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setAlbumID(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "albumID"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->albumID:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "autoPlay"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->autoPlay:I

    .line 251
    return-object p0
.end method

.method public setCache(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "isCache"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isCache:Z

    .line 145
    return-object p0
.end method

.method public setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "isFromYouku"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isFromYouku:Z

    .line 165
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->vid:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->languageCode:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public setLocal(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "isLocal"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isLocal:Z

    .line 170
    return-object p0
.end method

.method public setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "noAdv"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->noAdv:Z

    .line 160
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->password:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "playType"    # Lcom/youku/player/base/PlayType;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->mPlayType:Lcom/youku/player/base/PlayType;

    .line 205
    return-object p0
.end method

.method public setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "playlistCode"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->playlistCode:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->playlistId:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "point"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->point:I

    .line 150
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->mSource:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->title:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public setTudouAlbum(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "isTudouAlbum"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isTudouAlbum:Z

    .line 175
    return-object p0
.end method

.method public setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "tudouQuality"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->tudouQuality:I

    .line 180
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->url:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public setVideoStage(I)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "videoStage"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->videoStage:I

    .line 155
    return-object p0
.end method

.method public setWaterMark(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "waterMark"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->isWaterMark:Z

    .line 235
    return-object p0
.end method

.method public setWaterMarkType(I)Lcom/youku/player/module/PlayVideoInfo$Builder;
    .locals 0
    .param p1, "waterMarkType"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/youku/player/module/PlayVideoInfo$Builder;->waterMarkType:I

    .line 240
    return-object p0
.end method
