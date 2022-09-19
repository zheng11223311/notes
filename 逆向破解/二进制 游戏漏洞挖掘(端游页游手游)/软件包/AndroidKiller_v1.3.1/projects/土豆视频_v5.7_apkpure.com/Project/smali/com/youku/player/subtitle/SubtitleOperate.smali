.class public Lcom/youku/player/subtitle/SubtitleOperate;
.super Ljava/lang/Object;
.source "SubtitleOperate.java"


# instance fields
.field private mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

.field private mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

.field private mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

.field private mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

.field private mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

.field private mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

.field private mPluginManager:Lcom/youku/player/plugin/PluginManager;

.field private mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;


# direct methods
.method public constructor <init>(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/PluginManager;)V
    .locals 0
    .param p1, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;
    .param p2, "pluginManager"    # Lcom/youku/player/plugin/PluginManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    .line 34
    iput-object p2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mPluginManager:Lcom/youku/player/plugin/PluginManager;

    .line 35
    return-void
.end method

.method public static getSubtitles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "vid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/DownloadedSubtitle;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 273
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubtitles() path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v1, "subtitles":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/subtitle/DownloadedSubtitle;>;"
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 280
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_chs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 282
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v2, Lcom/youku/player/subtitle/DownloadedSubtitle;

    const-string v3, "chs"

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, p0, v4}, Lcom/youku/player/subtitle/DownloadedSubtitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_cht"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 289
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v2, Lcom/youku/player/subtitle/DownloadedSubtitle;

    const-string v3, "cht"

    const/4 v4, 0x1

    invoke-direct {v2, p1, v3, p0, v4}, Lcom/youku/player/subtitle/DownloadedSubtitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_en"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 296
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v2, Lcom/youku/player/subtitle/DownloadedSubtitle;

    const-string v3, "en"

    const/4 v4, 0x2

    invoke-direct {v2, p1, v3, p0, v4}, Lcom/youku/player/subtitle/DownloadedSubtitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_3
    return-object v1
.end method

.method private prepareChsSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)Z
    .locals 4
    .param p1, "subtitle"    # Lcom/youku/player/subtitle/DownloadedSubtitle;
    .param p2, "type"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 42
    :cond_0
    new-instance v0, Lcom/youku/player/subtitle/SubtitleManager;

    invoke-direct {v0}, Lcom/youku/player/subtitle/SubtitleManager;-><init>()V

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 43
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->init()V

    .line 45
    if-nez p2, :cond_1

    .line 46
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    const-string v1, "chs"

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/SubtitleManager;->prepare(Ljava/lang/String;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    iget-object v1, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_chs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/subtitle/SubtitleManager;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private prepareChtSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)Z
    .locals 4
    .param p1, "subtitle"    # Lcom/youku/player/subtitle/DownloadedSubtitle;
    .param p2, "type"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 58
    :cond_0
    new-instance v0, Lcom/youku/player/subtitle/SubtitleManager;

    invoke-direct {v0}, Lcom/youku/player/subtitle/SubtitleManager;-><init>()V

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 59
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->init()V

    .line 61
    if-nez p2, :cond_1

    .line 62
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    const-string v1, "cht"

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/SubtitleManager;->prepare(Ljava/lang/String;)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    iget-object v1, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_cht"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/subtitle/SubtitleManager;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private prepareEnSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)Z
    .locals 4
    .param p1, "subtitle"    # Lcom/youku/player/subtitle/DownloadedSubtitle;
    .param p2, "type"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 74
    :cond_0
    new-instance v0, Lcom/youku/player/subtitle/SubtitleManager;

    invoke-direct {v0}, Lcom/youku/player/subtitle/SubtitleManager;-><init>()V

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 75
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->init()V

    .line 77
    if-nez p2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/SubtitleManager;->prepare(Ljava/lang/String;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    iget-object v1, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_en"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/subtitle/SubtitleManager;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public clearSubtitle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "clearSubtitle"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    .line 89
    iput-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_1

    .line 93
    iput-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_2

    .line 97
    iput-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    .line 100
    :cond_2
    invoke-static {}, Lcom/youku/player/subtitle/SubtitleManager;->clearAllSubtitle()V

    .line 102
    return-void
.end method

.method public dismissSubtitle()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSingleSubtitle()V

    .line 268
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissFirstSubtitle()V

    .line 269
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSecondSubtitle()V

    .line 270
    return-void
.end method

.method public onDownloadSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)V
    .locals 2
    .param p1, "subtitle"    # Lcom/youku/player/subtitle/DownloadedSubtitle;
    .param p2, "type"    # I

    .prologue
    .line 105
    if-nez p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mPluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mPluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onSubtitlePrepared()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    const-string v1, "chs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/youku/player/subtitle/SubtitleOperate;->prepareChsSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    const-string v0, "chs"

    invoke-static {v0}, Lcom/youku/player/subtitle/SubtitleManager;->removeSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    const-string v1, "cht"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/youku/player/subtitle/SubtitleOperate;->prepareChtSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 117
    const-string v0, "cht"

    invoke-static {v0}, Lcom/youku/player/subtitle/SubtitleManager;->removeSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p1, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/youku/player/subtitle/SubtitleOperate;->prepareEnSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    const-string v0, "en"

    invoke-static {v0}, Lcom/youku/player/subtitle/SubtitleManager;->removeSubtitle(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_4
    invoke-static {}, Lcom/youku/player/subtitle/SubtitleManager;->setDefaultMode()V

    .line 129
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mPluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mPluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onSubtitlePrepared()V

    goto :goto_0
.end method

.method public showSubtitle(I)V
    .locals 5
    .param p1, "currentPosition"    # I

    .prologue
    const/4 v4, 0x0

    .line 136
    sget v0, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSingleSubtitle()V

    .line 138
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissFirstSubtitle()V

    .line 139
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSecondSubtitle()V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget v0, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissFirstSubtitle()V

    .line 142
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSecondSubtitle()V

    .line 143
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->getSubtitle(J)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 148
    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-object v1, v1, Lcom/youku/player/subtitle/Subtitle;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->setSingleSubtitle(Ljava/lang/String;)V

    .line 156
    :goto_1
    iput-object v4, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSingleSubtitle()V

    goto :goto_1

    .line 158
    :cond_3
    sget v0, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 159
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissFirstSubtitle()V

    .line 160
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSecondSubtitle()V

    .line 161
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->getSubtitle(J)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 166
    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-object v1, v1, Lcom/youku/player/subtitle/Subtitle;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->setSingleSubtitle(Ljava/lang/String;)V

    .line 174
    :goto_2
    iput-object v4, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto/16 :goto_0

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSingleSubtitle()V

    goto :goto_2

    .line 176
    :cond_5
    sget v0, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 177
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissFirstSubtitle()V

    .line 178
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSecondSubtitle()V

    .line 179
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->getSubtitle(J)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 184
    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 187
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-object v1, v1, Lcom/youku/player/subtitle/Subtitle;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->setSingleSubtitle(Ljava/lang/String;)V

    .line 192
    :goto_3
    iput-object v4, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto/16 :goto_0

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSingleSubtitle()V

    goto :goto_3

    .line 194
    :cond_7
    sget v0, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 195
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSingleSubtitle()V

    .line 196
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_8

    if-lez p1, :cond_8

    .line 198
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->getSubtitle(J)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 201
    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    .line 204
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-object v1, v1, Lcom/youku/player/subtitle/Subtitle;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->setFirstSubtitle(Ljava/lang/String;)V

    .line 210
    :goto_4
    iput-object v4, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 213
    :cond_8
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChsSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->getSubtitle(J)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 218
    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    .line 221
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-object v1, v1, Lcom/youku/player/subtitle/Subtitle;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->setSecondSubtitle(Ljava/lang/String;)V

    .line 226
    :goto_5
    iput-object v4, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChsSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto/16 :goto_0

    .line 207
    :cond_9
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissFirstSubtitle()V

    goto :goto_4

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSecondSubtitle()V

    goto :goto_5

    .line 228
    :cond_b
    sget v0, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSingleSubtitle()V

    .line 230
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_c

    if-lez p1, :cond_c

    .line 232
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mEnSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->getSubtitle(J)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 235
    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d

    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    .line 238
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-object v1, v1, Lcom/youku/player/subtitle/Subtitle;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->setFirstSubtitle(Ljava/lang/String;)V

    .line 244
    :goto_6
    iput-object v4, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurEnSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 247
    :cond_c
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mChtSubtitleManager:Lcom/youku/player/subtitle/SubtitleManager;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/youku/player/subtitle/SubtitleManager;->getSubtitle(J)Lcom/youku/player/subtitle/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 252
    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    int-to-long v0, p1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 255
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-object v1, v1, Lcom/youku/player/subtitle/Subtitle;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuPlayerView;->setSecondSubtitle(Ljava/lang/String;)V

    .line 261
    :goto_7
    iput-object v4, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mCurChtSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto/16 :goto_0

    .line 241
    :cond_d
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissFirstSubtitle()V

    goto :goto_6

    .line 258
    :cond_e
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleOperate;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->dismissSecondSubtitle()V

    goto :goto_7
.end method
