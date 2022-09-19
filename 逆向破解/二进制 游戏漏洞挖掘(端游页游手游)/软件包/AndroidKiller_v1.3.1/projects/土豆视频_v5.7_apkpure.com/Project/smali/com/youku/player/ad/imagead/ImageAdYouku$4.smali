.class Lcom/youku/player/ad/imagead/ImageAdYouku$4;
.super Ljava/lang/Object;
.source "ImageAdYouku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYouku;->showADImageWhenLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYouku;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$4;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$4;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->startTimer()V

    .line 263
    return-void
.end method
