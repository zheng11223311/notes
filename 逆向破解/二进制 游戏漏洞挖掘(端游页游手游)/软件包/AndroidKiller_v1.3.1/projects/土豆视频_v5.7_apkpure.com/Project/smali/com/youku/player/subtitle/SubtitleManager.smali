.class public Lcom/youku/player/subtitle/SubtitleManager;
.super Ljava/lang/Object;
.source "SubtitleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/subtitle/SubtitleManager$SeekResult;,
        Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;
    }
.end annotation


# static fields
.field public static final ENGLISH:I = 0x2

.field public static final IN_CURRENT_SUBTITLE:I = 0x0

.field public static final IN_NEXT_SUBTITLE:I = 0x1

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LOCAL_TYPE:I = 0x1

.field public static final NO_SUBTITLE:I = -0x1

.field public static final ONLINE_TYPE:I = 0x0

.field public static final SIMPLIFIED_AND_ENGLISH:I = 0x3

.field public static final SIMPLIFIED_CHINESE:I = 0x0

.field public static TAG:Ljava/lang/String; = null

.field public static final TRADITIONAL_AND_ENGLISH:I = 0x4

.field public static final TRADITIONAL_CHINESE:I = 0x1

.field public static fontColor:I

.field public static fontSize:F

.field public static sChsContent:Ljava/lang/String;

.field public static sChtContent:Ljava/lang/String;

.field public static sDownloadedSubtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/DownloadedSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field public static sEnContent:Ljava/lang/String;

.field public static sHasSubtitle:Z

.field public static sMode:I


# instance fields
.field private final STOP_FIND:I

.field private count:I

.field private curSubtitle:Lcom/youku/player/subtitle/Subtitle;

.field private curSubtitleIndex:I

.field private isSeeking:Ljava/lang/Boolean;

.field private nextSubtitle:Lcom/youku/player/subtitle/Subtitle;

.field private ready:Z

.field private stopFind:Ljava/lang/Boolean;

.field private subtitleSeekThread:Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/Subtitle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string v0, "SubtitleManager"

    sput-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    .line 24
    sput-boolean v1, Lcom/youku/player/subtitle/SubtitleManager;->sHasSubtitle:Z

    .line 44
    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Lcom/youku/player/subtitle/SubtitleManager;->fontSize:F

    .line 46
    const/high16 v0, -0x10000

    sput v0, Lcom/youku/player/subtitle/SubtitleManager;->fontColor:I

    .line 50
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/player/subtitle/SubtitleManager;->LINE_SEPARATOR:Ljava/lang/String;

    .line 56
    sput v1, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sChsContent:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sChtContent:Ljava/lang/String;

    .line 74
    const-string v0, ""

    sput-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sEnContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->ready:Z

    .line 52
    const/16 v0, -0x64

    iput v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->STOP_FIND:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/youku/player/subtitle/SubtitleManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/subtitle/SubtitleManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/youku/player/subtitle/SubtitleManager;->isSeeking:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/player/subtitle/SubtitleManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/subtitle/SubtitleManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/subtitle/SubtitleManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/subtitle/SubtitleManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/youku/player/subtitle/SubtitleManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/subtitle/SubtitleManager;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/youku/player/subtitle/SubtitleManager;)Lcom/youku/player/subtitle/Subtitle;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/subtitle/SubtitleManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/player/subtitle/SubtitleManager;Lcom/youku/player/subtitle/Subtitle;)Lcom/youku/player/subtitle/Subtitle;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/subtitle/SubtitleManager;
    .param p1, "x1"    # Lcom/youku/player/subtitle/Subtitle;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    return-object p1
.end method

.method static synthetic access$402(Lcom/youku/player/subtitle/SubtitleManager;Lcom/youku/player/subtitle/Subtitle;)Lcom/youku/player/subtitle/Subtitle;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/subtitle/SubtitleManager;
    .param p1, "x1"    # Lcom/youku/player/subtitle/Subtitle;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/youku/player/subtitle/SubtitleManager;->nextSubtitle:Lcom/youku/player/subtitle/Subtitle;

    return-object p1
.end method

.method public static addSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;)V
    .locals 1
    .param p0, "subtitle"    # Lcom/youku/player/subtitle/DownloadedSubtitle;

    .prologue
    .line 254
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    .line 257
    :cond_0
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public static clearAllSubtitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    sput-object v1, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    .line 246
    :cond_0
    sput-object v1, Lcom/youku/player/subtitle/SubtitleManager;->sChsContent:Ljava/lang/String;

    .line 247
    sput-object v1, Lcom/youku/player/subtitle/SubtitleManager;->sChtContent:Ljava/lang/String;

    .line 248
    sput-object v1, Lcom/youku/player/subtitle/SubtitleManager;->sEnContent:Ljava/lang/String;

    .line 250
    const/4 v0, -0x1

    sput v0, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    .line 251
    return-void
.end method

.method public static getDefauleSDCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    invoke-static {}, Lcom/youku/player/subtitle/SubtitleManager;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDownloadPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 727
    invoke-static {}, Lcom/youku/player/subtitle/SubtitleManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_1

    .line 730
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/youku/subtitles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    .local v0, "downloadFile":Ljava/io/File;
    const/4 v2, 0x1

    .line 732
    .local v2, "success":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 733
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 736
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 740
    .end local v0    # "downloadFile":Ljava/io/File;
    .end local v2    # "success":Z
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getDownloadedSubtitles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/DownloadedSubtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "getDownloadedSubtitle()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    return-object v0
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 717
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasSubtitle()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 272
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSubtitle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/youku/player/subtitle/SubtitleManager;->sHasSubtitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-boolean v0, Lcom/youku/player/subtitle/SubtitleManager;->sHasSubtitle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static removeSubtitle(Ljava/lang/String;)V
    .locals 3
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    .line 95
    .local v0, "location":I
    :goto_1
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 96
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/subtitle/DownloadedSubtitle;

    .line 97
    .local v1, "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    iget-object v2, v1, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    .end local v1    # "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    :cond_2
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 101
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 95
    .restart local v1    # "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static setCurrentMode(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 122
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u6210\u529f\u8fdb\u5165setCurrentMode()\u65b9\u6cd5\uff01"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentMode() : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentMode()\u4fdd\u5b58\u7684mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sput p0, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    .line 126
    const-string/jumbo v0, "subtitleMode"

    invoke-static {v0, p0}, Lcom/youku/player/util/PlayerPreference;->savePreference(Ljava/lang/String;I)V

    .line 127
    return-void
.end method

.method public static setDefaultMode()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, -0x1

    .line 130
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "\u5df2\u6210\u529f\u8fdb\u5165setDefaultMode()\u65b9\u6cd5\uff01"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    if-nez v7, :cond_1

    .line 133
    sput v10, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    .line 238
    .local v0, "chs":Z
    .local v1, "cht":Z
    .local v2, "en":Z
    .local v3, "i$":Ljava/util/Iterator;
    .local v5, "tMode":I
    .local v6, "tmp":Z
    :cond_0
    :goto_0
    return-void

    .line 137
    .end local v0    # "chs":Z
    .end local v1    # "cht":Z
    .end local v2    # "en":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "tMode":I
    .end local v6    # "tmp":Z
    :cond_1
    const/4 v0, 0x0

    .line 139
    .restart local v0    # "chs":Z
    const/4 v1, 0x0

    .line 141
    .restart local v1    # "cht":Z
    const/4 v2, 0x0

    .line 143
    .restart local v2    # "en":Z
    const/4 v6, 0x0

    .line 145
    .restart local v6    # "tmp":Z
    const-string/jumbo v7, "subtitleMode"

    invoke-static {v7}, Lcom/youku/player/util/PlayerPreference;->getPreferenceInt(Ljava/lang/String;)I

    move-result v5

    .line 146
    .restart local v5    # "tMode":I
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u4eceSharedPreferences\u4e2d\u8bfb\u53d6\u7684mode\u503c\u4e3a\uff1a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->sDownloadedSubtitles:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/subtitle/DownloadedSubtitle;

    .line 150
    .local v4, "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subtitle.mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/youku/player/subtitle/DownloadedSubtitle;->mode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subtitle.name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/subtitle/DownloadedSubtitle;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subtitle.lang = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "subtitle.path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/player/subtitle/DownloadedSubtitle;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget v7, v4, Lcom/youku/player/subtitle/DownloadedSubtitle;->mode:I

    if-ne v7, v5, :cond_3

    .line 156
    const/4 v6, 0x1

    .line 160
    :cond_3
    iget-object v7, v4, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    const-string v8, "chs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 161
    const/4 v0, 0x1

    .line 162
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v8, "has chs"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_4
    iget-object v7, v4, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    const-string v8, "cht"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 167
    const/4 v1, 0x1

    .line 168
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v8, "has cht"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_5
    iget-object v7, v4, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    const-string v8, "en"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    const/4 v2, 0x1

    .line 174
    sget-object v7, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v8, "has en"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    .end local v4    # "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    :cond_6
    if-ne v5, v10, :cond_7

    .line 181
    sput v5, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 182
    :cond_7
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    .line 183
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 184
    sput v5, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 185
    :cond_8
    if-eqz v0, :cond_9

    if-nez v2, :cond_9

    .line 186
    sput v13, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 187
    :cond_9
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 188
    sput v11, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 190
    :cond_a
    const/4 v7, 0x4

    if-ne v5, v7, :cond_d

    .line 191
    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    .line 192
    sput v5, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 193
    :cond_b
    if-eqz v1, :cond_c

    if-nez v2, :cond_c

    .line 194
    sput v12, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 195
    :cond_c
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 196
    sput v11, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 198
    :cond_d
    if-nez v5, :cond_11

    .line 199
    if-eqz v0, :cond_e

    .line 200
    sput v5, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 201
    :cond_e
    if-eqz v1, :cond_f

    .line 202
    sput v12, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 203
    :cond_f
    if-eqz v2, :cond_10

    .line 204
    sput v11, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 206
    :cond_10
    sput v10, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 208
    :cond_11
    if-ne v5, v12, :cond_15

    .line 209
    if-eqz v1, :cond_12

    .line 210
    sput v5, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 211
    :cond_12
    if-eqz v0, :cond_13

    .line 212
    sput v13, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 213
    :cond_13
    if-eqz v2, :cond_14

    .line 214
    sput v11, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 216
    :cond_14
    sput v10, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 218
    :cond_15
    if-ne v5, v11, :cond_19

    .line 219
    if-eqz v2, :cond_16

    .line 220
    sput v5, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 221
    :cond_16
    if-eqz v0, :cond_17

    .line 222
    sput v13, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 223
    :cond_17
    if-eqz v1, :cond_18

    .line 224
    sput v12, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 226
    :cond_18
    sput v10, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 228
    :cond_19
    if-eqz v0, :cond_1a

    .line 229
    sput v13, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 230
    :cond_1a
    if-eqz v1, :cond_1b

    .line 231
    sput v12, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 232
    :cond_1b
    if-eqz v2, :cond_1c

    .line 233
    sput v11, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0

    .line 235
    :cond_1c
    sput v10, Lcom/youku/player/subtitle/SubtitleManager;->sMode:I

    goto/16 :goto_0
.end method

.method public static setHasSubtitle(Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 267
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHasSubtitle flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/youku/player/subtitle/SubtitleManager;->sHasSubtitle:Z

    .line 269
    return-void
.end method


# virtual methods
.method public exist(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 481
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v3, "haveSubtitleFile called!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/youku/player/subtitle/SubtitleManager;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 485
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 498
    :goto_0
    return-object v2

    .line 487
    :cond_1
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_2
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 495
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 498
    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public declared-synchronized find(J)I
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 682
    monitor-enter p0

    const/4 v2, 0x0

    .line 686
    .local v2, "mid":I
    :try_start_0
    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gtz v4, :cond_2

    .line 687
    :cond_0
    const/4 v1, -0x1

    .line 712
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 690
    :cond_2
    const/4 v1, 0x0

    .line 691
    .local v1, "low":I
    :try_start_1
    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 693
    .local v0, "high":I
    :goto_1
    if-gt v1, v0, :cond_5

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager;->stopFind:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5

    .line 695
    add-int v4, v1, v0

    shr-int/lit8 v2, v4, 0x1

    .line 697
    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/player/subtitle/Subtitle;

    .line 699
    .local v3, "subtitle":Lcom/youku/player/subtitle/Subtitle;
    iget-wide v4, v3, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_3

    .line 700
    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 701
    :cond_3
    iget-wide v4, v3, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v4, p1, v4

    if-lez v4, :cond_4

    .line 702
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 704
    goto :goto_0

    .line 708
    .end local v3    # "subtitle":Lcom/youku/player/subtitle/Subtitle;
    :cond_5
    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleManager;->stopFind:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 709
    const/16 v1, -0x64

    goto :goto_0

    .line 682
    .end local v0    # "high":I
    .end local v1    # "low":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 509
    .restart local p3    # "defaultValue":I
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 502
    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getNext()Lcom/youku/player/subtitle/Subtitle;
    .locals 4

    .prologue
    .line 277
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "getNext()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/youku/player/subtitle/SubtitleManager;->count:I

    if-ge v0, v1, :cond_0

    .line 280
    iget v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    .line 281
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    iget v1, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/subtitle/Subtitle;

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 284
    :cond_0
    iget v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/youku/player/subtitle/SubtitleManager;->count:I

    if-ge v0, v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    iget v1, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/subtitle/Subtitle;

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->nextSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 290
    :goto_0
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur.start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cur.end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    return-object v0

    .line 287
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->nextSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto :goto_0
.end method

.method public getSubtitle(J)Lcom/youku/player/subtitle/Subtitle;
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 296
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubtitle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur.start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cur.end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v2, v2, Lcom/youku/player/subtitle/Subtitle;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v0, v0, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v0, v0, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 300
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "------\u65f6\u95f4\u5728\u5f53\u524d\u5b57\u5e55\u4e2d------"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 321
    :goto_0
    return-object v0

    .line 304
    :cond_0
    iget v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v0, v0, Lcom/youku/player/subtitle/Subtitle;->start:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 305
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "------\u65f6\u95f4\u5c0f\u4e8e\u7b2c\u4e00\u6761\u5b57\u5e55\u7684\u65f6\u95f4------"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto :goto_0

    .line 309
    :cond_1
    iget v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    iget v1, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/subtitle/Subtitle;

    iget-wide v0, v0, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v0, v0, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 310
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "------\u5f53\u524d\u5b57\u5e55\u5373\u5c06\u663e\u793a------"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->nextSubtitle:Lcom/youku/player/subtitle/Subtitle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v0, v0, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->nextSubtitle:Lcom/youku/player/subtitle/Subtitle;

    iget-wide v0, v0, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_3

    .line 315
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "------\u83b7\u53d6\u4e0b\u4e00\u6761\u5b57\u5e55------"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/youku/player/subtitle/SubtitleManager;->getNext()Lcom/youku/player/subtitle/Subtitle;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/youku/player/subtitle/SubtitleManager;->seek(J)V

    .line 321
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-boolean v2, p0, Lcom/youku/player/subtitle/SubtitleManager;->ready:Z

    .line 111
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->isSeeking:Ljava/lang/Boolean;

    .line 113
    iput v2, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitleIndex:I

    .line 115
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->ready:Z

    return v0
.end method

.method public parseSrt(Ljava/lang/String;)Z
    .locals 14
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 522
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseSrt() \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    if-nez p1, :cond_0

    .line 525
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v10, "parseResponse : jsonString = null "

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v9, 0x0

    .line 592
    :goto_0
    return v9

    .line 529
    :cond_0
    const/4 v2, 0x0

    .line 532
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    move-object v2, v3

    .line 537
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-nez v2, :cond_1

    .line 538
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v10, "parseResponse : jsonObject == null "

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v9, 0x0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 542
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v9, "results"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 543
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v10, "parseResponse : jsonObject has not results"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v9, 0x0

    goto :goto_0

    .line 547
    :cond_2
    const-string/jumbo v9, "results"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 549
    .local v5, "resultArray":Lorg/json/JSONArray;
    if-nez v5, :cond_3

    .line 550
    sget-object v9, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v10, "parseResponse : resultArray == null"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v9, 0x0

    goto :goto_0

    .line 554
    :cond_3
    const-wide/16 v6, -0x1

    .line 556
    .local v6, "prevEnd":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 557
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 558
    .local v4, "object":Lorg/json/JSONObject;
    if-nez v4, :cond_4

    .line 556
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 562
    :cond_4
    new-instance v8, Lcom/youku/player/subtitle/Subtitle;

    invoke-direct {v8}, Lcom/youku/player/subtitle/Subtitle;-><init>()V

    .line 563
    .local v8, "subtitle":Lcom/youku/player/subtitle/Subtitle;
    const-string/jumbo v9, "start"

    invoke-virtual {p0, v4, v9}, Lcom/youku/player/subtitle/SubtitleManager;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/youku/player/subtitle/SubtitleManager;->string2time(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/youku/player/subtitle/Subtitle;->start:J

    .line 564
    const-string v9, "end"

    invoke-virtual {p0, v4, v9}, Lcom/youku/player/subtitle/SubtitleManager;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/youku/player/subtitle/SubtitleManager;->string2time(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/youku/player/subtitle/Subtitle;->end:J

    .line 565
    const-string/jumbo v9, "text"

    invoke-virtual {p0, v4, v9}, Lcom/youku/player/subtitle/SubtitleManager;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/player/subtitle/Crypt;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/youku/player/subtitle/Subtitle;->text:Ljava/lang/String;

    .line 567
    iget-wide v10, v8, Lcom/youku/player/subtitle/Subtitle;->start:J

    iget-wide v12, v8, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v9, v10, v12

    if-gtz v9, :cond_5

    iget-wide v10, v8, Lcom/youku/player/subtitle/Subtitle;->end:J

    cmp-long v9, v10, v6

    if-gez v9, :cond_6

    .line 568
    :cond_5
    const/4 v8, 0x0

    .line 569
    goto :goto_3

    .line 572
    :cond_6
    iget-wide v6, v8, Lcom/youku/player/subtitle/Subtitle;->end:J

    .line 574
    iget-object v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 577
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v8    # "subtitle":Lcom/youku/player/subtitle/Subtitle;
    :cond_7
    iget-object v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iput v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->count:I

    .line 578
    iget v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->count:I

    if-lez v9, :cond_8

    .line 579
    iget-object v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/player/subtitle/Subtitle;

    iput-object v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->curSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 580
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->ready:Z

    .line 583
    :cond_8
    iget v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->count:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    .line 584
    iget-object v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitles:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/player/subtitle/Subtitle;

    iput-object v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->nextSubtitle:Lcom/youku/player/subtitle/Subtitle;

    .line 589
    :goto_4
    iget v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->count:I

    if-lez v9, :cond_a

    .line 590
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 586
    :cond_9
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/youku/player/subtitle/SubtitleManager;->nextSubtitle:Lcom/youku/player/subtitle/Subtitle;

    goto :goto_4

    .line 592
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public prepare(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 626
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 629
    :cond_1
    const-string v1, "chs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    sget-object v1, Lcom/youku/player/subtitle/SubtitleManager;->sChsContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 632
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sChsContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/player/subtitle/SubtitleManager;->parseSrt(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 635
    :cond_2
    const-string v1, "cht"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 637
    sget-object v1, Lcom/youku/player/subtitle/SubtitleManager;->sChtContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 638
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sChtContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/player/subtitle/SubtitleManager;->parseSrt(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 641
    :cond_3
    const-string v1, "en"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    sget-object v1, Lcom/youku/player/subtitle/SubtitleManager;->sEnContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 644
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->sEnContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/player/subtitle/SubtitleManager;->parseSrt(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 653
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 657
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/player/subtitle/SubtitleManager;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/youku/player/subtitle/SubtitleManager;->parseSrt(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 599
    sget-object v5, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 603
    .local v2, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 606
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 608
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 609
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    sget-object v5, Lcom/youku/player/subtitle/SubtitleManager;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 612
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 615
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v0, :cond_0

    .line 616
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 622
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 615
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v1, :cond_2

    .line 616
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v0, v1

    .line 620
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 618
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    move-object v0, v1

    .line 621
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 614
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    .line 615
    :goto_3
    if-eqz v0, :cond_3

    .line 616
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 620
    :cond_3
    :goto_4
    throw v5

    .line 618
    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_4

    .line 614
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v0    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 612
    :catch_4
    move-exception v5

    goto :goto_1
.end method

.method public seek(J)V
    .locals 3
    .param p1, "seekTo"    # J

    .prologue
    .line 325
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seek : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->isSeeking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->stopFind:Ljava/lang/Boolean;

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->isSeeking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v1, "is Seeking..."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->stopFind:Ljava/lang/Boolean;

    goto :goto_0

    .line 336
    :cond_1
    new-instance v0, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;

    invoke-direct {v0, p0}, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;-><init>(Lcom/youku/player/subtitle/SubtitleManager;)V

    iput-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitleSeekThread:Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;

    .line 337
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitleSeekThread:Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;

    invoke-virtual {v0, p1, p2}, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->seekTo(J)V

    .line 338
    iget-object v0, p0, Lcom/youku/player/subtitle/SubtitleManager;->subtitleSeekThread:Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleManager$SubtitleSeekThread;->start()V

    .line 339
    return-void
.end method

.method public string2time(Ljava/lang/String;)J
    .locals 20
    .param p1, "times"    # Ljava/lang/String;

    .prologue
    .line 442
    const-wide/16 v12, 0x0

    .line 447
    .local v12, "time":J
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 448
    :cond_0
    const-wide/16 v14, 0x0

    .line 470
    :goto_0
    return-wide v14

    .line 451
    :cond_1
    const-string v14, "\\."

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "hmsm":[Ljava/lang/String;
    if-eqz v3, :cond_3

    array-length v14, v3

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    .line 454
    const/4 v14, 0x0

    aget-object v14, v3, v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "hms":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v14, v2

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    .line 457
    const/4 v14, 0x0

    aget-object v14, v2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 458
    .local v4, "hour":J
    const/4 v14, 0x1

    aget-object v14, v2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 459
    .local v8, "minute":J
    const/4 v14, 0x2

    aget-object v14, v2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 460
    .local v10, "second":J
    const/4 v14, 0x1

    aget-object v14, v3, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 462
    .local v6, "mill":J
    const-wide/16 v14, 0xe10

    mul-long/2addr v14, v4

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3c

    mul-long v16, v16, v8

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    add-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v10

    add-long v14, v14, v16

    add-long v12, v14, v6

    .end local v2    # "hms":[Ljava/lang/String;
    .end local v4    # "hour":J
    .end local v6    # "mill":J
    .end local v8    # "minute":J
    .end local v10    # "second":J
    :goto_1
    move-wide v14, v12

    .line 470
    goto :goto_0

    .line 464
    .restart local v2    # "hms":[Ljava/lang/String;
    :cond_2
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 467
    .end local v2    # "hms":[Ljava/lang/String;
    :cond_3
    const-wide/16 v12, 0x0

    goto :goto_1
.end method

.method public time2string(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 406
    const/4 v9, 0x0

    .line 409
    .local v9, "string":Ljava/lang/String;
    const-wide/32 v10, 0x36ee80

    div-long v0, p1, v10

    .line 410
    .local v0, "hour":J
    const-wide/32 v10, 0x36ee80

    rem-long/2addr p1, v10

    .line 411
    const-wide/32 v10, 0xea60

    div-long v4, p1, v10

    .line 412
    .local v4, "minute":J
    const-wide/32 v10, 0xea60

    rem-long/2addr p1, v10

    .line 413
    const-wide/16 v10, 0x3e8

    div-long v6, p1, v10

    .line 415
    .local v6, "second":J
    const-wide/16 v10, 0xa

    cmp-long v10, v0, v10

    if-gez v10, :cond_0

    .line 416
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "hourStr":Ljava/lang/String;
    :goto_0
    const-wide/16 v10, 0xa

    cmp-long v10, v4, v10

    if-gez v10, :cond_1

    .line 422
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "minuteStr":Ljava/lang/String;
    :goto_1
    const-wide/16 v10, 0xa

    cmp-long v10, v6, v10

    if-gez v10, :cond_2

    .line 428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 433
    .local v8, "secondStr":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 434
    return-object v9

    .line 418
    .end local v2    # "hourStr":Ljava/lang/String;
    .end local v3    # "minuteStr":Ljava/lang/String;
    .end local v8    # "secondStr":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "hourStr":Ljava/lang/String;
    goto :goto_0

    .line 424
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "minuteStr":Ljava/lang/String;
    goto :goto_1

    .line 430
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "secondStr":Ljava/lang/String;
    goto :goto_2
.end method
