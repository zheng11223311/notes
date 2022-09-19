.class Lcom/tudou/ui/activity/DetailActivity$3;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/tudou/detail/widget/DetailContentPanel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$3;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecommendItemClick(Landroid/view/View;Lcom/youku/vo/RelatedVideo;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "video"    # Lcom/youku/vo/RelatedVideo;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$3;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$3$1;

    invoke-direct {v1, p0, p2}, Lcom/tudou/ui/activity/DetailActivity$3$1;-><init>(Lcom/tudou/ui/activity/DetailActivity$3;Lcom/youku/vo/RelatedVideo;)V

    invoke-virtual {v0, p1, v1}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 410
    const/4 v0, 0x0

    return v0
.end method
