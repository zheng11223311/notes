.class public Lcom/tudou/detail/fragment/VideoCommentFragment;
.super Landroid/app/Fragment;
.source "VideoCommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/fragment/VideoCommentFragment$SoftDissmiss;,
        Lcom/tudou/detail/fragment/VideoCommentFragment$OnSendCommentComplete;
    }
.end annotation


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field public static final BUNDLE_CODE:Ljava/lang/String; = "bundle.code"

.field public static final BUNDLE_IMG_PATH:Ljava/lang/String; = "bundle.img.path"

.field private static final MSG_GET_COMMENT_FAIL:I = 0x2

.field private static final MSG_GET_COMMENT_NODATA:I = 0x3

.field private static final MSG_GET_COMMENT_SUCCESS:I = 0x1

.field private static final MSG_GET_COMMENT_SUCCESSS_BUNDLE_HOTS:Ljava/lang/String; = "msg.get.comment.success.bundle.hots"

.field private static final MSG_GET_COMMENT_SUCCESSS_BUNDLE_ITEMCODE:Ljava/lang/String; = "msg.get.comment.success.bundle.itemcode"

.field private static final MSG_GET_COMMENT_SUCCESSS_BUNDLE_NEWS:Ljava/lang/String; = "msg.get.comment.success.bundle.news"

.field private static final MSG_GET_COMMENT_SUCCESSS_BUNDLE_PG:Ljava/lang/String; = "msg.get.comment.success.bundle.pg"

.field private static final MSG_REPLAY_COMMENT_FAIL:I = 0x7

.field private static final MSG_REPLAY_COMMENT_SUCCESS:I = 0x6

.field private static final MSG_SEND_COMMENT_FAIL:I = 0x5

.field private static final MSG_SEND_COMMENT_SUCCESS:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

.field private isFetchingData:Z

.field private mBackImgPath:Ljava/lang/String;

.field private mCommentHots:Lcom/tudou/detail/vo/CommentsInfo;

.field private mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

.field private mCommentText:Ljava/lang/String;

.field private mCompleteView:Landroid/view/View;

.field private mCurCommentPage:I

.field private mHandler:Landroid/os/Handler;

.field private mHintView:Lcom/youku/widget/HintView;

.field private mImgPath:Ljava/lang/String;

.field private mIsOpenSoftWindow:Z

.field private mItemCode:Ljava/lang/String;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field public mOnSendCommentComplete:Lcom/tudou/detail/fragment/VideoCommentFragment$OnSendCommentComplete;

.field private mTitleLayout:Landroid/view/View;

.field private mUserInput:Landroid/widget/TextView;

.field private mUserPic:Landroid/widget/ImageView;

.field private mVid:Ljava/lang/String;

.field private mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

.field private mVuserMark:Landroid/view/View;

.field private oldcomment:Ljava/lang/String;

.field private replayid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 554
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->isFetchingData:Z

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCurCommentPage:I

    .line 119
    new-instance v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$1;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHandler:Landroid/os/Handler;

    .line 555
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/detail/fragment/VideoCommentFragment;ZII)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/detail/fragment/VideoCommentFragment;->onDigComplete(ZII)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->sendCommentInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tudou/detail/fragment/VideoCommentFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/detail/fragment/VideoCommentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCurCommentPage:I

    return v0
.end method

.method static synthetic access$1302(Lcom/tudou/detail/fragment/VideoCommentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCurCommentPage:I

    return p1
.end method

.method static synthetic access$1304(Lcom/tudou/detail/fragment/VideoCommentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCurCommentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCurCommentPage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/vo/CommentsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/youku/widget/HintView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mOnCloseListener:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->replayid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/detail/fragment/VideoCommentFragment;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p2, "x2"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p3, "x3"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/detail/fragment/VideoCommentFragment;->updateData(Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/detail/fragment/VideoCommentFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->isFetchingData:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tudou/detail/fragment/VideoCommentFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->isFetchingData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/tudou/detail/fragment/VideoCommentFragment;->addToCommentList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->oldcomment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->oldcomment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mBackImgPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mBackImgPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/tudou/detail/adapter/VideoCommentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/fragment/VideoCommentFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    return-object v0
.end method

.method private addToCommentList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imgPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 385
    sget-object v4, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToCommentList content = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", imgPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    new-instance v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    invoke-direct {v0}, Lcom/tudou/detail/vo/CommentsInfo$Comment;-><init>()V

    .line 389
    .local v0, "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    iput-object p1, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    .line 390
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userId:I

    .line 391
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->nickName:Ljava/lang/String;

    .line 392
    const-string v4, "\u521a\u521a\u53d1\u5e03"

    iput-object v4, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->time:Ljava/lang/String;

    .line 393
    const-string v4, "new"

    iput-object v4, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    .line 394
    iput-object p2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->picUrl:Ljava/lang/String;

    .line 395
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    iput-object v4, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->vid:Ljava/lang/String;

    .line 396
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userPic:Ljava/lang/String;

    .line 397
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userId:I

    .line 399
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    if-nez v4, :cond_0

    .line 400
    new-instance v4, Lcom/tudou/detail/vo/CommentsInfo;

    invoke-direct {v4}, Lcom/tudou/detail/vo/CommentsInfo;-><init>()V

    iput-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    .line 402
    :cond_0
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget-object v4, v4, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 403
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget v5, v4, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    .line 405
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentHots:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-direct {p0, v4, v5, v3}, Lcom/tudou/detail/fragment/VideoCommentFragment;->updateData(Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;Z)V

    .line 406
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentHots:Lcom/tudou/detail/vo/CommentsInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentHots:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-virtual {v4}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v1

    .line 407
    .local v1, "hotCommentSize":I
    :goto_0
    if-lez v1, :cond_3

    add-int/lit8 v2, v1, 0x2

    .line 408
    .local v2, "selection":I
    :goto_1
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v4, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setSelection(I)V

    .line 409
    invoke-virtual {p0, v3, v3, v3}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showLoading(ZZZ)V

    .line 411
    .end local v0    # "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    .end local v1    # "hotCommentSize":I
    .end local v2    # "selection":I
    :cond_1
    return-void

    .restart local v0    # "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    :cond_2
    move v1, v3

    .line 406
    goto :goto_0

    .restart local v1    # "hotCommentSize":I
    :cond_3
    move v2, v3

    .line 407
    goto :goto_1
.end method

.method private onDigComplete(ZII)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "commentId"    # I
    .param p3, "code"    # I

    .prologue
    .line 362
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 363
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 364
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 365
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    .line 367
    .local v2, "holder":Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;
    if-eqz v2, :cond_1

    .line 368
    const-string v4, "title"

    iget-object v5, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget-object v5, v5, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget v4, v4, Lcom/tudou/detail/vo/CommentsInfo$Comment;->commentId:I

    if-ne p2, v4, :cond_1

    .line 369
    if-eqz p1, :cond_2

    .line 370
    if-nez p3, :cond_0

    .line 371
    iget-object v4, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digNum:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->comment:Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget v5, v5, Lcom/tudou/detail/vo/CommentsInfo$Comment;->agree:I

    invoke-static {v5}, Lcom/youku/util/Util;->newFormatNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v4, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digNum:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    :cond_0
    iget-object v4, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digIcon:Landroid/widget/ImageView;

    const v5, 0x7f0201a5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 376
    :cond_2
    iget-object v4, v2, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->digIcon:Landroid/widget/ImageView;

    const v5, 0x7f0201a6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 382
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "holder":Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private sendCommentInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "imgUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 447
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 448
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lcom/youku/http/TudouURLContainer;->getAddCommentURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 449
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->oldcomment:Ljava/lang/String;

    .line 450
    sget-object v2, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAddCommentURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    invoke-static {v4, p1, p2}, Lcom/youku/http/TudouURLContainer;->getAddCommentURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/tudou/detail/fragment/VideoCommentFragment$5;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 499
    return-void
.end method

.method private updateData(Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;Z)V
    .locals 5
    .param p1, "news"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p2, "hots"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p3, "add"    # Z

    .prologue
    .line 226
    if-nez p3, :cond_2

    .line 227
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    .line 228
    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentHots:Lcom/tudou/detail/vo/CommentsInfo;

    .line 229
    new-instance v1, Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentHots:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/tudou/detail/adapter/VideoCommentAdapter;-><init>(Landroid/content/Context;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    .line 230
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$2;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$2;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    iput-object v2, v1, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mDigClickLis:Lcom/tudou/detail/adapter/VideoCommentAdapter$OnDigClickListener;

    .line 300
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$3;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$3;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    iput-object v2, v1, Lcom/tudou/detail/adapter/VideoCommentAdapter;->mImageClickLis:Lcom/tudou/detail/adapter/VideoCommentAdapter$OnImageClickListener;

    .line 327
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-virtual {v1}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget v2, v2, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    if-lt v1, v2, :cond_5

    .line 348
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_1

    .line 349
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 350
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCompleteView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->addFooterView(Landroid/view/View;)V

    .line 359
    :cond_1
    :goto_1
    return-void

    .line 329
    :cond_2
    if-eqz p1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    if-nez v1, :cond_3

    .line 331
    new-instance v1, Lcom/tudou/detail/vo/CommentsInfo;

    invoke-direct {v1}, Lcom/tudou/detail/vo/CommentsInfo;-><init>()V

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget v1, v1, Lcom/tudou/detail/vo/CommentsInfo;->pg:I

    iget v2, p1, Lcom/tudou/detail/vo/CommentsInfo;->pg:I

    if-eq v1, v2, :cond_0

    .line 334
    iget v1, p1, Lcom/tudou/detail/vo/CommentsInfo;->pg:I

    iput v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCurCommentPage:I

    .line 335
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget v2, p1, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    .line 336
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget v2, p1, Lcom/tudou/detail/vo/CommentsInfo;->pz:I

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo;->pz:I

    .line 337
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget v2, p1, Lcom/tudou/detail/vo/CommentsInfo;->pg:I

    iput v2, v1, Lcom/tudou/detail/vo/CommentsInfo;->pg:I

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 339
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget-object v1, v1, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tudou/detail/vo/CommentsInfo;->get(I)Lcom/tudou/detail/vo/CommentsInfo$Comment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 341
    :cond_4
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentHots:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-virtual {v1, v2, v3}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->setData(Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V

    .line 342
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-virtual {v1}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 353
    .end local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_1

    .line 354
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 355
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCompleteView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1
.end method


# virtual methods
.method public digComment(Ljava/lang/String;Ljava/lang/String;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "commentId"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;

    .prologue
    const/4 v4, 0x1

    .line 220
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 221
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, "support"

    invoke-static {p1, p2, v2}, Lcom/youku/http/TudouURLContainer;->getCommentOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    invoke-interface {v1, v0, p3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 223
    return-void
.end method

.method public excueReplayComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "commentid"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 503
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    .line 546
    :goto_0
    return-void

    .line 507
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 509
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lcom/youku/http/TudouURLContainer;->getReplayCommentURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 510
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->oldcomment:Ljava/lang/String;

    .line 511
    sget-object v2, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excueReplayComment commentId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$6;

    invoke-direct {v2, p0, p2}, Lcom/tudou/detail/fragment/VideoCommentFragment$6;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public excueSendComment(Ljava/lang/String;)V
    .locals 6
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 416
    sget-object v2, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excueSendComment comment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d00e7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mBackImgPath:Ljava/lang/String;

    .line 423
    iput-object v5, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mBackImgPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "detail.comment.url"

    invoke-static {v2, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DETAIL_COMMENT_URL url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/tudou/detail/fragment/VideoCommentFragment$4;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/tudou/detail/Test;->uploadCommentImage(Ljava/io/File;Ljava/lang/String;Lcom/tudou/detail/Test$OnUploadCompleteListener;)V

    goto :goto_0

    .line 441
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, v5}, Lcom/tudou/detail/fragment/VideoCommentFragment;->sendCommentInternal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVideoComment(Ljava/lang/String;I)V
    .locals 5
    .param p1, "videoid"    # Ljava/lang/String;
    .param p2, "pg"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    :goto_0
    return-void

    .line 586
    :cond_0
    iput-boolean v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->isFetchingData:Z

    .line 587
    if-ne p2, v3, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2, v4, v4}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showLoading(ZZZ)V

    .line 589
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 590
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const/16 v2, 0xa

    const-string v3, ""

    invoke-static {p1, p2, v2, v3}, Lcom/youku/http/TudouURLContainer;->getCommentsByVidV5(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    sget-object v2, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoComment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uri"

    invoke-virtual {v0, v4}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/tudou/detail/fragment/VideoCommentFragment$7;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;I)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0

    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :cond_1
    move v2, v4

    .line 587
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 902
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 903
    sget-object v1, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v2, "onActivityCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 905
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 906
    const-string v1, "bundle.code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->setCurrentVid(Ljava/lang/String;)V

    .line 908
    const-string v1, "bundle.img.path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    .line 909
    sget-object v1, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated mImgPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 911
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mIsOpenSoftWindow:Z

    .line 912
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showAddComment()V

    .line 915
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 565
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 567
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 571
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 573
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 858
    sget-object v2, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-object v0

    .line 862
    :cond_1
    if-ne p3, v6, :cond_0

    .line 863
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 864
    .local v1, "values":[F
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v4

    .line 865
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 866
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 867
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 868
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 864
    goto :goto_1

    .line 865
    :cond_3
    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v3, v2

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 577
    sget-object v1, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const v1, 0x7f0300c1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 579
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 998
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1000
    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    .line 1001
    iput-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mBackImgPath:Ljava/lang/String;

    .line 1002
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 992
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 994
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 1006
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 1008
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 559
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 561
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 975
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 977
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentText:Ljava/lang/String;

    .line 979
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->dismiss()V

    .line 982
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 969
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 970
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 963
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 965
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 986
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 988
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 648
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 649
    sget-object v1, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v2, "onViewCreated"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const v1, 0x7f0c039f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mUserInput:Landroid/widget/TextView;

    .line 652
    const v1, 0x7f0c039d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mUserPic:Landroid/widget/ImageView;

    .line 653
    const v1, 0x7f0c039e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVuserMark:Landroid/view/View;

    .line 654
    const v1, 0x7f0c03a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 655
    const v1, 0x7f0c03a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/HintView;

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    .line 656
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setBackgroundColor(I)V

    .line 657
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030214

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCompleteView:Landroid/view/View;

    .line 659
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isVuser()Z

    move-result v0

    .line 660
    .local v0, "isVUser":Z
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVuserMark:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$8;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$8;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener2;)V

    .line 704
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$9;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$9;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    invoke-virtual {v1, v2}, Lcom/youku/widget/HintView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mUserInput:Landroid/widget/TextView;

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$10;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$10;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$11;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$11;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 761
    const v1, 0x7f0c039b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mTitleLayout:Landroid/view/View;

    .line 762
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mTitleLayout:Landroid/view/View;

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$12;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$12;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mUserPic:Landroid/widget/ImageView;

    new-instance v2, Lcom/tudou/detail/fragment/VideoCommentFragment$13;

    invoke-direct {v2, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$13;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mUserPic:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 798
    :cond_0
    return-void

    .line 660
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setCurrentVid(Ljava/lang/String;)V
    .locals 4
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 918
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentVid item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 921
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVid:Ljava/lang/String;

    .line 926
    :cond_0
    iput-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    .line 927
    iput-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mBackImgPath:Ljava/lang/String;

    .line 928
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    const-string v1, "setCurrentVid addDialog.isShowing()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->dismiss()V

    .line 931
    iput-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    .line 933
    :cond_1
    iput-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentNews:Lcom/tudou/detail/vo/CommentsInfo;

    .line 934
    iput-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentHots:Lcom/tudou/detail/vo/CommentsInfo;

    .line 935
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    .line 936
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCurCommentPage:I

    .line 937
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    if-eqz v0, :cond_2

    .line 938
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-virtual {v0}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->clear()V

    .line 939
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVideoCommentAdapter:Lcom/tudou/detail/adapter/VideoCommentAdapter;

    invoke-virtual {v0}, Lcom/tudou/detail/adapter/VideoCommentAdapter;->notifyDataSetChanged()V

    .line 940
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_2

    .line 941
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 942
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCompleteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z

    .line 945
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    iget v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCurCommentPage:I

    invoke-virtual {p0, v0, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getVideoComment(Ljava/lang/String;I)V

    .line 946
    :cond_3
    return-void
.end method

.method public setLoginState(ZLcom/youku/vo/UserBean;)V
    .locals 6
    .param p1, "login"    # Z
    .param p2, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 949
    if-eqz p1, :cond_1

    .line 951
    :try_start_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p2}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mUserPic:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_0
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVuserMark:Landroid/view/View;

    iget-boolean v3, p2, Lcom/youku/vo/UserBean;->isVuser:Z

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 959
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 954
    goto :goto_1

    .line 956
    :cond_1
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mUserPic:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 957
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mVuserMark:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 952
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 552
    return-void
.end method

.method public showAddComment()V
    .locals 8

    .prologue
    .line 814
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 815
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/tudou/ui/activity/DetailActivity;

    .line 816
    .local v7, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v7, :cond_0

    .line 817
    invoke-virtual {v7}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v6

    .line 818
    .local v6, "info":Lcom/youku/player/module/VideoUrlInfo;
    const-string v0, "videoid"

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v0, "imgPath"

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mImgPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v0, Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/tudou/detail/fragment/VideoCommentFragment$SoftDissmiss;

    invoke-direct {v4, p0}, Lcom/tudou/detail/fragment/VideoCommentFragment$SoftDissmiss;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/DialogAddComment;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Landroid/widget/PopupWindow$OnDismissListener;I)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    .line 822
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    new-instance v1, Lcom/tudou/detail/fragment/VideoCommentFragment$14;

    invoke-direct {v1, p0, v7}, Lcom/tudou/detail/fragment/VideoCommentFragment$14;-><init>(Lcom/tudou/detail/fragment/VideoCommentFragment;Lcom/tudou/ui/activity/DetailActivity;)V

    iput-object v1, v0, Lcom/tudou/ui/fragment/DialogAddComment;->mOnCommentImgClickLis:Lcom/tudou/ui/fragment/DialogAddComment$OnCommentImgClickListener;

    .line 852
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentText:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/tudou/ui/fragment/DialogAddComment;->show(Landroid/view/View;Ljava/lang/String;)V

    .line 854
    .end local v6    # "info":Lcom/youku/player/module/VideoUrlInfo;
    :cond_0
    return-void
.end method

.method public showAddComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "commentid"    # Ljava/lang/String;
    .param p2, "replayname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 802
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 803
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v0, "videoid"

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mItemCode:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    new-instance v0, Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {p0}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/DialogAddComment;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Landroid/widget/PopupWindow$OnDismissListener;I)V

    iput-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    .line 806
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/fragment/DialogAddComment;->setCommentId(Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0, p2}, Lcom/tudou/ui/fragment/DialogAddComment;->setReplay(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0, v4, v4}, Lcom/tudou/ui/fragment/DialogAddComment;->show(Landroid/view/View;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public showLoading(ZZZ)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "empty"    # Z
    .param p3, "error"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 874
    sget-object v0, Lcom/tudou/detail/fragment/VideoCommentFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showLoading show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    if-nez v0, :cond_0

    .line 898
    :goto_0
    return-void

    .line 879
    :cond_0
    if-eqz p1, :cond_1

    .line 880
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 881
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 883
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgressNoListener()V

    goto :goto_0

    .line 885
    :cond_1
    if-eqz p3, :cond_2

    .line 886
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->LOAD_FAILED:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 887
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_0

    .line 889
    :cond_2
    if-eqz p2, :cond_3

    .line 890
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    sget-object v1, Lcom/youku/widget/HintView$Type;->DETAILED_COMMENT:Lcom/youku/widget/HintView$Type;

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->showView(Lcom/youku/widget/HintView$Type;)V

    .line 891
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_0

    .line 893
    :cond_3
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mHintView:Lcom/youku/widget/HintView;

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 894
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoCommentFragment;->mCommentList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_0
.end method
