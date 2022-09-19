.class public Lcom/tudou/detail/widget/CommentUserPicSwitcher;
.super Landroid/widget/FrameLayout;
.source "CommentUserPicSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
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

.field mFirstMoveUp:Z

.field mFirstTimeShow:Z

.field private mImageViews:[Landroid/widget/ImageView;

.field mSelection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    .line 95
    iput-boolean v1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstTimeShow:Z

    .line 97
    iput-boolean v1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstMoveUp:Z

    .line 99
    iput-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mImageViews:[Landroid/widget/ImageView;

    .line 100
    iput-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->setChildrenDrawingOrderEnabled(Z)V

    .line 106
    invoke-direct {p0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->initViews()V

    .line 107
    return-void
.end method

.method private bindItemData(Landroid/widget/ImageView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "dataIndex"    # I

    .prologue
    .line 110
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr p2, v2

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    .line 114
    .local v0, "c":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    sget-object v2, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindItemData dataIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    move v1, p2

    .line 117
    .local v1, "tTag":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 118
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->userPic:Ljava/lang/String;

    new-instance v4, Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/tudou/detail/widget/CommentUserPicSwitcher$1;-><init>(Lcom/tudou/detail/widget/CommentUserPicSwitcher;Landroid/widget/ImageView;I)V

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 130
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 138
    new-array v1, v3, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mImageViews:[Landroid/widget/ImageView;

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 140
    iget-object v1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mImageViews:[Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->obtainAndAddView()Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method private obtainAndAddView()Landroid/widget/ImageView;
    .locals 7

    .prologue
    const/high16 v6, 0x420c0000    # 35.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 145
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "child":Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v2

    invoke-static {v5}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v3

    invoke-static {v5}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v4

    invoke-static {v5}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 147
    const v2, 0x7f020186

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 149
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v2

    invoke-static {v6}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0, v1}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-object v0
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 134
    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    return v0
.end method

.method public setCommentsInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/CommentsInfo$Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/CommentsInfo$Comment;>;"
    iput-object p1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    .line 156
    return-void
.end method

.method public setSelection(I)V
    .locals 8
    .param p1, "selection"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 159
    sget-object v3, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSelection selection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iput-boolean v7, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstTimeShow:Z

    .line 161
    iput-boolean v7, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstMoveUp:Z

    .line 162
    iput p1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    .line 163
    iget v3, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    iget-object v4, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 164
    iget v3, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    iget-object v4, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    .line 166
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 167
    add-int v0, p1, v1

    .line 168
    .local v0, "dataIndex":I
    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 169
    .local v2, "v1":Landroid/widget/ImageView;
    invoke-direct {p0, v2, v0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->bindItemData(Landroid/widget/ImageView;I)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "dataIndex":I
    .end local v2    # "v1":Landroid/widget/ImageView;
    :cond_1
    new-instance v3, Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v6, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {v3, p0, v4}, Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;-><init>(Lcom/tudou/detail/widget/CommentUserPicSwitcher;Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v3}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 173
    new-instance v3, Lcom/tudou/detail/widget/CommentUserPicSwitcher$2;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher$2;-><init>(Lcom/tudou/detail/widget/CommentUserPicSwitcher;)V

    invoke-virtual {p0, v3}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->startLayoutAnimation()V

    .line 189
    return-void
.end method

.method public showNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 192
    sget-object v2, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNext mSelection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 194
    iget-boolean v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstMoveUp:Z

    if-eqz v2, :cond_2

    .line 195
    iput-boolean v6, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstMoveUp:Z

    .line 203
    :goto_0
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    .line 204
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    iget-object v3, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 205
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    iget-object v3, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mSelection:I

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->clearDisappearingChildren()V

    .line 208
    new-instance v2, Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {v2, p0, v3}, Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;-><init>(Lcom/tudou/detail/widget/CommentUserPicSwitcher;Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 209
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->startLayoutAnimation()V

    .line 211
    :cond_1
    return-void

    .line 197
    :cond_2
    invoke-virtual {p0, v6}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 198
    .local v1, "top":Landroid/widget/ImageView;
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 199
    .local v0, "bottom":Landroid/widget/ImageView;
    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->removeView(Landroid/view/View;)V

    .line 200
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->bindItemData(Landroid/widget/ImageView;I)V

    .line 201
    invoke-virtual {p0, v1}, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
