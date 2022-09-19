.class Lcom/youku/player/plugin/MediaPlayerDelegate$4;
.super Ljava/lang/Object;
.source "MediaPlayerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate;->replayLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$4;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$4;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->access$000(Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 918
    return-void
.end method
