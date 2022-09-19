.class Lcom/youku/player/ad/PlayerAdControl$1;
.super Ljava/lang/Object;
.source "PlayerAdControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

.field final synthetic val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/PlayerAdControl;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/ui/widget/YpYoukuDialog;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/youku/player/ad/PlayerAdControl$1;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    iput-object p2, p0, Lcom/youku/player/ad/PlayerAdControl$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    iput-object p3, p0, Lcom/youku/player/ad/PlayerAdControl$1;->val$dialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl$1;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    invoke-static {v0}, Lcom/youku/player/ad/PlayerAdControl;->access$000(Lcom/youku/player/ad/PlayerAdControl;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/PlayerAdControl$1;->val$playVideoInfo:Lcom/youku/player/module/PlayVideoInfo;

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoUrlInfo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 364
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl$1;->this$0:Lcom/youku/player/ad/PlayerAdControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/ad/PlayerAdControl;->access$102(Lcom/youku/player/ad/PlayerAdControl;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 365
    iget-object v0, p0, Lcom/youku/player/ad/PlayerAdControl$1;->val$dialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 366
    return-void
.end method
