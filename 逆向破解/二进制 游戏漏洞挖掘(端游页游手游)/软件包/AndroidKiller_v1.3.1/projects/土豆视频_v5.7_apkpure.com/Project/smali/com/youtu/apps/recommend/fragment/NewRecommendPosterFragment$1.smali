.class Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;
.super Ljava/lang/Object;
.source "NewRecommendPosterFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->setViewPager(Lcom/youtu/apps/widget/YoutuViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

.field final synthetic val$viewPager:Lcom/youtu/apps/widget/YoutuViewPager;


# direct methods
.method constructor <init>(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;Lcom/youtu/apps/widget/YoutuViewPager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    iput-object p2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->val$viewPager:Lcom/youtu/apps/widget/YoutuViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$002(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;[I)[I

    .line 76
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$000(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youtu/apps/widget/YoutuGallery;->getLocationOnScreen([I)V

    .line 77
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youtu/apps/widget/YoutuGallery;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$202(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;I)I

    .line 78
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->val$viewPager:Lcom/youtu/apps/widget/YoutuViewPager;

    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$000(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v2}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$200(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/youtu/apps/widget/YoutuViewPager;->setPosY(II)V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;->this$0:Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    invoke-static {v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
