.class Lcom/youku/gamecenter/download/DownloadManager$6;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/youku/gamecenter/download/DownloadManager$IServiceConnected;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadManager;->sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadManager;

.field final synthetic val$downloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;I)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$6;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadManager$6;->val$downloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iput p3, p0, Lcom/youku/gamecenter/download/DownloadManager$6;->val$msg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager$6;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager$6;->val$downloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v2, p0, Lcom/youku/gamecenter/download/DownloadManager$6;->val$msg:I

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/download/DownloadManager;->access$1600(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 1353
    return-void
.end method
