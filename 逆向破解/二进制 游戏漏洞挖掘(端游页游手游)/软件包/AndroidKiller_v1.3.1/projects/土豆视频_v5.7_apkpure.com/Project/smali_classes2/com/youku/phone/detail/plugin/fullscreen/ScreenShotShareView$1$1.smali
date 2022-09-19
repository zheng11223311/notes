.class Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1$1;
.super Ljava/lang/Object;
.source "ScreenShotShareView.java"

# interfaces
.implements Lcom/tudou/videoshare/ShareUtil$IShareCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZLjava/lang/String;)V
    .locals 3
    .param p1, "needDismiss"    # Z
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareUtil.shareImg callback dismiss need = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenshotPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->hide()V

    .line 126
    :cond_0
    return-void
.end method
