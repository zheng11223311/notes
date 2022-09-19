.class Lcom/youku/gamecenter/widgets/LoadingView$2;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/LoadingView;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/LoadingView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/LoadingView$2;->this$0:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/LoadingView$2;->this$0:Lcom/youku/gamecenter/widgets/LoadingView;

    iget-boolean v1, v1, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/LoadingView$2;->this$0:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-static {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->access$000(Lcom/youku/gamecenter/widgets/LoadingView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/LoadingView$2;->this$0:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-static {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->access$100(Lcom/youku/gamecenter/widgets/LoadingView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 102
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 104
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/LoadingView$2;->this$0:Lcom/youku/gamecenter/widgets/LoadingView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    .line 105
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/LoadingView$2;->this$0:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-static {v1}, Lcom/youku/gamecenter/widgets/LoadingView;->access$300(Lcom/youku/gamecenter/widgets/LoadingView;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/LoadingView$2;->this$0:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-static {v2}, Lcom/youku/gamecenter/widgets/LoadingView;->access$200(Lcom/youku/gamecenter/widgets/LoadingView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
