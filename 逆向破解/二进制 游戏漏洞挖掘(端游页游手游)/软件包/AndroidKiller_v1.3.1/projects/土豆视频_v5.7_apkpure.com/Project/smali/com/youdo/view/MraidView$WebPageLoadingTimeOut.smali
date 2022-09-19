.class Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebPageLoadingTimeOut"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field mCount:I

.field mProgress:I

.field final synthetic this$0:Lcom/youdo/view/MraidView;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->this$0:Lcom/youdo/view/MraidView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->mProgress:I

    iput v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->mCount:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;

    invoke-direct {v1, p0}, Lcom/youdo/view/MraidView$WebPageLoadingTimeOut$1;-><init>(Lcom/youdo/view/MraidView$WebPageLoadingTimeOut;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
