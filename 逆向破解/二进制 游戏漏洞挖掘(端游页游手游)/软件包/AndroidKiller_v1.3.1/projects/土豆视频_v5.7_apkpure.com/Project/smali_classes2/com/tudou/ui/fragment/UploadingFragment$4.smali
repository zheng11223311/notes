.class Lcom/tudou/ui/fragment/UploadingFragment$4;
.super Ljava/lang/Object;
.source "UploadingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/UploadingFragment;->initTitle()V
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
    .line 283
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    iget-boolean v0, v0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$600(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 314
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$700(Lcom/tudou/ui/fragment/UploadingFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    const-string v0, "\u5237\u65b0\u65f6\u7981\u6b62\u7f16\u8f91"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->getLocalUploadingCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 299
    const v0, 0x7f0d02b6

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tudou/ui/fragment/UploadingFragment;->mIsEdit:Z

    .line 305
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$800(Lcom/tudou/ui/fragment/UploadingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/UploadingFragment;->mUploadingList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$902(Lcom/tudou/ui/fragment/UploadingFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .line 307
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1000(Lcom/tudou/ui/fragment/UploadingFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 309
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1100(Lcom/tudou/ui/fragment/UploadingFragment;)V

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1200(Lcom/tudou/ui/fragment/UploadingFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$1300(Lcom/tudou/ui/fragment/UploadingFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/tudou/ui/fragment/UploadingFragment$4;->this$0:Lcom/tudou/ui/fragment/UploadingFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/UploadingFragment;->access$200(Lcom/tudou/ui/fragment/UploadingFragment;)V

    goto :goto_0
.end method
