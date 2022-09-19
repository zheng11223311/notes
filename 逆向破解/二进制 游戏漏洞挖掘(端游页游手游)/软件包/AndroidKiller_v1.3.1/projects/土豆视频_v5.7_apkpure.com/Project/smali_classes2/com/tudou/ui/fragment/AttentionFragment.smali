.class public Lcom/tudou/ui/fragment/AttentionFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "AttentionFragment.java"


# static fields
.field public static final CLEAR_ATTENTION_FAILED:I = 0x4e22

.field public static final CLEAR_ATTENTION_SUCCESS:I = 0x4e21

.field private static final FAIL:I = 0xfa1

.field public static final SUBSCRIBE_ADD:I = 0x958a

.field public static final SUBSCRIBE_BACK_CODE:I = 0x44da45

.field private static final SUCESS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "AttentionActivity"

.field public static mRefreshkey:Z


# instance fields
.field adapter:Lcom/tudou/adapter/AttentionAdapter;

.field private addLayout:Landroid/view/View;

.field private btnDelete:Landroid/widget/TextView;

.field context:Landroid/content/Context;

.field private editLayout:Landroid/view/View;

.field public handler:Landroid/os/Handler;

.field iattention:Lcom/tudou/service/attention/IAttention;

.field private isFromDelete:Z

.field private isTips:Z

.field private isedit:Z

.field private leftImg:Landroid/widget/RelativeLayout;

.field public listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private load_complete:Landroid/view/View;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mIsSetTotalNum:Z

.field private mLeftCutline:Landroid/view/View;

.field private mTotalNum:I

.field private mView:Landroid/view/View;

.field private numlayout:Landroid/view/View;

.field onBackListener:Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;

.field private pageNo:I

.field podcast:Lcom/youku/vo/Podcast;

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

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isFromDelete:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isTips:Z

    .line 66
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mIsSetTotalNum:Z

    .line 67
    iput v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mTotalNum:I

    .line 73
    new-instance v0, Lcom/youku/vo/Podcast;

    invoke-direct {v0}, Lcom/youku/vo/Podcast;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    .line 74
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->iattention:Lcom/tudou/service/attention/IAttention;

    .line 77
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isedit:Z

    .line 117
    new-instance v0, Lcom/tudou/ui/fragment/AttentionFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/AttentionFragment$1;-><init>(Lcom/tudou/ui/fragment/AttentionFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 460
    new-instance v0, Lcom/tudou/ui/fragment/AttentionFragment$8;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/AttentionFragment$8;-><init>(Lcom/tudou/ui/fragment/AttentionFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    .line 631
    new-instance v0, Lcom/tudou/ui/fragment/AttentionFragment$9;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/AttentionFragment$9;-><init>(Lcom/tudou/ui/fragment/AttentionFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->onBackListener:Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/AttentionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isTips:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isTips:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->load_complete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/AttentionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isFromDelete:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isFromDelete:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->numlayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/tudou/ui/fragment/AttentionFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->numlayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/AttentionFragment;Lcom/youku/vo/Podcast;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;
    .param p1, "x1"    # Lcom/youku/vo/Podcast;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/AttentionFragment;->addAttentionUser(Lcom/youku/vo/Podcast;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/AttentionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mIsSetTotalNum:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mIsSetTotalNum:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/tudou/ui/fragment/AttentionFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mTotalNum:I

    return p1
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/AttentionFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isedit:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AttentionFragment;->initData()V

    return-void
.end method

.method static synthetic access$202(Lcom/tudou/ui/fragment/AttentionFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isedit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->leftImg:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->addLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->txt_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AttentionFragment;->setButtonState()V

    return-void
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/AttentionFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->pageNo:I

    return v0
.end method

.method static synthetic access$702(Lcom/tudou/ui/fragment/AttentionFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->pageNo:I

    return p1
.end method

.method static synthetic access$704(Lcom/tudou/ui/fragment/AttentionFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->pageNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->pageNo:I

    return v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/AttentionFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/AttentionFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method private addAttentionUser(Lcom/youku/vo/Podcast;)V
    .locals 2
    .param p1, "podcast"    # Lcom/youku/vo/Podcast;

    .prologue
    .line 440
    iget-object v0, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v0, v0, Lcom/youku/vo/Podcast$Users;->page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 444
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 445
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 446
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v1, v1, Lcom/youku/vo/Podcast$Users;->page:I

    iput v1, v0, Lcom/youku/vo/Podcast$Users;->page:I

    .line 447
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v1, v1, Lcom/youku/vo/Podcast$Users;->total:I

    iput v1, v0, Lcom/youku/vo/Podcast$Users;->total:I

    goto :goto_0

    .line 450
    :cond_2
    iget-object v0, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v0, v0, Lcom/youku/vo/Podcast$Users;->page:I

    iget v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->pageNo:I

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v0, v0, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, v1, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v1, v1, Lcom/youku/vo/Podcast$Users;->page:I

    iput v1, v0, Lcom/youku/vo/Podcast$Users;->page:I

    .line 456
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v1, p1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v1, v1, Lcom/youku/vo/Podcast$Users;->total:I

    iput v1, v0, Lcom/youku/vo/Podcast$Users;->total:I

    goto :goto_0
.end method

.method public static clearSubscribeCount(II)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 390
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 392
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p0, p1}, Lcom/youku/http/TudouURLContainer;->clearSubscribeUpdateCount(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 395
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/AttentionFragment$6;

    invoke-direct {v2}, Lcom/tudou/ui/fragment/AttentionFragment$6;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 409
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/ui/fragment/AttentionFragment;->excuegetAttentionList(I)V

    .line 331
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 212
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c001b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 214
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030214

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->load_complete:Landroid/view/View;

    .line 216
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 222
    :goto_0
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 223
    .local v2, "v":Landroid/view/View;
    const v3, -0xf0f10

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 224
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 227
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    const/16 v3, 0xf

    iput v3, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 228
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 231
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v4, p0, Lcom/tudou/ui/fragment/AttentionFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 233
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c00dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/HintView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 235
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c045e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->addLayout:Landroid/view/View;

    .line 237
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->addLayout:Landroid/view/View;

    new-instance v4, Lcom/tudou/ui/fragment/AttentionFragment$2;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/AttentionFragment$2;-><init>(Lcom/tudou/ui/fragment/AttentionFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c00df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->txt_title:Landroid/widget/TextView;

    .line 251
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c00a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->leftImg:Landroid/widget/RelativeLayout;

    .line 252
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c0462

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mLeftCutline:Landroid/view/View;

    .line 262
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->leftImg:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/tudou/ui/fragment/AttentionFragment$3;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/AttentionFragment$3;-><init>(Lcom/tudou/ui/fragment/AttentionFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c0461

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->btnDelete:Landroid/widget/TextView;

    .line 271
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c0460

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->editLayout:Landroid/view/View;

    .line 272
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->btnDelete:Landroid/widget/TextView;

    new-instance v4, Lcom/tudou/ui/fragment/AttentionFragment$4;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/AttentionFragment$4;-><init>(Lcom/tudou/ui/fragment/AttentionFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v4, Lcom/tudou/ui/fragment/AttentionFragment$5;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/AttentionFragment$5;-><init>(Lcom/tudou/ui/fragment/AttentionFragment;)V

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 325
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 326
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 327
    return-void

    .line 219
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v1    # "statusBarView":Landroid/view/View;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto/16 :goto_0
.end method

.method private rightClick()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isedit:Z

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->leftImg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mLeftCutline:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const-string v0, "\u8ba2\u9605\u5217\u8868\u7f16\u8f91\u6309\u94ae\u70b9\u51fb"

    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8ba2\u9605\u5217\u8868\u7f16\u8f91\u6309\u94ae\u70b9\u51fb"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->addLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isedit:Z

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/AttentionAdapter;->setEditMode(Z)V

    .line 345
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->txt_title:Landroid/widget/TextView;

    const-string v1, "\u7f16\u8f91\u6211\u7684\u8ba2\u9605"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v0, v0, Lcom/youku/vo/Podcast$Users;->total:I

    if-lez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f16\u8f91\u6211\u7684\u8ba2\u9605("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v2, v2, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v2, v2, Lcom/youku/vo/Podcast$Users;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/AttentionAdapter;->notifyDataSetChanged()V

    .line 362
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AttentionFragment;->setButtonState()V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->leftImg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mLeftCutline:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->addLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/AttentionAdapter;->clearDeleteList()V

    .line 354
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->isedit:Z

    invoke-virtual {v0, v1}, Lcom/tudou/adapter/AttentionAdapter;->setEditMode(Z)V

    .line 356
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->txt_title:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u8ba2\u9605"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v0, v0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v0, v0, Lcom/youku/vo/Podcast$Users;->total:I

    if-lez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6211\u7684\u8ba2\u9605("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    iget-object v2, v2, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget v2, v2, Lcom/youku/vo/Podcast$Users;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setButtonState()V
    .locals 4

    .prologue
    .line 612
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/AttentionAdapter;->getDeleteListSize()I

    move-result v0

    .line 614
    .local v0, "deletecount":I
    if-nez v0, :cond_1

    .line 615
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->btnDelete:Landroid/widget/TextView;

    const-string v2, "\u53d6\u6d88\u8ba2\u9605"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->btnDelete:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    const v3, 0x7f0e00f4

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 624
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/AttentionAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/AttentionAdapter;->getEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 625
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->editLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :goto_1
    return-void

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->btnDelete:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d6\u6d88\u8ba2\u9605("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->btnDelete:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    const v3, 0x7f0e00f3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 627
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->editLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addTotalNum()V
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mTotalNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mTotalNum:I

    .line 644
    return-void
.end method

.method public decTotalNum()V
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mTotalNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mTotalNum:I

    .line 648
    return-void
.end method

.method public excuegetAttentionList(I)V
    .locals 2
    .param p1, "pg"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->iattention:Lcom/tudou/service/attention/IAttention;

    new-instance v1, Lcom/tudou/ui/fragment/AttentionFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/tudou/ui/fragment/AttentionFragment$7;-><init>(Lcom/tudou/ui/fragment/AttentionFragment;I)V

    invoke-interface {v0, p1, v1}, Lcom/tudou/service/attention/IAttention;->getAttentionListByAtt(ILcom/tudou/service/attention/IAttention$GetListCallBack;)V

    .line 437
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 90
    const v1, 0x7f0300f9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    .line 91
    sput-boolean v3, Lcom/tudou/service/attention/AttentionManagerImpl;->isFirstAccess:Z

    .line 92
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iput-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    .line 94
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    const v2, 0x7f0c0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 96
    invoke-direct {p0}, Lcom/tudou/ui/fragment/AttentionFragment;->initView()V

    .line 97
    iput v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->pageNo:I

    .line 98
    sput-boolean v3, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    .line 99
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    check-cast v1, Lcom/tudou/ui/activity/AttentionActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment;->onBackListener:Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;

    iput-object v2, v1, Lcom/tudou/ui/activity/AttentionActivity;->onBackListener:Lcom/tudou/ui/activity/AttentionActivity$OnBackListener;

    .line 100
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 105
    sget-boolean v0, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    if-eqz v0, :cond_0

    .line 106
    sput-boolean v1, Lcom/tudou/ui/fragment/AttentionFragment;->mRefreshkey:Z

    .line 107
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mIsSetTotalNum:Z

    .line 108
    new-instance v0, Lcom/tudou/adapter/AttentionAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/AttentionFragment;->podcast:Lcom/youku/vo/Podcast;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/AttentionFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tudou/adapter/AttentionAdapter;-><init>(Lcom/tudou/ui/activity/BaseActivity;Landroid/os/Handler;Lcom/youku/vo/Podcast;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    .line 110
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v0, p0}, Lcom/tudou/adapter/AttentionAdapter;->setFragment(Lcom/tudou/ui/fragment/AttentionFragment;)V

    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 114
    :cond_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 115
    return-void
.end method

.method public setTitieNum()V
    .locals 3

    .prologue
    .line 651
    iget v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mTotalNum:I

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->txt_title:Landroid/widget/TextView;

    const-string v1, "\u6211\u7684\u8ba2\u9605"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/AttentionFragment;->txt_title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6211\u7684\u8ba2\u9605("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tudou/ui/fragment/AttentionFragment;->mTotalNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
