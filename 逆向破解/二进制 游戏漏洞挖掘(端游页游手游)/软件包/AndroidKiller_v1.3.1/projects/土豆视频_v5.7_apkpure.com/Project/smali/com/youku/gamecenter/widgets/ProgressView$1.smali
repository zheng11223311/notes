.class Lcom/youku/gamecenter/widgets/ProgressView$1;
.super Ljava/lang/Object;
.source "ProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/ProgressView;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/ProgressView;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/ProgressView;I)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/ProgressView$1;->this$0:Lcom/youku/gamecenter/widgets/ProgressView;

    iput p2, p0, Lcom/youku/gamecenter/widgets/ProgressView$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/ProgressView$1;->this$0:Lcom/youku/gamecenter/widgets/ProgressView;

    iget v1, p0, Lcom/youku/gamecenter/widgets/ProgressView$1;->val$progress:I

    invoke-static {v0, v1}, Lcom/youku/gamecenter/widgets/ProgressView;->access$000(Lcom/youku/gamecenter/widgets/ProgressView;I)V

    .line 61
    return-void
.end method
