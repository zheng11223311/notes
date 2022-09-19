.class Lcom/youku/player/reporter/LogWorker$2;
.super Ljava/lang/Object;
.source "LogWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/reporter/LogWorker;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/reporter/LogWorker;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/youku/player/reporter/LogWorker;I)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/youku/player/reporter/LogWorker$2;->this$0:Lcom/youku/player/reporter/LogWorker;

    iput p2, p0, Lcom/youku/player/reporter/LogWorker$2;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/player/reporter/LogWorker$2;->this$0:Lcom/youku/player/reporter/LogWorker;

    iget-object v0, v0, Lcom/youku/player/reporter/LogWorker;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/player/reporter/LogWorker$2;->this$0:Lcom/youku/player/reporter/LogWorker;

    iget-object v1, v1, Lcom/youku/player/reporter/LogWorker;->context:Landroid/content/Context;

    iget v2, p0, Lcom/youku/player/reporter/LogWorker$2;->val$resId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    return-void
.end method
