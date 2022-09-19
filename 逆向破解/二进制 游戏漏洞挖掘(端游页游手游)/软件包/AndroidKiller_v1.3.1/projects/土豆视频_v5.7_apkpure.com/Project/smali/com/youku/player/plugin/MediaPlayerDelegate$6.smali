.class Lcom/youku/player/plugin/MediaPlayerDelegate$6;
.super Ljava/lang/Object;
.source "MediaPlayerDelegate.java"

# interfaces
.implements Lcom/youku/player/request/OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoUrlInfo(Lcom/youku/player/module/PlayVideoInfo;)V
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
    .line 1228
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$6;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 1
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;
    .param p2, "advInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 1231
    if-eqz p1, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$6;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v0, p1, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->access$100(Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 1234
    :cond_0
    return-void
.end method
