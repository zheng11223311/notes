.class Lcom/tudou/ui/fragment/SplashFragment$9;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashFragment;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashFragment$9;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$9;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$9;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$2000(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/SplashFragment;->access$2300(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;J)V

    .line 352
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 343
    return-void
.end method
