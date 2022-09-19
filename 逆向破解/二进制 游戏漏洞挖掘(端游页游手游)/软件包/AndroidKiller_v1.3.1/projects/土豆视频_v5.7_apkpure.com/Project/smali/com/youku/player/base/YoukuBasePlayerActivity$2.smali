.class Lcom/youku/player/base/YoukuBasePlayerActivity$2;
.super Ljava/lang/Object;
.source "YoukuBasePlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/YoukuBasePlayerActivity;->detectPlugin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuBasePlayerActivity;


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuBasePlayerActivity;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/youku/player/base/YoukuBasePlayerActivity$2;->this$0:Lcom/youku/player/base/YoukuBasePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/youku/player/base/YoukuBasePlayerActivity$2;->this$0:Lcom/youku/player/base/YoukuBasePlayerActivity;

    iget-object v0, v0, Lcom/youku/player/base/YoukuBasePlayerActivity;->mPlayerController:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->detectPlugin()V

    .line 215
    return-void
.end method
