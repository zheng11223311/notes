.class Lcom/tudou/ui/activity/DetailActivity$4;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/tudou/detail/widget/DetailSubPanel$Callbacks;


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
    .line 414
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$4;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureItemClick(Landroid/view/View;Lcom/tudou/detail/vo/DetailFeature$Feature;I)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "f"    # Lcom/tudou/detail/vo/DetailFeature$Feature;
    .param p3, "position"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$4;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/tudou/ui/activity/DetailActivity$4$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/tudou/ui/activity/DetailActivity$4$1;-><init>(Lcom/tudou/ui/activity/DetailActivity$4;Lcom/tudou/detail/vo/DetailFeature$Feature;I)V

    invoke-virtual {v0, p1, v1}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public onSendCommentComplete(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "success"    # Z
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$4;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/DetailActivity;->access$200(Lcom/tudou/ui/activity/DetailActivity;)Lcom/tudou/detail/widget/DetailContentPanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tudou/detail/widget/DetailContentPanel;->onSendComment(ZLjava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    return v0
.end method
