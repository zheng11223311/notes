.class Lcom/tudou/detail/fragment/VideoPointFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoPointFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoPointFragment;->collapseDesc(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoPointFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoPointFragment;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 299
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 301
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$6;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandText:Landroid/widget/TextView;

    const-string v1, "\u5c55\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 308
    return-void
.end method
