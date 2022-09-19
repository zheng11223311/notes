.class public Lcom/tudou/ui/fragment/MessageSystemFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MessageSystemFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final TYPE_TEXT:Ljava/lang/String;

.field private adapter:Lcom/tudou/adapter/MessageAdapter;

.field private hintView:Lcom/youku/widget/HintView;

.field public listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mMyHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field msgManager:Lcom/youku/util/MessageManager;

.field onFinish:Lcom/youku/util/IMessageFinish;

.field refresh:Landroid/view/View$OnClickListener;

.field refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 44
    const-string v0, "text"

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->TYPE_TEXT:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/tudou/ui/fragment/MessageSystemFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageSystemFragment$1;-><init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->mMyHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/tudou/ui/fragment/MessageSystemFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageSystemFragment$2;-><init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 144
    new-instance v0, Lcom/tudou/ui/fragment/MessageSystemFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageSystemFragment$3;-><init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->onFinish:Lcom/youku/util/IMessageFinish;

    .line 223
    new-instance v0, Lcom/tudou/ui/fragment/MessageSystemFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageSystemFragment$5;-><init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->refresh:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/tudou/adapter/MessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageSystemFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MessageSystemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageSystemFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->setEmptyView()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MessageSystemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageSystemFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->showListView()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/MessageSystemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageSystemFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->setLoadedFailed()V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/MessageSystemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageSystemFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->initData()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/MessageSystemFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageSystemFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageSystemFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method private buildView()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->hintView:Lcom/youku/widget/HintView;

    .line 101
    new-instance v0, Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tudou/adapter/MessageAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    .line 102
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0527

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 104
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 105
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 108
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "MessageSystemFragment"

    const-string v1, "initData"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->onFinish:Lcom/youku/util/IMessageFinish;

    invoke-virtual {v0, v1}, Lcom/youku/util/MessageManager;->getSystemMessage(Lcom/youku/util/IMessageFinish;)V

    .line 142
    return-void
.end method

.method private setEmptyView()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->MESSAGE_EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 209
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->hintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method private setLoadedFailed()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 215
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->hintView:Lcom/youku/widget/HintView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->refresh:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method private showDialog(Lcom/youku/vo/MessageSystem$Msg;)V
    .locals 2
    .param p1, "msg"    # Lcom/youku/vo/MessageSystem$Msg;

    .prologue
    .line 194
    new-instance v0, Lcom/youku/widget/MessageSystemDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/youku/widget/MessageSystemDialog;-><init>(Landroid/content/Context;Lcom/youku/vo/MessageSystem$Msg;)V

    .line 195
    .local v0, "dialog":Lcom/youku/widget/MessageSystemDialog;
    new-instance v1, Lcom/tudou/ui/fragment/MessageSystemFragment$4;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/MessageSystemFragment$4;-><init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/MessageSystemDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 203
    invoke-virtual {v0}, Lcom/youku/widget/MessageSystemDialog;->show()V

    .line 204
    return-void
.end method

.method private showListView()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->hintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 221
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "MessageFragmentViewPagerAdapter"

    const-string v1, "system onCreate"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const v0, 0x7f030126

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->mView:Landroid/view/View;

    .line 90
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    .line 91
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->buildView()V

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 96
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 163
    const-string v2, "\u6d88\u606f\u4e2d\u5fc3\u63a8\u9001\u5185\u5bb9\u70b9\u51fb"

    const-string v3, "\u63a8\u9001\u5185\u5bb9\u70b9\u51fb"

    const-string v4, "MyChannle|Message|PushContent"

    invoke-static {v2, v3, v4}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v2, v2, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v2, v2, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageSystem$Msg;

    .line 166
    .local v1, "msg":Lcom/youku/vo/MessageSystem$Msg;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/MessageSystem$Msg;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 167
    iput-boolean v5, v1, Lcom/youku/vo/MessageSystem$Msg;->isReaded:Z

    .line 168
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v2, v2, Lcom/youku/util/MessageManager;->msgSystem:Lcom/youku/vo/MessageSystem;

    iget-object v2, v2, Lcom/youku/vo/MessageSystem;->result:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v2, v1, Lcom/youku/vo/MessageSystem$Msg;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/youku/vo/MessageSystem$Msg;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, v1, Lcom/youku/vo/MessageSystem$Msg;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/youku/vo/MessageSystem$Msg;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-direct {p0, v1}, Lcom/tudou/ui/fragment/MessageSystemFragment;->showDialog(Lcom/youku/vo/MessageSystem$Msg;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, v1, Lcom/youku/vo/MessageSystem$Msg;->skip_inf:Lcom/youku/vo/SkipInfo;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v2, v1, Lcom/youku/vo/MessageSystem$Msg;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/youku/vo/MessageSystem$Msg;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->skip_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/MessageSystem$Msg;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->skip_url:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/MessageSystem$Msg;->text_body:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 135
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 137
    :cond_0
    return-void
.end method
