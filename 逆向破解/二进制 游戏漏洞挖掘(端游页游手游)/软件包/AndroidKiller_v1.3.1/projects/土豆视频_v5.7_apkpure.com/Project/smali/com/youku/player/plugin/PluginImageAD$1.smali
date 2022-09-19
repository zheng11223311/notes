.class Lcom/youku/player/plugin/PluginImageAD$1;
.super Ljava/lang/Object;
.source "PluginImageAD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginImageAD;->OnCurrentPositionChangeListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginImageAD;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginImageAD;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/youku/player/plugin/PluginImageAD$1;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/player/plugin/PluginImageAD$1;->this$0:Lcom/youku/player/plugin/PluginImageAD;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginImageAD;->dismissImageAD()V

    .line 119
    return-void
.end method
