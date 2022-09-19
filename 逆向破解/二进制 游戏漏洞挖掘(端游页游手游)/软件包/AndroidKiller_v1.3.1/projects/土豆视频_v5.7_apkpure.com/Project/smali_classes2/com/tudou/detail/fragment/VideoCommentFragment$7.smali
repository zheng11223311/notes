.class Lcom/tudou/detail/fragment/VideoCommentFragment$7;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;->getVideoComment(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

.field final synthetic val$pg:I

.field final synthetic val$videoid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$videoid:Ljava/lang/String;

    iput p3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$pg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 633
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFailed failReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1200(Lcom/tudou/detail/fragment/VideoCommentFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 635
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 636
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "msg.get.comment.success.bundle.pg"

    iget v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$pg:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    const-string v2, "msg.get.comment.success.bundle.itemcode"

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$videoid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 639
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 640
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 14
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 595
    iget-object v11, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v11}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1200(Lcom/tudou/detail/fragment/VideoCommentFragment;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 596
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onSuccess : getVideoComment result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 600
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 601
    .local v4, "root":Lorg/json/JSONObject;
    const-string v11, "new"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "new"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 602
    .local v8, "tJsonNews":Lorg/json/JSONObject;
    :goto_0
    const-string v11, "hot"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "hot"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 604
    .local v7, "tJsonHots":Lorg/json/JSONObject;
    :goto_1
    if-eqz v8, :cond_3

    iget-object v11, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$videoid:Ljava/lang/String;

    const-string v12, "new"

    invoke-static {v8, v11, v12}, Lcom/tudou/detail/vo/CommentsInfo;->createFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v9

    .line 606
    .local v9, "tNews":Lcom/tudou/detail/vo/CommentsInfo;
    :goto_2
    if-eqz v7, :cond_4

    iget-object v11, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$videoid:Ljava/lang/String;

    const-string v12, "hot"

    invoke-static {v7, v11, v12}, Lcom/tudou/detail/vo/CommentsInfo;->createFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/tudou/detail/vo/CommentsInfo;->reSizeComment(I)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v6

    .line 609
    .local v6, "tHots":Lcom/tudou/detail/vo/CommentsInfo;
    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v10

    .line 610
    .local v10, "tNewsCount":I
    :goto_4
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v5

    .line 611
    .local v5, "tHotCount":I
    :goto_5
    add-int v11, v10, v5

    if-lez v11, :cond_7

    .line 612
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 613
    .local v0, "b":Landroid/os/Bundle;
    const-string v11, "msg.get.comment.success.bundle.news"

    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 614
    const-string v11, "msg.get.comment.success.bundle.hots"

    invoke-virtual {v0, v11, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 615
    const-string v11, "msg.get.comment.success.bundle.pg"

    iget v12, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$pg:I

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    const-string v11, "msg.get.comment.success.bundle.itemcode"

    iget-object v12, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$videoid:Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "root":Lorg/json/JSONObject;
    .end local v5    # "tHotCount":I
    .end local v6    # "tHots":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v7    # "tJsonHots":Lorg/json/JSONObject;
    .end local v8    # "tJsonNews":Lorg/json/JSONObject;
    .end local v9    # "tNews":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v10    # "tNewsCount":I
    :cond_0
    :goto_6
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 629
    return-void

    .line 601
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 602
    .restart local v8    # "tJsonNews":Lorg/json/JSONObject;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 604
    .restart local v7    # "tJsonHots":Lorg/json/JSONObject;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 606
    .restart local v9    # "tNews":Lcom/tudou/detail/vo/CommentsInfo;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 609
    .restart local v6    # "tHots":Lcom/tudou/detail/vo/CommentsInfo;
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 610
    .restart local v10    # "tNewsCount":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 619
    .restart local v5    # "tHotCount":I
    :cond_7
    :try_start_1
    iget v11, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$7;->val$pg:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 620
    const/4 v11, 0x3

    iput v11, v2, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 625
    .end local v4    # "root":Lorg/json/JSONObject;
    .end local v5    # "tHotCount":I
    .end local v6    # "tHots":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v7    # "tJsonHots":Lorg/json/JSONObject;
    .end local v8    # "tJsonNews":Lorg/json/JSONObject;
    .end local v9    # "tNews":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v10    # "tNewsCount":I
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/lang/Exception;
    const/4 v11, 0x2

    iput v11, v2, Landroid/os/Message;->what:I

    goto :goto_6
.end method
