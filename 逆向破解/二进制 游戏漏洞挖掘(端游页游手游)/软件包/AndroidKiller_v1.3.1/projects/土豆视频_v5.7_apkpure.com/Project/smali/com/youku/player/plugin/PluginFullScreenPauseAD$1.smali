.class Lcom/youku/player/plugin/PluginFullScreenPauseAD$1;
.super Ljava/lang/Object;
.source "PluginFullScreenPauseAD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginFullScreenPauseAD;->OnCurrentPositionChangeListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$1;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$1;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->dismissPauseAD()V

    .line 128
    return-void
.end method
