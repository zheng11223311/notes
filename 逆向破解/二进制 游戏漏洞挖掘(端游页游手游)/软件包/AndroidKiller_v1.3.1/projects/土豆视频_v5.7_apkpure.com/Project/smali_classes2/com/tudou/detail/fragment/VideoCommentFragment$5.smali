.class Lcom/tudou/detail/fragment/VideoCommentFragment$5;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;->sendCommentInternal(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$imgUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->val$comment:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->val$imgUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "excueSendComment onFailed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1200(Lcom/tudou/detail/fragment/VideoCommentFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 11
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v10, 0x5

    .line 456
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "excueSendComment onSuccess data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 460
    .local v3, "jsobj":Lorg/json/JSONObject;
    const-string v6, "error_code_api"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 461
    .local v2, "errorCode":I
    if-nez v2, :cond_1

    .line 462
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 463
    .local v5, "msg":Landroid/os/Message;
    const/4 v6, 0x4

    iput v6, v5, Landroid/os/Message;->what:I

    .line 464
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->val$comment:Ljava/lang/String;

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 466
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "imgPath"

    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->val$imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v5, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 468
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v6}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1200(Lcom/tudou/detail/fragment/VideoCommentFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$802(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "errorCode":I
    .end local v3    # "jsobj":Lorg/json/JSONObject;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 471
    .restart local v2    # "errorCode":I
    .restart local v3    # "jsobj":Lorg/json/JSONObject;
    :cond_1
    const/4 v6, -0x6

    if-ne v2, v6, :cond_2

    .line 472
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v7}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$600(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$502(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$602(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    const-string v6, "errorStr"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "msg":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 476
    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    .end local v2    # "errorCode":I
    .end local v3    # "jsobj":Lorg/json/JSONObject;
    .end local v5    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v6}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1200(Lcom/tudou/detail/fragment/VideoCommentFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "errorCode":I
    .restart local v3    # "jsobj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v6, "errorStr"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 480
    .restart local v5    # "msg":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "excueSendComment onSuccess errorCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "error_code_api"

    const/4 v9, -0x1

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " errorStr = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 483
    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_3
    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v6}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1200(Lcom/tudou/detail/fragment/VideoCommentFragment;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
