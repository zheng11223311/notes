.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$2;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$700(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "t1.detail_player.verdeotapecancel"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$800(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 230
    :cond_0
    return-void

    .line 224
    :cond_1
    const-string v0, "t1.detail_player.retrycancel"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
