.class Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;->access$200(Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;)Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener$OnDismissCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener$2;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;

    invoke-static {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;->access$100(Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener$OnDismissCallback;->onDismiss(Landroid/view/View;)V

    .line 220
    return-void
.end method
