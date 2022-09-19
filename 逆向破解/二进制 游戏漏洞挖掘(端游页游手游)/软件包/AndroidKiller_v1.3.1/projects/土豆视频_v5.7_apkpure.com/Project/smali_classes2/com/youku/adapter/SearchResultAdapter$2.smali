.class Lcom/youku/adapter/SearchResultAdapter$2;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$2;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$2;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/adapter/SearchResultAdapter;->btnMoreDirect:Z

    .line 357
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$2;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$000(Lcom/youku/adapter/SearchResultAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x378

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 358
    return-void
.end method
