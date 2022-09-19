.class Lcom/tudou/ui/fragment/SelectedDetailFragment$3;
.super Ljava/lang/Object;
.source "SelectedDetailFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SelectedDetailFragment;
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
.field final synthetic this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SelectedDetailFragment;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullDownToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 10
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
    const/4 v9, 0x0

    .line 308
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v7

    if-nez v7, :cond_1

    .line 310
    :try_start_0
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-virtual {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 311
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 312
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "channelId"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "channelId":Ljava/lang/String;
    const-string v7, "moduleId"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "moduleId":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v1, v6}, Lcom/youku/http/TudouURLContainer;->getSelectedDetail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$502(Lcom/tudou/ui/fragment/SelectedDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$500(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "formatURL":Ljava/lang/String;
    invoke-static {v3}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "jsonStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$500(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 318
    const-string v7, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 319
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$100(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 320
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7, v5}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$600(Lcom/tudou/ui/fragment/SelectedDetailFragment;Ljava/lang/String;)V

    .line 339
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "channelId":Ljava/lang/String;
    .end local v3    # "formatURL":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "jsonStr":Ljava/lang/String;
    .end local v6    # "moduleId":Ljava/lang/String;
    :goto_0
    return-void

    .line 322
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "channelId":Ljava/lang/String;
    .restart local v3    # "formatURL":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "jsonStr":Ljava/lang/String;
    .restart local v6    # "moduleId":Ljava/lang/String;
    :cond_0
    const-string v7, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 323
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$100(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 324
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 325
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 326
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-virtual {v7, v8}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "channelId":Ljava/lang/String;
    .end local v3    # "formatURL":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "jsonStr":Ljava/lang/String;
    .end local v6    # "moduleId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    const-string v7, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v7}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 331
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$100(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 332
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 333
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 334
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-virtual {v7, v8}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 338
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$3;->this$0:Lcom/tudou/ui/fragment/SelectedDetailFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$800(Lcom/tudou/ui/fragment/SelectedDetailFragment;)V

    goto :goto_0
.end method

.method public onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0
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
    .line 344
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    return-void
.end method
