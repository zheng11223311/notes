.class Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;
.super Landroid/os/Handler;
.source "VideoNoticeBottomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 52
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Lcom/tudou/detail/vo/VideoNoticeBottom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/detail/vo/VideoNoticeBottom;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    .local v0, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 54
    .local v1, "total":I
    :goto_0
    if-eqz v1, :cond_2

    .line 55
    :goto_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)I

    move-result v2

    if-lt v2, v1, :cond_1

    .line 56
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)I

    move-result v4

    rem-int/2addr v4, v1

    invoke-static {v2, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$102(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;I)I

    goto :goto_1

    .end local v1    # "total":I
    :cond_0
    move v1, v3

    .line 53
    goto :goto_0

    .line 58
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Landroid/widget/TextSwitcher;

    move-result-object v4

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;

    iget-object v2, v2, Lcom/tudou/detail/vo/VideoNoticeBottom$TextWithLineIndex;->mLineContent:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$108(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)I

    .line 60
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    :cond_2
    return-void
.end method
