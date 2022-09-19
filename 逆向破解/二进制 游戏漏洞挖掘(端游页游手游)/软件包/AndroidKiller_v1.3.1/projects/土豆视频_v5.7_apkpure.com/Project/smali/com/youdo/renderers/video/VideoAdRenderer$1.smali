.class Lcom/youdo/renderers/video/VideoAdRenderer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/renderers/video/VideoAdRenderer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/renderers/video/VideoAdRenderer;

.field final synthetic val$slotBase:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/youdo/renderers/video/VideoAdRenderer;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/video/VideoAdRenderer$1;->this$0:Lcom/youdo/renderers/video/VideoAdRenderer;

    iput-object p2, p0, Lcom/youdo/renderers/video/VideoAdRenderer$1;->val$slotBase:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer$1;->val$slotBase:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdRenderer$1;->this$0:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-static {v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->access$000(Lcom/youdo/renderers/video/VideoAdRenderer;)Lcom/youdo/renderers/video/VideoAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer$1;->this$0:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->access$000(Lcom/youdo/renderers/video/VideoAdRenderer;)Lcom/youdo/renderers/video/VideoAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->bringToFront()V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer$1;->this$0:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->access$000(Lcom/youdo/renderers/video/VideoAdRenderer;)Lcom/youdo/renderers/video/VideoAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->requestFocus()Z

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer$1;->this$0:Lcom/youdo/renderers/video/VideoAdRenderer;

    invoke-static {v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->access$000(Lcom/youdo/renderers/video/VideoAdRenderer;)Lcom/youdo/renderers/video/VideoAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->start()V

    return-void
.end method
