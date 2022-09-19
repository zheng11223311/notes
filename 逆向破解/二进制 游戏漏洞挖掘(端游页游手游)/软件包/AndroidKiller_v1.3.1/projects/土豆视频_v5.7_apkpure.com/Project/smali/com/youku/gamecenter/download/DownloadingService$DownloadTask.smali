.class Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
.super Ljava/lang/Object;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadTask"
.end annotation


# instance fields
.field mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

.field volatile mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

.field mId:I

.field volatile mNotification:Landroid/app/Notification;

.field mrepeatTime:I


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    .line 753
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    iput v0, p0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mId:I

    .line 754
    return-void
.end method
