.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1$1;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;->onOneFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->enableDownloadIcon()V

    .line 198
    return-void
.end method
