.class Lcom/youku/player/ad/pausead/PauseAdOffline$1;
.super Ljava/lang/Object;
.source "PauseAdOffline.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdOffline;->initClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdOffline;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$1;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$1;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$1;->this$0:Lcom/youku/player/ad/pausead/PauseAdOffline;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdOffline;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdClose()V

    .line 99
    :cond_0
    return-void
.end method
