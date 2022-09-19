.class Lcom/youku/player/plugin/MediaPlayerDelegate$9;
.super Ljava/lang/Object;
.source "MediaPlayerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field final synthetic val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 0

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$9;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object p2, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$9;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1761
    const/4 v0, 0x0

    sput v0, Lcom/youku/player/ad/PreAdTimes;->times:I

    .line 1762
    iget-object v0, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$9;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->access$200(Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$9;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->creatDialogToLogin(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 1763
    return-void
.end method
