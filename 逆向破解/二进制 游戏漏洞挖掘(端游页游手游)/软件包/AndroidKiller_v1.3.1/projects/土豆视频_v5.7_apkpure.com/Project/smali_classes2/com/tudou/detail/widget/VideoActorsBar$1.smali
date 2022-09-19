.class Lcom/tudou/detail/widget/VideoActorsBar$1;
.super Ljava/lang/Object;
.source "VideoActorsBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoActorsBar;->makeAndAddItem(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoActorsBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoActorsBar;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoActorsBar$1;->this$0:Lcom/tudou/detail/widget/VideoActorsBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    const-string v1, "videoactorbar.item"

    invoke-static {v1}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoActorsBar$1;->this$0:Lcom/tudou/detail/widget/VideoActorsBar;

    invoke-virtual {v1}, Lcom/tudou/detail/widget/VideoActorsBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 78
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    new-instance v1, Lcom/tudou/detail/widget/VideoActorsBar$1$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/tudou/detail/widget/VideoActorsBar$1$1;-><init>(Lcom/tudou/detail/widget/VideoActorsBar$1;Lcom/tudou/ui/activity/DetailActivity;Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedbackScale(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
