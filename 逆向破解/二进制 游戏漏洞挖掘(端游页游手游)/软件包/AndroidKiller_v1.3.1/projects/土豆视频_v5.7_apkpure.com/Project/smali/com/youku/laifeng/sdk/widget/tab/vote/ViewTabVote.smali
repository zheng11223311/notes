.class public Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
.super Landroid/widget/LinearLayout;
.source "ViewTabVote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$ViewWrapper;,
        Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;,
        Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteOptionViewHolder;,
        Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;,
        Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;
    }
.end annotation


# static fields
.field private static final MSG_GET_VOTE_LIST_FAILURE:I = 0x11

.field private static final MSG_GET_VOTE_LIST_SUCCESS:I = 0x10

.field private static final MSG_GET_VOTE_OPTIONS_FAILURE:I = 0x21

.field private static final MSG_GET_VOTE_OPTIONS_SIGNAL_FAILURE:I = 0x121

.field private static final MSG_GET_VOTE_OPTIONS_SIGNAL_SUCCESS:I = 0x120

.field private static final MSG_GET_VOTE_OPTIONS_SUCCESS:I = 0x20

.field private static final MSG_IM_VOTE_STATUS_ADD:I = 0x2

.field private static final MSG_IM_VOTE_STATUS_DELETE:I = 0x9

.field private static final MSG_IM_VOTE_STATUS_OFFLINE:I = 0x4

.field private static final MSG_IM_VOTE_STATUS_OVER:I = 0x3

.field private static final MSG_IM_VOTE_STATUS_TYPE_ADD:I = 0x50

.field private static final MSG_IM_VOTE_STATUS_TYPE_DELETE:I = 0x53

.field private static final MSG_IM_VOTE_STATUS_TYPE_OFFLINE:I = 0x52

.field private static final MSG_IM_VOTE_STATUS_TYPE_OVER:I = 0x51

.field private static final MSG_IM_VOTE_STATUS_TYPE_TOP:I = 0x54

.field private static final MSG_IM_VOTE_STATUS_TYPE_VOTE:I = 0x55

.field private static final OPTION_VOTE_STATUS_VOTE_NORMAL:I = 0x0

.field private static final OPTION_VOTE_STATUS_VOTE_OVER:I = 0x2

.field private static final OPTION_VOTE_STATUS_VOTE_VOTED:I = 0x1

.field private static final OPTION_VOTE_STATUS_VOTE_VOTED_OTHER:I = 0x3

.field private static final VOTE_STATUS_OFF:I = 0x4

.field private static final VOTE_STATUS_OVER:I = 0x3

.field private static final VOTE_STATUS_PROGRESSING:I = 0x2

.field private static final VOTE_TYPE_FREE:I = 0x1

.field private static final VOTE_TYPE_PAID:I = 0x2


# instance fields
.field private isLoadingData:Z

.field private isVoteIMMessageOpen:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private mExpandedGroupId:I

.field private mHandler:Landroid/os/Handler;

.field private mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

.field private mRoomInfo:Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mVoteAdapter:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

.field private userId:Ljava/lang/String;

.field private voteLoader:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 61
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 63
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mContext:Landroid/content/Context;

    .line 64
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->voteLoader:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    .line 67
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->isLoadingData:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandedGroupId:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->isVoteIMMessageOpen:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->userId:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    .line 122
    new-instance v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mContext:Landroid/content/Context;

    .line 112
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->getInstance()Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->voteLoader:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 61
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 63
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mContext:Landroid/content/Context;

    .line 64
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->voteLoader:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    .line 67
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mRestAPIService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->isLoadingData:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandedGroupId:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->isVoteIMMessageOpen:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->userId:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    .line 122
    new-instance v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->getInstance()Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->voteLoader:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mViewFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mVoteAdapter:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->changeExpandState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandedGroupId:I

    return v0
.end method

.method static synthetic access$602(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandedGroupId:I

    return p1
.end method

.method static synthetic access$702(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->isLoadingData:Z

    return p1
.end method

.method static synthetic access$800(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->showDownloadDialog()V

    return-void
.end method

.method private changeExpandState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 388
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mVoteAdapter:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getVoteListData()Ljava/util/List;

    move-result-object v1

    .line 390
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 391
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 392
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->expandOneVote(Ljava/lang/String;)V

    .line 409
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 393
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 395
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->isExtend()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 397
    iput v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandedGroupId:I

    .line 398
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(I)V

    .line 394
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_2

    .line 406
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method private showDownloadDialog()V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->show(I)V

    .line 900
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/download/StorageUtils;->isLaifengInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    const-string/jumbo v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setInstallButtonText(Ljava/lang/String;)V

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    const-string/jumbo v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;->setInstallButtonText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public expandOneVote(Ljava/lang/String;)V
    .locals 5
    .param p1, "voteId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 413
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mVoteAdapter:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v4, v0, p1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getVoteOptionsData(ILandroid/view/View;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public expandVoteView()V
    .locals 2

    .prologue
    .line 909
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 910
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 911
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    return-void
.end method

.method public getVoteListData(Ljava/lang/String;)V
    .locals 2
    .param p1, "roomId"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->voteLoader:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    new-instance v1, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$2;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$2;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    invoke-virtual {v0, p1, v1}, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->GetVoteList(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteListListener;)V

    .line 237
    return-void
.end method

.method public getVoteOptionsData(I)V
    .locals 3
    .param p1, "voteId"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->voteLoader:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$4;

    invoke-direct {v2, p0, p1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$4;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;I)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->GetVoteOption(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;)V

    .line 281
    return-void
.end method

.method public getVoteOptionsData(ILandroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "voteId"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    .line 241
    .local v0, "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->isLoadingData:Z

    .line 244
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->voteLoader:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    new-instance v2, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$3;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;ILcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)V

    invoke-virtual {v1, p3, v2}, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->GetVoteOption(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;)V

    .line 262
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string/jumbo v2, "vote_view_container"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 329
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string/jumbo v2, "vote_list_view"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 330
    new-instance v0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mVoteAdapter:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    .line 331
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mVoteAdapter:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 332
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$5;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$5;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$6;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$6;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 354
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$7;-><init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 372
    return-void
.end method

.method public setDownloadDlg(Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;)V
    .locals 0
    .param p1, "downloadDlg"    # Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mDownloadDialog:Lcom/youku/laifeng/sdk/widget/CommonDialogDownload;

    .line 385
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->userId:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setVoteMessage(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;

    .prologue
    .line 319
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 320
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x55

    iput v1, v0, Landroid/os/Message;->what:I

    .line 321
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    return-void
.end method

.method public setVoteStatusMessage(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;

    .prologue
    const/16 v2, 0x52

    .line 284
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 285
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->getSt()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 309
    :goto_0
    :pswitch_0
    return-void

    .line 287
    :pswitch_1
    const/16 v1, 0x50

    iput v1, v0, Landroid/os/Message;->what:I

    .line 288
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->getVoteListItem()Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 292
    :pswitch_2
    const/16 v1, 0x51

    iput v1, v0, Landroid/os/Message;->what:I

    .line 293
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->getVi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 297
    :pswitch_3
    iput v2, v0, Landroid/os/Message;->what:I

    .line 298
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->getVi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 302
    :pswitch_4
    iput v2, v0, Landroid/os/Message;->what:I

    .line 303
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteStatusMessage;->getVi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setVoteTopMessage(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;

    .prologue
    .line 312
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 313
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x54

    iput v1, v0, Landroid/os/Message;->what:I

    .line 314
    invoke-virtual {p1}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;->getVi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method
