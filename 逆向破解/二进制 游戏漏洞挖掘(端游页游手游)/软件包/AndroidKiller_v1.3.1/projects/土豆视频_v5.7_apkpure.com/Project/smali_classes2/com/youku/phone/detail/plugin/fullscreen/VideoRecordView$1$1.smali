.class Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1$1;
.super Ljava/lang/Object;
.source "VideoRecordView.java"

# interfaces
.implements Lcom/tudou/videoshare/ShareUtil$IShareCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZLjava/lang/String;)V
    .locals 3
    .param p1, "needDismiss"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareUtil.shareImg callback dismiss need = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 165
    :cond_0
    return-void
.end method
