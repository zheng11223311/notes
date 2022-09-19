.class Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;
.super Ljava/lang/Object;
.source "OverScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initBounce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->access$000(Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 191
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    invoke-static {v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->access$000(Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollTo(II)V

    .line 193
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->access$000(Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$1;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    return-void
.end method
