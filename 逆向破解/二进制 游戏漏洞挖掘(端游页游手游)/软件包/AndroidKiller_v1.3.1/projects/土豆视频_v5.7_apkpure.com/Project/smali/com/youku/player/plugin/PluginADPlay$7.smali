.class Lcom/youku/player/plugin/PluginADPlay$7;
.super Ljava/lang/Object;
.source "PluginADPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginADPlay;->onPluginAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginADPlay;

.field final synthetic val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/youku/player/plugin/PluginADPlay$7;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iput-object p2, p0, Lcom/youku/player/plugin/PluginADPlay$7;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/youku/player/plugin/PluginADPlay$7;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginADPlay$7;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginADPlay;->access$000(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 284
    return-void
.end method
