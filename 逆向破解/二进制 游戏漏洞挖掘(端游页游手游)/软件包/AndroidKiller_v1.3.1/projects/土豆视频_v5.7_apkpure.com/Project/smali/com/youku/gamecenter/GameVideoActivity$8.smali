.class Lcom/youku/gamecenter/GameVideoActivity$8;
.super Ljava/lang/Object;
.source "GameVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 314
    iput-object p1, p0, Lcom/youku/gamecenter/GameVideoActivity$8;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$8;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameVideoActivity;->finish()V

    .line 318
    return-void
.end method
