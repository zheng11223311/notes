.class Lcom/youku/player/base/YoukuPlayerView$6;
.super Ljava/lang/Object;
.source "YoukuPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/YoukuPlayerView;->setFirstSubtitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuPlayerView;

.field final synthetic val$subtitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$6;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iput-object p2, p0, Lcom/youku/player/base/YoukuPlayerView$6;->val$subtitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$6;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v0, v0, Lcom/youku/player/base/YoukuPlayerView;->firstSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/StrokeTextView;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$6;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v0, v0, Lcom/youku/player/base/YoukuPlayerView;->firstSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/StrokeTextView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$6;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v0, v0, Lcom/youku/player/base/YoukuPlayerView;->firstSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    iget-object v1, p0, Lcom/youku/player/base/YoukuPlayerView$6;->val$subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    return-void
.end method
