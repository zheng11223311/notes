.class Lio/rong/imkit/widget/InputView$InputMenuClickListener;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/InputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/InputView;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/InputView;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lio/rong/imkit/widget/InputView$InputMenuClickListener;->this$0:Lio/rong/imkit/widget/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 491
    const-string v0, "InputMenuClickListener"

    const-string v1, "change to input"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$InputMenuClickListener;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v0, v0, Lio/rong/imkit/widget/InputView;->mInputMenuLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/rong/imkit/widget/InputView$InputMenuClickListener;->this$0:Lio/rong/imkit/widget/InputView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imkit/widget/InputView;->access$200(Lio/rong/imkit/widget/InputView;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 495
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$InputMenuClickListener;->this$0:Lio/rong/imkit/widget/InputView;

    iget-object v0, v0, Lio/rong/imkit/widget/InputView;->mInputLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lio/rong/imkit/widget/InputView$InputMenuClickListener$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/widget/InputView$InputMenuClickListener$1;-><init>(Lio/rong/imkit/widget/InputView$InputMenuClickListener;Landroid/view/View;)V

    const-wide/16 v2, 0x136

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method
