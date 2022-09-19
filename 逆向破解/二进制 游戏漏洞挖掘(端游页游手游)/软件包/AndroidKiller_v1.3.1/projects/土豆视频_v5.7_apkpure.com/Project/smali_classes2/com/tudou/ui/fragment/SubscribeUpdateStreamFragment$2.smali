.class Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;
.super Ljava/lang/Object;
.source "SubscribeUpdateStreamFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    .line 184
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 185
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 217
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$100(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 191
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SubscribeFragment;->Refresh()V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_2
    :goto_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 209
    :goto_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    const-string v1, "\u8ba2\u9605tab\u5267\u96c6\u89c6\u9891\u6d41\u4e0b\u62c9\u5237\u65b0"

    const-class v2, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ba2\u9605tab\u5267\u96c6\u89c6\u9891\u6d41\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$400(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto :goto_2

    .line 213
    :cond_4
    const-string v1, "\u8ba2\u9605tab\u5168\u90e8\u89c6\u9891\u6d41\u4e0b\u62c9\u5237\u65b0"

    const-class v2, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8ba2\u9605tab\u5168\u90e8\u89c6\u9891\u6d41\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const v2, 0x7f0d02c3

    .line 222
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    .line 224
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 225
    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$500(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 234
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 236
    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$608(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)I

    .line 241
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v1, v1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-object v2, v2, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubscribeBean$UserInfo;

    .line 243
    .local v0, "lastBean":Lcom/youku/vo/SubscribeBean$UserInfo;
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;->this$0:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-wide v2, v0, Lcom/youku/vo/SubscribeBean$UserInfo;->updateTime:J

    invoke-static {v1, v2, v3}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->access$700(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;J)V

    goto :goto_0
.end method
