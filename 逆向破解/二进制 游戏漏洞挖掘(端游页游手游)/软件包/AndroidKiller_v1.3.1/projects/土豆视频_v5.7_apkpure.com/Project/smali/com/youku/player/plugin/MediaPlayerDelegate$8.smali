.class Lcom/youku/player/plugin/MediaPlayerDelegate$8;
.super Landroid/os/Handler;
.source "MediaPlayerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/MediaPlayerDelegate;
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
    .line 1629
    iput-object p1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$8;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1633
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1643
    :goto_0
    return-void

    .line 1635
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/youku/player/subtitle/DownloadedSubtitle;

    .line 1636
    .local v0, "subtitle":Lcom/youku/player/subtitle/DownloadedSubtitle;
    iget-object v1, p0, Lcom/youku/player/plugin/MediaPlayerDelegate$8;->this$0:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->access$000(Lcom/youku/player/plugin/MediaPlayerDelegate;)Lcom/youku/player/apiservice/IPlayerUiControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->onDownloadSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)V

    goto :goto_0

    .line 1633
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
