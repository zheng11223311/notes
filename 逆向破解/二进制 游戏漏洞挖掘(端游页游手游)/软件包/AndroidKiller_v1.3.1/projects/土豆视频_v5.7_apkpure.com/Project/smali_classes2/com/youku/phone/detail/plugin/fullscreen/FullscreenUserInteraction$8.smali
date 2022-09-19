.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$8;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->onSubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 666
    const-string v0, "test1"

    const-string v1, "onSubscribe"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 668
    const-string v0, "yueliang"

    const-string v1, "atte setchecked onSubscribe"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$400(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5df2\u8ba2\u9605"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    return-void
.end method
