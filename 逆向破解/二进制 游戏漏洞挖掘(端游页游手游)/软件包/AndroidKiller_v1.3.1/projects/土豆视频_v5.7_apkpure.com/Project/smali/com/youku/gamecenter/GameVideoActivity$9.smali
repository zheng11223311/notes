.class Lcom/youku/gamecenter/GameVideoActivity$9;
.super Ljava/lang/Object;
.source "GameVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 320
    iput-object p1, p0, Lcom/youku/gamecenter/GameVideoActivity$9;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$9;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$200(Lcom/youku/gamecenter/GameVideoActivity;)V

    .line 324
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$9;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$400(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$9;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$300(Lcom/youku/gamecenter/GameVideoActivity;)Lcom/youku/gamecenter/player/GameVideoPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 325
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$9;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$9;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$300(Lcom/youku/gamecenter/GameVideoActivity;)Lcom/youku/gamecenter/player/GameVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/gamecenter/player/GameVideoPlayer;->getLastDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$502(Lcom/youku/gamecenter/GameVideoActivity;I)I

    .line 326
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$9;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$600(Lcom/youku/gamecenter/GameVideoActivity;)V

    .line 327
    const/4 v0, 0x1

    return v0
.end method
