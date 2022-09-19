.class Lcom/tudou/ui/fragment/SplashFragment$12;
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
    .line 394
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashFragment$12;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$12;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$2700(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$12;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashFragment$12;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$2700(Lcom/tudou/ui/fragment/SplashFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x3e8

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/tudou/ui/fragment/SplashFragment$12;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/SplashFragment;->relStarGuideAlphaEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static/range {v0 .. v5}, Lcom/tudou/ui/fragment/SplashFragment;->access$2800(Lcom/tudou/ui/fragment/SplashFragment;Landroid/view/View;IFFLandroid/view/animation/Animation$AnimationListener;)V

    .line 409
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 402
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 398
    return-void
.end method
