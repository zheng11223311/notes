.class Lcom/youku/widget/GiftPaySuccessView$1;
.super Ljava/lang/Object;
.source "GiftPaySuccessView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/GiftPaySuccessView;->doPopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/GiftPaySuccessView;


# direct methods
.method constructor <init>(Lcom/youku/widget/GiftPaySuccessView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/youku/widget/GiftPaySuccessView$1;->this$0:Lcom/youku/widget/GiftPaySuccessView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/youku/widget/GiftPaySuccessView$1;->this$0:Lcom/youku/widget/GiftPaySuccessView;

    invoke-static {v0}, Lcom/youku/widget/GiftPaySuccessView;->access$000(Lcom/youku/widget/GiftPaySuccessView;)Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/youku/widget/GiftPaySuccessView$1;->this$0:Lcom/youku/widget/GiftPaySuccessView;

    invoke-static {v0}, Lcom/youku/widget/GiftPaySuccessView;->access$000(Lcom/youku/widget/GiftPaySuccessView;)Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;->onAnimationEnd()V

    .line 118
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 123
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 111
    return-void
.end method
