.class Lcom/youku/player/subtitle/SubtitleManager$SeekResult;
.super Ljava/lang/Object;
.source "SubtitleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/subtitle/SubtitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekResult"
.end annotation


# instance fields
.field flag:I

.field index:I

.field final synthetic this$0:Lcom/youku/player/subtitle/SubtitleManager;


# direct methods
.method public constructor <init>(Lcom/youku/player/subtitle/SubtitleManager;II)V
    .locals 0
    .param p2, "flag"    # I
    .param p3, "index"    # I

    .prologue
    .line 667
    iput-object p1, p0, Lcom/youku/player/subtitle/SubtitleManager$SeekResult;->this$0:Lcom/youku/player/subtitle/SubtitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput p2, p0, Lcom/youku/player/subtitle/SubtitleManager$SeekResult;->flag:I

    .line 669
    iput p3, p0, Lcom/youku/player/subtitle/SubtitleManager$SeekResult;->index:I

    .line 670
    return-void
.end method
