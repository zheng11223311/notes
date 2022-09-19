.class Lcom/tudou/detail/widget/DetailContentPanel$1;
.super Ljava/lang/Object;
.source "DetailContentPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/DetailContentPanel;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/DetailContentPanel;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/DetailContentPanel;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/tudou/detail/widget/DetailContentPanel$1;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel$1;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    invoke-static {v1}, Lcom/tudou/detail/widget/DetailContentPanel;->access$000(Lcom/tudou/detail/widget/DetailContentPanel;)I

    move-result v0

    .line 360
    .local v0, "rangeY":I
    iget-object v1, p0, Lcom/tudou/detail/widget/DetailContentPanel$1;->this$0:Lcom/tudou/detail/widget/DetailContentPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/tudou/detail/widget/DetailContentPanel;->smoothScrollTo(II)V

    .line 361
    return-void
.end method
