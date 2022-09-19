.class public Lcom/youku/player/subtitle/SubtitleDownloadThread;
.super Ljava/lang/Thread;
.source "SubtitleDownloadThread.java"


# static fields
.field public static final SUBTITLE_DOWNLOAD_FAIL:I = 0x2712

.field public static final SUBTITLE_DOWNLOAD_SUCCESS:I = 0x2711

.field public static final TRY_TIME:I = 0x3


# instance fields
.field attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field name:Ljava/lang/String;

.field private stopFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->stopFlag:Z

    .line 40
    iput-object p1, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->handler:Landroid/os/Handler;

    .line 42
    iput-object p3, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private handleDownloadSuccess(Lcom/youku/player/subtitle/Attachment;I)V
    .locals 5
    .param p1, "attachment"    # Lcom/youku/player/subtitle/Attachment;
    .param p2, "mode"    # I

    .prologue
    .line 50
    new-instance v1, Lcom/youku/player/subtitle/DownloadedSubtitle;

    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/youku/player/subtitle/DownloadedSubtitle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    .local v1, "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    invoke-static {v1}, Lcom/youku/player/subtitle/SubtitleManager;->addSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;)V

    .line 54
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 55
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x2711

    iput v2, v0, Landroid/os/Message;->what:I

    .line 56
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 64
    invoke-static {}, Lcom/youku/player/subtitle/SubtitleManager;->clearAllSubtitle()V

    .line 66
    new-instance v1, Lcom/youku/libmanager/HttpDownloader;

    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/youku/libmanager/HttpDownloader;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, "httpDownloader":Lcom/youku/libmanager/HttpDownloader;
    iget-object v4, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->attachments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/subtitle/Attachment;

    .line 69
    .local v0, "attachment":Lcom/youku/player/subtitle/Attachment;
    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    const-string v5, "chs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    const-string v5, "en"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    const-string v5, "cht"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    .line 72
    iget-boolean v4, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->stopFlag:Z

    if-eqz v4, :cond_3

    .line 110
    .end local v0    # "attachment":Lcom/youku/player/subtitle/Attachment;
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 75
    .restart local v0    # "attachment":Lcom/youku/player/subtitle/Attachment;
    .restart local v2    # "i":I
    :cond_3
    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    const-string v5, "chs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    sget-object v4, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v5, "download chs"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->attrachmentUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/youku/libmanager/HttpDownloader;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/youku/player/subtitle/SubtitleManager;->sChsContent:Ljava/lang/String;

    .line 79
    sget-object v4, Lcom/youku/player/subtitle/SubtitleManager;->sChsContent:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->stopFlag:Z

    if-nez v4, :cond_4

    .line 80
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/youku/player/subtitle/SubtitleDownloadThread;->handleDownloadSuccess(Lcom/youku/player/subtitle/Attachment;I)V

    goto :goto_0

    .line 85
    :cond_4
    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    const-string v5, "cht"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 86
    sget-object v4, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v5, "download cht"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->attrachmentUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/youku/libmanager/HttpDownloader;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/youku/player/subtitle/SubtitleManager;->sChtContent:Ljava/lang/String;

    .line 89
    sget-object v4, Lcom/youku/player/subtitle/SubtitleManager;->sChtContent:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->stopFlag:Z

    if-nez v4, :cond_5

    .line 90
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/youku/player/subtitle/SubtitleDownloadThread;->handleDownloadSuccess(Lcom/youku/player/subtitle/Attachment;I)V

    goto :goto_0

    .line 95
    :cond_5
    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    const-string v5, "en"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 96
    sget-object v4, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v5, "download en"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v4, v0, Lcom/youku/player/subtitle/Attachment;->attrachmentUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/youku/libmanager/HttpDownloader;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/youku/player/subtitle/SubtitleManager;->sEnContent:Ljava/lang/String;

    .line 99
    sget-object v4, Lcom/youku/player/subtitle/SubtitleManager;->sEnContent:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->stopFlag:Z

    if-nez v4, :cond_6

    .line 100
    const/4 v4, 0x2

    invoke-direct {p0, v0, v4}, Lcom/youku/player/subtitle/SubtitleDownloadThread;->handleDownloadSuccess(Lcom/youku/player/subtitle/Attachment;I)V

    goto/16 :goto_0

    .line 71
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setTask(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/subtitle/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/subtitle/Attachment;>;"
    iput-object p1, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->attachments:Ljava/util/List;

    .line 47
    return-void
.end method

.method public stopSelf()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/subtitle/SubtitleDownloadThread;->stopFlag:Z

    .line 36
    return-void
.end method
