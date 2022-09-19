.class Lcom/youku/gamecenter/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/download/DownloadManager;->start(Lcom/youku/gamecenter/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadManager;

.field final synthetic val$startMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager$1;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    iput-object p2, p0, Lcom/youku/gamecenter/download/DownloadManager$1;->val$startMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager$1;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$200(Lcom/youku/gamecenter/download/DownloadManager;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager$1;->this$0:Lcom/youku/gamecenter/download/DownloadManager;

    invoke-static {v1}, Lcom/youku/gamecenter/download/DownloadManager;->access$200(Lcom/youku/gamecenter/download/DownloadManager;)Landroid/os/Messenger;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager$1;->val$startMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
