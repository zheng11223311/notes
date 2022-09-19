.class Lcom/tudou/ui/fragment/MyTudouFragment$17;
.super Ljava/lang/Thread;
.source "MyTudouFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;->deleteSelectedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1075
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v5, "temps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v6

    array-length v4, v6

    .line 1077
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 1078
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 1079
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$200(Lcom/tudou/ui/fragment/MyTudouFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/DownloadInfo;

    .line 1080
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteAbleItemList;->getVids()[Lcom/tudou/service/download/DownloadInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/tudou/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tudou/service/download/DownloadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1082
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1078
    .restart local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1087
    .end local v2    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v3    # "j":I
    :cond_2
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2500(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/tudou/service/download/DownloadManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/tudou/service/download/DownloadManager;->deleteDownloadeds(Ljava/util/ArrayList;)Z

    .line 1089
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$1100(Lcom/tudou/ui/fragment/MyTudouFragment;)Lcom/youku/util/DeleteAbleItemList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/util/DeleteAbleItemList;->clearQueue()V

    .line 1090
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2600(Lcom/tudou/ui/fragment/MyTudouFragment;Z)V

    .line 1091
    const/4 v6, 0x1

    sput-boolean v6, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 1092
    iget-object v6, p0, Lcom/tudou/ui/fragment/MyTudouFragment$17;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/MyTudouFragment;->fActvity:Lcom/tudou/ui/activity/HomePageActivity;

    new-instance v7, Lcom/tudou/ui/fragment/MyTudouFragment$17$1;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/MyTudouFragment$17$1;-><init>(Lcom/tudou/ui/fragment/MyTudouFragment$17;)V

    invoke-virtual {v6, v7}, Lcom/tudou/ui/activity/HomePageActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v1    # "i":I
    .end local v4    # "length":I
    .end local v5    # "temps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    :goto_2
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Youku"

    const-string v7, "DownloadAdapter#getView()"

    invoke-static {v6, v7, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
