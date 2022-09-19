.class Lcom/tudou/detail/widget/VideoCommentBar$7;
.super Ljava/lang/Object;
.source "VideoCommentBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoCommentBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoCommentBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoCommentBar;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar$7;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 434
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoCommentBar$7;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v1}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 435
    .local v0, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->onBtnCommentClicked(Ljava/lang/String;)V

    .line 436
    return-void
.end method
