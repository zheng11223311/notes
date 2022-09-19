.class Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    iget-object v0, v0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->getProgress()I

    move-result v1

    const/16 v0, 0x64

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->cancel()Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    iput v1, v0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->mProgress:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    iget v0, v0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->mProgress:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    iget v2, v0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->mCount:I

    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    iget v0, v0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->mCount:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    iget-object v0, v0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;->this$1:Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->cancel()Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "View"

    const-string v3, "error in stopLoading"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
