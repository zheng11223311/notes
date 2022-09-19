.class Lcom/tudou/ui/fragment/CacheFolderFragment$3;
.super Ljava/lang/Object;
.source "CacheFolderFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFolderFragment;->excuegetVideoDetail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFolderFragment;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 306
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/16 v7, 0xce

    .line 273
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "str":Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 277
    .local v2, "msg":Landroid/os/Message;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    .local v4, "o":Lorg/json/JSONObject;
    const-string v6, "detail"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 279
    .local v0, "d":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 280
    :cond_0
    const/16 v6, 0xce

    iput v6, v2, Landroid/os/Message;->what:I

    .line 281
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 282
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v0    # "d":Lorg/json/JSONObject;
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 287
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 288
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":Lorg/json/JSONObject;
    .restart local v4    # "o":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    new-instance v3, Lcom/youku/vo/NewVideoDetail;

    invoke-direct {v3}, Lcom/youku/vo/NewVideoDetail;-><init>()V

    .line 293
    .local v3, "newvideodetail":Lcom/youku/vo/NewVideoDetail;
    invoke-virtual {p1, v3}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "newvideodetail":Lcom/youku/vo/NewVideoDetail;
    check-cast v3, Lcom/youku/vo/NewVideoDetail;

    .line 294
    .restart local v3    # "newvideodetail":Lcom/youku/vo/NewVideoDetail;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    const/16 v6, 0xcd

    iput v6, v2, Landroid/os/Message;->what:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    .end local v3    # "newvideodetail":Lcom/youku/vo/NewVideoDetail;
    :goto_1
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 300
    iget-object v6, p0, Lcom/tudou/ui/fragment/CacheFolderFragment$3;->this$0:Lcom/tudou/ui/fragment/CacheFolderFragment;

    invoke-static {v6}, Lcom/tudou/ui/fragment/CacheFolderFragment;->access$600(Lcom/tudou/ui/fragment/CacheFolderFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 296
    :catch_1
    move-exception v1

    .line 297
    .restart local v1    # "e":Ljava/lang/Exception;
    iput v7, v2, Landroid/os/Message;->what:I

    goto :goto_1
.end method
