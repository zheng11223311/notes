.class final Lcom/youtu/apps/recommend/util/Util$1;
.super Landroid/content/BroadcastReceiver;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/recommend/util/Util;->systemDownLoad(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadManager:Landroid/app/DownloadManager;

.field final synthetic val$downloadedId:J

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(JLandroid/app/DownloadManager;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$downloadedId:J

    iput-object p3, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$downloadManager:Landroid/app/DownloadManager;

    iput-object p4, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    const-string v4, "extra_download_id"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 196
    .local v0, "id":J
    iget-wide v4, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$downloadedId:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 197
    iget-object v4, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v4, v0, v1}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v3

    .line 198
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 199
    iget-object v4, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$mContext:Landroid/content/Context;

    const-string/jumbo v5, "\u5e94\u7528\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 201
    iget-object v4, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v2, "install":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v4, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    iget-object v4, p0, Lcom/youtu/apps/recommend/util/Util$1;->val$mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
