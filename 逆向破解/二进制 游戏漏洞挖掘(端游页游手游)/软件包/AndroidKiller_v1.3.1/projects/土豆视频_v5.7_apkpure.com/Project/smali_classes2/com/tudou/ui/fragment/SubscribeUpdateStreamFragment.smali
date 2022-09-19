.class public Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SubscribeUpdateStreamFragment.java"


# static fields
.field public static final DELETE_FAVOURITE_FAIL:I = 0x4943e

.field public static final DELETE_FAVOURITE_SUCCESS:I = 0x4943d

.field public static final FAVOURITE_FAIL:I = 0x4943c

.field public static final FAVOURITE_SUCCESS:I = 0x4943b

.field private static final GET_DATA_FAIL:I = 0x4e72

.field private static final GET_DATA_LOCAL_EMPTY:I = 0x4e25

.field private static final GET_DATA_LOCAL_FAIL:I = 0x4e74

.field private static final GET_DATA_LOCAL_SUCCESS:I = 0x4e73

.field private static final GET_DATA_SUCCESS:I = 0x4e71

.field private static final PAGE_SIZE:I = 0xa


# instance fields
.field public adapter:Lcom/tudou/adapter/SubscribeAdapter;

.field private isAlbum:Z

.field private is_tips:Z

.field public listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private load_complete:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mHintView:Lcom/youku/widget/HintView;

.field private mIsLocalSub:Z

.field private mIsRec:Z

.field private mMyHandler:Landroid/os/Handler;

.field private mShowSubPicCount:I

.field public mSubscribeBean:Lcom/youku/vo/SubscribeBean;

.field private mView:Landroid/view/View;

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

.field private showLocalData:Z

.field private tips:Ljava/lang/String;

.field private uri1:Ljava/lang/String;

.field private uri2:Ljava/lang/String;

.field private uri3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 70
    const-string v0, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5"

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->tips:Ljava/lang/String;

    .line 72
    iput v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mCurrentPage:I

    .line 76
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->showLocalData:Z

    .line 78
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->is_tips:Z

    .line 84
    iput v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    .line 86
    iput-object v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri1:Ljava/lang/String;

    .line 88
    iput-object v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri2:Ljava/lang/String;

    .line 90
    iput-object v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri3:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mIsLocalSub:Z

    .line 94
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mIsRec:Z

    .line 179
    new-instance v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$2;-><init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    .line 276
    new-instance v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$3;-><init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mMyHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mIsRec:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mIsRec:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mIsLocalSub:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mIsLocalSub:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->tips:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->load_complete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    return v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->initData()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->is_tips:Z

    return v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->is_tips:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$608(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .prologue
    .line 38
    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mCurrentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    .param p1, "x1"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getSubscribeInfo(J)V

    return-void
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;Lcom/youku/vo/SubscribeBean;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    .param p1, "x1"    # Lcom/youku/vo/SubscribeBean;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getSubListPic(Lcom/youku/vo/SubscribeBean;Z)V

    return-void
.end method

.method private buildView()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0632

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 139
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 145
    :goto_0
    new-instance v7, Landroid/view/View;

    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 146
    .local v7, "v":Landroid/view/View;
    const v0, -0xf0f10

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 147
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v6, v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 150
    .local v6, "lp":Landroid/widget/AbsListView$LayoutParams;
    iput v2, v6, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 151
    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030214

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->load_complete:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 159
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/HintView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 161
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v1, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$1;-><init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-boolean v4, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mMyHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tudou/adapter/SubscribeAdapter;-><init>(Landroid/support/v4/app/Fragment;Lcom/tudou/ui/activity/BaseActivity;Lcom/youku/vo/SubscribeBean;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    .line 176
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    return-void

    .line 142
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto :goto_0
.end method

.method private getSubListPic(Lcom/youku/vo/SubscribeBean;Z)V
    .locals 7
    .param p1, "bean"    # Lcom/youku/vo/SubscribeBean;
    .param p2, "isRec"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 644
    const-string v0, "subListPic"

    const-string v1, " 1 getSubListPic 1 "

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    if-eq v4, v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    if-eqz v0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    if-eqz p2, :cond_3

    .line 650
    iput-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri1:Ljava/lang/String;

    .line 651
    iput-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri2:Ljava/lang/String;

    .line 652
    iput-object v6, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri3:Ljava/lang/String;

    .line 693
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    if-nez v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri1:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri2:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/SubscribeFragment;->setSubListPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_3
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 655
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v2, v0, :cond_4

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    if-nez v0, :cond_4

    .line 658
    iput v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    .line 659
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean$UserInfo;->smallPic:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri1:Ljava/lang/String;

    .line 661
    :cond_4
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v3, v0, :cond_5

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    if-ne v2, v0, :cond_5

    .line 662
    iput v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    .line 663
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean$UserInfo;->smallPic:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri2:Ljava/lang/String;

    .line 665
    :cond_5
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v4, v0, :cond_2

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    if-ne v3, v0, :cond_2

    .line 666
    iput v4, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    .line 667
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubscribeBean$UserInfo;

    iget-object v0, v0, Lcom/youku/vo/SubscribeBean$UserInfo;->smallPic:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri3:Ljava/lang/String;

    goto/16 :goto_1

    .line 670
    :cond_6
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v2, v0, :cond_7

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    if-nez v0, :cond_7

    .line 676
    iput v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    .line 677
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->smallPic:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri1:Ljava/lang/String;

    .line 679
    :cond_7
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v3, v0, :cond_8

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    if-ne v2, v0, :cond_8

    .line 682
    iput v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    .line 683
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->smallPic:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri2:Ljava/lang/String;

    .line 685
    :cond_8
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v4, v0, :cond_2

    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    if-ne v3, v0, :cond_2

    .line 688
    iput v4, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mShowSubPicCount:I

    .line 689
    iget-object v0, p1, Lcom/youku/vo/SubscribeBean;->subLocalscribeBean:Lcom/youku/vo/SubLocalscribeBean;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;

    iget-object v0, v0, Lcom/youku/vo/SubLocalscribeBean$SubLocalResult;->smallPic:Ljava/lang/String;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->uri3:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private getSubLocalUpdateList([Ljava/lang/String;Z)V
    .locals 9
    .param p1, "str"    # [Ljava/lang/String;
    .param p2, "album"    # Z

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 598
    aget-object v3, p1, v6

    aget-object v4, p1, v7

    iget v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mCurrentPage:I

    invoke-static {v3, v4, v5, v8}, Lcom/youku/http/TudouURLContainer;->getSubLocalUpdateList(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "url":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 601
    aget-object v3, p1, v6

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mMyHandler:Landroid/os/Handler;

    const/16 v4, 0x4e25

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 641
    :goto_0
    return-void

    .line 605
    :cond_0
    aget-object v3, p1, v6

    const-string v4, ""

    iget v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mCurrentPage:I

    invoke-static {v3, v4, v5, v8}, Lcom/youku/http/TudouURLContainer;->getSubLocalUpdateList(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 608
    :cond_1
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v7}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 610
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v7}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 611
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$5;-><init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private getSubscribeInfo(J)V
    .locals 13
    .param p1, "lastTime"    # J

    .prologue
    .line 487
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->isHasLocalSub()Z

    move-result v9

    if-nez v9, :cond_4

    .line 489
    :cond_0
    iget v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mCurrentPage:I

    const/16 v10, 0xa

    iget-boolean v11, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    invoke-static {v9, v10, p1, p2, v11}, Lcom/youku/http/TudouURLContainer;->getSubscribeUrl_4_3(IIJZ)Ljava/lang/String;

    move-result-object v8

    .line 492
    .local v8, "url":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->isHasLocalSub()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 493
    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "formatUri":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->showLocalData:Z

    if-eqz v9, :cond_1

    .line 496
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->showLocalData:Z

    .line 497
    invoke-static {v3}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 499
    :try_start_0
    invoke-static {v3}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "cacheDataStr":Ljava/lang/String;
    new-instance v9, Lcom/youku/vo/SubscribeBean;

    invoke-direct {v9}, Lcom/youku/vo/SubscribeBean;-><init>()V

    invoke-static {v1, v9}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SubscribeBean;

    .line 503
    .local v0, "bean":Lcom/youku/vo/SubscribeBean;
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    iget-boolean v10, v0, Lcom/youku/vo/SubscribeBean;->is_rec:Z

    invoke-virtual {v9, v10}, Lcom/tudou/adapter/SubscribeAdapter;->setIsRec(Z)V

    .line 504
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mMyHandler:Landroid/os/Handler;

    const/16 v10, 0x4e71

    invoke-virtual {v9, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 506
    .local v7, "message":Landroid/os/Message;
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v0    # "bean":Lcom/youku/vo/SubscribeBean;
    .end local v1    # "cacheDataStr":Ljava/lang/String;
    .end local v7    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 515
    const v9, 0x7f0d02c3

    invoke-static {v9}, Lcom/youku/util/Util;->showTips(I)V

    .line 595
    .end local v3    # "formatUri":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 507
    .restart local v3    # "formatUri":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 509
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 510
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v10, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v9, v10}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_0

    .line 519
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "formatUri":Ljava/lang/String;
    :cond_3
    const-class v9, Lcom/youku/network/IHttpRequest;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/network/IHttpRequest;

    .line 521
    .local v5, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v4, Lcom/youku/network/HttpIntent;

    const/4 v9, 0x1

    invoke-direct {v4, v8, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 522
    .local v4, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v9, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;

    invoke-direct {v9, p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment$4;-><init>(Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;)V

    invoke-interface {v5, v4, v9}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_1

    .line 570
    .end local v4    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v5    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v8    # "url":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v9

    if-nez v9, :cond_5

    .line 571
    const/4 v9, 0x1

    sput-boolean v9, Lcom/tudou/ui/fragment/SubscribeFragment;->isAlbumEnable:Z

    .line 572
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 573
    const v9, 0x7f0d02c3

    invoke-static {v9}, Lcom/youku/util/Util;->showTips(I)V

    .line 574
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 575
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 576
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v10, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v9, v10}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    goto :goto_1

    .line 580
    :cond_5
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->isHasLocalSub()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 582
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    .line 583
    .local v6, "localSub":[Ljava/lang/String;
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getAttentionList()Lcom/youku/vo/Podcast;

    move-result-object v9

    invoke-static {v9}, Lcom/youku/data/SQLiteManagerTudou;->getLocalSubString(Lcom/youku/vo/Podcast;)[Ljava/lang/String;

    move-result-object v6

    .line 586
    iget-boolean v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    invoke-direct {p0, v6, v9}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getSubLocalUpdateList([Ljava/lang/String;Z)V

    .line 588
    .end local v6    # "localSub":[Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->isRefreshing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 589
    iget-object v9, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_1
.end method

.method private initData()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 270
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 271
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->is_tips:Z

    .line 272
    iput v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mCurrentPage:I

    .line 273
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getSubscribeInfo(J)V

    .line 274
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 107
    const v1, 0x7f030147

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mView:Landroid/view/View;

    .line 109
    new-instance v1, Lcom/youku/vo/SubscribeBean;

    invoke-direct {v1}, Lcom/youku/vo/SubscribeBean;-><init>()V

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    .line 110
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 114
    const-string v1, "isAlbum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    .line 115
    iget-boolean v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "\u6682\u65e0\u5267\u96c6\u7c7b\u8ba2\u9605"

    iput-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->tips:Ljava/lang/String;

    .line 121
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->buildView()V

    .line 123
    sget-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/tudou/ui/fragment/SubscribeFragment;->isStop:Z

    if-eqz v1, :cond_2

    .line 124
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 126
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 132
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mView:Landroid/view/View;

    return-object v1

    .line 118
    :cond_3
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    goto :goto_0

    .line 128
    :cond_4
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->initData()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 250
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 251
    sget-boolean v0, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v0, Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/HomePageActivity;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mSubscribeBean:Lcom/youku/vo/SubscribeBean;

    iget-boolean v4, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    iget-object v5, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->mMyHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tudou/adapter/SubscribeAdapter;-><init>(Landroid/support/v4/app/Fragment;Lcom/tudou/ui/activity/BaseActivity;Lcom/youku/vo/SubscribeBean;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    .line 257
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->adapter:Lcom/tudou/adapter/SubscribeAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->initData()V

    goto :goto_0
.end method

.method public setSubListPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri1"    # Ljava/lang/String;
    .param p2, "uri2"    # Ljava/lang/String;
    .param p3, "uri3"    # Ljava/lang/String;

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->isAlbum:Z

    if-eqz v0, :cond_0

    .line 702
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tudou/ui/fragment/SubscribeFragment;->setSubListPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
