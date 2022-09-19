.class Lcom/youku/gamecenter/widgets/InnerProgressView$1;
.super Ljava/lang/Object;
.source "InnerProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgressDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/InnerProgressView;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/InnerProgressView;I)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/InnerProgressView$1;->this$0:Lcom/youku/gamecenter/widgets/InnerProgressView;

    iput p2, p0, Lcom/youku/gamecenter/widgets/InnerProgressView$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/InnerProgressView$1;->this$0:Lcom/youku/gamecenter/widgets/InnerProgressView;

    iget v1, p0, Lcom/youku/gamecenter/widgets/InnerProgressView$1;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/InnerProgressView;->setProgress(I)V

    .line 38
    return-void
.end method
