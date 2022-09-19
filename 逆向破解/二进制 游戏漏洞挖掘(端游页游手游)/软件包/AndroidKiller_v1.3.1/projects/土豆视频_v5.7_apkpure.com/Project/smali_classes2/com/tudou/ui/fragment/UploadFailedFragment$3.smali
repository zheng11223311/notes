.class Lcom/tudou/ui/fragment/UploadFailedFragment$3;
.super Ljava/lang/Object;
.source "UploadFailedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadFailedFragment;->setImageShow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

.field final synthetic val$loadFailed:Z


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFailedFragment;Z)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$3;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    iput-boolean p2, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$3;->val$loadFailed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$3;->val$loadFailed:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$3;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$000(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$3;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$100(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadFailedFragment$3;->this$0:Lcom/tudou/ui/fragment/UploadFailedFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadFailedFragment;->access$100(Lcom/tudou/ui/fragment/UploadFailedFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 197
    :cond_0
    return-void
.end method
