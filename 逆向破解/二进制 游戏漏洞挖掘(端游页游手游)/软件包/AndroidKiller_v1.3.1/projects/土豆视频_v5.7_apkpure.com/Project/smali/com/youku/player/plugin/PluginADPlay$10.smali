.class Lcom/youku/player/plugin/PluginADPlay$10;
.super Ljava/lang/Object;
.source "PluginADPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginADPlay;->onADCountUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginADPlay;

.field final synthetic val$count:I

.field final synthetic val$currentPosition:I


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginADPlay;II)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/youku/player/plugin/PluginADPlay$10;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iput p2, p0, Lcom/youku/player/plugin/PluginADPlay$10;->val$count:I

    iput p3, p0, Lcom/youku/player/plugin/PluginADPlay$10;->val$currentPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$10;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget v1, p0, Lcom/youku/player/plugin/PluginADPlay$10;->val$count:I

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginADPlay;->notifyUpdate(I)V

    .line 429
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$10;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget v1, p0, Lcom/youku/player/plugin/PluginADPlay$10;->val$currentPosition:I

    iget-object v2, p0, Lcom/youku/player/plugin/PluginADPlay$10;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v2}, Lcom/youku/player/plugin/PluginADPlay;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginADPlay;->notifyTrueViewSkipTime(ILcom/youku/player/goplay/AdvInfo;)V

    .line 430
    return-void
.end method
