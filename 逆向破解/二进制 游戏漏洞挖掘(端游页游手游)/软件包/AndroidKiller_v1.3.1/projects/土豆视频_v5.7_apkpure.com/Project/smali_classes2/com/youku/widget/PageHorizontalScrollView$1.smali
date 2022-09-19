.class Lcom/youku/widget/PageHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "PageHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/PageHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/PageHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/youku/widget/PageHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0}, Lcom/youku/widget/PageHorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-static {v1}, Lcom/youku/widget/PageHorizontalScrollView;->access$000(Lcom/youku/widget/PageHorizontalScrollView;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 190
    const-string v0, ""

    const-string v1, "\u505c\u6b62\u6eda\u52a8"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    sget-object v1, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->IDLE:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    invoke-static {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->access$102(Lcom/youku/widget/PageHorizontalScrollView;Lcom/youku/widget/PageHorizontalScrollView$ScrollType;)Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    .line 192
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-static {v0}, Lcom/youku/widget/PageHorizontalScrollView;->access$200(Lcom/youku/widget/PageHorizontalScrollView;)Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-static {v0}, Lcom/youku/widget/PageHorizontalScrollView;->access$200(Lcom/youku/widget/PageHorizontalScrollView;)Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;->onScrollEnd()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-static {v0}, Lcom/youku/widget/PageHorizontalScrollView;->access$300(Lcom/youku/widget/PageHorizontalScrollView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    const-string v0, ""

    const-string v1, "Fling\u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    sget-object v1, Lcom/youku/widget/PageHorizontalScrollView$ScrollType;->FLING:Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    invoke-static {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->access$102(Lcom/youku/widget/PageHorizontalScrollView;Lcom/youku/widget/PageHorizontalScrollView$ScrollType;)Lcom/youku/widget/PageHorizontalScrollView$ScrollType;

    .line 200
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-static {v0}, Lcom/youku/widget/PageHorizontalScrollView;->access$200(Lcom/youku/widget/PageHorizontalScrollView;)Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    iget-object v1, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v1}, Lcom/youku/widget/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/widget/PageHorizontalScrollView;->access$002(Lcom/youku/widget/PageHorizontalScrollView;I)I

    .line 204
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-static {v0}, Lcom/youku/widget/PageHorizontalScrollView;->access$300(Lcom/youku/widget/PageHorizontalScrollView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-static {v0}, Lcom/youku/widget/PageHorizontalScrollView;->access$300(Lcom/youku/widget/PageHorizontalScrollView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/PageHorizontalScrollView$1;->this$0:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-static {v1}, Lcom/youku/widget/PageHorizontalScrollView;->access$400(Lcom/youku/widget/PageHorizontalScrollView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
