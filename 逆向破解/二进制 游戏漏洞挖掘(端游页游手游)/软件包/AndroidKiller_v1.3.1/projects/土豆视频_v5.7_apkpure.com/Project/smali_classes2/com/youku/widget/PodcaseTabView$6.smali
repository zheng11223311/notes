.class Lcom/youku/widget/PodcaseTabView$6;
.super Ljava/lang/Object;
.source "PodcaseTabView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/PodcaseTabView;->initRotateAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/PodcaseTabView;


# direct methods
.method constructor <init>(Lcom/youku/widget/PodcaseTabView;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/youku/widget/PodcaseTabView$6;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$6;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-static {v0}, Lcom/youku/widget/PodcaseTabView;->access$400(Lcom/youku/widget/PodcaseTabView;)Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$6;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-static {v0}, Lcom/youku/widget/PodcaseTabView;->access$500(Lcom/youku/widget/PodcaseTabView;)I

    move-result v0

    iget-object v1, p0, Lcom/youku/widget/PodcaseTabView$6;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-static {v1}, Lcom/youku/widget/PodcaseTabView;->access$600(Lcom/youku/widget/PodcaseTabView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$6;->this$0:Lcom/youku/widget/PodcaseTabView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/widget/PodcaseTabView;->access$502(Lcom/youku/widget/PodcaseTabView;I)I

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$6;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-static {v0}, Lcom/youku/widget/PodcaseTabView;->access$400(Lcom/youku/widget/PodcaseTabView;)Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/ClassifyFeatureInfoAdapter;->notifyDataSetChanged()V

    .line 340
    :cond_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/PodcaseTabView$6;->this$0:Lcom/youku/widget/PodcaseTabView;

    invoke-static {v0}, Lcom/youku/widget/PodcaseTabView;->access$508(Lcom/youku/widget/PodcaseTabView;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 344
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 329
    return-void
.end method
