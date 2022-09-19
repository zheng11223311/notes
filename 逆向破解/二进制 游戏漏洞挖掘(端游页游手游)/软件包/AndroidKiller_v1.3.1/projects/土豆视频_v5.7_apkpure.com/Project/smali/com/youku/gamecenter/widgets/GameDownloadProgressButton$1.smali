.class Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;
.super Ljava/lang/Object;
.source "GameDownloadProgressButton.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;I)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;->this$0:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    iput p2, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;->this$0:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    iget v1, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;->val$progress:I

    invoke-static {v0, v1}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->access$000(Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;I)V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;->this$0:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton$1;->this$0:Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/GameDownloadProgressButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
