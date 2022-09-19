.class Lcom/youku/player/base/YoukuPlayerView$2;
.super Ljava/lang/Object;
.source "YoukuPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuPlayerView;

.field final synthetic val$debug:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$2;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iput-object p2, p0, Lcom/youku/player/base/YoukuPlayerView$2;->val$debug:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$2;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v0, v0, Lcom/youku/player/base/YoukuPlayerView;->playerDebugView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/YoukuPlayerView$2;->val$debug:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method
