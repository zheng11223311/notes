.class Lcom/tudou/ui/fragment/SearchManager$9;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->getAccountRecommend(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$9;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchManager$9;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$9;->val$mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1315
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 10
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1280
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 1282
    .local v6, "str":Ljava/lang/String;
    :try_start_0
    const-class v8, Lcom/youku/vo/SearchOfResult;

    invoke-static {v6, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/SearchOfResult;

    .line 1283
    .local v5, "result":Lcom/youku/vo/SearchOfResult;
    const/4 v7, 0x0

    .line 1284
    .local v7, "videoCount":I
    iget-object v8, p0, Lcom/tudou/ui/fragment/SearchManager$9;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v8, v8, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 1285
    iget-object v8, p0, Lcom/tudou/ui/fragment/SearchManager$9;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v8, v8, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1287
    :cond_0
    iget-object v8, v5, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1288
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1289
    new-instance v0, Lcom/youku/vo/SearchOfData;

    invoke-direct {v0}, Lcom/youku/vo/SearchOfData;-><init>()V

    .line 1290
    .local v0, "data":Lcom/youku/vo/SearchOfData;
    const/4 v8, 0x2

    iput v8, v0, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 1291
    iget-object v8, v5, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/vo/SearchOfVideo;

    iput-object v8, v0, Lcom/youku/vo/SearchOfData;->video1:Lcom/youku/vo/SearchOfVideo;

    .line 1292
    add-int/lit8 v8, v2, 0x1

    if-lt v8, v3, :cond_2

    .line 1293
    add-int/lit8 v7, v7, 0x1

    .line 1294
    iget-object v8, p0, Lcom/tudou/ui/fragment/SearchManager$9;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v8, v8, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    .end local v0    # "data":Lcom/youku/vo/SearchOfData;
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1303
    .local v4, "msg":Landroid/os/Message;
    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 1304
    const/16 v8, 0x6e

    iput v8, v4, Landroid/os/Message;->what:I

    .line 1305
    iget-object v8, p0, Lcom/tudou/ui/fragment/SearchManager$9;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1310
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "result":Lcom/youku/vo/SearchOfResult;
    .end local v7    # "videoCount":I
    :goto_1
    return-void

    .line 1297
    .restart local v0    # "data":Lcom/youku/vo/SearchOfData;
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v5    # "result":Lcom/youku/vo/SearchOfResult;
    .restart local v7    # "videoCount":I
    :cond_2
    const/4 v8, 0x2

    iput v8, v0, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 1298
    iget-object v8, v5, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/vo/SearchOfVideo;

    iput-object v8, v0, Lcom/youku/vo/SearchOfData;->video2:Lcom/youku/vo/SearchOfVideo;

    .line 1299
    add-int/lit8 v7, v7, 0x1

    .line 1300
    iget-object v8, p0, Lcom/tudou/ui/fragment/SearchManager$9;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v8, v8, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1306
    .end local v0    # "data":Lcom/youku/vo/SearchOfData;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v5    # "result":Lcom/youku/vo/SearchOfResult;
    .end local v7    # "videoCount":I
    :catch_0
    move-exception v1

    .line 1307
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/tudou/ui/fragment/SearchManager$9;->val$mHandler:Landroid/os/Handler;

    const/16 v9, 0x70

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1308
    const-string v8, "SearchManager getRecommend()"

    invoke-static {v8, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
