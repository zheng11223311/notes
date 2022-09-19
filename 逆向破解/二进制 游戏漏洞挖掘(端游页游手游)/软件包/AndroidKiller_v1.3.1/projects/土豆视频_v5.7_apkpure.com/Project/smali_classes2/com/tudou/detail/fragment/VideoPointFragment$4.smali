.class Lcom/tudou/detail/fragment/VideoPointFragment$4;
.super Ljava/lang/Object;
.source "VideoPointFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoPointFragment;->fillPointItem(Ljava/lang/String;Lcom/youku/player/goplay/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

.field final synthetic val$p:Lcom/youku/player/goplay/Point;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoPointFragment;Ljava/lang/String;Lcom/youku/player/goplay/Point;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    iput-object p2, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4;->val$vid:Ljava/lang/String;

    iput-object p3, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4;->val$p:Lcom/youku/player/goplay/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoPointFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoPointFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoPointFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 239
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v0, :cond_0

    .line 240
    new-instance v1, Lcom/tudou/detail/fragment/VideoPointFragment$4$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/fragment/VideoPointFragment$4$1;-><init>(Lcom/tudou/detail/fragment/VideoPointFragment$4;)V

    invoke-virtual {v0, p1, v1}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    return-void
.end method
