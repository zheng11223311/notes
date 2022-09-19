.class Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;
.super Landroid/os/Handler;
.source "AccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/AccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountFragmentHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/AccountFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/AccountFragment;)V
    .locals 1
    .param p1, "accountFragment"    # Lcom/tudou/ui/fragment/AccountFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 88
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget-object v7, p0, Lcom/tudou/ui/fragment/AccountFragment$AccountFragmentHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/AccountFragment;

    .line 93
    .local v0, "af":Lcom/tudou/ui/fragment/AccountFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 145
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 96
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 98
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, "objUser":Ljava/lang/String;
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    const-string v7, "account"

    const-string v8, "get local user info failed."

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$000(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/AccountHeadView;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/AccountFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/youku/widget/AccountHeadView;->refreshAccountInfo(Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 103
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$100(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 104
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$100(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 106
    :cond_2
    const-string v7, "account"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get local user info success. json = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v3, Lcom/youku/http/ParseJson;

    invoke-direct {v3, v2}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, "parseLocalJson":Lcom/youku/http/ParseJson;
    invoke-virtual {v3}, Lcom/youku/http/ParseJson;->parseTudouUserInfo()Lcom/youku/vo/UserInfo;

    move-result-object v5

    .line 109
    .local v5, "userInfo":Lcom/youku/vo/UserInfo;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    .line 110
    .local v4, "userBean1":Lcom/youku/vo/UserBean;
    iget-object v7, v5, Lcom/youku/vo/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 111
    iget-object v7, v5, Lcom/youku/vo/UserInfo;->userpicurl:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/youku/vo/UserBean;->setUserPic(Ljava/lang/String;)V

    .line 112
    iget v7, v5, Lcom/youku/vo/UserInfo;->sub_count:I

    invoke-virtual {v4, v7}, Lcom/youku/vo/UserBean;->setSubed_count(I)V

    .line 113
    iget v7, v5, Lcom/youku/vo/UserInfo;->uploadCount:I

    invoke-virtual {v4, v7}, Lcom/youku/vo/UserBean;->setUploadCount(I)V

    .line 114
    iget-boolean v7, v5, Lcom/youku/vo/UserInfo;->isVuser:Z

    invoke-virtual {v4, v7}, Lcom/youku/vo/UserBean;->setVuser(Z)V

    .line 115
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$000(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/AccountHeadView;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/AccountFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/youku/widget/AccountHeadView;->refreshAccountInfo(Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 116
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$100(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/widget/ErrorLayout;->dismiss()V

    .line 117
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$200(Lcom/tudou/ui/fragment/AccountFragment;)V

    goto/16 :goto_0

    .line 121
    .end local v2    # "objUser":Ljava/lang/String;
    .end local v3    # "parseLocalJson":Lcom/youku/http/ParseJson;
    .end local v4    # "userBean1":Lcom/youku/vo/UserBean;
    .end local v5    # "userInfo":Lcom/youku/vo/UserInfo;
    :sswitch_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 122
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 123
    .local v6, "userInfoJsonStr":Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/tudou/ui/fragment/AccountFragment;->access$300(Lcom/tudou/ui/fragment/AccountFragment;Ljava/lang/String;)Lcom/youku/vo/UserBean;

    .line 124
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$000(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/AccountHeadView;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/AccountFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/youku/widget/AccountHeadView;->refreshAccountInfo(Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 125
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$100(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/widget/ErrorLayout;->dismiss()V

    .line 126
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$200(Lcom/tudou/ui/fragment/AccountFragment;)V

    goto/16 :goto_0

    .line 129
    .end local v6    # "userInfoJsonStr":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {v0}, Lcom/tudou/ui/fragment/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/tudou/ui/fragment/SearchManager;->getInstance(Landroid/app/Activity;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v1

    .line 130
    .local v1, "instance":Lcom/tudou/ui/fragment/SearchManager;
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$400(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/adapter/AccountAdapter;

    move-result-object v7

    iget-object v8, v1, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8, v9}, Lcom/youku/adapter/AccountAdapter;->setRecommendData(Ljava/util/ArrayList;I)V

    .line 131
    invoke-static {v0}, Lcom/tudou/ui/fragment/AccountFragment;->access$400(Lcom/tudou/ui/fragment/AccountFragment;)Lcom/youku/adapter/AccountAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/adapter/AccountAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 137
    .end local v1    # "instance":Lcom/tudou/ui/fragment/SearchManager;
    :sswitch_4
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/tudou/ui/fragment/AccountFragment;->refreshNewMsgIcon(I)V

    goto/16 :goto_0

    .line 140
    :sswitch_5
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/tudou/ui/fragment/AccountFragment;->refreshNewMsgIcon(I)V

    goto/16 :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x6e -> :sswitch_3
        0x70 -> :sswitch_0
    .end sparse-switch
.end method
