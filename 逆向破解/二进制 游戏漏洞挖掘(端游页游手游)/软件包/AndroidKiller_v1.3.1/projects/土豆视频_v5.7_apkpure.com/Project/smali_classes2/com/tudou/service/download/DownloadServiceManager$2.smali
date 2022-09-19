.class Lcom/tudou/service/download/DownloadServiceManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DownloadServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/DownloadServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadServiceManager;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadServiceManager;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 203
    const-string v5, "firstToCache"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 204
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 205
    const-string v5, "Download_ServiceManager"

    const-string v6, "\u88c5\u8f7d\u7684"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    .line 207
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadServiceManager;->refresh()V

    .line 226
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    .line 255
    :cond_0
    :goto_1
    return-void

    .line 209
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 211
    .local v1, "hasPath":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 212
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v5, v5, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    const/4 v1, 0x1

    .line 217
    :cond_2
    if-nez v1, :cond_4

    .line 218
    const-string v5, "Download_ServiceManager"

    const-string v6, "\u88c5\u8f7d\u7684"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    .line 221
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadServiceManager;->refresh()V

    goto :goto_0

    .line 211
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 223
    :cond_4
    const-string v5, "Download_ServiceManager"

    const-string v6, "\u6709\u6587\u4ef6\u88ab\u5220\u9664"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v1    # "hasPath":Z
    .end local v2    # "i":I
    .end local v4    # "path":Ljava/lang/String;
    :cond_5
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    const-string v5, "Download_ServiceManager"

    const-string v6, "\u5f39\u51fa\u7684"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v5, "pop_sdcard"

    const-string v6, "pop_sdcard"

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    .line 233
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    .line 234
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 236
    .restart local v4    # "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    .line 237
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 238
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v5, v5, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 239
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    :cond_7
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_8

    .line 244
    iget-object v6, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v5, v5, Lcom/tudou/service/download/DownloadServiceManager;->sdCard_list:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/service/download/SDCardManager$SDCardInfo;

    iget-object v5, v5, Lcom/tudou/service/download/SDCardManager$SDCardInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/tudou/service/download/DownloadServiceManager;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V

    .line 246
    .end local v2    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v5, v4}, Lcom/tudou/service/download/DownloadServiceManager;->removeByPath(Ljava/lang/String;)V

    .line 247
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.tudou.service.download.ACTION_DOWNLOAD_SDCRAD"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 251
    .local v3, "nm":Landroid/app/NotificationManager;
    const/16 v5, 0x1700

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 252
    const-string v5, "download_last_notify_taskid"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v5, p0, Lcom/tudou/service/download/DownloadServiceManager$2;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v5}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    goto/16 :goto_1

    .line 237
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .restart local v2    # "i":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
