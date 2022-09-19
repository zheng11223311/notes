.class Lcom/youku/gamecenter/GameVideoActivity$7;
.super Ljava/lang/Object;
.source "GameVideoActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/player/GameVideoPlayer$OnLoadingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameVideoActivity;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameVideoActivity;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/youku/gamecenter/GameVideoActivity$7;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndLoading()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$7;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    iget-object v0, v0, Lcom/youku/gamecenter/GameVideoActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    return-void
.end method

.method public onStartLoading()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$7;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    iget-object v0, v0, Lcom/youku/gamecenter/GameVideoActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    return-void
.end method
