.class Lcom/youku/player/plugin/PluginMidADPlay$3;
.super Ljava/lang/Object;
.source "PluginMidADPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginMidADPlay;->onPluginAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginMidADPlay;

.field final synthetic val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginMidADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/youku/player/plugin/PluginMidADPlay$3;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iput-object p2, p0, Lcom/youku/player/plugin/PluginMidADPlay$3;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youku/player/plugin/PluginMidADPlay$3;->this$0:Lcom/youku/player/plugin/PluginMidADPlay;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginMidADPlay$3;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginMidADPlay;->access$000(Lcom/youku/player/plugin/PluginMidADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 113
    return-void
.end method
