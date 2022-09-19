.class Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;
.super Landroid/os/AsyncTask;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "clearCacheAnsy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Ljava/lang/Object;",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MoreFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MoreFragment;)V
    .locals 0

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2
    .param p1, "params"    # [Landroid/os/Handler;

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$3700(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v1

    invoke-interface {v1}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 1535
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v1, v0}, Lcom/tudou/ui/fragment/MoreFragment;->deleteFile(Ljava/io/File;)V

    .line 1536
    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/MoreFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 1548
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1525
    check-cast p1, [Landroid/os/Handler;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->doInBackground([Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Handler;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Handler;

    .prologue
    .line 1563
    const v0, 0x7f0d0256

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 1565
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0254

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1566
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$600(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MoreFragment;->access$3800(Lcom/tudou/ui/fragment/MoreFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    const v2, 0x7f0e0213

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1568
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$500(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    iget-object v0, p0, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->this$0:Lcom/tudou/ui/fragment/MoreFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MoreFragment;->access$700(Lcom/tudou/ui/fragment/MoreFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1571
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1572
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1525
    check-cast p1, Landroid/os/Handler;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tudou/ui/fragment/MoreFragment$clearCacheAnsy;->onPostExecute(Landroid/os/Handler;)V

    return-void
.end method
