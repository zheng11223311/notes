.class Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;
.super Landroid/os/Handler;
.source "SelectedDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SelectedDetailFragment;
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
            "Lcom/tudou/ui/fragment/SelectedDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/SelectedDetailFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 109
    iget-object v5, p0, Lcom/tudou/ui/fragment/SelectedDetailFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/ui/fragment/SelectedDetailFragment;

    .line 110
    .local v4, "sf":Lcom/tudou/ui/fragment/SelectedDetailFragment;
    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$000(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$100(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 114
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/vo/SelectedDetailBean;

    .line 117
    .local v0, "bean":Lcom/youku/vo/SelectedDetailBean;
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$200(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/tudou/adapter/SelectedDetailAdapter;

    move-result-object v5

    iget-object v6, v0, Lcom/youku/vo/SelectedDetailBean;->module_inf:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/tudou/adapter/SelectedDetailAdapter;->setData(Ljava/util/ArrayList;)V

    .line 118
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$200(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/tudou/adapter/SelectedDetailAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tudou/adapter/SelectedDetailAdapter;->notifyDataSetChanged()V

    .line 119
    iget-object v5, v0, Lcom/youku/vo/SelectedDetailBean;->base_module_inf:Lcom/youku/vo/SelectedListBean$Data;

    invoke-static {v4, v5}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$300(Lcom/tudou/ui/fragment/SelectedDetailFragment;Lcom/youku/vo/SelectedListBean$Data;)V

    .line 120
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 121
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/widget/ErrorLayout;->dismiss()V

    goto :goto_0

    .line 124
    .end local v0    # "bean":Lcom/youku/vo/SelectedDetailBean;
    :pswitch_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 126
    :try_start_0
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$500(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "formatURL":Ljava/lang/String;
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$500(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 129
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    const-string v5, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 134
    :goto_1
    invoke-static {v4, v3}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$600(Lcom/tudou/ui/fragment/SelectedDetailFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v2    # "formatURL":Ljava/lang/String;
    .end local v3    # "jsonStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 143
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 144
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "formatURL":Ljava/lang/String;
    .restart local v3    # "jsonStr":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_3
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 137
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 138
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 148
    .end local v2    # "formatURL":Ljava/lang/String;
    .end local v3    # "jsonStr":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 149
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/youku/widget/ErrorLayout;->setVisibility(I)V

    .line 150
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/widget/ErrorLayout;->showNoDataLayout()V

    .line 151
    invoke-static {v4}, Lcom/tudou/ui/fragment/SelectedDetailFragment;->access$400(Lcom/tudou/ui/fragment/SelectedDetailFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
