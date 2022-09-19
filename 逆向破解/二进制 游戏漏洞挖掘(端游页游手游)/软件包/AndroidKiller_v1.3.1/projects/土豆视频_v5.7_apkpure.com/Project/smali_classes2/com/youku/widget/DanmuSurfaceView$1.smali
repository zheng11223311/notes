.class Lcom/youku/widget/DanmuSurfaceView$1;
.super Ljava/lang/Object;
.source "DanmuSurfaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/DanmuSurfaceView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/DanmuSurfaceView;


# direct methods
.method constructor <init>(Lcom/youku/widget/DanmuSurfaceView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/youku/widget/DanmuSurfaceView$1;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView$1;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-static {v0}, Lcom/youku/widget/DanmuSurfaceView;->access$000(Lcom/youku/widget/DanmuSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView$1;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    iget-object v1, p0, Lcom/youku/widget/DanmuSurfaceView$1;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-static {v1}, Lcom/youku/widget/DanmuSurfaceView;->access$200(Lcom/youku/widget/DanmuSurfaceView;)Lcom/youku/widget/DanmuSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/DanmuSurfaceView;->getLeft()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/widget/DanmuSurfaceView;->access$102(Lcom/youku/widget/DanmuSurfaceView;I)I

    .line 74
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView$1;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    iget-object v1, p0, Lcom/youku/widget/DanmuSurfaceView$1;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-static {v1}, Lcom/youku/widget/DanmuSurfaceView;->access$200(Lcom/youku/widget/DanmuSurfaceView;)Lcom/youku/widget/DanmuSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/widget/DanmuSurfaceView;->getRight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/widget/DanmuSurfaceView;->access$302(Lcom/youku/widget/DanmuSurfaceView;I)I

    .line 75
    iget-object v0, p0, Lcom/youku/widget/DanmuSurfaceView$1;->this$0:Lcom/youku/widget/DanmuSurfaceView;

    invoke-static {v0, v2}, Lcom/youku/widget/DanmuSurfaceView;->access$002(Lcom/youku/widget/DanmuSurfaceView;Z)Z

    .line 77
    :cond_0
    return v2
.end method
