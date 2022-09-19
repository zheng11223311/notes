.class Lcom/youku/player/ad/PlayerAdControl$3;
.super Ljava/lang/Object;
.source "PlayerAdControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/PlayerAdControl;->creatDialogToLogin(Lcom/youku/player/module/PlayVideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/PlayerAdControl;

.field final synthetic val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/PlayerAdControl;Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl$3;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    iput-object p2, p0, Lcom/youku/player/ad/PlayerAdControl$3;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl$3;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v0}, Lcom/youku/player/ad/PlayerAdControl;->access$000(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$3;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoUrlInfo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 393
    return-void
.end method
