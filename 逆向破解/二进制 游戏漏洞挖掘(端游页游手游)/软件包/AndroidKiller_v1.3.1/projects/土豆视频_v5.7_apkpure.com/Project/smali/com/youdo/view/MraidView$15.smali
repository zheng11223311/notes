.class Lcom/youdo/view/MraidView$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/view/MraidView;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/view/MraidView;


# direct methods
.method constructor <init>(Lcom/youdo/view/MraidView;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/view/MraidView$15;->this$0:Lcom/youdo/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/youdo/view/MraidView$15;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$15;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/youdo/view/MraidView$15;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->removeAllViews()V

    iget-object v0, p0, Lcom/youdo/view/MraidView$15;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->stopLoading()V

    iget-object v0, p0, Lcom/youdo/view/MraidView$15;->this$0:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->destroy()V

    return-void
.end method
