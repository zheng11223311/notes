.class Lcom/youku/gamecenter/download/DownloadingService$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$1;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 114
    iget-object v9, p0, Lcom/youku/gamecenter/download/DownloadingService$1;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v9}, Lcom/youku/gamecenter/download/DownloadingService;->access$000(Lcom/youku/gamecenter/download/DownloadingService;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 115
    iget-object v9, p0, Lcom/youku/gamecenter/download/DownloadingService$1;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/youku/gamecenter/download/DownloadingService;->access$002(Lcom/youku/gamecenter/download/DownloadingService;Z)Z

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v9, p0, Lcom/youku/gamecenter/download/DownloadingService$1;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v9}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/youku/gamecenter/download/DownloadingService$1;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v9}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/gamecenter/util/SystemUtils;->isWifi(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 121
    :try_start_0
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "onReceive"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "downloadingSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "advArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$200()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 126
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 127
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 128
    .local v7, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eq v9, v11, :cond_3

    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v9}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 130
    :cond_3
    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-eq v9, v12, :cond_4

    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-nez v9, :cond_2

    .line 133
    :cond_4
    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    .end local v0    # "advArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    .end local v2    # "downloadingSize":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;>;>;"
    .end local v7    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :catch_0
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v9, p0, Lcom/youku/gamecenter/download/DownloadingService$1;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v9}, Lcom/youku/gamecenter/download/DownloadingService;->access$400(Lcom/youku/gamecenter/download/DownloadingService;)V

    goto :goto_0

    .line 134
    .restart local v0    # "advArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    .restart local v2    # "downloadingSize":I
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;>;>;"
    .restart local v7    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_6
    :try_start_1
    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v9, :cond_7

    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    .line 135
    :cond_7
    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-ne v9, v12, :cond_8

    .line 136
    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_8
    iget-object v9, v7, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-ne v9, v11, :cond_2

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    .end local v7    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_9
    new-instance v9, Lcom/youku/gamecenter/download/DownloadingService$1$1;

    invoke-direct {v9, p0}, Lcom/youku/gamecenter/download/DownloadingService$1$1;-><init>(Lcom/youku/gamecenter/download/DownloadingService$1;)V

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    rsub-int/lit8 v9, v2, 0x3

    if-ge v6, v9, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_a

    .line 150
    iget-object v10, p0, Lcom/youku/gamecenter/download/DownloadingService$1;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v9, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v10, v9}, Lcom/youku/gamecenter/download/DownloadingService;->access$300(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    .line 149
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 152
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 153
    .local v8, "url":Ljava/lang/String;
    iget-object v9, p0, Lcom/youku/gamecenter/download/DownloadingService$1;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v9, v8}, Lcom/youku/gamecenter/download/DownloadingService;->access$300(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
