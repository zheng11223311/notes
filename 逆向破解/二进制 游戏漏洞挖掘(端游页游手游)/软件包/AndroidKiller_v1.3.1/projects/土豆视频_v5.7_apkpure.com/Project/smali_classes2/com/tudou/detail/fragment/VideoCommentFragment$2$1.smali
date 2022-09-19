.class Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;
.super Ljava/lang/Object;
.source "VideoCommentFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment$2;->onDigPicClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$2;

.field final synthetic val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment$2;Landroid/view/View;Lcom/tudou/detail/vo/CommentsInfo$Comment;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$2;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 289
    :try_start_0
    invoke-static {p1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$2;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget v3, v3, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1000(Lcom/tudou/detail/fragment/VideoCommentFragment;ZII)V

    .line 291
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$2;

    iget-object v1, v1, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$900(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/adapter/VideoCommentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 258
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 261
    .local v3, "root":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 263
    .local v1, "error":I
    if-eqz v1, :cond_0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_3

    .line 264
    :cond_0
    if-nez v1, :cond_1

    .line 265
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->val$v:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 266
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 267
    .local v4, "tag":Ljava/lang/Object;
    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    if-eqz v5, :cond_1

    .line 268
    check-cast v4, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    .end local v4    # "tag":Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->showDiggedAnim()V

    .line 272
    :cond_1
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$2;

    iget-object v5, v5, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v5}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$900(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/adapter/VideoCommentAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget v6, v6, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    invoke-virtual {v5, v6, v1}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->setCommentDigged(II)V

    .line 273
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$2;

    iget-object v5, v5, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget v7, v7, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    invoke-static {v5, v6, v7, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1000(Lcom/tudou/detail/fragment/VideoCommentFragment;ZII)V

    .line 278
    :goto_0
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$2;

    iget-object v5, v5, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v5}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$900(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/adapter/VideoCommentAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->notifyDataSetChanged()V

    .line 284
    .end local v1    # "error":I
    .end local v3    # "root":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    return-void

    .line 275
    .restart local v1    # "error":I
    .restart local v3    # "root":Lorg/json/JSONObject;
    :cond_3
    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->this$1:Lcom/tudou/detail/fragment/VideoCommentFragment$2;

    iget-object v5, v5, Lcom/tudou/detail/fragment/VideoCommentFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->val$comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget v7, v7, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    invoke-static {v5, v6, v7, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$1000(Lcom/tudou/detail/fragment/VideoCommentFragment;ZII)V

    .line 276
    const-string v5, "msg"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    .end local v1    # "error":I
    .end local v3    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/tudou/detail/fragment/VideoCommentFragment$2$1;->onFailed(Ljava/lang/String;)V

    goto :goto_1
.end method
