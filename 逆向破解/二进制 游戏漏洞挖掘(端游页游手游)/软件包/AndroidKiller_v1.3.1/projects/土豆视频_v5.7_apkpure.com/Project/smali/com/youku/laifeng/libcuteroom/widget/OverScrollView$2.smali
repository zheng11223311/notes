.class Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$2;
.super Ljava/lang/Object;
.source "OverScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->initScrollView()V
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
    .line 304
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$2;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$2;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView$2;->this$0:Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;

    iget-object v2, v2, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->child:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/youku/laifeng/libcuteroom/widget/OverScrollView;->scrollTo(II)V

    .line 308
    return-void
.end method
