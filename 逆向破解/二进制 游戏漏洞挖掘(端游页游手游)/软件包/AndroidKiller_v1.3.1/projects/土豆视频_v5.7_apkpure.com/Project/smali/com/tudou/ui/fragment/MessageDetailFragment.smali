.class public Lcom/tudou/ui/fragment/MessageDetailFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "MessageDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private adapter:Lcom/tudou/adapter/MessageDetailAdapter;

.field private editContent:Lcom/youku/widget/EditTextForMeizu;

.field private firstin:Z

.field private hintView:Lcom/youku/widget/HintView;

.field private lastTimeMsg:Lcom/youku/vo/Message;

.field private listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field mHandler:Landroid/os/Handler;

.field private msgManager:Lcom/youku/util/MessageManager;

.field onFinish:Lcom/youku/util/IMessageFinish;

.field onSendFinish:Lcom/youku/util/IMessageSendFinish;

.field private otherId:Ljava/lang/String;

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

.field private text_lenght:Landroid/widget/TextView;

.field private txtSend:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->otherId:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->firstin:Z

    .line 137
    new-instance v0, Lcom/tudou/ui/fragment/MessageDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageDetailFragment$3;-><init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/tudou/ui/fragment/MessageDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageDetailFragment$4;-><init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 223
    new-instance v0, Lcom/tudou/ui/fragment/MessageDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageDetailFragment$5;-><init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->onFinish:Lcom/youku/util/IMessageFinish;

    .line 299
    new-instance v0, Lcom/tudou/ui/fragment/MessageDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageDetailFragment$7;-><init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->onSendFinish:Lcom/youku/util/IMessageSendFinish;

    .line 328
    new-instance v0, Lcom/tudou/ui/fragment/MessageDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/MessageDetailFragment$8;-><init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->refresh:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/MessageDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->text_lenght:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/tudou/adapter/MessageDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->adapter:Lcom/tudou/adapter/MessageDetailAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/util/MessageManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->msgManager:Lcom/youku/util/MessageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/MessageDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->setLoadedFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->hintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/MessageDetailFragment;)Lcom/youku/widget/EditTextForMeizu;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->editContent:Lcom/youku/widget/EditTextForMeizu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/MessageDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->txtSend:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/MessageDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->initData()V

    return-void
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/MessageDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/MessageDetailFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->setEmptyView()V

    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->lastTimeMsg:Lcom/youku/vo/Message;

    iget-object v0, v0, Lcom/youku/vo/Message;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->otherId:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->otherId:Ljava/lang/String;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->lastTimeMsg:Lcom/youku/vo/Message;

    iget-object v0, v0, Lcom/youku/vo/Message;->user2Id:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->otherId:Ljava/lang/String;

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->firstin:Z

    if-eqz v0, :cond_1

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->firstin:Z

    .line 217
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v0, v0, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->msgManager:Lcom/youku/util/MessageManager;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->otherId:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->onFinish:Lcom/youku/util/IMessageFinish;

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/util/MessageManager;->getMessagesOfUser(Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageFinish;)V

    .line 221
    return-void
.end method

.method private initTitle(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    const v2, 0x7f0c00a7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, "back_img":Landroid/widget/ImageView;
    new-instance v2, Lcom/tudou/ui/fragment/MessageDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MessageDetailFragment$2;-><init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v2, 0x7f0c00df

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "txt_title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->lastTimeMsg:Lcom/youku/vo/Message;

    iget-object v2, v2, Lcom/youku/vo/Message;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/MessageDetailFragment;->initTitle(Landroid/view/View;)V

    .line 77
    const v1, 0x7f0c0529

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 78
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 79
    const v1, 0x7f0c052a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->txtSend:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0c04e0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->text_lenght:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->txtSend:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f0c00dd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->hintView:Lcom/youku/widget/HintView;

    .line 83
    const v1, 0x7f0c052b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/EditTextForMeizu;

    iput-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->editContent:Lcom/youku/widget/EditTextForMeizu;

    .line 84
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->editContent:Lcom/youku/widget/EditTextForMeizu;

    new-instance v2, Lcom/tudou/ui/fragment/MessageDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/MessageDetailFragment$1;-><init>(Lcom/tudou/ui/fragment/MessageDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/EditTextForMeizu;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->editContent:Lcom/youku/widget/EditTextForMeizu;

    invoke-virtual {v1, v3}, Lcom/youku/widget/EditTextForMeizu;->setFocusable(Z)V

    .line 108
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->editContent:Lcom/youku/widget/EditTextForMeizu;

    invoke-virtual {v1, v3}, Lcom/youku/widget/EditTextForMeizu;->setFocusableInTouchMode(Z)V

    .line 109
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->editContent:Lcom/youku/widget/EditTextForMeizu;

    invoke-virtual {v1}, Lcom/youku/widget/EditTextForMeizu;->requestFocus()Z

    .line 111
    new-instance v1, Lcom/tudou/adapter/MessageDetailAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/adapter/MessageDetailAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->adapter:Lcom/tudou/adapter/MessageDetailAdapter;

    .line 112
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->adapter:Lcom/tudou/adapter/MessageDetailAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/MessageDetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/MessageDetailActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tudou/adapter/MessageDetailAdapter;->setImagework(Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    .line 113
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 114
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->adapter:Lcom/tudou/adapter/MessageDetailAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 116
    .local v0, "actualListView":Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 117
    return-void
.end method

.method private setEmptyView()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 319
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->hintView:Lcom/youku/widget/HintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    return-void
.end method

.method private setLoadedFailed()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->hintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 325
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->hintView:Lcom/youku/widget/HintView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->refresh:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 240
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->editContent:Lcom/youku/widget/EditTextForMeizu;

    invoke-virtual {v1}, Lcom/youku/widget/EditTextForMeizu;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    const-string/jumbo v1, "\u8bf7\u8f93\u5165\u79c1\u4fe1\u5185\u5bb9"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_2

    .line 246
    const v1, 0x7f0d00c7

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 250
    :cond_2
    const-string v1, "btnSend"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_3

    .line 253
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->txtSend:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 257
    const-string/jumbo v1, "\u79c1\u4fe1\u53d1\u9001\u70b9\u51fb"

    const-string/jumbo v2, "\u79c1\u4fe1\u53d1\u9001\u70b9\u51fb"

    const-string v3, "MyChannle|Message|PrivatelySend"

    invoke-static {v1, v2, v3}, Lcom/youku/util/MessageManager;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->msgManager:Lcom/youku/util/MessageManager;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->otherId:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->editContent:Lcom/youku/widget/EditTextForMeizu;

    invoke-virtual {v4}, Lcom/youku/widget/EditTextForMeizu;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->onSendFinish:Lcom/youku/util/IMessageSendFinish;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/youku/util/MessageManager;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IMessageSendFinish;)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x7f0c052a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->firstin:Z

    .line 61
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lastTimeMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/Message;

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->lastTimeMsg:Lcom/youku/vo/Message;

    .line 62
    invoke-static {}, Lcom/youku/util/MessageManager;->getInstance()Lcom/youku/util/MessageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->msgManager:Lcom/youku/util/MessageManager;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    const v1, 0x7f030127

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->initView(Landroid/view/View;)V

    .line 69
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 72
    :cond_0
    return-object v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 268
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 296
    :goto_0
    return v4

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/MessageDetailFragment;->msgManager:Lcom/youku/util/MessageManager;

    iget-object v2, v2, Lcom/youku/util/MessageManager;->messageItems:Ljava/util/ArrayList;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MessageDetail$MessageItem;

    .line 273
    .local v1, "item":Lcom/youku/vo/MessageDetail$MessageItem;
    new-instance v0, Lcom/youku/widget/MessageDeleteDialog;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/MessageDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/tudou/ui/fragment/MessageDetailFragment$6;

    invoke-direct {v3, p0, v1}, Lcom/tudou/ui/fragment/MessageDetailFragment$6;-><init>(Lcom/tudou/ui/fragment/MessageDetailFragment;Lcom/youku/vo/MessageDetail$MessageItem;)V

    invoke-direct {v0, v2, v1, v3}, Lcom/youku/widget/MessageDeleteDialog;-><init>(Landroid/content/Context;Lcom/youku/vo/MessageDetail$MessageItem;Lcom/youku/util/IMessageFinish;)V

    .line 295
    .local v0, "dialog":Lcom/youku/widget/MessageDeleteDialog;
    invoke-virtual {v0}, Lcom/youku/widget/MessageDeleteDialog;->show()V

    goto :goto_0
.end method
