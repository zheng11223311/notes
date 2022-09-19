.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2$1;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;->onFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 225
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->enableDownloadIcon()V

    .line 226
    return-void
.end method
