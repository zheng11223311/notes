.class Lcom/tudou/detail/fragment/VideoPointFragment$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoPointFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoPointFragment;->expandDesc()V
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
    .line 359
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 365
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment;->mExpandText:Landroid/widget/TextView;

    const-string v1, "\u6536\u8d77"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 371
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoPointFragment$8;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iget-object v0, v0, Lcom/tudou/detail/fragment/VideoPointFragment;->mDesc:Landroid/widget/TextView;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 373
    return-void
.end method
