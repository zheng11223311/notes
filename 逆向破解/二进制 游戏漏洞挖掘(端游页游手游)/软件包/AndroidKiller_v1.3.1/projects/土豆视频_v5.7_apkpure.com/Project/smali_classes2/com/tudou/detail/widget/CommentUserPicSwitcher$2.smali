.class Lcom/tudou/detail/widget/CommentUserPicSwitcher$2;
.super Ljava/lang/Object;
.source "CommentUserPicSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/CommentUserPicSwitcher;->setSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/CommentUserPicSwitcher;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$2;->this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$2;->this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstTimeShow:Z

    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 182
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 186
    return-void
.end method
