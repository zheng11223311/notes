.class Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;
.super Ljava/lang/Object;
.source "PlayhistoryManagerImp.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getServeData(IILandroid/os/Handler;Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

.field final synthetic val$callBack:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

.field final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tudou/service/playhistory/PlayhistoryManagerImp;Landroid/os/Handler;Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->this$0:Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

    iput-object p2, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->val$mainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->val$callBack:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$3;

    invoke-direct {v1, p0, p1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$3;-><init>(Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 189
    :try_start_0
    new-instance v4, Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {v4}, Lcom/youku/vo/HistoryVideoResult;-><init>()V

    invoke-virtual {p1, v4}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/HistoryVideoResult;

    .line 190
    .local v1, "historyVideo":Lcom/youku/vo/HistoryVideoResult;
    iget-object v4, v1, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v4, v4, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->page:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;

    iget v3, v4, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;->totalCount:I

    .line 191
    .local v3, "totalCount":I
    iget-object v4, v1, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v2, v4, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->results:Ljava/util/ArrayList;

    .line 192
    .local v2, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    iget-object v4, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->val$mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;-><init>(Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;ILjava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "historyVideo":Lcom/youku/vo/HistoryVideoResult;
    .end local v2    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    .end local v3    # "totalCount":I
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->val$mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$2;

    invoke-direct {v5, p0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$2;-><init>(Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
