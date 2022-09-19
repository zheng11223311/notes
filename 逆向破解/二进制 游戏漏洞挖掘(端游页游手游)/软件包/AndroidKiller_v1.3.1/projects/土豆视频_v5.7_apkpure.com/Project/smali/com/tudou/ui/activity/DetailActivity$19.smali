.class Lcom/tudou/ui/activity/DetailActivity$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedbackScale(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3647
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$19;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$19;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$19;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3651
    return-void
.end method
