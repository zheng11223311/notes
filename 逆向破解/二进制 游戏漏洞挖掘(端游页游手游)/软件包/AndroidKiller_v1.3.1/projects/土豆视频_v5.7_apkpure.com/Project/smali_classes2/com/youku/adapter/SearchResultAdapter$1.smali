.class Lcom/youku/adapter/SearchResultAdapter$1;
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
    .line 332
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$1;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 335
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$1;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v0, v0, Lcom/youku/adapter/SearchResultAdapter;->resultFragment:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->refreshUgc()V

    .line 337
    return-void
.end method
