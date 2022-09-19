.class Lcom/tudou/detail/fragment/VideoActorFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoActorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment;->expandDesc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoActorFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 216
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 217
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 222
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoActorFragment$5;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 224
    return-void
.end method
