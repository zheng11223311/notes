.class public Lcom/tudou/detail/widget/CommentUserContentSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "CommentUserContentSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/lang/String; = "          "

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

.field mSelection:I

.field private mUserContentInAnim:Landroid/view/animation/AnimationSet;

.field private mUserContentOutAnim:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v2, 0x0

    iput v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    .line 38
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 47
    .local v11, "v":Landroid/view/View;
    new-instance v2, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;

    invoke-direct {v2, p0, v11}, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;-><init>(Lcom/tudou/detail/widget/CommentUserContentSwitcher;Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, v11}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->addView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 51
    new-instance v2, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;

    invoke-direct {v2, p0, v11}, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;-><init>(Lcom/tudou/detail/widget/CommentUserContentSwitcher;Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, v11}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->addView(Landroid/view/View;)V

    .line 54
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    .line 55
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    .line 57
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 58
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, -0x41666666    # -0.3f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 59
    .local v0, "trans":Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 60
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 61
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 63
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 64
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 65
    .restart local v0    # "trans":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const v9, 0x3e99999a    # 0.3f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 66
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 67
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 68
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 69
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 71
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 72
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mUserContentOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 73
    return-void
.end method

.method private bindItemData(Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;
    .param p2, "position"    # I

    .prologue
    .line 76
    iget-object v1, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    .line 77
    .local v0, "comment":Lcom/tudou/detail/vo/CommentsInfo$Comment;
    iget-object v1, p1, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;->mContent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p1, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;->mType:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p1, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;->mType:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v2, p1, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;->mType:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/tudou/detail/vo/CommentsInfo$Comment;->type:Ljava/lang/String;

    const-string v3, "new"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u6700\u65b0"

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v1, "\u70ed\u95e8"

    goto :goto_1
.end method


# virtual methods
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
    .line 87
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/CommentsInfo$Comment;>;"
    iput-object p1, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public setSelection(I)V
    .locals 4
    .param p1, "selection"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    .line 92
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    iget-object v3, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 93
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    iget-object v3, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;

    .line 97
    .local v0, "holder":Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    invoke-direct {p0, v0, v2}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->bindItemData(Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;I)V

    .line 99
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;
    check-cast v0, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;

    .line 101
    .restart local v0    # "holder":Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->bindItemData(Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;I)V

    .line 102
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->setDisplayedChild(I)V

    .line 103
    return-void
.end method

.method public showNext()V
    .locals 6

    .prologue
    .line 107
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 108
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    .line 109
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    iget-object v3, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 110
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    iget-object v3, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;

    .line 114
    .local v0, "holder":Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;
    iget v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    invoke-direct {p0, v0, v2}, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->bindItemData(Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;I)V

    .line 115
    iget-object v3, v0, Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;->mContent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mCommentInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tudou/detail/widget/CommentUserContentSwitcher;->mSelection:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/CommentsInfo$Comment;

    iget-object v2, v2, Lcom/tudou/detail/vo/CommentsInfo$Comment;->content:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 118
    .end local v0    # "holder":Lcom/tudou/detail/widget/CommentUserContentSwitcher$CommentItemHolder;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
