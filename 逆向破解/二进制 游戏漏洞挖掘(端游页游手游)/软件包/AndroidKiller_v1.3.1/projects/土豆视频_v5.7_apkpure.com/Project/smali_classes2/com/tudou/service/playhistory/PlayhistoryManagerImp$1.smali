.class final Lcom/tudou/service/playhistory/PlayhistoryManagerImp$1;
.super Ljava/lang/Object;
.source "PlayhistoryManagerImp.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->onUserLoginCallbackImp(Lcom/youku/vo/HistoryVideo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$008()I

    .line 131
    const-string v0, "Youku"

    const-string v1, "updataLocalPlayhistory error"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "\u89c2\u770b\u8bb0\u5f55\u4e91\u540c\u6b65\u51fa\u9519"

    const-class v1, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89c2\u770b\u8bb0\u5f55-\u4e91\u540c\u6b65\u51fa\u9519"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$000()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 135
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$300()Lcom/youku/vo/HistoryVideo;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$400(Lcom/youku/vo/HistoryVideo;)V

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$100()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$106()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/HistoryVideo;

    invoke-static {v0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$302(Lcom/youku/vo/HistoryVideo;)Lcom/youku/vo/HistoryVideo;

    .line 139
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$300()Lcom/youku/vo/HistoryVideo;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$400(Lcom/youku/vo/HistoryVideo;)V

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$302(Lcom/youku/vo/HistoryVideo;)Lcom/youku/vo/HistoryVideo;

    .line 143
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 102
    iget-object v2, p1, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    monitor-enter v2

    .line 103
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$002(I)I

    .line 104
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$100()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$102(I)I

    .line 105
    const-string v1, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadLocation=========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$100()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p1, Lcom/youku/network/HttpRequestManager;->uri:Ljava/lang/String;

    invoke-static {v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getItemId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "itemID":Ljava/lang/String;
    const-string v1, "testplayhistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/data/SQLiteManagerTudou;->deletePlayHistoryByVids(Ljava/lang/String;)V

    .line 110
    const-string v1, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playhistory=========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$100()I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$100()I

    move-result v1

    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$200()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 113
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$100()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/HistoryVideo;

    invoke-static {v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$302(Lcom/youku/vo/HistoryVideo;)Lcom/youku/vo/HistoryVideo;

    .line 114
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$300()Lcom/youku/vo/HistoryVideo;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$400(Lcom/youku/vo/HistoryVideo;)V

    .line 120
    :goto_0
    monitor-exit v2

    .line 121
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$302(Lcom/youku/vo/HistoryVideo;)Lcom/youku/vo/HistoryVideo;

    .line 118
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 120
    .end local v0    # "itemID":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
