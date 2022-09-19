.class Lcom/youku/player/ad/pausead/PauseAdOffline$2$1;
.super Ljava/lang/Object;
.source "PauseAdOffline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdOffline$2;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/ad/pausead/PauseAdOffline$2;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdOffline$2;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2$1;->this$1:Lcom/youku/player/ad/pausead/PauseAdOffline$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2$1;->this$1:Lcom/youku/player/ad/pausead/PauseAdOffline$2;

    invoke-static {v0}, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->access$000(Lcom/youku/player/ad/pausead/PauseAdOffline$2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdOffline$2$1;->this$1:Lcom/youku/player/ad/pausead/PauseAdOffline$2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/ad/pausead/PauseAdOffline$2;->access$102(Lcom/youku/player/ad/pausead/PauseAdOffline$2;Z)Z

    .line 124
    :cond_0
    return-void
.end method
