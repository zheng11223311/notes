.class Lcom/tudou/ui/fragment/RankingListFragment$4;
.super Ljava/lang/Object;
.source "RankingListFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RankingListFragment;->getRankingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RankingListFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RankingListFragment;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListFragment$4;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment$4;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/RankingListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment$4;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/RankingListFragment;->mHandler:Landroid/os/Handler;

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const v5, 0x186a2

    .line 170
    :try_start_0
    new-instance v3, Lcom/youku/vo/RankingList;

    invoke-direct {v3}, Lcom/youku/vo/RankingList;-><init>()V

    invoke-virtual {p1, v3}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/RankingList;

    .line 172
    .local v1, "list":Lcom/youku/vo/RankingList;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 173
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iget-object v3, v1, Lcom/youku/vo/RankingList;->status:Ljava/lang/String;

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    const v3, 0x186a1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 179
    :goto_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListFragment$4;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/RankingListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListFragment$4;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/RankingListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    .end local v1    # "list":Lcom/youku/vo/RankingList;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 177
    .restart local v1    # "list":Lcom/youku/vo/RankingList;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_1
    const v3, 0x186a2

    iput v3, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v1    # "list":Lcom/youku/vo/RankingList;
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListFragment$4;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/RankingListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/tudou/ui/fragment/RankingListFragment$4;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/RankingListFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
