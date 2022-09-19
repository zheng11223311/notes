.class Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder$1;
.super Ljava/lang/Object;
.source "VideoCommentAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->showDiggedAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder$1;->this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder$1;->this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->animText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 381
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder$1;->this$1:Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/adapter/VideoCommentAdapter$CommentItemHolder;->animText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    return-void
.end method
