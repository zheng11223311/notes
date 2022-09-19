.class public Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "ClassifySelectedResultsForVIPFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final GET_MYTICKETS_FAILED:I = 0x30d42

.field private static final GET_MYTICKETS_SUCCESS:I = 0x30d41

.field private static final MSG_GET_MYVIDEO_FAILED:I = 0x7532

.field private static final MSG_GET_MYVIDEO_SUCCESS:I = 0x7531


# instance fields
.field private image_state:Ljava/lang/String;

.field private isShowTitle:Z

.field private isVip:Z

.field private load_complete:Landroid/view/View;

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mBack:Landroid/view/View;

.field private mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

.field private mClassify:Lcom/tudou/service/classify/Classify;

.field private mContext:Landroid/app/Activity;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/view/View;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mImgMyVideoLeft:Landroid/widget/ImageView;

.field private mImgMyVideoMiddle:Landroid/widget/ImageView;

.field private mImgMyVideoRight:Landroid/widget/ImageView;

.field private mLayoutMyTickets:Landroid/view/View;

.field private mLayoutMyVideo:Landroid/view/View;

.field private mLayoutMyVideoLeft:Landroid/view/View;

.field private mLayoutMyVideoMiddle:Landroid/view/View;

.field private mLayoutMyVideoRight:Landroid/view/View;

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mMyVideoResults:Lcom/youku/vo/MyVideoResult;

.field private mSkipInfo:Lcom/youku/vo/SkipInfo;

.field private mSkipType:Ljava/lang/String;

.field private mTagType:Ljava/lang/String;

.field private mTitle:Landroid/view/View;

.field private mTitleName:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTxtMyTickets:Landroid/widget/TextView;

.field private mTxtMyTicketsGo:Landroid/widget/TextView;

.field private mTxtMyVideoDateLeft:Landroid/widget/TextView;

.field private mTxtMyVideoDateMiddle:Landroid/widget/TextView;

.field private mTxtMyVideoDateRight:Landroid/widget/TextView;

.field private mTxtMyVideoTitleLeft:Landroid/widget/TextView;

.field private mTxtMyVideoTitleMiddle:Landroid/widget/TextView;

.field private mTxtMyVideoTitleRight:Landroid/widget/TextView;

.field private pageNum:I

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

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 64
    const-string v0, "filter_tag"

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipType:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->isShowTitle:Z

    .line 80
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->isVip:Z

    .line 87
    new-instance v0, Lcom/youku/vo/MyVideoResult;

    invoke-direct {v0}, Lcom/youku/vo/MyVideoResult;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    .line 111
    new-instance v0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$1;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    .line 354
    new-instance v0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$4;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/ChannelFilterVideos;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->isVip:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->isVip:Z

    return p1
.end method

.method static synthetic access$102(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Lcom/youku/vo/ChannelFilterVideos;)Lcom/youku/vo/ChannelFilterVideos;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # Lcom/youku/vo/ChannelFilterVideos;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mChannelFilterVideos:Lcom/youku/vo/ChannelFilterVideos;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/SkipInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Lcom/youku/vo/SkipInfo;)Lcom/youku/vo/SkipInfo;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # Lcom/youku/vo/SkipInfo;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyTickets:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->setMyTicketsText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/MyVideoResult;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Lcom/youku/vo/MyVideoResult;)Lcom/youku/vo/MyVideoResult;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # Lcom/youku/vo/MyVideoResult;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->showMyVideos()V

    return-void
.end method

.method static synthetic access$1700(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->getMyTicketsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->load_complete:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->getMyVideoList(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/tudou/service/classify/Classify;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->pageNum:I

    return v0
.end method

.method static synthetic access$302(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->pageNum:I

    return p1
.end method

.method static synthetic access$308(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->pageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->pageNum:I

    return v0
.end method

.method static synthetic access$310(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->pageNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->pageNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mAdapter:Landroid/widget/BaseAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->image_state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->image_state:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTagType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTitleName:Ljava/lang/String;

    return-object v0
.end method

.method private eventView()V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mContext:Landroid/app/Activity;

    .line 300
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getInstance()Lcom/tudou/service/classify/Classify;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->setHandler(Landroid/os/Handler;)V

    .line 303
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0, p0}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->refreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 307
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->isShowTitle:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTitle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v1, v1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mBack:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$3;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$3;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 330
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 331
    return-void
.end method

.method private getMyTicketsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "type_ticket"    # Ljava/lang/String;
    .param p3, "psize"    # Ljava/lang/String;
    .param p4, "pnumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 418
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 419
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, "50"

    const-string v3, "1"

    invoke-static {p1, v5, v2, v3}, Lcom/youku/http/TudouURLContainer;->getMyTicketsListUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 422
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$5;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 441
    return-void
.end method

.method private getMyVideoList(II)V
    .locals 5
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I

    .prologue
    .line 452
    :try_start_0
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/http/TudouURLContainer;->getMyVideoUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 453
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 455
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$6;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$6;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v1    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v2    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initMyVideo()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 491
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoLeft:Landroid/view/View;

    .line 492
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoMiddle:Landroid/view/View;

    .line 493
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoRight:Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c02bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mImgMyVideoLeft:Landroid/widget/ImageView;

    .line 496
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mImgMyVideoMiddle:Landroid/widget/ImageView;

    .line 497
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mImgMyVideoRight:Landroid/widget/ImageView;

    .line 499
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c02c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoDateLeft:Landroid/widget/TextView;

    .line 500
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoDateMiddle:Landroid/widget/TextView;

    .line 501
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoDateRight:Landroid/widget/TextView;

    .line 503
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoTitleLeft:Landroid/widget/TextView;

    .line 504
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoTitleMiddle:Landroid/widget/TextView;

    .line 505
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0c07f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoTitleRight:Landroid/widget/TextView;

    .line 507
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoMiddle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget v0, v0, Lcom/youku/vo/MyVideoResult;->total:I

    if-lez v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumPicUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumPicUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mImgMyVideoLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoDateLeft:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget v0, v0, Lcom/youku/vo/MyVideoResult$Result;->second:I

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->timeConvert(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u540e\u5230\u671f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoTitleLeft:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoLeft:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$7;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$7;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget v0, v0, Lcom/youku/vo/MyVideoResult;->total:I

    if-ge v4, v0, :cond_5

    .line 533
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoMiddle:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumPicUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumPicUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mImgMyVideoMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 539
    :cond_4
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoDateMiddle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget v0, v0, Lcom/youku/vo/MyVideoResult$Result;->second:I

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->timeConvert(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u540e\u5230\u671f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoTitleMiddle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoMiddle:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$8;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$8;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget v0, v0, Lcom/youku/vo/MyVideoResult;->total:I

    if-ge v5, v0, :cond_7

    .line 550
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumPicUrl:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumPicUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mImgMyVideoRight:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 556
    :cond_6
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoDateRight:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget v0, v0, Lcom/youku/vo/MyVideoResult$Result;->second:I

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->timeConvert(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u540e\u5230\u671f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyVideoTitleRight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult$Result;->albumName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideoRight:Landroid/view/View;

    new-instance v1, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$9;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$9;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :cond_7
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->view:Landroid/view/View;

    const v3, 0x7f0c0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 263
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->view:Landroid/view/View;

    const v3, 0x7f0c00dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/HintView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 265
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->view:Landroid/view/View;

    const v3, 0x7f0c04b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTitle:Landroid/view/View;

    .line 266
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->view:Landroid/view/View;

    const v3, 0x7f0c04b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mBack:Landroid/view/View;

    .line 267
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->view:Landroid/view/View;

    const v3, 0x7f0c04b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTitleView:Landroid/widget/TextView;

    .line 269
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->view:Landroid/view/View;

    const v3, 0x7f0c04d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 270
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 271
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03016a

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    .line 272
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030214

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->load_complete:Landroid/view/View;

    .line 275
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c06fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyTickets:Landroid/view/View;

    .line 276
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c0700

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideo:Landroid/view/View;

    .line 286
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c06fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyTickets:Landroid/widget/TextView;

    .line 287
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0c06ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyTicketsGo:Landroid/widget/TextView;

    .line 288
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyTicketsGo:Landroid/widget/TextView;

    new-instance v3, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$2;-><init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method private setMyTicketsText(Ljava/lang/String;)V
    .locals 6
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c2\u5f71\u5238"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5f20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 446
    .local v1, "sp":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0xff

    const/16 v4, 0x61

    const/16 v5, 0x2a

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x22

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 447
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTxtMyTickets:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    return-void
.end method

.method private showMyVideos()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget v0, v0, Lcom/youku/vo/MyVideoResult;->total:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mMyVideoResults:Lcom/youku/vo/MyVideoResult;

    iget-object v0, v0, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mLayoutMyVideo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->initMyVideo()V

    goto :goto_0
.end method

.method private timeConvert(I)Ljava/lang/String;
    .locals 3
    .param p1, "second"    # I

    .prologue
    .line 569
    const-string v0, ""

    .line 570
    .local v0, "result":Ljava/lang/String;
    div-int/lit16 v1, p1, 0xe10

    if-lez v1, :cond_0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p1, 0xe10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5c0f\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    .line 572
    :cond_0
    div-int/lit8 v1, p1, 0x3c

    if-lez v1, :cond_1

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p1, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5206\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 337
    :sswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->getHintType()Lcom/youku/widget/HintView$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/widget/HintView$Type;->EMPTY_PAGE:Lcom/youku/widget/HintView$Type;

    if-eq v0, v1, :cond_0

    .line 339
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 345
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    goto :goto_0

    .line 348
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x7f0c00dd -> :sswitch_0
        0x7f0c04b3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 231
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "show_title"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->isShowTitle:Z

    .line 232
    const-string v2, "skip_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SkipInfo;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 239
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->image_state:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->image_state:Ljava/lang/String;

    .line 241
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipType:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->tag_type:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTagType:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mTitleName:Ljava/lang/String;

    .line 244
    const-string v2, "5"

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->first_tag_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1686"

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->isVip:Z

    .line 248
    :cond_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 235
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "show_title"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->isShowTitle:Z

    .line 236
    const-string v2, "skip_info"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SkipInfo;

    iput-object v2, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    const v0, 0x7f03010d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->view:Landroid/view/View;

    .line 253
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->initView()V

    .line 254
    invoke-direct {p0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->eventView()V

    .line 255
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 412
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 413
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mClassify:Lcom/tudou/service/classify/Classify;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/tudou/service/classify/Classify;->deleteHandler(Landroid/os/Handler;)V

    .line 414
    return-void
.end method
