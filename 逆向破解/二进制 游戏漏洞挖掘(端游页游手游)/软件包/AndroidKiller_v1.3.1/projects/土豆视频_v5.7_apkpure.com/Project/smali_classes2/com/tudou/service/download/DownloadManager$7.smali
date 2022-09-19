.class Lcom/tudou/service/download/DownloadManager$7;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager$7;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1124
    const-string v1, "showid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "showid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager$7;->this$0:Lcom/tudou/service/download/DownloadManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tudou/service/download/DownloadManager;->putAlbumOpenedInfo(Ljava/lang/String;Z)V

    .line 1128
    :cond_0
    return-void
.end method
