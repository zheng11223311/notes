.class Lcom/tudou/ui/fragment/UploadingFragment$9;
.super Ljava/lang/Object;
.source "UploadingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadingFragment;->setNoneText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadingFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadingFragment;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$2600(Lcom/tudou/ui/fragment/UploadingFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->showProgress()V

    .line 1088
    return-void
.end method
