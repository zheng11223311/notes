.class Lcom/youku/player/base/PlayerController$4;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/PlayerController;->changeConfiguration(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/PlayerController;


# direct methods
.method constructor <init>(Lcom/youku/player/base/PlayerController;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/youku/player/base/PlayerController$4;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$4;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController$4;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->isSuggestLoginDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$4;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->cancelSuggestLoginDialog()V

    .line 650
    :cond_0
    return-void
.end method
