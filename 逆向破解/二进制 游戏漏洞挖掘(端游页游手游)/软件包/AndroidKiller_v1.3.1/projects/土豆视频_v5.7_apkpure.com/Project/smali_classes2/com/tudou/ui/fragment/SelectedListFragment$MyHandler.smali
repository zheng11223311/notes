.class Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;
.super Landroid/os/Handler;
.source "SelectedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SelectedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/SelectedListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/SelectedListFragment;)V
    .locals 1
    .param p1, "sf"    # Lcom/tudou/ui/fragment/SelectedListFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 97
    iget-object v6, p0, Lcom/tudou/ui/fragment/SelectedListFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tudou/ui/fragment/SelectedListFragment;

    .line 98
    .local v5, "sf":Lcom/tudou/ui/fragment/SelectedListFragment;
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$000(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 99
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/SelectedListBean;

    .line 102
    .local v0, "bean":Lcom/youku/vo/SelectedListBean;
    iget-object v1, v0, Lcom/youku/vo/SelectedListBean;->modules_inf:Ljava/util/ArrayList;

    .line 103
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SelectedListBean$Data;>;"
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$100(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/tudou/adapter/SelectedListAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/tudou/adapter/SelectedListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 104
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$100(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/tudou/adapter/SelectedListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tudou/adapter/SelectedListAdapter;->notifyDataSetChanged()V

    .line 105
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/widget/ErrorLayout;->dismiss()V

    .line 106
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    goto :goto_0

    .line 109
    .end local v0    # "bean":Lcom/youku/vo/SelectedListBean;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SelectedListBean$Data;>;"
    :pswitch_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 111
    :try_start_0
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$300(Lcom/tudou/ui/fragment/SelectedListFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "formatURL":Ljava/lang/String;
    invoke-static {v3}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "jsonStr":Ljava/lang/String;
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$300(Lcom/tudou/ui/fragment/SelectedListFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_0

    .line 115
    const-string v6, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 119
    :goto_1
    invoke-static {v5, v4}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$400(Lcom/tudou/ui/fragment/SelectedListFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v3    # "formatURL":Ljava/lang/String;
    .end local v4    # "jsonStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 128
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 129
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 117
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "formatURL":Ljava/lang/String;
    .restart local v4    # "jsonStr":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v6, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v6}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_1
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 122
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 123
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 133
    .end local v3    # "formatURL":Ljava/lang/String;
    .end local v4    # "jsonStr":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 134
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 135
    invoke-static {v5}, Lcom/tudou/ui/fragment/SelectedListFragment;->access$200(Lcom/tudou/ui/fragment/SelectedListFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/widget/ErrorLayout;->showNoDataLayout()V

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
