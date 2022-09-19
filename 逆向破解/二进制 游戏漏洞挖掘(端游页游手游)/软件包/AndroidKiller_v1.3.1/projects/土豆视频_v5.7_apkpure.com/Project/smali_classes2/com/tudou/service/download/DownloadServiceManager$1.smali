.class Lcom/tudou/service/download/DownloadServiceManager$1;
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
.field isShowing:Z

.field final synthetic this$0:Lcom/tudou/service/download/DownloadServiceManager;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadServiceManager;)V
    .locals 1

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->isShowing:Z

    return-void
.end method

.method private showNetDialog()V
    .locals 4

    .prologue
    .line 153
    const-string v1, "showNetDialog"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v1, "Download_ServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowing  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->isShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "Download_ServiceManager"

    const-string v2, "showNetDialog"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/youku/widget/TudouDialog;

    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadServiceManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "netDialog":Lcom/youku/widget/TudouDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCanceledOnTouchOutside(Z)V

    .line 159
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 161
    const-string v1, "\u662f\u5426\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u7f13\u5b58\u89c6\u9891?"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 162
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/service/download/DownloadServiceManager$1$3;

    invoke-direct {v2, p0, v0}, Lcom/tudou/service/download/DownloadServiceManager$1$3;-><init>(Lcom/tudou/service/download/DownloadServiceManager$1;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 173
    const-string v1, "\u5141\u8bb8"

    new-instance v2, Lcom/tudou/service/download/DownloadServiceManager$1$4;

    invoke-direct {v2, p0, v0}, Lcom/tudou/service/download/DownloadServiceManager$1$4;-><init>(Lcom/tudou/service/download/DownloadServiceManager$1;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance v1, Lcom/tudou/service/download/DownloadServiceManager$1$5;

    invoke-direct {v1, p0}, Lcom/tudou/service/download/DownloadServiceManager$1$5;-><init>(Lcom/tudou/service/download/DownloadServiceManager$1;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 77
    const-string v1, "Download_ServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " action : 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-static {v1}, Lcom/tudou/service/download/DownloadServiceManager;->access$000(Lcom/tudou/service/download/DownloadServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tudou/service/download/DownloadServiceManager;->access$002(Lcom/tudou/service/download/DownloadServiceManager;Z)Z

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v1, "Download_ServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " action : 2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->appExit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-static {v1}, Lcom/tudou/service/download/DownloadServiceManager;->access$100(Lcom/tudou/service/download/DownloadServiceManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    .line 89
    .local v0, "hasNetwork":Z
    const-string v1, "com.tudou.download.ACTION_DOWNLOAD_OPEN_2g_3g"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    goto :goto_0

    .line 96
    :cond_2
    const-string v1, "com.tudou.download.ACTION_DOWNLOAD_CLOSE_2g_3g"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const-string v1, "Download_ServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWNLOAD_CLOSE_2G_3G action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string v1, "Download_ServiceManager"

    const-string v2, "ACTION_DOWNLOAD_CLOSE_2G_3G 3g \u7f51 "

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->stopAllTask()V

    goto/16 :goto_0

    .line 109
    :cond_3
    if-nez v0, :cond_4

    .line 110
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->stopAllTask()V

    goto/16 :goto_0

    .line 112
    :cond_4
    const-string v1, "firstToCache"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 113
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v1

    if-nez v1, :cond_7

    .line 114
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->canUse3GDownload()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    const-string v1, "Download_ServiceManager"

    const-string v2, "canUse3gdownload()  true "

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingWaiting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    const v1, 0x7f0d0115

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->startNewTask()V

    goto/16 :goto_0

    .line 121
    :cond_6
    const-string v1, "Download_ServiceManager"

    const-string v2, "canUse3gdownload()  false "

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingWaiting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-boolean v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->isShowing:Z

    if-nez v1, :cond_0

    .line 124
    iput-boolean v6, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->isShowing:Z

    .line 125
    invoke-direct {p0}, Lcom/tudou/service/download/DownloadServiceManager$1;->showNetDialog()V

    goto/16 :goto_0

    .line 130
    :cond_7
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->cleanRetry()V

    .line 131
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-virtual {v1}, Lcom/tudou/service/download/DownloadServiceManager;->hasDownloadingTask()Z

    move-result v1

    if-nez v1, :cond_8

    .line 132
    new-instance v1, Lcom/tudou/service/download/DownloadServiceManager$1$2;

    invoke-direct {v1, p0}, Lcom/tudou/service/download/DownloadServiceManager$1$2;-><init>(Lcom/tudou/service/download/DownloadServiceManager$1;)V

    new-instance v2, Lcom/tudou/service/download/DownloadServiceManager$1$1;

    invoke-direct {v2, p0}, Lcom/tudou/service/download/DownloadServiceManager$1$1;-><init>(Lcom/tudou/service/download/DownloadServiceManager$1;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Lcom/tudou/service/download/DownloadServiceManager$1$2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    :cond_8
    iget-object v1, p0, Lcom/tudou/service/download/DownloadServiceManager$1;->this$0:Lcom/tudou/service/download/DownloadServiceManager;

    invoke-static {v1, v6}, Lcom/tudou/service/download/DownloadServiceManager;->access$202(Lcom/tudou/service/download/DownloadServiceManager;Z)Z

    goto/16 :goto_0
.end method
