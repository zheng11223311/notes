.class Lcom/tudou/detail/widget/VideoPlaylistBar$6;
.super Ljava/lang/Object;
.source "VideoPlaylistBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar;->onTransitionStart(Lcom/tudou/ui/activity/DetailActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$6;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 298
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 299
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$6;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$600(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v1

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 300
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$6;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$700(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    sub-float v2, v3, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    .line 301
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$6;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$800(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 302
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$6;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$900(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 303
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$6;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$1000(Lcom/tudou/detail/widget/VideoPlaylistBar;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 304
    return-void
.end method
