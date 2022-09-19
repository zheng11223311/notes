.class final Lcom/youku/gamecenter/util/UIUtils$3;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/util/UIUtils;->startAnimation(Landroid/content/Context;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$animationView:Landroid/widget/ImageView;

.field final synthetic val$group:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/youku/gamecenter/util/UIUtils$3;->val$animationView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/youku/gamecenter/util/UIUtils$3;->val$group:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/youku/gamecenter/util/UIUtils$3$1;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/util/UIUtils$3$1;-><init>(Lcom/youku/gamecenter/util/UIUtils$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 171
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 156
    return-void
.end method
