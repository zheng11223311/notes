.class Lcom/tudou/ui/fragment/UploadFragment$9;
.super Landroid/os/Handler;
.source "UploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/UploadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/UploadFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/UploadFragment;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 571
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 572
    sget-object v1, Lcom/tudou/ui/fragment/UploadFragment;->mFragment:Lcom/tudou/ui/fragment/UploadFragment;

    if-nez v1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 575
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 576
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 577
    .local v0, "categoryString":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v0}, Lcom/youku/vo/CategoryList;->parseCategoryList(Ljava/lang/String;)Lcom/youku/vo/CategoryList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/UploadFragment;->access$1002(Lcom/tudou/ui/fragment/UploadFragment;Lcom/youku/vo/CategoryList;)Lcom/youku/vo/CategoryList;

    .line 578
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$1000(Lcom/tudou/ui/fragment/UploadFragment;)Lcom/youku/vo/CategoryList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$1000(Lcom/tudou/ui/fragment/UploadFragment;)Lcom/youku/vo/CategoryList;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/CategoryList;->data:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$1000(Lcom/tudou/ui/fragment/UploadFragment;)Lcom/youku/vo/CategoryList;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/CategoryList;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$1100(Lcom/tudou/ui/fragment/UploadFragment;)V

    .line 588
    .end local v0    # "categoryString":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$100(Lcom/tudou/ui/fragment/UploadFragment;)V

    .line 591
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 583
    .restart local v0    # "categoryString":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$000(Lcom/tudou/ui/fragment/UploadFragment;)V

    goto :goto_1

    .line 586
    .end local v0    # "categoryString":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/UploadFragment$9;->this$0:Lcom/tudou/ui/fragment/UploadFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/UploadFragment;->access$000(Lcom/tudou/ui/fragment/UploadFragment;)V

    goto :goto_1
.end method
