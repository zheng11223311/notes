.class Lcom/youku/player/base/YoukuPlayerView$9;
.super Ljava/lang/Object;
.source "YoukuPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/YoukuPlayerView;->dismissSecondSubtitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/YoukuPlayerView;


# direct methods
.method constructor <init>(Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/youku/player/base/YoukuPlayerView$9;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayerView$9;->this$0:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v0, v0, Lcom/youku/player/base/YoukuPlayerView;->secondSubtitle:Lcom/youku/player/subtitle/StrokeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/StrokeTextView;->setVisibility(I)V

    .line 826
    return-void
.end method
