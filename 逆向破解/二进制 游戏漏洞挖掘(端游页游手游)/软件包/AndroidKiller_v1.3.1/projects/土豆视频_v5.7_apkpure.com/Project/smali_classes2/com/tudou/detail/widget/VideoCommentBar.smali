.class public Lcom/tudou/detail/widget/VideoCommentBar;
.super Landroid/widget/FrameLayout;
.source "VideoCommentBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/VideoCommentBar$SoftDissmiss;
    }
.end annotation


# static fields
.field private static final MAX_COMMENT_LENGTH:I = 0x8c

.field private static final MSG_REPLAY_COMMENT_FAIL:I = 0x5

.field private static final MSG_REPLAY_COMMENT_SUCCESS:I = 0x4

.field private static final MSG_SEND_COMMENT_FAIL:I = 0x3

.field private static final MSG_SEND_COMMENT_SUCCESS:I = 0x2

.field private static final MSG_SHOW_NEXTCOMMENT:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

.field private mCommentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/CommentsInfo$Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentText:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHotsComments:Lcom/tudou/detail/vo/CommentsInfo;

.field private mItemCode:Ljava/lang/String;

.field private mNewsComments:Lcom/tudou/detail/vo/CommentsInfo;

.field private mSelection:I

.field private mSwitcherLayout:Landroid/view/View;

.field private mTitleLayout:Landroid/view/View;

.field private mTotalText:Landroid/widget/TextView;

.field private mUserContentSwitcher:Lcom/tudou/detail/widget/CommentUserContentSwitcher;

.field private mUserIcon:Landroid/widget/ImageView;

.field private mUserInput:Landroid/widget/TextView;

.field private mUserPicSwitcher:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

.field private mUserVMark:Landroid/view/View;

.field private oldcomment:Ljava/lang/String;

.field private replayid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    const-class v0, Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoCommentBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentInfos:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/tudou/detail/widget/VideoCommentBar$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/VideoCommentBar$1;-><init>(Lcom/tudou/detail/widget/VideoCommentBar;)V

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHandler:Landroid/os/Handler;

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoCommentBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCommentBar;

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoCommentBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCommentBar;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/tudou/detail/widget/VideoCommentBar;->showNext(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCommentBar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/tudou/detail/widget/VideoCommentBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCommentBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tudou/detail/widget/VideoCommentBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCommentBar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->oldcomment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCommentBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->oldcomment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoCommentBar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->replayid:Ljava/lang/String;

    return-object p1
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    .line 288
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mTotalText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iput-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    .line 291
    iput-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->oldcomment:Ljava/lang/String;

    .line 292
    iput-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentText:Ljava/lang/String;

    .line 293
    return-void
.end method

.method private showNext(I)V
    .locals 1
    .param p1, "selection"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 353
    iget v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    .line 354
    iput p1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    .line 355
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserPicSwitcher:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->showNext()V

    .line 356
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserContentSwitcher:Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->showNext()V

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method public addToCommentList(Ljava/lang/String;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 157
    :cond_0
    new-instance v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    invoke-direct {v0}, Lcom/tudou/detail/vo/CommentsInfo$Comment;-><init>()V

    .line 158
    .local v0, "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    iput-object p1, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->nickName:Ljava/lang/String;

    .line 160
    const-string v2, "\u521a\u521a\u53d1\u5e03"

    iput-object v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->time:Ljava/lang/String;

    .line 161
    const-string v2, "new"

    iput-object v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->vid:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userPic:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userId:I

    .line 165
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mNewsComments:Lcom/tudou/detail/vo/CommentsInfo;

    if-nez v2, :cond_1

    .line 166
    new-instance v2, Lcom/tudou/detail/vo/CommentsInfo;

    invoke-direct {v2}, Lcom/tudou/detail/vo/CommentsInfo;-><init>()V

    iput-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mNewsComments:Lcom/tudou/detail/vo/CommentsInfo;

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mNewsComments:Lcom/tudou/detail/vo/CommentsInfo;

    iget-object v2, v2, Lcom/tudou/detail/vo/CommentsInfo;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mNewsComments:Lcom/tudou/detail/vo/CommentsInfo;

    iget v3, v2, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    .line 170
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mNewsComments:Lcom/tudou/detail/vo/CommentsInfo;

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHotsComments:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-virtual {p0, v2, v3, v4}, Lcom/tudou/detail/widget/VideoCommentBar;->setCommentsInfo(Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V

    .line 171
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHotsComments:Lcom/tudou/detail/vo/CommentsInfo;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHotsComments:Lcom/tudou/detail/vo/CommentsInfo;

    invoke-virtual {v1}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/VideoCommentBar;->setSelection(I)V

    .line 173
    .end local v0    # "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    :cond_3
    return-void
.end method

.method public excueReplayComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "commentid"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 224
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoCommentBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    .line 267
    :goto_0
    return-void

    .line 228
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 230
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    invoke-static {v2, p1, p2}, Lcom/youku/http/TudouURLContainer;->getReplayCommentURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 231
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    iput-object p2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->oldcomment:Ljava/lang/String;

    .line 232
    sget-object v2, Lcom/tudou/detail/widget/VideoCommentBar;->TAG:Ljava/lang/String;

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

    .line 233
    new-instance v2, Lcom/tudou/detail/widget/VideoCommentBar$3;

    invoke-direct {v2, p0, p2}, Lcom/tudou/detail/widget/VideoCommentBar$3;-><init>(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public excueSendComment(Ljava/lang/String;)V
    .locals 6
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8c

    if-le v2, v3, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d00e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    .line 221
    :goto_0
    return-void

    .line 180
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 183
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->oldcomment:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    invoke-static {v2, p1, v5}, Lcom/youku/http/TudouURLContainer;->getAddCommentURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 185
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    sget-object v2, Lcom/tudou/detail/widget/VideoCommentBar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAddCommentURL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    invoke-static {v4, p1, v5}, Lcom/youku/http/TudouURLContainer;->getAddCommentURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v2, Lcom/tudou/detail/widget/VideoCommentBar$2;

    invoke-direct {v2, p0, p1}, Lcom/tudou/detail/widget/VideoCommentBar$2;-><init>(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 278
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 283
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 372
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 374
    const v0, 0x7f0c0307

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoCommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserInput:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f0c0306

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoCommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserVMark:Landroid/view/View;

    .line 376
    const v0, 0x7f0c0303

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoCommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mTotalText:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0c0305

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoCommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserIcon:Landroid/widget/ImageView;

    .line 378
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoCommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mTitleLayout:Landroid/view/View;

    .line 379
    const v0, 0x7f0c0308

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoCommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSwitcherLayout:Landroid/view/View;

    .line 380
    const v0, 0x7f0c0309

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoCommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserPicSwitcher:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    .line 381
    const v0, 0x7f0c030a

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoCommentBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserContentSwitcher:Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    .line 383
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lcom/tudou/detail/widget/VideoCommentBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate pic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 386
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserVMark:Landroid/view/View;

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVuser:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/tudou/detail/widget/VideoCommentBar$4;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoCommentBar$4;-><init>(Lcom/tudou/detail/widget/VideoCommentBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserInput:Landroid/widget/TextView;

    new-instance v1, Lcom/tudou/detail/widget/VideoCommentBar$5;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoCommentBar$5;-><init>(Lcom/tudou/detail/widget/VideoCommentBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mTitleLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/widget/VideoCommentBar$6;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoCommentBar$6;-><init>(Lcom/tudou/detail/widget/VideoCommentBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSwitcherLayout:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/widget/VideoCommentBar$7;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoCommentBar$7;-><init>(Lcom/tudou/detail/widget/VideoCommentBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    return-void

    .line 386
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/DialogAddComment;->dismiss()V

    .line 299
    :cond_0
    return-void
.end method

.method public setCommentsInfo(Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V
    .locals 10
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "news"    # Lcom/tudou/detail/vo/CommentsInfo;
    .param p3, "hots"    # Lcom/tudou/detail/vo/CommentsInfo;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 312
    invoke-direct {p0}, Lcom/tudou/detail/widget/VideoCommentBar;->clear()V

    .line 313
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    .line 314
    iput-object p2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mNewsComments:Lcom/tudou/detail/vo/CommentsInfo;

    .line 315
    iput-object p3, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHotsComments:Lcom/tudou/detail/vo/CommentsInfo;

    .line 316
    if-eqz p2, :cond_0

    iget v5, p2, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    if-lez v5, :cond_0

    .line 317
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mTotalText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/tudou/detail/vo/CommentsInfo;->total:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u6761"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 320
    .local v3, "newsCount":I
    :goto_0
    if-eqz p3, :cond_3

    const/4 v5, 0x2

    invoke-virtual {p3}, Lcom/tudou/detail/vo/CommentsInfo;->getCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 321
    .local v1, "hotsCount":I
    :goto_1
    add-int v5, v3, v1

    if-lez v5, :cond_8

    .line 322
    if-lez v1, :cond_4

    .line 323
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 324
    invoke-virtual {p3, v2}, Lcom/tudou/detail/vo/CommentsInfo;->get(I)Lcom/tudou/detail/vo/CommentsInfo$Comment;

    move-result-object v0

    .line 325
    .local v0, "c":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    if-eqz v0, :cond_1

    .line 326
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "c":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    .end local v1    # "hotsCount":I
    .end local v2    # "i":I
    .end local v3    # "newsCount":I
    :cond_2
    move v3, v4

    .line 319
    goto :goto_0

    .restart local v3    # "newsCount":I
    :cond_3
    move v1, v4

    .line 320
    goto :goto_1

    .line 330
    .restart local v1    # "hotsCount":I
    :cond_4
    if-lez v3, :cond_7

    .line 331
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v3, :cond_6

    .line 332
    invoke-virtual {p2, v2}, Lcom/tudou/detail/vo/CommentsInfo;->get(I)Lcom/tudou/detail/vo/CommentsInfo$Comment;

    move-result-object v0

    .line 333
    .restart local v0    # "c":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    if-eqz v0, :cond_5

    .line 334
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 337
    .end local v0    # "c":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    :cond_6
    invoke-virtual {p2, v4}, Lcom/tudou/detail/vo/CommentsInfo;->get(I)Lcom/tudou/detail/vo/CommentsInfo$Comment;

    move-result-object v5

    iget-object v5, v5, Lcom/tudou/detail/vo/CommentsInfo$Comment;->vid:Ljava/lang/String;

    iput-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mItemCode:Ljava/lang/String;

    .line 339
    .end local v2    # "i":I
    :cond_7
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserPicSwitcher:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    iget-object v6, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->setCommentsInfo(Ljava/util/ArrayList;)V

    .line 340
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserPicSwitcher:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    iget v6, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    invoke-virtual {v5, v6}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->setSelection(I)V

    .line 341
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserContentSwitcher:Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    iget-object v6, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->setCommentsInfo(Ljava/util/ArrayList;)V

    .line 342
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserContentSwitcher:Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    iget v6, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    invoke-virtual {v5, v6}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->setSelection(I)V

    .line 343
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSwitcherLayout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 347
    :goto_4
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    return-void

    .line 345
    :cond_8
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSwitcherLayout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public setLoginState(ZLcom/youku/vo/UserBean;)V
    .locals 6
    .param p1, "login"    # Z
    .param p2, "bean"    # Lcom/youku/vo/UserBean;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 361
    if-eqz p1, :cond_1

    .line 362
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p2}, Lcom/youku/vo/UserBean;->getUserPic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 363
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserVMark:Landroid/view/View;

    iget-boolean v3, p2, Lcom/youku/vo/UserBean;->isVuser:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 363
    goto :goto_0

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserIcon:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserVMark:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "selection"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    .line 303
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserPicSwitcher:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserPicSwitcher:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    iget v1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->setSelection(I)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserContentSwitcher:Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mUserContentSwitcher:Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    iget v1, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mSelection:I

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->setSelection(I)V

    .line 309
    :cond_1
    return-void
.end method

.method public showAddComment()V
    .locals 8

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/tudou/ui/activity/DetailActivity;

    .line 442
    .local v6, "activity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVideoInfo()Lcom/youku/player/module/VideoUrlInfo;

    move-result-object v7

    .line 443
    .local v7, "info":Lcom/youku/player/module/VideoUrlInfo;
    if-eqz v7, :cond_0

    .line 444
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v0, "videoid"

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Lcom/tudou/ui/fragment/DialogAddComment;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/tudou/detail/widget/VideoCommentBar$SoftDissmiss;

    invoke-direct {v4, p0}, Lcom/tudou/detail/widget/VideoCommentBar$SoftDissmiss;-><init>(Lcom/tudou/detail/widget/VideoCommentBar;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tudou/ui/fragment/DialogAddComment;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Landroid/widget/PopupWindow$OnDismissListener;I)V

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    .line 448
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoCommentBar;->addDialog:Lcom/tudou/ui/fragment/DialogAddComment;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoCommentBar;->mCommentText:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/tudou/ui/fragment/DialogAddComment;->show(Landroid/view/View;Ljava/lang/String;)V

    .line 452
    .end local v2    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v0, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method
