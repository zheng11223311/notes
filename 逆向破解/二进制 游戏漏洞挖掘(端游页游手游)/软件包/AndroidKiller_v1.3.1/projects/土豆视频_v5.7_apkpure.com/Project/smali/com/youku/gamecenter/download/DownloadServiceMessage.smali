.class public Lcom/youku/gamecenter/download/DownloadServiceMessage;
.super Ljava/lang/Object;
.source "DownloadServiceMessage.java"


# static fields
.field public static final MESSAGE_DOWNLOAD_ADV_CONTINUE:I = 0x7

.field public static final MESSAGE_DOWNLOAD_CANCEL:I = 0x5

.field public static final MESSAGE_DOWNLOAD_CONTINUE:I = 0x3

.field public static final MESSAGE_DOWNLOAD_DELETE:I = 0x6

.field public static final MESSAGE_DOWNLOAD_PAUSE:I = 0x2

.field public static final MESSAGE_DOWNLOAD_START:I = 0x1

.field public static final MESSAGE_GETALL:I = 0x4

.field public static final MESSAGE_ON_DOWNLOAD_CONTINUE:I = 0xd

.field public static final MESSAGE_ON_DOWNLOAD_END:I = 0x10

.field public static final MESSAGE_ON_DOWNLOAD_PAUSE:I = 0xc

.field public static final MESSAGE_ON_DOWNLOAD_PENDING:I = 0x12

.field public static final MESSAGE_ON_DOWNLOAD_START:I = 0xb

.field public static final MESSAGE_ON_GETALL:I = 0xf

.field public static final MESSAGE_ON_ICON_DOWNLOAD:I = 0x11

.field public static final MESSAGE_ON_PROGRESS_UPDATE:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 28
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 29
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    return-object v0
.end method

.method public static putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    const-string/jumbo v1, "uid"

    invoke-static {}, Lcom/youku/gamecenter/statistics/GameTrack;->getUidPara()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "ytidAndUsernameAndVip"

    invoke-static {}, Lcom/youku/gamecenter/statistics/GameTrack;->getYTidAndUsernameAndVipPara()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
